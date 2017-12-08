#Numero de brasileiros e estrangeiros 9 7 1
select nacionalidade.nome,count(*) from pessoafisica inner join nacionalidade on (pessoafisica.fk_nacionalidade_id = nacionalidade.id) group by nacionalidade.nome;

#Numero de solteiros e casados 9 7 2
select estadocivil.nome,count(*) from pessoafisica inner join estadocivil on (pessoafisica.fk_estadocivil_id = estadocivil.id) group by estadocivil.nome;

#Datas com mais ocorrências 9 7 3
select dataocorrencia, count(*) from ocorrencia group by dataocorrencia;

#Cidades com mais pessoas cadastradas 9 7 4
select cidade.nome, count(*) from pessoafisica inner join cidade on (pessoafisica.fk_cidade_id = cidade.id) group by cidade.nome;

#Bairros com mais ocorrências 9 7 5
select bairro.nome, count(*) from ocorrencia inner join endereco on (ocorrencia.fk_endereco_id = endereco.id) inner join bairro on (endereco.fk_bairro_id = bairro.id) group by bairro.nome;

#Quantidade de ocorrências por tipo 9 7 6
select tipoocorrencia.nome, count(*) from ocorrencia_tipoocorrencia inner join tipoocorrencia on (ocorrencia_tipoocorrencia.fk_tipoocorrencia_id = tipoocorrencia.id) group by tipoocorrencia.nome;