module github.com/asim/nitro-plugins/config/source/runtimevar/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	gocloud.dev v0.17.0
	golang.org/x/oauth2 v0.0.0-20191202225959-858c2ad4c8b6 // indirect
)

replace github.com/Azure/go-autorest/autorest => github.com/azure/go-autorest/autorest v0.3.0

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
