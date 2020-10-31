module github.com/asim/nitro-plugins/wrapper/trace/opentracing/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	github.com/opentracing/opentracing-go v1.1.0
	github.com/stretchr/testify v1.6.1
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
