# Projeto-BD :game_die:	:dolphin:

Projetos de banco de dados e anotações feitas durantes as aulas do Bootcamp Database Experience, da Digital Innovation One. 

### Começando pelo primordial. Quais são os tipos de profissionais na área de desenvolvimento?

#### Sistema Desktop x Sistema Web <br/>
Ao se planejar o desenvolvimento de uma aplicação, deve se analisar qual o tipo de estrutura que uma aplicação terá.

#### Sistemas desktop: <br/>
São sistemas autônomos que podem ser instalados no computador. Geralmente a instalação é realizada por um arquivo executável. 

#### Sistemas web: <br/>
São sistemas baseados em tecnologias WEB, podendo ser acessados remotamente, por navegadores da internet sem instalações.

#### Mobile: <br/>
Softwares desenvolvidos para serem instalados em smartphones ou tablets para uso.

#### UX Designer: <br/>
Comportamento do profissional: *Pesquisa - Protótipos - Personas - Objetivos* <br/>
Processo que visa melhorar a satisfação do usuário com um produto ou serviço, melhorando usabilidade, acessibilidade e satisfação. Esse profissional analisa e 
procura entender as necessidade para construção de estruturas do projeto (wireframe) para o time de desenvolvimento seguir com a criação em prática do projeto.

#### UI Design: <br/>
Comportamento do profissional: *Design - Tipografia - Cores - Layout* <br/>
Podem ser profissionais diferentes ou o mesmo que o de UX. É o responsável em criar o que o usuário vai ver e utilizar (design, cores, fontes, imagens, etc).
Entendendo por padrões visuais o wireframe proposto pelo UX design, dando vida ao projeto.

#### Desenvolvedor FrontEnd: <br/>
Desenvolvedor responsável pela parte visual do site ou aplicativo, para que o usuário possa interagir com o sistema através de interfaces gráficas e intuitivas,
sempre se baseando em tecnologias de base WEB. (HTML, CSS e JS).

#### Desenvolvedor BackEnd: <br/>
Acesso ao conteúdo por trás da aplicação. O trabalho do backend é fazer o acompanhamento para retornar requisições feitas pelo cliente no frontend. As regras de
negócio e validações são aplicadas no backend do projeto para que o cliente tenha resposta somente de informações necessárias. Esse processamento é feito através
de APIs para que as aplicações conversem entre si, processando as informações para resposta. Um desenvolvedor backend precisa ter pequenas noções de segurança para
entender as estruturas de acesso ás aplicações.

#### Desenvolvedor FullStack: <br/>
Um dev FullStack possui habilidades e conhecimentos para acompanhamento ou desenvolvimento completo de um projeto, atuando em front e back ou com os dois.
Não necessariamente o fullstack irá atuar com os dois, mas terá conhecimento de tecnologias e processos de ambos para análise e suporte quando necessário.

#### QA - Quality Assurance: <br/>
É o profissional responsável pela análise da qualidade do código/sistema, garantindo a satisfação dos clientes e usuários. No desenvolvimento de software,
aplicar os métodos de QA geram confiança e segurança aos clientes, indicando que os produtosterão a qualidade esperada na etapa de implantação. O profissional deve
ter um conhecimento sobre as atividades do projeto, além de possuir perfil analítico para reportes de erros para a equipe de desenvolvimento.

#### Profissional de Cloud Computing: <br/>
Responsável pela infra de nuvem oferecida aos clientes e empresas. Escolhe os sistemas, ambientes e tecnologias a serem utilizadas, como será feita a integração e
configuração dessa tecnologias para garantir o funcionamento da aplicação.

### Termos bem mencionados no âmbito do desenvolvimento

#### Modelo Cliente-Servidor: <br/>
É uma estrutura de aplicação que faz a distribuição das tarefas de trabalho entre os fornecedores de um recurso ou serviço, chamados servidores e os requerenes
chamados clientes.

#### Frameworks: <br/>
É um facilitador. Já traz diversas soluções pré  definidas, para descomplicar e otimizar o trabalho do desenvolvedor nas interações dos projetos e processos.
Ao ter familiaridade com um framework é aconselhável possuír experiência com a linguagem de programação que ele utiliza.

#### Infraestrutura: <br/>
São profissionais que atuam por trás do desenvolvimento, responsáveis por subir aplicações. Após a finalização do software, a versão fica disponibilizada em
modelo cliente-servidor, onde o cliente realiza requisições para acesso aos dados/informações/serviços salvos no banco daquela aplicação, tendo o seu armazenamento
em servidores.
É necessário a empresa/proprietário decidir como será feita a manutenção e onde será armazenada a aplicação, sendo em nuvens públicas ou privadas.
Para nuvens privadas, é necessário hardware de qualidade e por isso suas vantagens são:
1- Segurança da Tecnologia da Informação(lógica e física)
2- Mão de obra especializada(software e hardware)
3- Infraestrutura local

