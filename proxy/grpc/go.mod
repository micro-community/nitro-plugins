module github.com/asim/go-plugins/proxy/grpc/v3

go 1.15

replace github.com/micro/go-plugins/client/grpc/v3 => ../../client/grpc

require (
	github.com/asim/go-micro/v3 v3.1.2
	github.com/micro/go-plugins/client/grpc/v3 v3.0.0-00010101000000-000000000000
	google.golang.org/grpc v1.33.1
	google.golang.org/grpc/examples v0.0.0-20201021230544-4e8458e5c638 // indirect
)
