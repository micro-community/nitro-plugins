module github.com/asim/nitro-plugins/transport/grpc/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	github.com/golang/protobuf v1.4.2
	google.golang.org/grpc v1.27.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
