module github.com/asim/nitro-plugins/broker/nsq/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	github.com/google/uuid v1.1.2
	github.com/nsqio/go-nsq v1.0.8
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
