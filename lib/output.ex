defmodule Output do
  def output_data(kw_list) do
    print_to_console(kw_list)

    print_to_file(kw_list)
  end

  defp print_to_console(kw_list) do
    kw_list |> Enum.each(fn {k, v} -> IO.puts("| #{k}\t =>\t #{v} |") end)
  end

  defp print_to_file(kw_list) do
    {:ok, output_file} = File.open("resultado.txt", [:write, :read])

    kw_list |> Enum.each(fn {k, v} -> IO.write(output_file, "#{k}\t =>\t #{v}\n") end)
  end
end
