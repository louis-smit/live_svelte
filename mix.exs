defmodule LiveSvelte.MixProject do
  use Mix.Project

  @version "0.2.0"
  @repo_url "https://github.com/woutdp/live_svelte"

  def project do
    [
      app: :live_svelte,
      version: @version,
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Hex
      description: "E2E reactivity for Svelte and LiveView",
      package: package(),

      # Docs
      name: "LiveSvelte",
      docs: [
        name: "LiveSvelte",
        source_ref: "v#{@version}",
        source_url: @repo_url,
        homepage_url: @repo_url,
        main: "readme",
        extras: ["README.md"],
        links: %{"GitHub" => @repo_url},
      ]
    ]
  end

  defp package() do
    [
      maintainers: ["Wout De Puysseleir"],
      licenses: ["MIT"],
      links: %{"GitHub" => @repo_url},
      files: ~w(priv assets lib LICENSE.md mix.exs package.json README.md .formatter.exs)
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:jason, "~> 1.2"},
      {:nodejs, "~> 2.0"},
      {:phoenix, "~> 1.7"},
      {:phoenix_live_view, "~> 0.18.3"}
    ]
  end
end
