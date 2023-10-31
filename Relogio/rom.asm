SETUP:
LDI REG0, $0; REG0 IRÁ guardar somente a váriavel 0
STA REG0, @511; Reinicia Botoes
STA REG0, @510;
STA REG0, @509;
STA REG0, @288; Reinicia 7segs			
STA REG0, @289			
STA REG0, @290			
STA REG0, @291			
STA REG0, @292							
STA REG0, @293			
STA REG0, @256; Reinicia LEDS
STA REG0, @257
STA REG0, @258
STA REG0, @0; Começa o Relogio em 00:00:00
STA REG0, @1;
STA REG0, @2;
STA REG0, @3;
STA REG0, @4;
STA REG0, @5;
STA REG0, @6;
STA REG0, @14; Flag Alterar o Display
LDI REG1, $1; REG1 IRÁ guardar somente a váriavel 1
STA REG1, @10; Guarda Resto das Váriaveis
LDI REG2, $10; 
STA REG2, @7;
LDI REG2, $6;
STA REG2, @8;
LDI REG2, $15;
STA REG2, @9;
LDI REG2, $4;
STA REG2, @11;
LDI REG2, $2;
STA REG2, @12;
LDI REG2, $9;
STA REG2, @13;
LDI REG3, $3; REG3 IRÁ guardar somente a váriavel 3
STA REG3, @15;
LDI REG2, $7;
STA REG2, @16;
LDI REG2, $5;
STA REG2, @17;


MAIN:
JSR TRATA_Temporizador
NOP
JSR ATUALIZA_DISPLAY
NOP
JSR REINICIA
NOP
JSR TRATA_KEY1
NOP
JSR TRATA_KEY0
NOP
JMP MAIN

TRATA_KEY0:
LDA REG2, @352; Checa se KEY0 foi pressionado, caso verdade pula para a sub-rotina de incremento		
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario
RET

Troca_Horario:
STA @511; Limpa Leitura
LDI REG2, $18; Apaga LEDS
STA REG2, @293;
STA REG2, @292;
STA REG0, @291;
STA REG0, @290;
STA REG0, @289;
STA REG0, @288;
STA REG0, @0; Reinicia Segundos
STA REG0, @1;

Troca_Horario_Minuto_Unidade_1:
LDA REG2, @320; Lê as chaves
AND REG2, @9; Limita pra uso das 4 primeiras chaves
CLT REG2, @7; Pula se menor que 10
JLT Pulo_M_Uni1
SUB REG2, @13; Subtrai o valor para manter entre 0 e 9
Pulo_M_Uni1:
STA REG2, @2; Salva na Memória
STA REG2, @288; Guarda no 7seg
LDA REG2, @352; Checa se KEY0 foi pressionado	
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario_Minuto_Unidade_2
JMP Troca_Horario_Minuto_Unidade_1

Troca_Horario_Minuto_Unidade_2:
STA @511; Limpa Leitura
Troca_Horario_Minuto_Unidade_22:
LDA REG2, @320; Lê as chaves
AND REG2, @16; Limita pra uso das 3 primeiras chaves
CLT REG2, @8; Pula se menor que 6
JLT Pulo_M_Uni2
SUB REG2, @12; Subtrai o valor para manter entre 0 e 5
Pulo_M_Uni2:
STA REG2, @3; Salva na Memória
STA REG2, @289; Guarda no 7seg
LDA REG2, @352; Checa se KEY0 foi pressionado	
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario_Hora_Unidade_1
JMP Troca_Horario_Minuto_Unidade_22

Troca_Horario_Hora_Unidade_1:
STA @511; Limpa Leitura
Troca_Horario_Hora_Unidade_11:
LDA REG2, @320; Lê as chaves
AND REG2, @9; Limita pra uso das 4 primeiras chaves
CLT REG2, @7; Pula se menor que 10
JLT Pulo_H_Uni1
SUB REG2, @13; Subtrai o valor para manter entre 0 e 9
Pulo_H_Uni1:
STA REG2, @4; Salva na Memória
STA REG2, @290; Guarda no 7seg
LDA REG2, @352; Checa se KEY0 foi pressionado	 
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario_Hora_Unidade_2
JMP Troca_Horario_Hora_Unidade_11

