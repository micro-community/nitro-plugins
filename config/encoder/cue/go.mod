module github.com/asim/nitro-plugins/config/encoder/cue/v3

go 1.13

require (
	cuelang.org/go v0.0.15
	github.com/asim/nitro/v3 v3.3.0
	github.com/ghodss/yaml v1.0.0
	github.com/stretchr/testify v1.6.1
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
