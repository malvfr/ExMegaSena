defmodule Mega do
  use Task, restart: :permanent

  defp get_last_game() do
    data = Client.get_last_result() |> Parser.parse()
    data["numero"]
  end

  def run(number) do
    data = number |> Client.get_result() |> Parser.parse()
    data["listaDezenas"]
  end

  def main() do
    last_game = get_last_game()

    tasks =
      1..5
      |> Task.async_stream(fn req -> req |> run end, timeout: 100_000)

    tasks |> Enum.map(fn x -> elem(x, 1) end) |> process_data
    # Task.await_many(tasks, 100_000) |> process_data()
  end

  def process_data(data) do
    data |> List.flatten() |> Enum.map(fn i -> elem(Integer.parse(i), 0) end)
  end

  def most_common(list) when is_list(list) do
    {amts, highest_count, highest_values} =
      Enum.reduce(list, {%{}, 0, []}, fn v, {a, hc, hv} ->
        case Map.update(a, v, 1, &(&1 + 1)) do
          %{^v => ^hc} = a -> {a, hc, [v | hv]}
          %{^v => c} = a when c > hc -> {a, c, [v]}
          a -> {a, hc, hv}
        end
      end)

    # Now we have all the interesting bits, the example code in the first post just prints though...
    if map_size(amts) == length(highest_values) do
      IO.puts("All elements have the same frequency in list: #{inspect(list)}")
    else
      IO.puts(
        "Most common elements are #{inspect(highest_values)} with frequency #{highest_count}"
      )
    end
  end
end
