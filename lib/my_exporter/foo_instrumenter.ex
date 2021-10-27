defmodule MyExporter.FooInstrumenter do
  use Prometheus.Metric

  def setup() do
    Gauge.declare(
      name: :foo_metric,
      help: "This is my metric!",
      labels: [:label_one, :label_two]
    )
  end

  def add() do
    Gauge.set(
      [name: :foo_metric, labels: ["label-value-1", "label-value-2"]],
      10000 # Imagine this is a metric!
    )
  end
end
