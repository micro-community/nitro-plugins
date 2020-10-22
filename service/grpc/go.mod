module github.com/asim/go-plugins/service/grpc/v3

go 1.15

require (
	github.com/asim/go-micro/v3 v3.2.1-0.20201022122155-691ff2025fd5
	github.com/asim/go-plugins/client/grpc/v3 v3.0.0-00010101000000-000000000000
	github.com/asim/go-plugins/server/grpc/v3 v3.0.0-20201020114309-63963e1a5c4f
	github.com/golang/protobuf v1.4.3
	github.com/micro/micro/v3 v3.0.0-beta.7
	google.golang.org/grpc v1.32.0
)

replace github.com/asim/go-plugins/client/grpc/v3 => ../../client/grpc

replace github.com/asim/go-plugins/server/grpc/v3 => ../../server/grpc
