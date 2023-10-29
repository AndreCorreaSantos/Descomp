LOOP_FIXO:

LDI $5 # Carregando 3 no acumulador
STA @128 # Carregando 3 na LINHA
LDI $11 # Carregando 9 no acumulador
STA @129 # Carregando 9 na COLUNA

LDI REG2, $16 ; ATUALIZA UNIDADE 0 SEGUNDOS
ADDI REG2, $1 
STA REG2, @130
STA REG2, @131

JMP LOOP_FIXO