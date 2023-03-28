import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MCUDEX',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/750x/33/52/ab/3352ab8738a429a1864d8e4775a67169.jpg'),
              fit: BoxFit.cover,
              
            ),
            
          ),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Bem-vindo ao MCUDEX!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0),
                        color: Colors.black,
                      ),                     
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Este é seu o catálogo do Universo Cinematografico da MARVEL',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(8.0),
                  children: [
                    MovieTile(
                      title: 'Capitão América: O Primeiro Vingador',
                      imageUrl:
                          'https://i.pinimg.com/564x/02/b8/84/02b884a268b902093ca195d9250e7d06.jpg',
                      summary:
                          'Após ser considerado inapto para o serviço militar, Steve Rogers entra como voluntário num projeto secreto e acaba tornando-se o Capitão América. Agora um super-herói, ele se dedica a defender os ideais dos Estados Unidos. \n       2011 ‧ Ação/Aventura ‧ 2h 4m',
                      
                    ),
                    MovieTile(
                      title: 'Capitã Marvel',
                      imageUrl:
                          'https://i.pinimg.com/564x/a4/61/a2/a461a207986a66cf705dc3ac3bded1c0.jpg',
                      summary:
                          'Em Capitã Marvel, Carol Danvers (Brie Larson) é uma ex-agente da Força Aérea norte-americana, que, sem se lembrar de sua vida na Terra, é recrutada pelos Kree para fazer parte de seu exército de elite. Inimiga declarada dos Skrull, ela acaba voltando ao seu planeta de origem para impedir uma invasão dos metaformos, e assim vai acabar descobrindo a verdade sobre si, com a ajuda do agente Nick Fury (Samuel L. Jackson) e da gata Goose. \n      2019 ‧ Ação/Fantasia/Ficção científica ‧ 2h 04min',
                    ),
                     MovieTile(
                      title: 'O Incrivel Hulk',
                      imageUrl:
                          'https://i.pinimg.com/564x/79/ca/50/79ca50a34ffc233654e746eade71de43.jpg',
                      summary:
                          'Vivendo escondido e longe de Betty Ross (Liv Tyler), a mulher que ama, o cientista Bruce Banner (Edward Norton) busca um meio de retirar a radiação gama que está em seu sangue. Ao mesmo tempo ele precisa fugir da perseguição do general Ross (William Hurt), seu grande inimigo, e da máquina militar que tenta capturá-lo, na intenção de explorar o poder que faz com que Banner se transforme no Hulk.\n       2008 ‧ Ação/Fantasia ‧ 1h 52m',
                    ),
                    MovieTile(
                      title: 'Homem de Ferro',
                      imageUrl:
                          'https://i.pinimg.com/564x/77/db/30/77db30beac242e89f6cf30cfcb666fe3.jpg',
                      summary:
                          'Tony Stark (Robert Downey Jr.) é um industrial bilionário, que também é um brilhante inventor. Ao ser sequestrado ele é obrigado por terroristas a construir uma arma devastadora mas, ao invés disto, constrói uma armadura de alta tecnologia que permite que fuja de seu cativeiro. A partir de então ele passa a usá-la para combater o crime, sob o alter-ego do Homem de Ferro\n       2008 ‧ Ação/Ficção-cientifica ‧ 2h 6m',
                    ),
                    MovieTile(
                      title: 'Homem de Ferro 2',
                      imageUrl:
                          'https://i.pinimg.com/564x/0d/94/41/0d9441f91e22756b9b1d329c1722dabb.jpg',
                      summary:
                          'Após confessar ao mundo ser o Homem de Ferro, Tony Stark (Robert Downey Jr.) passa a ser alvo do governo dos Estados Unidos, que deseja que ele entregue seu poderoso traje. Com a negativa, o governo passa a desenvolver um novo traje com o maior rival de Stark, Justin Hammer (Sam Rockwell). Jim Rhodes (Don Cheadle), o braço direito de Tony, é colocado no centro deste conflito, o que faz com que assuma a identidade de Máquina de Combate. Paralelamente, Ivan Vanko (Mickey Rourke) cria o alter-ego de Whiplash para se vingar dos atos da família Stark no passado. Para combater Whiplash e a perseguição do governo, Stark conta com o apoio de sua nova assistente, Natasha Romanoff (Scarlett Johansson), e de Nick Fury (Samuel L. Jackson), o diretor da S.H.I.E.L.D.\n       2010 ‧ Ação/Ficção-cientifica/Aventura ‧ 2h 4m',
                ),
                 MovieTile(
                      title: 'Thor',
                      imageUrl:
                          'https://i.pinimg.com/564x/e7/f8/4d/e7f84dded04f096e8dcc543eaab2fca3.jpg',
                      summary:
                          'Thor (Chris Hemsworth) estava prestes a receber o comando de Asgard das mãos de seu pai Odin (Anthony Hopkins) quando forças inimigas quebraram um acordo de paz. Disposto a se vingar do ocorrido, o jovem guerreiro desobedece as ordens do rei e quase dá início a uma nova guerra entre os reinos. Enfurecido com a atitude do filho e herdeiro, Odin retira seus poderes e o expulsa para a Terra. Lá, Thor acaba conhecendo a cientista Jane Foster (Natalie Portman) e precisa recuperar seu martelo, enquanto seu irmão Loki (Tom Hiddleston) elabora um plano para assumir o poder. Mas os guerreiros do Deus do Trovão fazem a mesma viagem para buscar o amigo e impedir que isso aconteça. Só que eles não vieram sozinhos e o inimigo está presente para uma batalha que está apenas começando.\n       2011 ‧ Ação/Aventura/Fantasia ‧ 1h 55m',
                    ),
                     MovieTile(
                      title: 'Os Vingadores ',
                      imageUrl:
                          'https://i.pinimg.com/564x/3c/b4/28/3cb428f7b5e7246ee9c2727862e423e4.jpg',
                      summary:
                          'Loki (Tom Hiddleston) retorna à Terra enviado pelos chitauri, uma raça alienígena que pretende dominar os humanos. Com a promessa de que será o soberano do planeta, ele rouba o cubo cósmico dentro de instalações da S.H.I.E.L.D. e, com isso, adquire grandes poderes. Loki os usa para controlar o dr. Erik Selvig (Stellan Skarsgard) e Clint Barton/Gavião Arqueiro (Jeremy Renner), que passam a trabalhar para ele. No intuito de contê-los, Nick Fury (Samuel L. Jackson) convoca um grupo de pessoas com grandes habilidades, mas que jamais haviam trabalhado juntas: Tony Stark/Homem de Ferro (Robert Downey Jr.), Steve Rogers/Capitão América (Chris Evans), Thor (Chris Hemsworth), Bruce Banner/Hulk (Mark Ruffalo) e Natasha Romanoff/Viúva Negra (Scarlett Johansson). Só que, apesar do grande perigo que a Terra corre, não é tão simples assim conter o ego e os interesses de cada um deles para que possam agir em grupo.\n      2012 Ação/Aventura/Ficção cientifica ‧ 2h 23m',
                    ),
                     MovieTile(
                      title: 'Homem de Ferro 3',
                      imageUrl:
                          'https://i.pinimg.com/564x/3b/aa/8a/3baa8a0301dc10d34cd58340ad4edd99.jpg',
                      summary:
                          'Desde o ataque dos chitauri a Nova York, Tony Stark (Robert Downey Jr.) vem enfrentando dificuldades para dormir e, quando consegue, tem terríveis pesadelos. Ele teme não conseguir proteger sua namorada Pepper Potts (Gwyneth Paltrow) dos vários inimigos que passou a ter após vestir a armadura do Homem de Ferro. Um deles, o Mandarim (Ben Kingsley), decide atacá-lo com força total, destruindo sua mansão e colocando a vida de Pepper em risco. Para enfrentá-lo Stark precisará ressurgir do fundo do mar, para onde foi levado junto com os destroços da mansão, e superar seu maior medo: o de fracassar.\n       2013 ‧ Ação/Ficção cientifica ‧ 2h 11m',
                    ),
                     MovieTile(
                      title: 'Thor: O Mundo Sombrio',
                      imageUrl:
                          'https://i.pinimg.com/564x/b1/c3/24/b1c32475160f61f01ca516d10629e46e.jpg',
                      summary:
                          'Enquanto Thor (Chris Hemsworth) liderava as últimas batalhas para conquistar a paz entre os Nove Reinos, o maldito elfo negro Malekith (Christopher Eccleston) acordava de um longo sono, sedento de vingança e louco para levar todos para a escuridão eterna. Alertado do perigo por Odin (Anthony Hopkins), o herói precisa contar com a ajuda dos companheiros Volstagg (Ray Stevenson), Sif (Jaimie Alexander), entre outros, e até de seu irmão, o traiçoeiro Loki (Tom Hiddleston), em um plano audacioso para salvar o universo do grande mal. Mas os caminhos de Thor e da amada Jane Foster (Natalie Portman) se cruzam novamente e, dessa vez, a vida dela está realmente em perigo.\n      2013 ‧ Ação/Fantasia/Aventura ‧ 1h 52m',
                    ),
                    
                     MovieTile(
                      title: 'Capitão América: Soldado Invernal',
                      imageUrl:
                          'https://i.pinimg.com/564x/06/7a/53/067a539720efcc5d8eec514db68d7141.jpg',
                      summary:
                          'Dois anos após os acontecimentos em Nova York (Os Vingadores - The Avengers), Steve Rogers (Chris Evans) continua seu dedicado trabalho com a agência S.H.I.E.L.D. e também segue tentando se acostumar com o fato de que foi descongelado e acordou décadas depois de seu tempo. Em parceria com Natasha Romanoff (Scarlett Johansson), também conhecida como Viúva Negra, ele é obrigado a enfrentar um poderoso e misterioso inimigo chamado Soldado Invernal, que visita Washington e abala o dia a dia da S.H.I.E.L.D., ainda liderada por Nick Fury (Samuel L. Jackson).\n       2014 ‧ Aventura/Ação/Ficção cientifica ‧ 2h 16m',
                    ),
                     MovieTile(
                      title: 'Guardiões da Galáxia',
                      imageUrl:
                          'https://i.pinimg.com/564x/c8/c6/37/c8c637f07e4c04bb811b1d8e9c816935.jpg',
                      summary:
                          'Peter Quill (Chris Pratt) foi abduzido da Terra quando ainda era criança. Adulto, fez carreira como saqueador e ganhou o nome de Senhor das Estrelas. Quando rouba uma esfera, na qual o poderoso vilão Ronan, da raça kree, está interessado, passa a ser procurado por vários caçadores de recompensas. Para escapar do perigo, Quill une forças com quatro personagens fora do sistema: Groot, uma árvore humanóide (Vin Diesel), a sombria e perigosa Gamora (Zoe Saldana), o guaxinim rápido no gatilho Rocket Racoon (Bradley Cooper) e o vingativo Drax, o Destruidor (Dave Bautista). Mas o Senhor das Estrelas descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, e logo o grupo deverá proteger o objeto para salvar o futuro da galáxia.\n      2014 ‧ Ficção cientifica/Ação ‧ 2h 01m',
                    ),
                     MovieTile(
                      title: 'Guardiões da Galáxia Vol. 2',
                      imageUrl:
                          'https://i.pinimg.com/564x/97/fc/26/97fc26afa57067c139c2028dcca9ba12.jpg',
                      summary:
                          'Agora já conhecidos como os Guardiões da Galáxia, os guerreiros viajam ao longo do cosmos e lutam para manter sua nova família unida. Enquanto isso tentam desvendar os mistérios da verdadeira paternidade de Peter Quill (Chris Pratt).\n      2017 ‧ Ação/Ficção cientifica/Comédia ‧ 2h 16m',
                    ),
                    MovieTile(
                      title: 'Vingadores: Era de Ultron',
                      imageUrl:
                          'https://i.pinimg.com/564x/cf/f8/ad/cff8ad6b151d9dd6a07de4d53f86a157.jpg',
                      summary:
                          'Tentanto proteger o planeta de ameaças como as vistas no primeiro Os Vingadores, Tony Stark busca construir um sistema de inteligência artifical que cuidaria da paz mundial. O projeto acaba dando errado e gera o nascimento do Ultron (voz de James Spader). Capitão América (Chris Evans), Homem de Ferro (Robert Downey Jr.), Thor (Chris Hemsworth), Hulk (Mark Ruffalo), Viúva Negra (Scarlett Johansson) e Gavião Arqueiro (Jeremy Renner) terão que se unir para mais uma vez salvar o dia.\n       2015 ‧ Ação/Aventura/Fantasia ‧ 2h 21m',
                    ),
                    MovieTile(
                      title: 'Homem Formiga',
                      imageUrl:
                          'https://i.pinimg.com/564x/19/16/ff/1916ff2ea4d628efbfdc58fb00e5ad77.jpg',
                      summary:
                          'Dr. Hank Pym (Michael Douglas) é o inventor da fórmula/ traje que permite o encolhimento. Anos depois da descoberta, precisa impedir que seu ex-pupilo Darren Cross (Corey Stoll) consiga replicar o feito e vender a tecnologia para HYDRA. Dr. Pym escolhe o trambiqueiro Scott Lang (Paul Rudd) à usar o traje do Homem-Formiga. Lang, que acabou de sair da prisão e está com dificuldade de achar um trabalho honesto, aceita.\n      2015 ‧ Ação/Ficção cientifica ‧ 1h 57m',
                    ),
                    MovieTile(
                      title: 'Capitão América: Guerra Civil',
                      imageUrl:
                          'https://i.pinimg.com/564x/11/1e/1a/111e1abacf24b6a68bee7a7e55ab02b0.jpg',
                      summary:
                          'Em Capitão América: Guerra Civil, Steve Rogers (Chris Evans) é o atual líder dos Vingadores, super-grupo de heróis formado por Viúva Negra (Scarlett Johansson), Feiticeira Escarlate (Elizabeth Olsen), Visão (Paul Bettany), Falcão (Anthony Mackie) e Máquina de Combate (Don Cheadle). O ataque de Ultron fez com que os políticos buscassem algum meio de controlar os super-heróis, já que seus atos afetam toda a humanidade. Tal decisão coloca o Capitão América em rota de colisão com Tony Stark (Robert Downey Jr.), o Homem de Ferro.\n       2016 ‧ Ação/Fantasia ‧ 2h 28m',
                    ),
                    MovieTile(
                      title: 'Viúva Negra',
                      imageUrl:
                          'https://i.pinimg.com/564x/40/ca/b8/40cab8bc9d39dd270b2060cd7374be87.jpg',
                      summary:
                          'Em Viúva Negra, acompanhamos a vida de Natasha Romanoff (Scarlett Johansson) após os eventos de Guerra Civil. Se escondendo do governo norte-americano devido a sua aliança com o time do Capitão América, Natasha ainda precisa confrontar partes de sua história, que ela tanto evita, quando surge uma conspiração perigosa ligada ao seu passado. Perseguida por uma força que não irá parar até derrotá-la, ela terá que lidar com sua antiga vida de espiã, e também reencontrar membros de sua família que deixou para trás antes de se tornar parte dos Vingadores, e lidar com esses relacionamentos quebrados. Ao reencontrar suas raízes, e deixar de evitar lidar com suas vulnerabilidades e traumas, a heroína poderá encontrar a força que tanto precisa.\n       2021 ‧ Ação/Espionagem/Aventura ‧ 2h 14m',
                    ),
                    MovieTile(
                      title: 'Pantera Negra',
                      imageUrl:
                          'https://i.pinimg.com/564x/1c/ef/f6/1ceff67baf46562642a6b852ef0a8b53.jpg',
                      summary:
                          "Em Pantera Negra, após a morte do rei T'Chaka (John Kani), o príncipe T'Challa (Chadwick Boseman) retorna a Wakanda para a cerimônia de coroação. Nela são reunidas as cinco tribos que compõem o reino, sendo que uma delas, os Jabari, não apoia o atual governo. T'Challa logo recebe o apoio de Okoye (Danai Gurira), a chefe da guarda de Wakanda, da irmã Shuri (Letitia Wright), que coordena a área tecnológica do reino, e também de Nakia (Lupita Nyong'o), a grande paixão do atual Pantera Negra, que não quer se tornar rainha. Juntos, eles estão à procura de Ulysses Klaue (Andy Serkis), que roubou de Wakanda um punhado de vibranium, alguns anos atrás.\n      2018 ‧ Ação/Aventura/Ficção ‧ 2h 15m",
                    ),
                      MovieTile(
                      title: 'Homem-Aranha: De Volta ao Lar',
                      imageUrl:
                          'https://i.pinimg.com/564x/15/7a/cd/157acd70abbf010254471c001a3ab163.jpg',
                      summary:
                          "Em Homem-Aranha: De Volta ao Lar, depois de atuar ao lado dos Vingadores, chegou a hora de Peter Parker (Tom Holland) voltar para casa e para a sua vida, já não mais tão normal. Lutando diariamente contra pequenos crimes nas redondezas, ele pensa ter encontrado a missão de sua vida quando o terrível vilão Abutre (Michael Keaton) surge amedrontando a cidade. O problema é que a tarefa não será tão fácil como ele imaginava.\n       2017 ‧ Ação/Aventura ‧ 2h 13m",
                    ),
                    MovieTile(
                      title: 'Doutor Estranho',
                      imageUrl:
                          'https://i.pinimg.com/564x/29/38/eb/2938eb299c9a2d85686776ac52c62287.jpg',
                      summary:
                          'Stephen Strange (Benedict Cumberbatch) leva uma vida bem sucedida como neurocirurgião. Sua vida muda completamente quando sofre um acidente de carro e fica com as mãos debilitadas. Devido a falhas da medicina tradicional, ele parte para um lugar inesperado em busca de cura e esperança, um misterioso enclave chamado Kamar-Taj, localizado em Katmandu. Lá descobre que o local não é apenas um centro medicinal, mas também a linha de frente contra forças malignas místicas que desejam destruir nossa realidade. Ele passa a treinar e adquire poderes mágicos, mas precisa decidir se vai voltar para sua vida comum ou defender o mundo.\n       2016 ‧ Fantasia/Aventura ‧ 1h 55m',
                    ),
                    MovieTile(
                      title: 'Thor: Ragnarok',
                      imageUrl:
                          'https://i.pinimg.com/564x/16/5d/39/165d391974b0eabf27a3e90c12420d93.jpg',
                      summary:
                          'Em Thor: Ragnarok, Thor (Chris Hemsworth) está preso do outro lado do universo. Ele precisa correr contra o tempo para voltar a Asgard e impedir o Ragnarok, a destruição de seu mundo, que está nas mãos da poderosa e implacável vilã Hela (Cate Blanchett).\n       2017 ‧ Ação/Fantasia ‧ 2h 11m',
                    ),
                    MovieTile(
                      title: 'Homem Formiga e a Vespa',
                      imageUrl:
                          'https://i.pinimg.com/564x/cc/b7/77/ccb777516be25cedcd9b934fd1f22ad7.jpg',
                      summary:
                          'Após ter ajudado o Capitão América na batalha contra o Homem de Ferro na Alemanha, Scott Lang (Paul Rudd) é condenado a dois anos de prisão domiciliar, por ter quebrado o Tratado de Sokovia. Diante desta situação, ele foi obrigado a se aposentar temporariamente do posto de super-herói. Restando apenas três dias para o término deste prazo, ele tem um estranho sonho com Janet Van Dyne (Michelle Pfeiffer), que desapareceu 30 anos atrás ao entrar no mundo quântico em um ato de heroísmo. Ao procurar o dr. Hank Pym (Michael Douglas) e sua filha Hope (Evangeline Lilly) em busca de explicações, Scott é rapidamente cooptado pela dupla para que possa ajudá-los em sua nova missão: construir um túnel quântico, com o objetivo de resgatar Janet de seu limbo.\n       2018 ‧ Ação/Ficção cientifica ‧ 1h 58m',
                    ),
                    MovieTile(
                      title: 'Vingadores: Guerra Infinita',
                      imageUrl:
                          'https://i.pinimg.com/564x/b4/63/1a/b4631ac1cbf77b391ca253675b4fed7a.jpg',
                      summary:
                          'Em Vingadores: Guerra Infinita, Thanos (Josh Brolin) enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.\n       2018 ‧ Aventura/Ação/Fantasia ‧ 2h 36m',
                    ),
                    MovieTile(
                      title: 'Vingadores: Ultimato',
                      imageUrl:
                          'https://i.pinimg.com/564x/69/0f/03/690f03695194733714fe3bbb240e56d2.jpg',
                      summary:
                          'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.\n      2019 ‧ Ação/Fantasia/Aventura ‧ 3h 01m',
                    ),
                    MovieTile(
                      title: 'Loki - [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/45/b0/ba/45b0ba04eded79d3af2a5257077fe21f.jpg',
                      summary:
                          'Baseada no famoso vilão do Universo Cinematográfico Marvel, Loki é uma série original do Disney+ que se passa após os eventos narrados em Vingadores: Ultimato. O spin-off segue os passos de Loki (Tom Hiddleston), mais conhecido como Deus da Trapaça, que conseguiu roubar o tesserato dos Vingadores durante a missão de recuperar as Joias do Infinito. Com o poder da gema do espaço, o Asgardiano começa a pular no tempo com a intenção de chegar a Midgard. Ao longo de sua jornada, ele acaba interferindo em momentos importantes da história da humanidade – seja para cumprir seus próprios objetivos, seja para se divertir um pouco. O que ele não sabe é que sua intervenção pode gerar uma catástrofe nas linhas do tempo e, assim, colocar em risco todo o universo.\n      2021 ‧ Aventura/Fantasia/Ficção cientifica ‧ 6 Episódios',
                    ),
                    MovieTile(
                      title: 'What If…? -  [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/cc/c5/cd/ccc5cdac5695479cad2dc68b602a9b5b.jpg',
                      summary:
                          'Dispoível no Disney+, What If… ? é uma série de animação que leva o público para um terreno desconhecido ao contar, de forma alternativa, momentos cruciais do Universo Cinematográfico Marvel, imaginando o que teria acontecido aos super-heróis se a história fosse totalmente diferente e se passasse em outra realidade.\n      2021 ‧ Fantasia/Ação/Animação ‧ 9 Episódios',
                    ),
                    MovieTile(
                      title: 'WandaVision - [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/a3/7a/0c/a37a0c91fa93779f310ac1de98d04a46.jpg',
                      summary:
                          'Após os eventos de Vingadores: Ultimato (2019), Wanda Maximoff/Feiticeira Escarlate (Elizabeth Olsen) e Visão (Paul Bettany) se esforçam para levar uma vida normal no subúrbio e esconder seus poderes. Mas a dupla de super-heróis logo começa a suspeitar que nem tudo está tão certo assim. Eles se encontram, na verdade, dentro de uma constante sitcom, que vai desde a década de 50 até os dias de hoje. Conforme o tempo passa, Wanda e Visão perdem o controle da situação, sem saber mais o que é real e o que é ficção. Eles ficam presos em um eterno vai e vem: da Era de Ouro da TV nos EUA, com imagens em preto e branco, ao presente - e vice-versa.\n       2021 ‧ Comédia/Fantasia/Ação ‧ 9 Episódios',
                    ),
                    MovieTile(
                      title: 'Falcão e o Soldado Invernal - [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/50/da/93/50da93ea64cf09a8237f7493ce140818.jpg',
                      summary:
                          'Na série do Disney+ Falcão e o Soldado Invernal, após receber o manto do Capitão América em Vingadores: Ultimato, Sam Wilson/Falcão (Anthony Mackie) luta para assumir o posto do herói. Ele se junta, então, a Bucky Barnes/Soldado Invernal (Sebastian Stan), embarcando em uma aventura mundial que vai colocar à prova as habilidades dos dois. Entre discussões e entendimentos, acompanhamos uma jornada no desenvolvimento da amizade entre ambos, ao mesmo tentam em que tentam deixar para trás os problemas do passado. Enquanto o Falcão sente a responsabilidade do escudo de Steve Rogers, Bucky tenta lidar com a própria culpa por suas ações enquanto estava sob comando da Hydra.\n       2021 ‧ Aventura/Fantasia/Ação ‧ 6 Episódios',
                    ),
                    MovieTile(
                      title: 'Shang-Chi e a Lenda dos Dez Anéis',
                      imageUrl:
                          'https://i.pinimg.com/564x/e4/3e/f4/e43ef486d233d8ddb66222b95ba8b6f5.jpg',
                      summary:
                          'Em Shang-Chi e a Lenda dos Dez Anéis, Shang-Chi (Simu Liu) é um jovem chinês que abandonou seu país e seu pai, que lhe treinou desde criança nas artes marciais para ser um assassino ao seu dispor. Seu pai porta Dez Anéis que lhe dão poderes e longevidade, vivendo por séculos. Porém ao conhecer a mãe de Shang-Chi, ele se apaixona e tenta mudar sua vida, mas ela morre anos depois de dar a luz para a irmã mais nova de Shang-Chi, voltando causar tumulto na China. Após completar 18 anos, Shang-chi foge de seu pai em uma missão que vingaria a morte de sua mãe, mas o passado segue Shang-Chi e agora seu pai está atrás do colar que poderia resgatar sua falecida mãe. Mas o que o pai de Shang-Chi não sabe é que o mal está à espreita e ele está caindo na armadilha de um antigo e poderoso mal.\n      2021 ‧ Ação/Fantasia ‧ 2h 12m',
                    ),
                    MovieTile(
                      title: 'Eternos',
                      imageUrl:
                          'https://i.pinimg.com/564x/74/d1/65/74d16510cdd7cefd28ffe6d946be0a80.jpg',
                      summary:
                          'Eternos são seres super dotados com características como imortalidade e manipulação de energia cósmica, e eles são frutos de experiências fracassadas de seu próprio criador, o Celestial Arishem, desde a criação da Terra há milhões de anos. Destinados a salvar o mundo e a raça humana dos Deviantes, seres também criados pelo Celestial, os Eternos então derrotam tais seres e seguem caminhos diferentes, esperando que seu criador volte com boas novas. Mas após séculos e milênios aguardando ele, o grupo de heróis imortais agora precisa se preparar para uma nova ameaça, e precisam lutar contra os Deviantes novamente para garantir a segurança da humanidade. Muitos conflitos internos podem surgir, entre o amor que sentem pela Terra e a necessidade de protegê-la acima de tudo, e a fé naquilo que está acima deles. Cada um deverá lutar pelo o que acredita, e defender o que for mais importante. Eternos se passa pouco tempo após os acontecimentos de Vingadores: Ultimato (2019), dentro do universo MCU, inspirado nos quadrinhos, em adaptação da Marvel Studios.\n       2021 ‧ Ficção cientifica/Fantasia/Ação ‧ 2h 37m',
                    ),
                       MovieTile(
                      title: 'Homem-Aranha: Longe de Casa',
                      imageUrl:
                          'https://i.pinimg.com/564x/a4/e0/85/a4e0855fb44679a62dcc57c2c9245f06.jpg',
                      summary:
                          'Em Homem-Aranha: Longe de Casa, Peter Parker (Tom Holland) está em uma viagem de duas semanas pela Europa, ao lado de seus amigos de colégio, quando é surpreendido pela visita de Nick Fury (Samuel L. Jackson). Precisando de ajuda para enfrentar monstros nomeados como Elementais, Fury o convoca para lutar ao lado de Mysterio (Jake Gyllenhaal), um novo herói que afirma ter vindo de uma Terra paralela. Além da nova ameaça, Peter precisa lidar com a lacuna deixada por Tony Stark, que deixou para si seu óculos pessoal, com acesso a um sistema de inteligência artificial associado à Stark Industries.\n       2019 ‧ Ação/Aventura ‧ 2h 10m',
                    ),
                       MovieTile(
                      title: 'Homem-Aranha: Sem Volta para Casa',
                      imageUrl:
                          'https://i.pinimg.com/564x/6b/8a/dc/6b8adc018bf709dd6fbe4273d2d02a4e.jpg',
                      summary:
                          'Em Homem-Aranha: Sem Volta para Casa, Peter Parker (Tom Holland) precisará lidar com as consequências da sua identidade como o herói mais querido do mundo após ter sido revelada pela reportagem do Clarim Diário, com uma gravação feita por Mysterio (Jake Gyllenhaal) no filme anterior. Incapaz de separar sua vida normal das aventuras de ser um super-herói, além de ter sua reputação arruinada por acharem que foi ele quem matou Mysterio e pondo em risco seus entes mais queridos, Parker pede ao Doutor Estranho (Benedict Cumberbatch) para que todos esqueçam sua verdadeira identidade. Entretanto, o feitiço não sai como planejado e a situação torna-se ainda mais perigosa quando vilões de outras versões de Homem-Aranha de outro universos acabam indo para seu mundo. Agora, Peter não só deter vilões de suas outras versões e fazer com que eles voltem para seu universo original, mas também aprender que, com grandes poderes vem grandes responsabilidades.\n       2021 ‧ Ação/Aventura/Fantasia ‧ 2h 28m',
                    ),
                    MovieTile(
                      title: 'Doutor Estranho no Multiverso da Loucura',
                      imageUrl:
                          'https://i.pinimg.com/564x/c9/c3/5e/c9c35efabf5f5ac734318dc9a582eb2d.jpg',
                      summary:
                          'Em Doutor Estranho no Multiverso da Loucura, após derrotar Dormammu e enfrentar Thanos nos eventos de Vingadores: Ultimato, o Mago Supremo, Stephen Strange (Benedict Cumberbatch), e seu parceiro Wong (Benedict Wong), continuam suas pesquisas sobre a Joia do Tempo. Mas um velho amigo que virou inimigo coloca um ponto final nos seus planos e faz com que Strange desencadeie um mal indescritível, o obrigando a enfrentar uma nova e poderosa ameaça. O longa se conecta com a série do Disney+ WandaVision e tem relação também com Loki. O longa pertence a fase 4 do MCU onde a realidade do universo pode entrar em colapso por causa do mesmo feitiço que trouxe os vilões do Teioso para o mundo dos Vingadores e o Mago Supremo precisará contar com a ajuda de Wanda (Elizabeth Olsen), que vive isolada desde os eventos de WandaVision.\n      2022 ‧ Fantasia/Ação/Aventura ‧ 2h 06m',
                    ),
                     MovieTile(
                      title: 'Hawkeye - [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/33/24/d4/3324d4f2059544b202474339fe230171.jpg',
                      summary:
                          'Após anos dedicados ao seu alter ego de Gavião Arqueiro, Clint Barton (Jeremy Renner) agora precisa passar a tocha adiante. A escolhida para ocupar o posto de heroína é Kate Bishop (Hailee Steinfeld), uma arqueira de apenas 22 anos. Quando uma imponente presença do passado de Barton ameaça acabar com sua família, os dois arqueiros são forçados a trabalhar juntos.\n      2021 ‧ Aventura/Ação ‧ 6 Episódios',
                    ),
                     MovieTile(
                      title: 'Cavaleiro da Lua - [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/36/15/3a/36153adb5d202bc490324a8af71068cb.jpg',
                      summary:
                          'Em Cavaleiro da Lua, durante um trabalho sujo, o mercenário Marc Spector (Oscar Isaac) sofre um acidente e acaba sendo abandonado por seus comparsas, ficando à beira da morte. Ele é, então, resgatado e levado para um templo egípcio, onde o deus da lua, Khonshu, lhe oferece uma segunda chance de viver em troca do seu corpo como hospedeiro. Ele sofre de transtorno de identidade dissociativa e, quando acorda, acredita ser Steven Grant, uma de suas várias personalidades alternativas. Steven é funcionário de uma loja e sofre de um grave problema de insônia, assim não tem lembrança alguma sobre o que aconteceu com Marc no templo egípcio. Quando começa a ter visões do Cavaleiro da Lua, a personificação de Khonshu em seu corpo, passa a acreditar que está perdendo sua sanidade e misturando real e fantasia. Ele, então, conhece Arthur Harrow (Ethan Hawke), líder de uma seita religiosa que incentiva Marc/Steven a abraçar o caos que sua vida se tornou e aceitar se tornar permanentemente o Cavaleiro da Lua.\n       2022 ‧ Aventura/Drama/Fantasia/Ação ‧ 6 Episódios',
                    ),
                     MovieTile(
                      title: 'Mulher Hulk: Defensoria de Heróis - [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/9e/68/43/9e68432663e76734bf037f5e1e79a6cf.jpg',
                      summary:
                          'Em Mulher-Hulk: Defensora de Heróis, Jennifer Walters (Tatiana Maslany) é uma advogada bem-sucedida que vive uma vida comum e tranquila até sofrer um grave acidente. Durante o imprevisto, ela acaba recebendo, acidentalmente, o sangue do seu primo, o cientista e super-herói Bruce Banner (Mark Ruffulo), vulgo Hulk. A partir daí, a vida da mulher muda completamente, enquanto ela se transforma na versão feminina da criatura verde. Agora, a advogada precisa aprender a controlar seus novos e intensos poderes e, mesmo contra sua vontade, se torna uma heroína com muita visibilidade. Além das nova habilidades, Jennifer também recebe uma inesperada promoção no trabalho: ela é encarregada de comandar a divisão de leis super-humanas e seu escritório utiliza sua nova fama como Mulher-Hulk para ganhar status. Enquanto se adapta a sua nova condição, será obrigada a enfrentar vilões como Abominação (Tim Roth) e Titania (Jameela Jamil).\n      2022 ‧ Comédia/Fantasia/Ação/Crime ‧ 9 Episódios',
                    ),
                     MovieTile(
                      title: 'Ms. Marvel - [SÉRIE]',
                      imageUrl:
                          'https://i.pinimg.com/564x/18/24/c6/1824c6939f6847fb557a916c19cfbbb4.jpg',
                      summary:
                          'Em Ms. Marvel, conhecemos Kamala Khan (Iman Vellani), uma jovem de 16 anos que cresceu em Jersey City. De origem paquistanesa, a adolescente é uma estudante e jogadora exemplar. Em seu tempo livre, Kamala gosta de escrever fanfics e tem um fascínio especial por super-heróis, particularmente pelos Vingadores e a Capitã Marvel. Contudo, a jovem geek tem enfrentado problemas para se encaixar em casa e fazer amigos na escola, já que poucos dos adolescentes ali possuem os mesmo interesses que ela. No entanto, a vida de Kamala muda drasticamente quando ela adquire superpoderes. Agora, com suas novas e misteriosas habilidades, a jovem precisa enfrentar a mesma realidade daqueles super heróis que tanto admira. Acima de tudo, Kamala percebe que ser superpoderosa é uma grande responsabilidade. Kamala terá de equilibrar ser uma super heroína com sua vida na escola, ao mesmo tempo em que passa pela experiência de ser de uma família muçulmana vivendo nos Estados Unidos.\n      2022 ‧ Drama/Ficção cientifica/Ação ‧ 6 Episódios',
                    ),
                     MovieTile(
                      title: 'Thor: Amor e Trovão',
                      imageUrl:
                          'https://i.pinimg.com/564x/d2/7b/4e/d27b4e7bf0f20b1672301e46aca32aea.jpg',
                      summary:
                          'Thor: Amor e Trovão é quarta aventura solo de Thor (Chris Hemsworth), personagem da Marvel, sendo a sequência direta de Thor: Ragnarok e o 29º filme do Universo Cinematográfico Marvel. Após os acontecimentos de Ultimato, Thor ansiando por um propósito, retorna a Nova Asgard e sua aposentadoria é interrompida por um assassino galáctico conhecido como Gorr (Christian Bale), o Carniceiro de Deus, que busca a extinção dos deuses. Para combater a ameaça, Thor pede a ajuda da Rainha Valquíria (Tessa Thompson), Korg (Taika Waititi) e Jane Foster (Natalie Portman), sua ex-namorada, que - para surpresa de Thor - inexplicavelmente consegue empunhar seu martelo mágico, Mjolnir, o que imbuiu Jane com o poder de Thor. Juntos, eles embarcam em uma aventura cósmica para descobrir o mistério da vingança do God Butcher e detê-lo antes que seja tarde demais.\n     2022 ‧ Aventura/Ação/Ficção cientifica ‧ 1h 59m',
                    ),
                    MovieTile(
                      title: 'Wakanda para Sempre',
                      imageUrl:
                          'https://i.pinimg.com/564x/fa/8f/42/fa8f42cc3ea7c8b29ed68f4fa78a48e8.jpg',
                      summary:
                          "Pantera Negra: Wakanda Para Sempre é a continuação do longa Pantera Negra, da Marvel, dirigido por Ryan Coogler e produzido por Kevin Feige. No filme, o mundo de Wakanda se expande. Após a morte do ator de T'Challa (Chadwick Boseman) o foco de Wakanda Para Sempre são os personagens em volta do Pantera Negra. Rainha Ramonda (Angela Bassett), Shuri (Letitia Wright), M'Baku (Winston Duke), Okoye (Danai Gurira) e as Dora Milage lutam para proteger a nação fragilizada de outros países após a morte de T'Challa. Enquanto o povo de Wakanda se esforça para continuar em frente neste novo capítulo, a família e amigos do falecido rei precisam se unir com a ajuda de Nakia (Lupita Nyong'o), integrante dos Cães de Guerra, e Everett Ross (Martin Freeman). Em meio a isso tudo, Wakanda ainda terá que aprender a conviver com a nação debaixo d'água, Talokan, e seu rei Namor (Tenoch Huerta).\n      2022 ‧ Ação/Aventura/Fantasia ‧ 2h 42m",
                    ),
                    MovieTile(
                      title: ' Homem-Formiga e a Vespa: Quantumania',
                      imageUrl:
                          'https://i.pinimg.com/564x/b3/1a/d6/b31ad65e0da558fda10e25995da69a32.jpg',
                      summary:
                          "Em Homem-Formiga e a Vespa: Quantumania, quando Cassie (Kathryn Newton), filha de Scott Lang (Paul Rudd), desenvolve um dispositivo que permitiria a comunicação com o reino quântico, o experimento termina em desastre: Cassie, Scott e sua companheira e heroína, Vespa, Hope van Dyne (Evangeline Lilly) involuntariamente se encontram no reino místico. Unindo forças com os pais de Hope, Hank Pym (Michael Douglas) e Janet van Dyne (Michelle Pfeiffer), o trio trabalha um caminho de volta enquanto os atrai para o misterioso mundo do Reino Quântico, onde encontram criaturas alienígenas e uma civilização oculta. Eles também descobrem que Janet, que ficou presa aqui por 30 anos, ainda esconde deles um ou dois segredos de seu passado: porque o misterioso Kang (Jonathan Majors), que tem a habilidade de passar, também está preso no quantum, a dimensão usada para viajar no tempo e no multiverso? E o mais importante: porque ele precisa da ajuda de Scott em uma missão importante? Será que o poderoso Kang pode ser confiável?\n     2023 ‧ Ação/Aventura/Ficção ‧ 2h 01m",
                    ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
  debugShowCheckedModeBanner: false,
);
}
}

class MovieTile extends StatelessWidget {
final String title;
final String imageUrl;
final String summary;

const MovieTile({
Key? key,
required this.title,
required this.imageUrl,
required this.summary,
}) : super(key: key);

@override
Widget build(BuildContext context) {
return InkWell(
onTap: () {
showDialog(
context: context,
builder: (BuildContext context) {
return AlertDialog(
title: Text(title),
content: SingleChildScrollView(
child: ListBody(
children: [
Image.network(imageUrl),
Text(summary),
],
),
),
actions: [
TextButton(
onPressed: () {
Navigator.of(context).pop();
},
child: Text('Fechar'),
),
],
);
},
);
},
child: Card(
child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
Expanded(
child: Image.network(
imageUrl,
fit: BoxFit.cover,
),
),
Padding(
padding: const EdgeInsets.all(8.0),
child: Text(
title,
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
),
),
),
],
),
),
);
}
}
