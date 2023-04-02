defmodule PythonLexerTest do
  use ExUnit.Case
  doctest PythonLexer

  test "greets the world" do
    assert PythonLexer.hello() == :world
  end
end
