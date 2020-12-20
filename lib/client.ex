defmodule Client do
  @headers [
    Host: "loterias.caixa.gov.br",
    Cookie: "security=true",
    "Accept-Encoding": "gzip, deflate",
    Connection: "keep-alive"
  ]

  defp get(url, headers \\ @headers) do
    HTTPoison.get!(
      url,
      headers,
      timeout: 50_0000,
      recv_timeout: 50_0000
    )

    # |> IO.inspect()
  end

  defp get_body(response) do
    response.body
  end

  defp build_url(last) when is_boolean(last) do
    time = :os.system_time(:millisecond)

    "http://loterias.caixa.gov.br/wps/portal/loterias/landing/megasena/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOLNDH0MPAzcDbwMPI0sDBxNXAOMwrzCjA0sjIEKIoEKnN0dPUzMfQwMDEwsjAw8XZw8XMwtfQ0MPM2I02-AAzgaENIfrh-FqsQ9wNnUwNHfxcnSwBgIDUyhCvA5EawAjxsKckMjDDI9FQE-F4ca/dl5/d5/L2dBISEvZ0FBIS9nQSEh/pw/Z7_HGK818G0KO6H80AU71KG7J0072/res/id=buscaResultado/c=cacheLevelPage/?timestampAjax=#{
      time
    }"
  end

  defp build_url(number) do
    time = :os.system_time(:millisecond)

    "http://loterias.caixa.gov.br/wps/portal/loterias/landing/megasena/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOLNDH0MPAzcDbwMPI0sDBxNXAOMwrzCjA0sjIEKIoEKnN0dPUzMfQwMDEwsjAw8XZw8XMwtfQ0MPM2I02-AAzgaENIfrh-FqsQ9wNnUwNHfxcnSwBgIDUyhCvA5EawAjxsKckMjDDI9FQE-F4ca/dl5/d5/L2dBISEvZ0FBIS9nQSEh/pw/Z7_HGK818G0KO6H80AU71KG7J0072/res/id=buscaResultado/c=cacheLevelPage//p=concurso=#{
      number
    }?timestampAjax=#{time}"
  end

  def get_result(number) do
    number |> build_url() |> get() |> get_body()
  end

  def get_last_result() do
    true |> build_url() |> get() |> get_body()
  end
end
