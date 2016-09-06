defmodule ElixirBot.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_bot,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [mod: {ElixirBot, []},
      applications: [:logger, :slacker]]
  end

  def deps do
    [{:websocket_client, github: "jeremyong/websocket_client"},
    {:slacker,  "~> 0.0.3"}]
  end
end
