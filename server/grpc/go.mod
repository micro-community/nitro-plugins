module github.com/asim/go-plugins/server/grpc/v3

go 1.15

require (
	github.com/asim/go-micro/v3 v3.2.1-0.20201022122155-691ff2025fd5
	github.com/asim/go-plugins/client/grpc/v3 v3.0.0-00010101000000-000000000000
	github.com/golang/protobuf v1.4.3
	golang.org/x/net v0.0.0-20201020065357-d65d470038a5
	google.golang.org/genproto v0.0.0-20201019141844-1ed22bb0c154
	google.golang.org/grpc v1.27.0
)

replace github.com/asim/go-plugins/client/grpc/v3 => ../../client/grpc
