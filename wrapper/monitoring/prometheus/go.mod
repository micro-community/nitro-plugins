module github.com/asim/nitro-plugins/wrapper/monitoring/prometheus/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	github.com/prometheus/client_golang v1.5.1
	github.com/prometheus/client_model v0.2.0
	github.com/stretchr/testify v1.6.1
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