Troca_Horario_Hora_Unidade_2:
STA @511; Limpa Leitura
Troca_Horario_Hora_Unidade_22:
LDA REG2, @4; 
CLT REG2, @11; Checa se a Unidade 1 de hora é menor que 4
JLT MENOR_QUE_4
LDA REG2, @320;
AND REG2, @10; Limita para uso da primeira Chave
STA REG2, @5; Salva valor na Memória
STA REG2, @291; Guarda no 7seg
LDA REG2, @352; Checa se KEY0 foi pressionado	
AND REG2, @10
CEQ REG2, @10				
JEQ FINAL_Altera
JMP Troca_Horario_Hora_Unidade_22

MENOR_QUE_4:
LDA REG2, @320; Lê as chaves
AND REG2, @15; Limita para uso das 2 primeiras Chaves
CLT REG2, @15; Checa se valor maior que 2
JLT Pulo_H_Uni2
SUB REG2, @10; Subtrai pra ficar entre 0 e 2
Pulo_H_Uni2:
STA REG2, @5; Salva valor na Memória
STA REG2, @291; Guarda no 7seg
LDA REG2, @352;  Checa se KEY0 foi pressionado	
AND REG2, @10
CEQ REG2, @10				
JEQ FINAL_Altera
JMP Troca_Horario_Hora_Unidade_22
FINAL_Altera:
STA @511; Limpa Leitura
RET


TRATA_KEY1:
LDA REG2, @353; Checa se KEY0 foi pressionado, caso verdade pula para a sub-rotina de incremento		
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Flag_Base_Tempo
RET

Troca_Flag_Base_Tempo:
STA REG0, @510;
LDA REG2, @14;
SOMA REG2, @10;
CEQ REG2, @15;
JEQ Overflow_Flag_Base_Tempo;
STA REG2, @14;
RET

Overflow_Flag_Base_Tempo:
STA REG0, @14;
RET



REINICIA:
LDA REG2, @356; Checa se FPGA_RESET foi pressionado, caso verdade para a sub-rotina de reinício de contagem
AND REG2, @10				
CEQ REG2, @10	
JEQ SETUP
RET

ATUALIZA_DISPLAY:
CEQ REG0, @14; Checa se a flag é zero
JEQ Base_Normal
CEQ REG1, @14; Checa se a flag é um
JEQ Base_Hora_Minuto
JMP Base_Hora

Base_Normal:
LDA REG2, @0; Salva H:M:S nos 7segs
STA REG2, @288
LDA REG2, @1
STA REG2, @289
LDA REG2, @2
STA REG2, @290
LDA REG2, @3
STA REG2, @291
LDA REG2, @4
STA REG2, @292
LDA REG2, @5
STA REG2, @293
RET

Base_Hora_Minuto:
LDA REG2, @2; Salva H:M nos 7segs
STA REG2, @288
LDA REG2, @3
STA REG2, @289
LDA REG2, @4
STA REG2, @290
LDA REG2, @5
STA REG2, @291
LDI REG2, $18; Apaga Leds Restantes
STA REG2, @292
STA REG2, @293
RET

Base_Hora:
LDA REG2, @4; ; Salva H nos 7segs
STA REG2, @288
LDA REG2, @5
STA REG2, @289
LDI REG2, $18; Apaga Leds Restantes
STA REG2, @290
STA REG2, @291
STA REG2, @292
STA REG2, @293
RET

TRATA_Temporizador:
LDA REG2, @357; Checa se KEY0 foi pressionado, caso verdade pula para a sub-rotina de incremento		
AND REG2, @10
CEQ REG2, @10				
JEQ INCREMENTO_Seg_Uni_1
RET


