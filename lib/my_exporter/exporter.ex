defmodule MyExporter.PrometheusExporter do
  use Prometheus.PlugExporter

  def all_setup() do
    MyExporter.FooInstrumenter.setup()
    # Other Setup functions
  end

  def send_metrics() do
    MyExporter.FooInstrumenter.add()
    # Other functions that send data to their instrumenter
  end
end
