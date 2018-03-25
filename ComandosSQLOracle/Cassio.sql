--Select que traz a tabela v$parameter que é uma table do oracle e todos os campos que contém no na linha o valor dump

SELECT name, value FROM v$parameter WHERE name LIKE '%dump%';
SHOW parameter dump;

--Comando ALTER SYSTEM altera paramentros do sistema
ALTER SYSTEM 
SET --<variavel>=<valor>
SCOPE = [MEMORY | SPFILE | BOTH];
--MEMORY é dinâmico ou seja perde a configuração (alteração) quando desliga o banco.
--SPFILE é estático ou seja não perde a configuração (alteração) quando desliga o bano.
--BOTH ele executa os dois, mas como temos o MEMORY que será dinâmico temos que verificar o que poderá retornoar ao que era antes.

SELECT tablespace_name FROM dba_tablespaces;

--SELECT para trazer todos os usuários existentes no banco.
SELECT * FROM dba_users;

--O comando ALTER TABLESPACE nome da tabela no caso aqui é o sistem e o ADD DATAFILE 'nome do datafile' para a tablespace system
ALTER TABLESPACE system
ADD DATAFILE 'DATA2.ORA';

--O comando GRANT DBA TO nome da user, dara permissão de DBA para o usuário
GRANT DBA TO Cassio;

--O comando abaixo cria uma tabela chamada estoque com o datafile que vai definir o caminho com o size definindo tamanho e 
--autoextend on next define quanto vai aumentar e maxsize define até quanto de tamanho ele vai ter.
CREATE TABLESPACE estoque DATAFILE 'C:\oraclexe\app\oracle\oradata\ESTOQUE_DB' SIZE 10M
AUTOEXTEND ON NEXT 2M MAXSIZE 20M;


