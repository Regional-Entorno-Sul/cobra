Function main()
cls
set color to g+/
set century on
set date to british

set color to bg+/b+
? "------------------------------------------------------------------------------"
? "| cobra.exe - versao alfa - 19/05/2025                                       |"
? "| Regional de saude entorno sul                                              |"
? "| Procura inconsistencia em notificacoes de acidente por animais peconhentos |"
? "------------------------------------------------------------------------------"

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

return nil