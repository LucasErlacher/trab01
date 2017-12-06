# TRABALHO 01:  Mapa de Ocorrências
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Tarcisio Bruni Rangel: tarcisiobruni@hotmail.com<br>
Lucas Erlacher Rodrigues: lucaserlacher@hotmail.com<br>
Caio Abelar Kinupp Monteiro: ckinupp@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados Mapa de Ocorrências.
<br>A priori este projeto foi visto como potencial para se tornar um sistema real que contribuiria diretamente para a tomada de decisões no setor da segurança pública, visto que hoje há uma falha muito grande na forma de policiamento das ruas e bairros, sendo prejudicial até mesmo ao próprio morador. Outra grande motivação para o desenvolvimento do mesmo é a possibilidade de tornar este projeto em uma ferramenta que permita aos moradores de qualquer município do ES cobrar aos órgãos responsáveis pela devida patrulha.<br>

### 3.MINI-MUNDO<br>

<p>O <strong>Mapa de Ocorrências</strong> (ou Crime) é um sistema no qual reúne dados dos boletins de ocorrência gerados pelos órgãos de segurança pública e cadastra em um banco de dados com todas essas informações de forma organizada. A partir desses dados é possível fazer consultas mais simples como informações de um boletim individual, ou mesmo uma análise mais profunda como mapas de calor, e cruzamento de informações para obter insights. O BO é composto por: <strong>Endereço</strong> (Logradouro, Número, Complemento, Bairro, Cidade, Estado, CEP, Tipo de Local), <strong>Comunicante</strong> (Nome, CPF, RG, Sexo, Data de Nascimento, Telefone, E-mail, Estado Civil, Nacionalidade, Profissão, Naturalidade), <strong>Ocorrência</strong> (Código de ocorrência, Data da Ocorrência, Data do Registro, Método de Registro, Local da Ocorrência, Unidade de Registro), <strong>Delegacia</strong> (Código da delegacia, unidade, CNPJ, Telefone, Localização, número de ocorrências atendidas), <strong>Usuário</strong> (Nome, CPF, RG, ID, Senha, Tipo).</p>
<p>Com todos os dados disponíveis, a forma de continuar alimentando o banco de dados do sistema para mantê-lo atualizado seria através do uso de Web Crowlings que buscariam em bases de dados abertas ja existentes de outros órgãos de segurança. É importante salientar que o sistema será atualizado todos os dias pela madrugada (especificamente às 3 horas da manhã) para que não ocorra nenhuma sobrecarga dos servidores em momentos de intensa utilização.</p>
<p>Na tabela que o sistema deverá gerar, contará com a quantidade total de ocorrências em cada município e depois poderá ser visto em categorias diferentes (conforme desejado pelo usuário), além de permitir visualizar o percentual correspondente ao total da quantidade de infrações registradas no estado. Quanto o mapa de calor citado, o sistema deve permitir visualizar a tabela em forma de um mapa do estado colorindo os municípios com cores que representam uma determinada taxa correspondente ao total de ocorrências, com a finalidade de tornar o sistema interativo ao usuário.</p>
<p>Este sistema tem um propósito de atender uma grande diversidade de usuários. Servirá desde informações para um usuário a respeito de um local que deseja visitar e então opta por fazer uma consulta sobre os índices de furto no local, até a usuários que trabalham em órgãos de Segurança Pública que desejam efetuar uma reorganização de patrulhamento na região a fim de diminuir os índices de ocorrência de uma determinada natureza.</p>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

Neste ponto a codificação não é necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas. <br>
O mockup busca apresentar as funções de forma bem simplificadas em vista do projeto real, mostrando a interface da delegacia e do usuário, em que são permitidos a realização de cadastros e consultas, tudo voltado para as ocorrências. <br>

Mockup: https://github.com/mapadocrime/trab01/blob/master/Trabalho%20de%20BD.pdf<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
Versão 1.0:

Tabela 1.1 - <a href="https://github.com/mapadocrime/trab01/blob/master/images/Lugar.pdf">Lugar</a> <br>
Tabela 1.2 - <a href="https://github.com/mapadocrime/trab01/blob/master/images/Pessoa.pdf">Pessoa</a> <br>
Tabela 1.3 - <a href="https://github.com/mapadocrime/trab01/blob/master/images/Ocorrencia.pdf">Ocorrencias</a> <br>
Tabela 1.4 - <a href="https://github.com/mapadocrime/trab01/blob/master/images/Delegacias.pdf">Delegacia</a> <br>
Tabela 1.5 - <a href="https://github.com/mapadocrime/trab01/blob/master/images/Usu%C3%A1rios.pdf">Usuários</a> <br>

