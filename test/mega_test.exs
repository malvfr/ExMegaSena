defmodule MegaTest do
  use ExUnit.Case
  doctest Mega

  test "greets the world" do
    assert Mega.hello() == :world
  end
end
