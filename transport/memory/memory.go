// Package memory is an in-memory transport
package memory

import (
	"github.com/asim/nitro/v3/cmd"
	"github.com/asim/nitro/v3/transport"
	"github.com/asim/nitro/v3/transport/memory"
)

func init() {
	cmd.DefaultTransports["memory"] = NewTransport
}

func NewTransport(opts ...transport.Option) transport.Transport {
	return memory.NewTransport(opts...)
}
