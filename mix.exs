defmodule Mega.MixProject do
  use Mix.Project

  def project do
    [
      app: :mega,
      version: "0.1.0",
      elixir: "~> 1.11",
      description: "Uma simples aplicação para listar ordenadamente os números mais sorteados da Mega-Sena.",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["Matheus Alvarenga"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/malvfr/ExMegaSena"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.7"},
      {:poison, "~> 3.1"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
