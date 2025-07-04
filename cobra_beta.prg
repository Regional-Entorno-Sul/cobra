Function main()
cls
set color to g+/
set century on
set date to british

set color to bg+/b+
? "------------------------------------------------------------------------------"
? "| cobra.exe - versao beta - 27/06/2025                                       |"
? "| https://github.com/Regional-Entorno-Sul/cobra                              |"
? "| Regional de saude entorno sul                                              |"
? "| Procura inconsistencia em notificacoes de acidente por animais peconhentos |"
? "| Sintaxe: cobra.exe [--ocupacao] [--classific]                              |" 
? "| Exemplo: cobra.exe --ocupacao                                              |"
? "------------------------------------------------------------------------------"

cArg := (HB_ArgV ( 1 ))

if empty( cArg ) = .T.
set color to r+/
? "Falta o argumento na sintaxe do programa."
? "Fim do processamento"
wait
set color to gr+/
quit
endif

if cArg = "--ocupacao"
set color to gr+/
? "Acessando o arquivo de dados..."
use "c:\cobra\animpnet.dbf"

? "Marcando os casos relacionados ao trabalho..."
do while .not. eof()
if doenca_tra = "1" 
replace tp_not with "x"
endif
skip
enddo
goto top

? "Marcando os registros com ocupacao em branco..."
do while .not. eof()
if empty( id_ocupa_n ) = .T.
replace id_agravo with "w"
endif
skip
enddo
goto top

? "Deixando apenas os casos com divergencia..."
do while .not. eof()
if tp_not = "x" .and. id_agravo = "w"
replace sem_not with "x"
endif
skip
enddo
delete for sem_not <> "x"
pack
close

endif

if cArg = "--classific"
set color to gr+/

? "Acessando o arquivo de dados..."
use "c:\cobra\animpnet.dbf"

? "Marcando os casos relacionados ao trabalho..."
do while .not. eof()
if doenca_tra = "1" 
replace tp_not with "x"
endif
skip
enddo
goto top

? "Marcando os casos classificados como grave..."
do while .not. eof()
if tra_classi = "3"
replace id_agravo with "x"
endif
skip
enddo
goto top

? "Deixando apenas os casos de interesse..."
do while .not. eof()
if tp_not = "x" .and. id_agravo = "x"
replace sg_uf_not with "x"
endif
skip
enddo
goto top

delete for sg_uf_not <> "x"
pack
close

endif

return nil