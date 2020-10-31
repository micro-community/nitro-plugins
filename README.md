# Nitro Plugins [![License](https://img.shields.io/:license-apache-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![GoDoc](https://godoc.org/github.com/asim/nitro-plugins?status.svg)](https://godoc.org/github.com/asim/nitro-plugins)

Nitro Plugins are third party and external infrastructure plugins for Nitro (formerly Go Micro).

## Overview

Nitro is built as a pluggable framework using Go interfaces. Plugins enable you to swap out the underlying infrastructure without having 
to rewrite all your code. This enables running the same software in multiple environments without a ton of work. Read further for more info.

## Getting Started

* [Contents](#contents)
* [Usage](#usage)

## Contents

Contents of this repository:

| Directory | Description                                                     |
| --------- | ----------------------------------------------------------------|
| Broker    | PubSub messaging; NATS, NSQ, RabbitMQ, Kafka                    |
| Client    | RPC Clients; gRPC, HTTP                                         |
| Codec     | Message Encoding; BSON, Mercury                                 |
| Registry  | Service Discovery; Etcd, Gossip, NATS                           |
| Selector  | Load balancing; Label, Cache, Static                            |
| Server    | RPC Servers; gRPC, HTTP                                         |
| Transport | Bidirectional Streaming; NATS, RabbitMQ                         | 

## Usage

Plugins can be added to Nitro in the following ways.

### Options

Import and set as options when creating a new service

```go
import (
	"github.com/asim/nitro/v3/service"
	"github.com/asim/nitro-plugins/service/grpc/v3"
	"github.com/asim/nitro-plugins/registry/kubernetes/v3"
)

func main() {
	registry := kubernetes.NewRegistry()

	nitro := grpc.NewService(
		service.Registry(registry),
	)
}
```