*Um servidor sempre utiliza SO especificos para servidores.*

#### Cloud: <br/>
Nuvem Pública são sistemas de armazenamento de dados via internet, que ao invés
de armazenamento em estrutura de servidores físicos que geralmente eram comuns, estão sendo
pouco a pouco deixados pois muitas organizações/empresas estão migrando seus dados para
sistemas baseados em nuvem, prezando pelo valor a ser pago em manutenções, e não
tendo a necessidade de possuir um time completo de infraestrutura, garantindo o foco
em outras atividades relacionadas aos sistemas.
Vantagens de migrar para a nuvem pública: <br/>
1- Preço(pagar somente o que usar) <br/>
2- Facilidade de contratação, configuração e infra <br/>
3- Escalabilidade <br/>
4- Performance <br/>

#### Mobile - Desenvolvimento Android: <br/>
O desenvolvimento backend pode ser feito tanto para mobile, quanto para web, o que muda são as interfaces gráficas(frontend). Dependendo da empresa, existe
somente um time que é responsável para aplicações mobile. Pode ser utilizado o Java ou o Kotlin para android ou Swift para iOS por exemplo.

#### Desenvolvimento híbrido(web): <br/>
Com um único código pode ser utilizado para desenvolvimento tanto android quando iOS ou web Os recursos são encapsulados através de frameworks para construção.
Ionic, Flutter e React Web são exemplos.

--------------------------

### Introdução a Banco de Dados

Quando pensamos em armazenamento de dados, o que nos ajuda a ter acesso de uma forma prática e simplificada a essas informações são os bancos de dados.
Todos os tipos de informações que circulam na internet e que são sempre enviados para a rede são chamados de dados.

*O que são Bancos de Dados?* <br/><br/>

Uma definição geral para BD é uma coleção de palavras, que dentre elas há relacionamentos entre dados, constituindo um banco de dados. Atualmente, temos
uma série de cenários que necessitam de estrutura de dados para possuírem organização. Um dado pode ser comumente considerado com um fato representado por
um acontecimento. É necessário ser tratado para ser transformado em informação. Um database é um conjunto de dados que transmitem informações. <br/><br/>

*Contexto de BD – representação do mundo real / Coerência / Propósito (uso + restrito)*
Um usuário realiza a requisição para o sistema onde uma API desenvolvida irá processar essa requisição para retornar à informação que foi solicitada.
A ação de fazer uma solicitação caracteriza uma mudança de estado, de atualização.

#### SGBDs  - Sistema de Gerenciamento de Banco de Dados <br/>
Sua principal atividade é gerenciar os dados e tipo de dados, realizar a inserção dos dados a serem tratados no software para serem feitas consultas e obter
retornos/acessos a relatórios e recuperar informações para serem trabalhadas. Vários grupos podem ter acessos simultâneos para administração. <br/>
Metadados: Informações que fornecem uma descrição concisa dos dados contidos no BD.
A ideia de criação de um SGBD foi feita em 1960 pela IBM com o intuito de diminuir o custo com funcionários, otimizando recursos e evitando sobrecarga em
desenvolvedores. O Modelo de BD relacional foi criado com base em cálculos e álgebra relacional, de nível generalista e transparente para o usuário.

#### Modelo hierárquico <br/>
Um banco de dados hierárquico consiste basicamente em um conjunto de registros conectados por meio de ligações. Toda a estrutura está organizada em um modelo de árvore ou também conhecido como modelo hierárquico. Cada registro filho pode ter apenas um registro pai. Um registro pai pode ter vários registros filho.
Modelo em Rede
Projetado como uma abordagem flexível para representar objetos e seus relacionamentos. Um recurso exclusivo do modelo de rede é seu esquema, que é visto como um gráfico onde os tipos de relacionamento são arcos e os tipos de objetos são nós.
Modelo Relacional
Classifica dados em tabelas, também conhecidas como relações, cada uma das quais consiste em colunas e linhas. Cada coluna lista um atributo da entidade em questão, como preço, código postal ou data de nascimento. Juntos, os atributos em uma relação são chamados de domínio. É utilizado comandos DDL para definição dos dados dentro da estrutura a ser trabalhada e comandos DML para manipulação dos dados existentes.
