// Package memory provides a memory broker
package memory

import (
	"github.com/asim/nitro/v3/broker"
	"github.com/asim/nitro/v3/broker/memory"
	"github.com/asim/nitro/v3/cmd"
)

func init() {
	cmd.DefaultBrokers["memory"] = NewBroker
}

func NewBroker(opts ...broker.Option) broker.Broker {
	return memory.NewBroker(opts...)
}