Versão 2.0:

Tabela Normalizada:
https://github.com/mapadocrime/trab01/blob/master/images/Tabelas_v2.pdf

Versão 3.0:

Tabela Normalizada e Atualizada:
https://github.com/mapadocrime/trab01/blob/master/Tabel%C3%A3o%20(GIT)%20-%20GERAL.pdf

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
   a) O sistema proposto poderá fornecer:
<p>O sistema do projeto desenvolvido será capaz de fornecer informações sobre as ocorrências para os usuários em formatos diversos, são eles: Mapa de Calor (torna possível a visualização do estado indicando as taxas de crimes conforme uma cor em específico), Tabela e Relatório (Que será gerado um gráfico formato de pizza comparando dados que o usuário filtrou). Além destas, o usuário poderá ver a tabela de delegacias, etc. </p>
   <p>b) Lista com os principais relatórios:<br>
 - Lista de Boletins Separados por categorias;<br>
    - Mapa de calor;<br>
    - Gráfico;<br>
    - Lista de Delegacias;<br>
    - Tabelas com dados do tipo de crime e Estatísticas;<br>
    - Lista de Endereços.<br></p>
    
>## Marco de Entrega 01 em: (Data definida no cronograma)<br>

### 5.MODELO CONCEITUAL<br>

![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/conceitual.png "Modelo Conceitual")

        
    
#### 5.1 Validação do Modelo Conceitual
    [Sistema de Eventos]: [Harã Heique, Edmilton Júnior e Guilherme Bodart]
    [RodoBus]: [Hugo Ramalho, Maria Luiza e Vitor Salzman]

#### 5.2 DECISÕES DE PROJETO
    [PESSOA]: Tabela que contem dados comuns tanto de pessoa física quanto pessoa jurídica: nome.
    [DELEGACIA]: Tabela que contém os dados relevantes da Pessoa Jurídica Delegacia
    [PESSOAFISICA]: Tabela que contém os dados relevantes de uma pessoa física.
    
    Essa decisão de generalizar atributos de Pessoa Física e Jurídica foi tomada utilizando o conceito de especialização do BrModelo para evitar duplicação de atributos no projeto.

#### 5.3 DESCRIÇÃO DOS DADOS 
    https://github.com/mapadocrime/trab01/blob/master/images/Descri%C3%A7%C3%A3o%20dos%20Dados.pdf


