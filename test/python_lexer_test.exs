defmodule PythonLexerTest do
  use ExUnit.Case
  doctest PythonLexer

  test "decInteger1" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('422')
  end
  test "decInteger2" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('100_000')
  end
  test "hexInteger1" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0x2A')
  end
  test "hexInteger2" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0x23_9F')
  end
  test "hexInteger3" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0X4AB')
  end
  test "octInteger1" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0o4')
  end
  test "octInteger2" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0o234')
  end
  test "octInteger3" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0o23_4')
  end
  test "binIntger1" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0b1110')
  end
  test "binIntger2" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0b1_0')
  end
  test "binIntger3" do
    assert {:ok, [{:integer, _,_}],_} = :lexer.string('0B10011')
  end

end
