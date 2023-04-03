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

  test "float1" do
    assert {:ok, [{:float, _,_}],_} = :lexer.string('0.123')
  end
  test "float2" do
    assert {:ok, [{:float, _,_}],_} = :lexer.string('10.')
  end
  test "float3" do
    assert {:ok, [{:float, _,_}],_} = :lexer.string('1e23')
  end
  test "float4" do
    assert {:ok, [{:float, _,_}],_} = :lexer.string('3.14e-10')
  end
  test "float5" do
    assert {:ok, [{:float, _,_}],_} = :lexer.string('3.14_15')
  end
  test "float6" do
    assert {:ok, [{:float, _,_}],_} = :lexer.string('.10')
  end
  test "identifier1" do
    assert {:ok, [{:identifier, _,_}],_} = :lexer.string('var')
  end
  test "identifier2" do
    assert {:ok, [{:identifier, _,_}],_} = :lexer.string('Var')
  end
  test "identifier3" do
    assert {:ok, [{:identifier, _,_}],_} = :lexer.string('_var_')
  end
  test "identifier4" do
    assert {:ok, [{:identifier, _,_}],_} = :lexer.string('var2')
  end
  test "keyword1" do
    assert {:ok, [{:keyword, _,_}],_} = :lexer.string('True')
  end
  test "keyword2" do
    assert {:ok, [{:keyword, _,_}],_} = :lexer.string('False')
  end
  test "keyword3" do
    assert {:ok, [{:keyword, _,_}],_} = :lexer.string('lambda')
  end
  test "keyword4" do
    assert {:ok, [{:keyword, _,_}],_} = :lexer.string('if')
  end
  test "operator1" do
    assert {:ok, [{:operator, _,_}],_} = :lexer.string('%=')
  end
  test "operator2" do
    assert {:ok, [{:operator, _,_}],_} = :lexer.string('%')
  end
  test "operator3" do
    assert {:ok, [{:operator, _,_}],_} = :lexer.string('+')
  end
  test "operator4" do
    assert {:ok, [{:operator, _,_}],_} = :lexer.string('+=')
  end
  test "operator5" do
    assert {:ok, [{:operator, _,_}],_} = :lexer.string('@')
  end
  test "comment1" do
    assert {:ok, [{:comment, _,_}],_} = :lexer.string('#a')
  end
  test "comment2" do
    assert {:ok, [{:comment, _,_}],_} = :lexer.string('#Hello World!')
  end
end
