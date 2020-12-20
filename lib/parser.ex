defmodule Parser do
  def parse(string) do
    string |> unzip |> Poison.decode!()
  end

  defp unzip(body) do
    :zlib.gunzip(body)
  end
end
