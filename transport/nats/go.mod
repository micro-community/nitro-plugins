module github.com/asim/nitro-plugins/transport/nats/v3

go 1.13

require (
	github.com/go-log/log v0.2.0
	github.com/asim/nitro/v3 v3.3.0
	github.com/nats-io/nats.go v1.9.2
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
