Codigo Fonte

Sintática:

    - Léxica: String -> [token]
    - Sintática: (Happy) [token] -> Expr
 
Semântica:

    - Verificação de tipos:
    - Avaliação:

-------------------------------------------------------------

Sintaxe concreta: o código que o programador escreve
Sintaxe abstrata: representação interna da sintaxe (Expr)

-------------------------------------------------------------
TERMINAL:

echo "if true then 2 else 5" | runghc Main  --> codigo direto no terminal

cat example.mylang | runghc Main.hs --> codigo utilizando o arquivo example.mylang

