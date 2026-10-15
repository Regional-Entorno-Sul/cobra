# **cobra**
Analisa inconsistências e incompletudes no arquivo de exportação do SINAN NET relacionadas ao agravo de acidentes com animais peçonhentos (CID X29).  

Sintaxe do executável:

~~~
cobra.exe [argumento]

[--ocupacao]:procura por casos de pacientes cujo acidente esteja relacionado ao trabalho/ocupacao, mas na notificação o campo de ocupação está em branco.
[--classific]:procura por notificações cujo campo de classificação do caso esteja sem preenchimento ou codificada como "ignorado".
[--evolucao]:detecção de notificações com o campo evolução em branco ou marcado como "ignorado".

Exemplo de uso:
cobra.exe --classific
~~~
  
## Como usar?  
1. Fazer o download da versão mais atualizada na área de releases;

2. Usando um descompactador da sua preferência (WinZip, WinRAR, 7Zip, etc), decompacte o arquivo que você fez o download (cobra_1.0.zip ou mais recente);  

3. A pasta resultante do processo de descompactação (cobra) deve ser movida para o disco local C ou unidade local C do seu PC;  

4. Gerar no SINAN NET, o arquivo DBF de acidente por animais peçonhentos ("Ferramentas" >> "Exportação (DBF)");  

5. No módulo de exportação, selecionar o checkbox "Exportar dados de identificação do paciente" e a data inicial e a data final que serão selecionados os
   registros para exportação (período);  
   
6. Selecionar também o checkbox "X29 - acidente por animais peçonhentos";  

7. Clicar no botão "Exportar" e aguarde o fim da geração do arquivo;  

8. Ao final do processo de exportação, fechar os módulos do SINAN NET e o próprio programa;  

9. Acessar na pasta "SinanNet" no disco local C ou unidade local C. Na subpasta "BaseDBF", copiar o arquivo "ANIMPNET.DBF";  

10. Procurar no disco local C a pasta "cobra" e colar o arquivo "ANIMPNET.DBF" na subpasta "DBF";  

11. Acessar o prompt de comando do Windows e acessar a pasta "cobra" no disco local C;  

12. Rodar o executável com o argumento conforme estipulado na sintaxe do executável;  

13. Aguardar o fim do processamento do arquivo;  




