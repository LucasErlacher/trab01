/* UPDATE */
update sexo set nome = 'NÃO INFORMADO' where id = 3;
update pessoafisica set cpf = 17025193764 where rg = 1651;
update nacionalidade set nome = 'BOLIVIANO' where nome = 'MEXICANO';

/* DELETE */
delete from bairro where id = 15;
delete from cidade where nome = 'IBATIBA';
delete from estadocivil where id = 4;