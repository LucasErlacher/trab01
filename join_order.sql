1 - select nome from pessoa p inner join pessoafisica pf on p.id=fk_pessoa_id order by nome desc;
2 - select concat(pessoa.nome,' mora no bairro ', bairro.nome) as "Informacao de endereco" from pessoa
inner join pessoafisica on pessoa.id=pessoafisica.fk_pessoa_id
inner join endereco on pessoa.fk_endereco_id=endereco.id
inner join bairro on endereco.fk_bairro_id=bairro.id
order by pessoa.nome desc;

3 - select pessoa.nome,ocorrencia.dataocorrencia from pessoa
inner join pessoafisica on pessoa.id=pessoafisica.fk_pessoa_id
inner join ocorrencia on pessoafisica.fk_pessoa_id=ocorrencia.fk_pessoafisica_fk_pessoa_id
where dataocorrencia > '2010/01/01'
order by ocorrencia.dataocorrencia;

4 - select * from bairro order by nome desc;

5 - select * from cidade order by nome asc;

6 - select concat(pessoa.nome,' mora na Cidade ', cidade.nome) as "Informacao de endereco" from pessoa
inner join pessoafisica on pessoa.id=pessoafisica.fk_pessoa_id
inner join endereco on pessoa.fk_endereco_id=endereco.id
inner join cidade on endereco.fk_bairro_id=cidade.id
order by pessoa.nome asc;