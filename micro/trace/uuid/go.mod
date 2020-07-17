module github.com/micro/go-plugins/micro/trace/uuid/v2

go 1.13

require (
	github.com/google/uuid v1.1.1
	github.com/micro/cli/v2 v2.1.2
	github.com/micro/micro/v2 v2.9.2-0.20200716203432-8baa747f35cc
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
