module github.com/micro/go-plugins/store/consul/v2

go 1.13

require (
	github.com/hashicorp/consul/api v1.3.0
	github.com/micro/go-micro/v2 v2.9.1-0.20200716153311-f9bf56239306
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
