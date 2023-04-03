Definitions.
Rules.
[0-9](_?[0-9])* :  {token, {integer, TokenLine, TokenChars}}. %Decimal integer
0[xX](_?[0-9a-fA-F])+   : {token, {integer, TokenLine, TokenChars}}. %Hex integer
0[oO](_?[0-7])+   : {token, {integer, TokenLine, TokenChars}}. %Oct integer
0[bB](_?[0,1])+   : {token, {integer, TokenLine, TokenChars}}. %Bin integer

([0-9]((_?[0-9])+)?)?\.((_?[0-9])+((E|e)(\+|-)?(_?[0-9])+)?)? : {token, {float, TokenLine, TokenChars}}. %Float
[0-9]((_?[0-9])+)?((E|e)(\+|-)?(_?[0-9])+) : {token, {float, TokenLine, TokenChars}}. %Float

[_a-zA-Z][_a-zA-Z0-9]* : {token, {identifier, TokenLine, TokenChars}}. %Identifier

\s             : skip_token.
Erlang code.

