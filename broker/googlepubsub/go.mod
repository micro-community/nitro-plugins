module github.com/micro/go-plugins/broker/googlepubsub/v2

go 1.13

require (
	cloud.google.com/go/pubsub v1.1.0
	github.com/google/uuid v1.1.1
	github.com/micro/go-micro/v2 v2.9.1-0.20200716153311-f9bf56239306
	golang.org/x/oauth2 v0.0.0-20191202225959-858c2ad4c8b6 // indirect
	google.golang.org/api v0.15.0
	google.golang.org/grpc v1.26.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
