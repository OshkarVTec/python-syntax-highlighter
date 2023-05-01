defmodule PythonLexer do

  def getTokens(file) do
    File.read!(file) |> to_charlist |> :lexer.string()
  end
  def html(tokens) do
    tokens = elem(tokens,1)
    content = Enum.map(tokens, fn{token, _, str}->
      str = HtmlEntities.encode(to_string(str))  #mix deps.get
      case token do
        :identifier -> "<span class=\"identifier\">#{str}</span>"
        :keyword -> "<span class=\"keyword\">#{str}</span>"
        :delimiter -> "<span class=\"delimiter\">#{str}</span>"
        :operator -> "<span class=\"operator\">#{str}</span>"
        :integer -> "<span class=\"integer\">#{str}</span>"
        :float -> "<span class=\"float\">#{str}</span>"
        :string -> "<span class=\"string\">#{str}</span>"
        :space -> "<span class=\"space\">#{str}</span>"
        :endline -> "<br>"
        :comment -> "<span class=\"comment\">#{str}</span>"
      end
    end)
    content = Enum.join(content)
    "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><link rel=\"stylesheet\" href=\"style.css\"></head><body><pre>#{content}</pre></body></html>"
  end
  def convert(file) do
    {:ok, output} = File.open("output.html", [:write])
    text = file |> getTokens |> html
    IO.binwrite(output, text)
    File.close(output)
  end
end
