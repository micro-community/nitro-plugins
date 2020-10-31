module github.com/asim/nitro-plugins/broker/proxy/v3

go 1.13

require (
	github.com/gorilla/websocket v1.4.1
	github.com/asim/nitro/v3 v3.3.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
