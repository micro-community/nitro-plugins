module github.com/asim/nitro-plugins/store/memcached/v3

go 1.13

require (
	github.com/bradfitz/gomemcache v0.0.0-20190913173617-a41fca850d0b
	github.com/asim/nitro/v3 v3.3.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
