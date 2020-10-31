// Package http returns a http2 transport using net/http
package http

import (
	"github.com/asim/nitro/v3/cmd"
	"github.com/asim/nitro/v3/transport"
)

func init() {
	cmd.DefaultTransports["http"] = NewTransport
}

// NewTransport returns a new http transport using net/http and supporting http2
func NewTransport(opts ...transport.Option) transport.Transport {
	return transport.NewTransport(opts...)
}
