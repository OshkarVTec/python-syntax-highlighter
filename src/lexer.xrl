Definitions.
Rules.
[0-9](_?[0-9])* :  {token, {integer, TokenLine, TokenChars}}. 
0[xX](_?[0-9a-fA-F])+   : {token, {integer, TokenLine, TokenChars}}.
\s             : skip_token.
Erlang code.

