module github.com/asim/nitro-plugins/registry/consul/v3

go 1.13

require (
	github.com/hashicorp/consul/api v1.3.0
	github.com/asim/nitro/v3 v3.3.0
	github.com/mitchellh/hashstructure v1.0.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
