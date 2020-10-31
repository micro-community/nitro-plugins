package rabbitmq_test

import (
	"context"
	"os"
	"testing"

	broker "github.com/asim/nitro/v3/broker"
	server "github.com/asim/nitro/v3/server"
	"github.com/asim/nitro/v3/server/mucp"
	rabbitmq "github.com/asim/nitro-plugins/broker/rabbitmq/v3"
)

type Example struct{}

func (e *Example) Handler(ctx context.Context, r interface{}) error {
	return nil
}

func TestDurable(t *testing.T) {
	if tr := os.Getenv("CI"); len(tr) > 0 {
		t.Skip()
	}
	rabbitmq.DefaultRabbitURL = "amqp://rabbitmq:rabbitmq@127.0.0.1:5672"
	brkrSub := broker.NewSubscribeOptions(
		broker.Queue("queue.default"),
		rabbitmq.DurableQueue(),
	)

	b := rabbitmq.NewBroker()
	b.Init()
	if err := b.Connect(); err != nil {
		t.Logf("cant conect to broker, skip: %v", err)
		t.Skip()
	}

	s := mucp.NewServer(server.Broker(b))
	h := &Example{}
	// Register a subscriber
	s.Subscribe(s.NewSubscriber(
		"topic",
		h.Handler,
		server.SubscriberContext(brkrSub.Context),
		server.SubscriberQueue("queue.default"),
	))

	//service.Init()
	s.Start()

}
