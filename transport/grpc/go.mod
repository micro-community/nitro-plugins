module github.com/micro/go-plugins/transport/grpc/v3

go 1.13

require (
	github.com/asim/go-micro/v3 v3.1.1
	github.com/golang/protobuf v1.4.2
	github.com/micro/go-micro/v2 v2.9.1-0.20200716153311-f9bf56239306
	google.golang.org/grpc v1.27.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
