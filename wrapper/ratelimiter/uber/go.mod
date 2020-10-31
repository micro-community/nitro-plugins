module github.com/asim/nitro-plugins/wrapper/ratelimiter/uber/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	go.uber.org/ratelimit v0.1.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
