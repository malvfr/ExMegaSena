defmodule Mix.Tasks.Mega do
  use Mix.Task

  @shortdoc "Runs the program. Outputs the result into a file and console"
  def run(_) do
    Mix.Task.run("app.start")
    Mega.main()
  end
end
