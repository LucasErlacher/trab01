1 - create view nomes as select pessoa.nome from pessoa
select * from nomes

2 - create view nomes_nascimento as  select pessoa.nome, pf.datanascimento from pessoa inner join pessoafisica pf on pessoa.id=pf.fk_pessoa_id order by pf.datanascimento
select * from nomes_nascimento

3 - select pessoa.nome, pf1.cpf, pf2.rg from pessoa inner join pessoafisica pf1 on pessoa.id=pf1.fk_pessoa_id inner join pessoafisica pf2 on pessoa.id=pf2.fk_pessoa_id

4 - select u1.login, u2.senha from usuario u1 inner join usuario u2 on u1.id=u2.id

5 - select pf.rg,ocr1.dataocorrencia,ocr2.dataregistro from ocorrencia ocr1
inner join ocorrencia ocr2 on ocr1.id=ocr2.id
inner join pessoafisica pf on pf.fk_pessoa_id=ocr1.fk_pessoafisica_fk_pessoa_id;


6 - create view user_loguin as select u1.login, u2.senha from usuario u1 inner join usuario u2 on u1.id=u2.id
select * from user_loguin