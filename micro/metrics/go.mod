module github.com/micro/go-plugins/micro/metrics/v2

go 1.13

require (
	github.com/micro/cli/v2 v2.1.2
	github.com/micro/go-micro/v2 v2.9.1-0.20200716153311-f9bf56239306
	github.com/micro/go-plugins/micro/metrics/prometheus/v2 v2.0.1
	github.com/micro/micro/v2 v2.9.2-0.20200716203432-8baa747f35cc
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
