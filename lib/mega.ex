defmodule Mega do
  use Task, restart: :permanent

  def main() do
    tasks =
      1..get_last_game()
      |> Task.async_stream(fn req -> req |> run end, timeout: 60_000)

    tasks |> Enum.map(fn task -> elem(task, 1) end) |> process_data
  end

  defp process_data(data) do
    data
    |> List.flatten()
    |> Enum.filter(fn elm -> elm != nil end)
    |> Enum.map(fn i -> elem(Integer.parse(i), 0) end)
    |> most_common
    |> format
  end

  defp most_common(list) when is_list(list) do
    list |> Enum.reduce(%{}, fn val, acc -> Map.update(acc, val, 1, &(&1 + 1)) end)
  end

  defp to_keyword(map) do
    map |> Enum.map(fn {k, v} -> {String.to_atom(Integer.to_string(k)), v} end)
  end

  defp format(map) do
    map
    |> to_keyword
    |> List.keysort(1)
    |> Enum.reverse()
    |> print
  end

  defp print(kw_list) do
    kw_list |> Enum.each(fn {k, v} -> IO.puts("#{k} => #{v}") end)
  end

  defp get_last_game() do
    data = Client.get_last_result() |> Parser.parse()
    data["numero"]
  end

  defp run(number) do
    data = number |> Client.get_result() |> Parser.parse()
    data["listaDezenas"]
  end
end
