SELECT * FROM bancopessoas.cliente WHERE id_cliente >100 ;
SELECT * FROM cliente;

#segunda questao
SELECT * FROM cliente WHERE cliente_ativo= 0;

#terceira questao
SELECT * FROM cliente WHERE nome_cliente LIKE '%Sar%';

#quarta questao
SELECT * FROM cliente WHERE nome_cliente LIKE '%silva%';

#quinta questao
SELECT count(nome_cliente) FROM cliente WHERE nome_cliente LIKE '%Ana%'; 

#sexta questao
SELECT count(id_cliente),nome_cliente, idade, sexo FROM cliente WHERE idade BETWEEN '18' AND '40' AND sexo LIKE '%f%';
SELECT nome_cliente, idade, sexo FROM cliente WHERE idade BETWEEN '18' AND '40' AND sexo LIKE '%f%' ORDER BY nome_cliente;
SELECT nome_cliente, idade, sexo, cidade FROM cliente WHERE idade BETWEEN '18' AND '40' AND sexo LIKE '%f%' AND cidade LIKE '%Lisboa%' ORDER BY nome_cliente;

#SETIMA QUESTAO
SELECT ROW_NUMBER() OVER (ORDER BY idade) AS numero,nome_cliente,idade,cidade FROM cliente WHERE  idade<50 AND cidade LIKE '%Lisboa%';
SELECT ROW_NUMBER() OVER (ORDER BY idade) AS numero,nome_cliente,idade,cidade FROM cliente WHERE  cidade LIKE '%Lisboa%';

#OITAVA QUESTAO
SELECT count(id_cliente),cidade FROM cliente WHERE cidade LIKE '%Bragança%';

#NONA QUESTAO
SELECT COUNT(id_cliente), data_nascimento FROM cliente WHERE data_nascimento LIKE '%-01-%' ;


