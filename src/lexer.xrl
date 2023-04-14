Definitions.
Rules.
[0-9](_?[0-9])* :  {token, {integer, TokenLine, TokenChars}}. %Decimal integer
0[xX](_?[0-9a-fA-F])+   : {token, {integer, TokenLine, TokenChars}}. %Hex integer
0[oO](_?[0-7])+   : {token, {integer, TokenLine, TokenChars}}. %Oct integer
0[bB](_?[0,1])+   : {token, {integer, TokenLine, TokenChars}}. %Bin integer

([0-9]((_?[0-9])+)?)?\.((_?[0-9])+((E|e)(\+|-)?(_?[0-9])+)?)? : {token, {float, TokenLine, TokenChars}}. %Float
[0-9]((_?[0-9])+)?((E|e)(\+|-)?(_?[0-9])+) : {token, {float, TokenLine, TokenChars}}. %Float

False|None|True|and|as|assert|async|await|break|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|nonlocal|not|or|pass|raise|return|try|while|with|yield : {token, {keyword, TokenLine, TokenChars}}. %Keywords

\+|\-|\*|\*\*|/|//|@|<<|>>|&|\||\^|~|:=|<|>|<=|>=|==|!=|% : {token, {operator, TokenLine, TokenChars}}. %Operator

\(|\)|\[|\]|\{|\}|\,|\:|\.|;|@|=|->|\+=|\-=|\*=|/=|//=|@=|&=|\|=|\^=|<<=|>>=|\*\*=|%=|@=  : {token, {delimiter, TokenLine, TokenChars}}. %Delimiter

[_a-zA-Z][_a-zA-Z0-9]* : {token, {identifier, TokenLine, TokenChars}}. %Identifier

(\#.*)                : {token, {comment, TokenLine, TokenChars}}. %Comment

(\"|\').*(\"|\')             : {token, {string, TokenLine, TokenChars}}. % String

\s             : {token, {space, TokenLine, TokenChars}}.

\n|\r             : {token, {endline, TokenLine, TokenChars}}.

Erlang code.

