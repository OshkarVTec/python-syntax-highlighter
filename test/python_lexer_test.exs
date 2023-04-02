defmodule PythonLexerTest do
  use ExUnit.Case
  doctest PythonLexer

  test "decinteger1" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('422')
  end
  test "decinteger2" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('100_000')
  end

end
