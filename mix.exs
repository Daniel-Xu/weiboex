defmodule Weiboex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :weiboex,
      version: "0.1.0",
      description: description(),
      elixir: "~> 1.5",
      package: package(),
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    "Weibo client library for Elixir"
  end

  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev}
    ]
  end

  defp package() do
    [
     maintainers: ["Daniel Xu"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/Daniel-Xu/weiboex"}
    ]
  end
end
