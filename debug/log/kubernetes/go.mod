module github.com/asim/nitro-plugins/debug/log/kubernetes/v3

go 1.15

require (
	github.com/asim/nitro/v3 v3.3.0
	github.com/asim/nitro-plugins/runtime/kubernetes/v3 v3.0.0-20201020113436-1ccc26e94acf
	github.com/stretchr/testify v1.6.1
)

replace github.com/asim/nitro-plugins/runtime/kubernetes/v3 => ../../../runtime/kubernetes
