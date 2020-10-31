// Package memory provides an in-memory registry
package memory

import (
	"github.com/asim/nitro/v3/cmd"
	"github.com/asim/nitro/v3/registry"
	"github.com/asim/nitro/v3/registry/memory"
)

func init() {
	cmd.DefaultRegistries["memory"] = NewRegistry
}

func NewRegistry(opts ...registry.Option) registry.Registry {
	return memory.NewRegistry(opts...)
}
