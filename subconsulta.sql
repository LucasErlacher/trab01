#Consulta cpf das pessoas que estao dentro de outra consulta
select cpf from pessoafisica where fk_cidade_id in (select id from cidade where fk_estado_id = 1);

#Consulta nome do endereco que foi limitado por outra consulta
select nome from endereco where fk_bairro_id in (select id from bairro where fk_cidade_id = 2);

#Consulta o cpf de uma pessoa que foi limitado pelo estado civil de uma outra consulta
select cpf from pessoafisica where fk_estadocivil_id in (select id from estadocivil where nome = 'SOLTEIRO');