module github.com/asim/nitro-plugins/store/redis/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	github.com/go-redis/redis/v7 v7.4.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
