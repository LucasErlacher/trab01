/* RIGHT JOIN */
select cidade.nome, estado.nome from cidade right outer join estado on (cidade.fk_estado_id = estado.id)
select cpf, rg, datanascimento, cidade.nome from pessoafisica right outer join cidade on (pessoafisica.fk_cidade_id = cidade.id) order by cidade.nome

/* LEFT JOIN */
select nome, login, senha from pessoa left outer join usuario on(pessoa.id = usuario.id)
select nacionalidade.nome, count(pessoafisica.fk_nacionalidade_id) from nacionalidade left outer join pessoafisica on(nacionalidade.id = pessoafisica.fk_nacionalidade_id) group by nacionalidade.nome