INCREMENTO_Seg_Uni_1:
STA REG0, @508 ; limpa leitura base de tempo
NOP
LDA REG2, @0 ; guarda valor da unidade 0 de segundos em REG2
ADDI REG2, $1 ; incrementa valor da unidade 0 de segundos
CEQ REG2, @7 ; verifica se valor da unidade 0 de segundos é igual a 10
JEQ INCREMENTO_Seg_Uni_2 ; caso seja igual a 10 pula para a sub-rotina de incremento da unidade 1 de segundos
STA REG2, @0 ; nao sei o que faz
RET ; volta para 

INCREMENTO_Seg_Uni_2:  
STA REG0, @0
LDA REG2, @1
ADDI REG2, $1
CEQ REG2, @8
JEQ INCREMENTO_Min_Uni_1
STA REG2, @1
RET

INCREMENTO_Min_Uni_1:  
STA REG0, @1
LDA REG2, @2
ADDI REG2, $1
CEQ REG2, @7
JEQ INCREMENTO_Min_Uni_2
STA REG2, @2
RET

INCREMENTO_Min_Uni_2:  
STA REG0, @2
LDA REG2, @3
ADDI REG2, $1
CEQ REG2, @8
JEQ INCREMENTO_Hora_Uni_1
STA REG2, @3
RET


INCREMENTO_Hora_Uni_1:  
STA REG0, @3
LDA REG2, @4
ADDI REG2, $1
CEQ REG2, @11
JEQ TESTE_OVERFLOW
CEQ REG2, @7
JEQ INCREMENTO_Hora_Uni_2
STA REG2, @4
RET

Continua_Incremento:
LDA REG2, @4
ADDI REG2, $1
CEQ REG2, @7
JEQ INCREMENTO_Hora_Uni_2
STA REG2, @4
RET

INCREMENTO_Hora_Uni_2:  
STA REG0, @4
LDA REG2, @5
ADDI REG2, $1
STA REG2, @5
RET

TESTE_OVERFLOW:
LDA REG2, @5
CEQ REG2, @12
JEQ OVERFLOW
JMP Continua_Incremento

OVERFLOW:
STA REG0, @4
STA REG0, @5
RET

ATUALIZA_VGA:
LDI REG2, $5 ; Carregando 5
STA REG2, @128 ; Carregando 5 na LINHA
LDI REG2, $11 ; Carregando 11
STA REG2, @129 ; Carregando 11 na COLUNA
LDI REG2, $16 ; ATUALIZA UNIDADE 0 SEGUNDOS
SOMA REG2, @0
STA REG2, @130
STA REG2, @131
LDI REG2, $10 ; Carregando 10
STA REG2, @129 ; Carregando 10 na COLUNA
LDI REG2, $16 ; ATUALIZA UNIDADE 1 SEGUNDOS
SOMA REG2, @1
STA REG2, @130
STA REG2, @131
LDI REG2, $9 ; Carregando 9
STA REG2, @129 ; Carregando 9 na COLUNA
LDI REG2, $26 ; ESCREVE :
STA REG2, @130
STA REG2, @131
LDI REG2, $8 ; Carregando 8
STA REG2, @129 ; Carregando 8 na COLUNA
LDI REG2, $16; ATUALIZA UNIDADE 0 MINUTOS
SOMA REG2, @2
STA REG2, @130
STA REG2, @131
LDI REG2, $7 ; Carregando 7
STA REG2, @129 ; Carregando 7 na COLUNA
LDI REG2, $16; ATUALIZA UNIDADE 1 MINUTOS
SOMA REG2, @3
STA REG2, @130
STA REG2, @131
LDI REG2, $6 ; Carregando 6 DOIS PONTOS
STA REG2, @129 ; Carregando 6 na COLUNA
LDI REG2, $26; ESCREVE :
STA REG2, @130
STA REG2, @131
LDI REG2, $5 ; Carregando 5
STA REG2, @129 ; Carregando 5 na COLUNA
LDI REG2, $16 ; ATUALIZA UNIDADE 0 HORAS
SOMA REG2, @4
STA REG2, @130
STA REG2, @131
LDI REG2, $4 ; Carregando 4
STA REG2, @129 ; Carregando 4 na COLUNA
LDI REG2, $16; ATUALIZA UNIDADE 1 HORAS
SOMA REG2, @5
STA REG2, @130
STA REG2, @131
RET
