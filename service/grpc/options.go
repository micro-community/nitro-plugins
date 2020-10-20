package grpc

import (
	"crypto/tls"

	"github.com/asim/go-micro/v3/service"
	gc "github.com/asim/go-plugins/client/grpc/v3"
	gs "github.com/asim/go-plugins/server/grpc/v3"
)

// WithTLS sets the TLS config for the service
func WithTLS(t *tls.Config) service.Option {
	return func(o *service.Options) {
		o.Client.Init(
			gc.AuthTLS(t),
		)
		o.Server.Init(
			gs.AuthTLS(t),
		)
	}
}
