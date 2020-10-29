package grpc

import (
	"context"
	"fmt"
	"io"
	"os"
	"strings"
	"sync"

	"google.golang.org/grpc/codes"
)

// ServiceMethod converts a gRPC method to a Go method
// Input:
// Foo.Bar, /Foo/Bar, /package.Foo/Bar, /a.package.Foo/Bar
// Output:
// [Foo, Bar]
func ServiceMethod(m string) (string, string, error) {
	if len(m) == 0 {
		return "", "", fmt.Errorf("malformed method name: %q", m)
	}

	// grpc method
	if m[0] == '/' {
		// [ , Foo, Bar]
		// [ , package.Foo, Bar]
		// [ , a.package.Foo, Bar]
		parts := strings.Split(m, "/")
		if len(parts) != 3 || len(parts[1]) == 0 || len(parts[2]) == 0 {
			return "", "", fmt.Errorf("malformed method name: %q", m)
		}
		service := strings.Split(parts[1], ".")
		return service[len(service)-1], parts[2], nil
	}

	// non grpc method
	parts := strings.Split(m, ".")

	// expect [Foo, Bar]
	if len(parts) != 2 {
		return "", "", fmt.Errorf("malformed method name: %q", m)
	}

	return parts[0], parts[1], nil
}

// ServiceFromMethod returns the service
// /service.Foo/Bar => service
func ServiceFromMethod(m string) string {
	if len(m) == 0 {
		return m
	}
	if m[0] != '/' {
		return m
	}
	parts := strings.Split(m, "/")
	if len(parts) < 3 {
		return m
	}
	parts = strings.Split(parts[1], ".")
	return strings.Join(parts[:len(parts)-1], ".")
}

// convertCode converts a standard Go error into its canonical code. Note that
// this is only used to translate the error returned by the server applications.
func convertCode(err error) codes.Code {
	switch err {
	case nil:
		return codes.OK
	case io.EOF:
		return codes.OutOfRange
	case io.ErrClosedPipe, io.ErrNoProgress, io.ErrShortBuffer, io.ErrShortWrite, io.ErrUnexpectedEOF:
		return codes.FailedPrecondition
	case os.ErrInvalid:
		return codes.InvalidArgument
	case context.Canceled:
		return codes.Canceled
	case context.DeadlineExceeded:
		return codes.DeadlineExceeded
	}
	switch {
	case os.IsExist(err):
		return codes.AlreadyExists
	case os.IsNotExist(err):
		return codes.NotFound
	case os.IsPermission(err):
		return codes.PermissionDenied
	}
	return codes.Unknown
}

func wait(ctx context.Context) *sync.WaitGroup {
	if ctx == nil {
		return nil
	}
	wg, ok := ctx.Value("wait").(*sync.WaitGroup)
	if !ok {
		return nil
	}
	return wg
}
