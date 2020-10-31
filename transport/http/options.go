package http

import (
	"net/http"

	"github.com/asim/nitro/v3/transport"
	thttp "github.com/asim/nitro/v3/transport/http"
)

// Handle registers the handler for the given pattern.
func Handle(pattern string, handler http.Handler) transport.Option {
	return thttp.Handle(pattern, handler)
}
