Definitions.
Rules.
[0-9](_?[0-9])* :  {token, {integer, TokenLine, TokenChars}}. %Decimal integer
0[xX](_?[0-9a-fA-F])+   : {token, {integer, TokenLine, TokenChars}}. %Hex integer
\s             : skip_token.
Erlang code.

