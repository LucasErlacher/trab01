select nome from pessoa where fk_endereco_id = 9 or fk_endereco_id = 11;
select nome from endereco where fk_bairro_id >=5;
select * from estadocivil where estadocivil.nome = 'SOLTEIRO' or estadocivil.nome = 'VIUVO';
select * from endereco where fk_bairro_id >= 1  and fk_logradouro_id <= 2;
select nome as "Pessoas que moram no endereço 10: " from pessoa where fk_endereco_id =10;
select nome as "Cidades do ES:" from cidade where fk_estado_id = 1;
select nome, dataocorrencia, age(dataocorrencia) as "Quanto tempo se passou", age(dataocorrencia) - age(dataregistro) as "Tempo até registrar" from ocorrencia inner join pessoa on (ocorrencia.fk_pessoafisica_fk_pessoa_id=pessoa.id);
select date_part('year',MAX(dataocorrencia)) - date_part('year',MIN(dataocorrencia)) as "Diferença da data mais recente e da mais antiga (Em anos)" from ocorrencia;