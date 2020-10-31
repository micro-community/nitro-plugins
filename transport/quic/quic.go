// Package quic provides a QUIC based transport
package quic

import (
	"github.com/asim/nitro/v3/cmd"
	"github.com/asim/nitro/v3/transport"
	"github.com/asim/nitro/v3/transport/quic"
)

func init() {
	cmd.DefaultTransports["quic"] = NewTransport
}

func NewTransport(opts ...transport.Option) transport.Transport {
	return quic.NewTransport(opts...)
}