### 6	MODELO LÓGICO<br>
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/logico.png "Modelo Lógico")

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>
        https://github.com/mapadocrime/trab01/blob/master/7_fisico.sql
          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        https://github.com/mapadocrime/trab01/blob/master/8.1_script.sql

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        https://github.com/mapadocrime/trab01/blob/master/8.2_create_insert.sql
        
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        https://github.com/mapadocrime/trab01/blob/master/8.3_BD_drop_create_insert.sql


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>   
   https://github.com/mapadocrime/trab01/blob/master/select_tudo_todas.sql
   
      select * from bairro;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_bairro_.png "Resultado da Tabela Usuário")<br>
   
      select * from cidade;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_cidade_.png "Resultado da Tabela Usuário")<br>
   
      select * from contato;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_contato_.png "Resultado da Tabela Usuário")<br>
   
      select * from delegacia;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_delegacia_.png "Resultado da Tabela Usuário")<br>
   
      select * from endereco;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_endereco_.png "Resultado da Tabela Usuário")<br>
   
      select * from estado;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_estado_.png "Resultado da Tabela Usuário")<br>
   
      select * from estadocivil;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_estadocivil.png "Resultado da Tabela Usuário")<br>
   
      select * from logradouro;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_logradouro.png "Resultado da Tabela Usuário")<br>
   
      select * from nacionalidade;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_nacionalidade.png "Resultado da Tabela Usuário")<br>
   
      select * from ocorrencia;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_ocorrencia.png "Resultado da Tabela Usuário")<br>
   
      select * from ocorrencia_tipoocorrencia;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_ocorrencia_tipoocorrencia.png "Resultado da Tabela Usuário")<br>
   
      select * from pessoa;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_pessoa.png "Resultado da Tabela Usuário")<br>
   
      select * from pessoafisica;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_pessoafisica.png "Resultado da Tabela Usuário")<br>
   
      select * from profissao;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_profissao.png "Resultado da Tabela Usuário")<br>
   
      select * from profissao_pessoa;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_profissao_pessoa.png "Resultado da Tabela Usuário")<br>
   
      select * from sexo;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_sexo.png "Resultado da Tabela Usuário")<br>
   
      select * from tipocontato;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_tipocontato.png "Resultado da Tabela Usuário")<br>
   
      select * from tipoocorrencia;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_tipoocorrencias.png "Resultado da Tabela Usuário")<br>
   
      select * from usuario;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/topico9a/Recortados/select_usuario.png "Resultado da Tabela Usuário")<br>
   
   
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
   https://github.com/mapadocrime/trab01/blob/master/select_where.sql <br>
   
      select * from ocorrencia where fk_endereco_id = 19;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_where/Recortados/select_where1.png "Select com uso do WHERE")<br>
   
      select nome from bairro where id=1;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_where/Recortados/select_where2.png "Select com uso do WHERE")<br>
   
      select nome from tipoocorrencia where id>=3;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_where/Recortados/select_where3.png "Select com uso do WHERE")<br>
   
      select nome from pessoa where fk_endereco_id = 9;
   
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_where/Recortados/select_where4.png "Select com uso do WHERE")<br>
   
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
   https://github.com/mapadocrime/trab01/blob/master/select_93.sql
   
   a) Criar no mínimo 2 com operadores lógico:<br>
   
      select * from endereco where fk_bairro_id >= 1  and fk_logradouro_id <= 2;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_Logic_Aritmetic_As/Recortados/select_logic1.png "Select com uso do WHERE")<br>
     
      select nome from pessoa where fk_endereco_id = 9 or fk_endereco_id = 11;
    
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_Logic_Aritmetic_As/Recortados/select_logic2.png "Select com uso do WHERE")<br>
   
   b) Criar no mínimo 2 com operadores aritméticos:<br>
   
      select nome, dataocorrencia, age(dataocorrencia) as "Quanto tempo se passou", age(dataocorrencia) - age(dataregistro) as "Tempo até registrar" from ocorrencia inner join pessoa on (ocorrencia.fk_pessoafisica_fk_pessoa_id=pessoa.id);

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_Logic_Aritmetic_As/Recortados/arithmetic1.png)<br>
   
      select date_part('year',MAX(dataocorrencia)) - date_part('year',MIN(dataocorrencia)) as "Diferença da data mais recente e da mais antiga (Em anos)" from ocorrencia;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_Logic_Aritmetic_As/Recortados/arithmetic2.png)<br>
   
   c) Criar no mínimo 2 com operação de renomear campo:<br>
   
      select nome as "Pessoas que moram no endereço 10: " from pessoa where fk_endereco_id =10;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_Logic_Aritmetic_As/Recortados/select_as.png)<br>
   
      select nome as "Cidades do ES:" from cidade where fk_estado_id = 1;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_Logic_Aritmetic_As/Recortados/select_as2.png)<br>
     
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>
   https://github.com/mapadocrime/trab01/blob/master/select_like.sql
   
      select nome from pessoa where nome LIKE 'C%';

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_like/Recortados/select_like1_.png "Operador LIKE")<br>
   
      select nome from pessoa where nome LIKE '%VITÓRIA';

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_like/Recortados/select_like2_.png "Operador LIKE")<br>
   
      select nome from pessoa where nome LIKE '%LIVIA%';

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_like/Recortados/select_like3_.png "Operador LIKE")<br>
   
      select nome from pessoa where nome NOT LIKE 'C%';

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_like/Recortados/select_like4_.png "Operador LIKE")<br>
   
