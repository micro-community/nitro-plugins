module github.com/asim/nitro-plugins/logger/zap/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	go.uber.org/zap v1.13.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
