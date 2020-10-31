module github.com/asim/nitro-plugins/config/source/vault/v3

go 1.13

require (
	github.com/hashicorp/vault/api v1.0.4
	github.com/asim/nitro/v3 v3.3.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
