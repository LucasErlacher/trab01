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
<p>Com todos os dados disponíveis, a única forma de continuar alimentando o banco de dados do sistema para mantê-lo atualizado seria através dos funcionários de uma delegacia, que por sua vez possuirão usuários próprios representando o órgão responsável pelos registro das ocorrências. É importante salientar que o sistema será atualizado todos os dias pela madrugada (especificamente às 3 horas da manhã) para que não ocorra nenhuma sobrecarga dos servidores em momentos de intensa utilização.</p>
<p>Na tabela que o sistema deverá gerar, contará com a quantidade total de ocorrências em cada município e depois poderá ser visto em categorias diferentes (conforme desejado pelo usuário), além de permitir visualizar o percentual correspondente ao total da quantidade de infrações registradas no estado. Quanto o mapa de calor citado, o sistema deve permitir visualizar a tabela em forma de um mapa do estado colorindo os municípios com cores que representam uma determinada taxa correspondente ao total de ocorrências, com a finalidade de tornar o sistema interativo ao usuário.</p>
<p>Este sistema tem um propósito de atender uma grande diversidade de usuários. Servirá desde informações para um usuário a respeito de um local que deseja visitar e então opta por fazer uma consulta sobre os índices de furto no local, até a usuários que trabalham em órgãos de Segurança Pública que desejam efetuar uma reorganização de patrulhamento na região a fim de diminuir os índices de ocorrência de uma determinada natureza.</p>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Mockup: https://github.com/mapadocrime/trab01/blob/master/Trabalho%20de%20BD.pdf<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
    Tabela 1.1
    ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/Lugar.pdf "Tabela Lugar")
    Tabela 1.2
    ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/Pessoa.pdf "Tabela Pessoa")
    Tabela 1.3
    ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/Ocorrencia.pdf "Tabela Ocorrencia")
    Tabela 1.4
    ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/Delegacias.pdf "Tabela Delegacias")
    Tabela 1.5
    ![Alt text](https://github.com/mapadocrime/trab01/blob/master/images/Usu%C3%A1rios.pdf "Tabela Usuários")
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com a tabela final na conclusão do trabalho
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?
<p>O sistema do projeto desenvolvido será capaz de fornecer informações sobre as ocorrências para os usuários em formatos diversos, são eles: Mapa de Calor (torna possível a visualização do estado indicando as taxas de crimes conforme uma cor em específico), Tabela e Relatório (Que será gerado um gráfico formato de pizza comparando dados que o usuário filtrou). Além destas, o usuário poderá ver a tabela de delegacias, etc. </p>
    b) Crie uma lista com os 10 principais relatórios que podero ser obtidos por meio do sistema proposto!
    
>## Marco de Entrega 01 em: (Data definida no cronograma)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/sample_MC.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
     a) Criar no mínimo 2 com operadores lógicos
     b) Criar no mínimo 2 com operadores aritméticos
     c) Criar no mínimo 2 com operação de renomear campo
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

>## Marco de Entrega 03 em: (Data definida no cronograma)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
