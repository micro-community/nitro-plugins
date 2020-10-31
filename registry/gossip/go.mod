module github.com/asim/nitro-plugins/registry/gossip/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	github.com/golang/protobuf v1.4.2
	github.com/google/uuid v1.1.2
	github.com/hashicorp/memberlist v0.1.5
	github.com/mitchellh/hashstructure v1.0.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
