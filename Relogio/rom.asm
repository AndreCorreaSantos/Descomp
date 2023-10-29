SETUP:
LDI REG0, $0; REG0 IRÁ guardar somente a váriavel 0
STA REG0, @511; Reinicia Botoes
STA REG0, @510
STA REG0, @509
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
STA REG0, @14;
LDI REG1, $1; REG1 IRÁ guardar somente a váriavel 1
STA REG1, @10	
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
LDI REG3, $3
STA REG3, @15;
LDI REG2, $7
STA REG2, @16;
LDI REG2, $5
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
JSR ATUALIZA_VGA
NOP
JMP MAIN

TRATA_KEY0:
LDA REG2, @352; Checa se KEY0 foi pressionado, caso verdade pula para a sub-rotina de incremento		
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario
RET

Troca_Horario:
STA @511
LDI REG2, $18;
STA REG2, @293;
STA REG2, @292;
STA REG0, @291;
STA REG0, @290;
STA REG0, @289;
STA REG0, @288;

Troca_Horario_Minuto_Unidade_1:
LDA REG2, @320;
AND REG2, @9;
CLT REG2, @7;
JLT Pulo_M_Uni1
SUBI REG2, $9;
Pulo_M_Uni1:
STA REG2, @2;
STA REG2, @288;
LDA REG2, @352; 	
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario_Minuto_Unidade_2
JMP Troca_Horario_Minuto_Unidade_1

Troca_Horario_Minuto_Unidade_2:
STA @511
Troca_Horario_Minuto_Unidade_22:
LDA REG2, @320;
AND REG2, @16;
CLT REG2, @8;
JLT Pulo_M_Uni2
SUBI REG2, $2;
Pulo_M_Uni2:
STA REG2, @3;
STA REG2, @289;
LDA REG2, @352; 	
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario_Hora_Unidade_1
JMP Troca_Horario_Minuto_Unidade_22

Troca_Horario_Hora_Unidade_1:
STA @511
Troca_Horario_Hora_Unidade_11:
LDA REG2, @320;
AND REG2, @9;
CLT REG2, @7;
JLT Pulo_H_Uni1
SUBI REG2, $9;
Pulo_H_Uni1:
STA REG2, @4;
STA REG2, @290;
LDA REG2, @352; 	
AND REG2, @10
CEQ REG2, @10				
JEQ Troca_Horario_Hora_Unidade_2
JMP Troca_Horario_Hora_Unidade_11

Troca_Horario_Hora_Unidade_2:
STA @511
Troca_Horario_Hora_Unidade_22:
LDA REG2, @4
CLT REG2, @11;
JLT MENOR_QUE_4
LDA REG2, @320;
AND REG2, @10
STA REG2, @5;
STA REG2, @291;
LDA REG2, @352; 	
AND REG2, @10
CEQ REG2, @10				
JEQ FINAL_Altera
JMP Troca_Horario_Hora_Unidade_22

MENOR_QUE_4:
LDA REG2, @320;
AND REG2, @15
CLT REG2, @15;
JLT Pulo_H_Uni2
SUBI REG2, $1;
Pulo_H_Uni2:
STA REG2, @5;
STA REG2, @291;
LDA REG2, @352; 	
AND REG2, @10
CEQ REG2, @10				
JEQ FINAL_Altera
JMP Troca_Horario_Hora_Unidade_22
FINAL_Altera:
STA @511;
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
ADDI REG2, $1;
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
CEQ REG0, @14
JEQ Base_Normal
CEQ REG1, @14
JEQ Base_Hora_Minuto
JMP Base_Hora

Base_Normal:
LDA REG2, @0
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
LDA REG2, @2
STA REG2, @288
LDA REG2, @3
STA REG2, @289
LDA REG2, @4
STA REG2, @290
LDA REG2, @5
STA REG2, @291
LDI REG2, $18
STA REG2, @292
STA REG2, @293
RET

Base_Hora:
LDA REG2, @4
STA REG2, @288
LDA REG2, @5
STA REG2, @289
LDI REG2, $18
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
STA REG0, @508
NOP
LDA REG2, @0
ADDI REG2, $1
CEQ REG2, @7
JEQ INCREMENTO_Seg_Uni_2
STA REG2, @0
RET

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
LDI $5 ; Carregando 3 no acumulador
STA @128 ; Carregando 3 na LINHA
LDI $11 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $16 ; ATUALIZA UNIDADE 0 SEGUNDOS
SOMA REG2, @0
STA REG2, @130
STA REG2, @131


LDI $10 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $16 ; ATUALIZA UNIDADE 1 SEGUNDOS
SOMA REG2, @1
STA REG2, @130
STA REG2, @131


LDI $9 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $26 ; ESCREVE :
STA REG2, @130
STA REG2, @131


LDI $8 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $16; ATUALIZA UNIDADE 0 MINUTOS
SOMA REG2, @2
STA REG2, @130
STA REG2, @131


LDI $7 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $16; ATUALIZA UNIDADE 1 MINUTOS
SOMA REG2, @3
STA REG2, @130
STA REG2, @131

;DOIS PONTOS

LDI $6 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $26; ESCREVE :
STA REG2, @130
STA REG2, @131


LDI $5 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $16 ; ATUALIZA UNIDADE 0 HORAS
SOMA REG2, @4
STA REG2, @130
STA REG2, @131


LDI $4 ; Carregando 9 no acumulador
STA @129 ; Carregando 9 na COLUNA

LDI REG2, $16; ATUALIZA UNIDADE 1 HORAS
SOMA REG2, @5
STA REG2, @130
STA REG2, @131


RET
