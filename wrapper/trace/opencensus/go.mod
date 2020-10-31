module github.com/asim/nitro-plugins/wrapper/trace/opencensus/v3

go 1.13

require (
	github.com/asim/nitro/v3 v3.3.0
	go.opencensus.io v0.22.2
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