>## Marco de Entrega 03 em: (Data definida no cronograma)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
        /* UPDATE */
        update sexo set nome = 'NÃO INFORMADO' where id = 3;
        update pessoafisica set cpf = 17025193764 where rg = 1651;
        update nacionalidade set nome = 'BOLIVIANO' where nome = 'MEXICANO';

        /* DELETE */
        delete from bairro where id = 15;
        delete from cidade where nome = 'IBATIBA';
        delete from estadocivil where id = 4;
         
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        select nome from pessoa p inner join pessoafisica pf on p.id=fk_pessoa_id order by nome desc;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/join_order/1.join_order.png "Join e Order")<br>
   
        select concat(pessoa.nome,' mora no bairro ', bairro.nome) as "Informacao de endereco" from pessoa
         inner join pessoafisica on pessoa.id=pessoafisica.fk_pessoa_id
         inner join endereco on pessoa.fk_endereco_id=endereco.id
         inner join bairro on endereco.fk_bairro_id=bairro.id
         order by pessoa.nome desc;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/join_order/2.join_order.png "Join e Order")<br>
   
    select pessoa.nome,ocorrencia.dataocorrencia from pessoa
      inner join pessoafisica on pessoa.id=pessoafisica.fk_pessoa_id
      inner join ocorrencia on pessoafisica.fk_pessoa_id=ocorrencia.fk_pessoafisica_fk_pessoa_id
      where dataocorrencia > '2010/01/01'
      order by ocorrencia.dataocorrencia;


   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/join_order/3.join_order.png "Join e Order")<br>
   
    select * from bairro order by nome desc;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/join_order/4.join_order.png "Join e Order")<br>
   
    select * from cidade order by nome asc;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/join_order/5.join_order.png "Join e Order")<br>
   
    select concat(pessoa.nome,' mora na Cidade ', cidade.nome) as "Informacao de endereco" from pessoa
      inner join pessoafisica on pessoa.id=pessoafisica.fk_pessoa_id
      inner join endereco on pessoa.fk_endereco_id=endereco.id
      inner join cidade on endereco.fk_bairro_id=cidade.id
      order by pessoa.nome asc;

   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/join_order/6.join_order.png "Join e Order")<br>
   
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
         select cidade.nome, estado.nome from cidade right outer join estado on (cidade.fk_estado_id = estado.id)
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_left_right_join/right_join1.PNG)<br>
   
         select cpf, rg, datanascimento, cidade.nome from pessoafisica right outer join cidade on (pessoafisica.fk_cidade_id = cidade.id) order by cidade.nome
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_left_right_join/right_join2.PNG)<br>
   
         select nome, login, senha from pessoa left outer join usuario on(pessoa.id = usuario.id)
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_left_right_join/left_join1.PNG)<br>
         
         select nacionalidade.nome, count(pessoafisica.fk_nacionalidade_id) from nacionalidade left outer join pessoafisica on(nacionalidade.id = pessoafisica.fk_nacionalidade_id) group by nacionalidade.nome
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/select_left_right_join/left_join2.PNG)<br>
         
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        create view nomes as select pessoa.nome from pessoa
         select * from nomes;
         
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/self_join_view/1.self_join_view.png)<br>
   
      
        create view nomes_nascimento as  select pessoa.nome, pf.datanascimento from pessoa inner join pessoafisica pf on pessoa.id=pf.fk_pessoa_id order by pf.datanascimento
         select * from nomes_nascimento;
         
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/self_join_view/2.self_join_view.png)<br>
   
       select pessoa.nome, pf1.cpf, pf2.rg from pessoa inner join pessoafisica pf1 on pessoa.id=pf1.fk_pessoa_id inner join pessoafisica pf2 on pessoa.id=pf2.fk_pessoa_id;
      
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/self_join_view/3.self_join_view.png)<br>
   
       select u1.login, u2.senha from usuario u1 inner join usuario u2 on u1.id=u2.id
      
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/self_join_view/4.self_join_view.png)<br>
   
       select pf.rg,ocr1.dataocorrencia,ocr2.dataregistro from ocorrencia ocr1
         inner join ocorrencia ocr2 on ocr1.id=ocr2.id
         inner join pessoafisica pf on pf.fk_pessoa_id=ocr1.fk_pessoafisica_fk_pessoa_id;
      
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/self_join_view/5.self_join_view.png)<br>
      
       create view user_loguin as select u1.login, u2.senha from usuario u1 inner join usuario u2 on u1.id=u2.id
         select * from user_loguin
      
   ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/printscreen/self_join_view/6.self_join_view.png)<br>
   
   
   
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
