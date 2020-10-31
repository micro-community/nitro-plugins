// Package service uses the registry service
package service

import (
	"github.com/asim/nitro/v3/cmd"
	"github.com/asim/nitro/v3/registry"
	"github.com/asim/nitro/v3/registry/service"
)

func init() {
	cmd.DefaultRegistries["service"] = NewRegistry
}

// NewRegistry returns a new registry service client
func NewRegistry(opts ...registry.Option) registry.Registry {
	return service.NewRegistry(opts...)
}
