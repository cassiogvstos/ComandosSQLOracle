--Select que traz a tabela v$parameter que � uma table do oracle e todos os campos que cont�m no na linha o valor dump

SELECT name, value FROM v$parameter WHERE name LIKE '%dump%';
SHOW parameter dump;

--Comando ALTER SYSTEM altera paramentros do sistema
ALTER SYSTEM 
SET --<variavel>=<valor>
SCOPE = [MEMORY | SPFILE | BOTH];
--MEMORY � din�mico ou seja perde a configura��o (altera��o) quando desliga o banco.
--SPFILE � est�tico ou seja n�o perde a configura��o (altera��o) quando desliga o bano.
--BOTH ele executa os dois, mas como temos o MEMORY que ser� din�mico temos que verificar o que poder� retornoar ao que era antes.

SELECT tablespace_name FROM dba_tablespaces;

--SELECT para trazer todos os usu�rios existentes no banco.
SELECT * FROM dba_users;

--O comando ALTER TABLESPACE nome da tabela no caso aqui � o sistem e o ADD DATAFILE 'nome do datafile' para a tablespace system
ALTER TABLESPACE system
ADD DATAFILE 'DATA2.ORA';

--O comando GRANT DBA TO nome da user, dara permiss�o de DBA para o usu�rio
GRANT DBA TO Cassio;

--O comando abaixo cria uma tabela chamada estoque com o datafile que vai definir o caminho com o size definindo tamanho e 
--autoextend on next define quanto vai aumentar e maxsize define at� quanto de tamanho ele vai ter.
CREATE TABLESPACE estoque DATAFILE 'C:\oraclexe\app\oracle\oradata\ESTOQUE_DB' SIZE 10M
AUTOEXTEND ON NEXT 2M MAXSIZE 20M;


