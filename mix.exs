defmodule ExAwsEvents.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_aws_events,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  def package() do
    [
      description: "AWS Events service package for ex_aws",
      licenses: ["MIT"],
      links: %{github: "https://github.com/brunozrk/ex_aws_events"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
