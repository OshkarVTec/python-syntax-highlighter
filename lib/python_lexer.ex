defmodule PythonLexer do

  def getTokens(file) do
    File.read!(file) |> to_charlist |> :lexer.string()
  end
  def html(tokens) do
    tokens = elem(tokens,1)
    newhtml = Enum.map(tokens, fn{token, _, chars}->
      chars = HtmlEntities.encode(to_string(chars))  #mix deps.get
      case token do
        :identifier -> "<span class=\"identifier\">#{chars}</span>"
        :keyword -> "<span class=\"keyword\">#{chars}</span>"
        :delimiter -> "<span class=\"delimiter\">#{chars}</span>"
        :operator -> "<span class=\"operator\">#{chars}</span>"
        :integer -> "<span class=\"integer\">#{chars}</span>"
        :float -> "<span class=\"float\">#{chars}</span>"
        :string -> "<span class=\"string\">#{chars}</span>"
        :space -> "<span class=\"space\">#{chars}</span>"
        :endline -> "<br>"
        :comment -> "<span class=\"comment\">#{chars}</span>"
      end
    end)
    newhtml = Enum.join(newhtml)
    "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><link rel=\"stylesheet\" href=\"style.css\"></head><body><pre>#{newhtml}</pre></body></html>"
  end
  def convert(file) do
    {:ok, output} = File.open("output.html", [:write])
    text = file |> getTokens |> html
    IO.binwrite(output, text)
    File.close("output.html")
    :ok
  end
end
