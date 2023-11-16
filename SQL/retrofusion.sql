-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2023 a las 10:03:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `retrofusion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `usuario` varchar(100) NOT NULL,
  `contraseñaCambios` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`usuario`, `contraseñaCambios`) VALUES
('admin', '1'),
('aimar', 'aimar456'),
('egoitz', 'egoitz456'),
('luken', 'luken456'),
('uxue', 'uxue456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `usuario` varchar(100) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `email` varchar(100) NOT NULL,
  `descuentoUsado` tinyint(1) NOT NULL,
  `telefono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`usuario`, `dni`, `email`, `descuentoUsado`, `telefono`) VALUES
('cristiano', '87654321I', 'cristiano@gmail.com', 1, 612345678),
('jon', '22222222B', 'jonl@gmail.com', 1, 622222222),
('kepa', '11111111A', 'kepae@gmail.com', 0, 611111111),
('messi', '12345678I', 'leomessi@gmail.com', 0, 678912345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `fechaCompra` date NOT NULL,
  `estado` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `idProductos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`usuario`, `contraseña`, `nombre`, `apellido1`, `apellido2`) VALUES
('admin', '1', 'admin', 'admin', 'admin'),
('aimar', 'aimar123', 'Aimar', 'Etxenagusia', 'Berriozabalgoitia'),
('cristiano', 'ronaldo', 'Cristiano', 'Ronaldo', 'dos Santos Aveiro'),
('egoitz', 'egoitz123', 'Egoitz', 'Urrutia', 'Del Fresno'),
('jon', 'jonl', 'Jon', 'Altuna', 'Urrutia'),
('kepa', 'kepae', 'Kepa', 'Gomez', 'Gutierrez'),
('luken', 'luken123', 'Luken', 'Idirin', 'Filibi'),
('messi', 'leomessi', 'Lionel Andres', 'Messi', 'Cuccittini'),
('uxue', 'uxue123', 'Uxue', 'De Oliveira', 'Santos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(2550) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` double NOT NULL,
  `ofertas` int(11) NOT NULL,
  `urlImagen` varchar(255) NOT NULL,
  `plataforma` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `stock`, `precio`, `ofertas`, `urlImagen`, `plataforma`, `categoria`) VALUES
(1, 'Fifa 2023', 'FIFA 23 de EA SPORTS da vida a la acción y el realismo del fútbol en el Juego del mundo. Disputa los torneos más importantes del fútbol con la Copa del Mundo de la FIFA masculina y femenina que llegarán a FIFA 23 durante la temporada, juega por primera vez en la historia con equipos femeninos de clubes y disfruta de las funciones de juego cruzado, que harán más fácil jugar contra tus colegas. Disfruta de una nueva forma de jugar y crear la plantilla de tus sueños con Momentos de FUT y un sistema de química renovado en FIFA Ultimate Team.\r\nHaz realidad tus sueños en el modo Carrera definiendo tu personalidad como jugador y gestionando clubes como algunos de los nombres más conocidos del mundo del fútbol. VOLTA Football y Clubes Pro aportarán más personalidad al campo gracias a los nuevos niveles de personalización y a la jugabilidad mejorada en las calles y los estadios. Da igual como juegues, disfruta del juego del mundo con más de 19 000 futbolistas, 700 equipos, 100 estadios y 30 ligas, incluidas la UEFA Champions League, la Premier League, la nueva Barclays FA Women\'s Super League y la France D1 Arkema con un realismo inigualable en FIFA 23.', 40, 79.95, 10, '../img/fifa/fifa1.jpg-../img/fifa/fifa2.jpg-../img/fifa/fifa3.jpg-../img/fifa/fifa4.jpg-../img/fifa/fifa5.jpg', 'XboxOne-PS5-PS4-NintendoSwitch-PC', 'Deporte'),
(2, 'Red Dead Redemption 2', 'América, 1899. El ocaso del Salvaje Oeste ha comenzado y las fuerzas de la ley dan caza a las últimas bandas de forajidos.\r\n\r\nLos que no se rinden o sucumben, son asesinados. Tras un desastroso atraco fallido en la ciudad de Blackwater, Arthur Morgan y la banda de Van der Linde se ven obligados a huir. Con agentes federales y los mejores cazarrecompensas de la nación pisándoles los talones, la banda deberá atracar, robar y luchar, para sobrevivir en su camino por el escabroso territorio del corazón de América. Mientras las divisiones internas aumentan y amenazan con separarlos a todos, Arthur deberá elegir entre sus propios ideales y la lealtad a la banda que lo vio crecer.\r\n\r\nDe los creadores de Grand Theft Auto V y Red Dead Redemption, Red Dead Redemption 2 es una historia épica sobre la vida en América en el umbral de una nueva era.', 20, 19.99, 0, '../img/rdr2/rdr1.jpg-../img/rdr2/rdr2.jpg-../img/rdr2/rdr3.jpg-../img/rdr2/rdr4.jpg-../img/rdr2/rdr5.jpg', 'XboxOne-PS4-NintendoSwitch-PC', 'Accion-Aventura'),
(3, 'Elden Ring', 'La Orden Dorada está rota. Álzate, Sinluz, y que la gracia te guíe para abrazar el poder del Círculo de Elden y encumbrarte como señor del Círculo en las Tierras Intermedias. \r\n\r\nELDEN RING es un juego de rol y acción de ambientación fantástica desarrollado por FromSoftware Inc. y producido por BANDAI NAMCO Entertainment Inc. Está ambientando en un mundo lleno de misterios y peligros y se presenta como el juego más grande de FromSoftware hasta la fecha. \r\n\r\nESBOZO DE LA HISTORIA\r\n\r\nEn las Tierras Intermedias gobernadas por la Reina Márika, la Eterna, el Círculo de Elden, origen del Árbol Áureo, ha sido destruido.\r\n\r\nLos descendientes de Márika, todos semidioses, reclamaron los fragmentos del Círculo de Elden conocidos como Grandes Runas. Fue entonces cuando la demencial corrupción de su renovada fuerza provocó una guerra: la Devastación. Una guerra que supuso el abandono de la Voluntad Mayor.\r\n\r\nY ahora, la gracia que nos guía recaerá sobre el Sinluz desdeñado por la gracia del oro y exiliado de las Tierras Intermedias.\r\n\r\nTú que has muerto, pero vives, con tu gracia tiempo ha perdida, recorre la senda hacia las Tierras Intermedias más allá del neblinoso mar para postrarte ante el Círculo de Elden.\r\n\r\nY conviértete en el señor del Círculo.\r\n\r\nUN NUEVO MUNDO DE FANTASÍA \r\n\r\nRecorre las Tierras Intermedias, un nuevo mundo de fantasía ideado por Hidetaka Miyazaki, creador de la exitosa serie de videojuegos DARK SOULS, y por George R. R. Martin, autor de Canción de hielo y fuego, la serie de fantasía superventas según The New York Times. Desvela los misterios del poder del Círculo de Elden. Enfréntate a criaturas temibles y conoce a adversarios con pasados tumultuosos y personajes con sus propias motivaciones para ayudarte a avanzar o complicarte las cosas. \r\n\r\nEXPLORA EL MUNDO DE LAS TIERRAS INTERMEDIAS \r\n\r\nELDEN RING ofrece vastos parajes de fantasía y sombrías e intricadas mazmorras que están conectadas de forma fluida y sin interrupciones. Recorre este impresionante mundo a pie o a caballo, en solitario u online con otros jugadores. Sumérgete en las verdes llanuras, en los pantanos agobiantes, en las montañas tortuosas, en unos castillos que no auguran nada bueno y en otros parajes majestuosos. Todo ello, a una escala nunca antes vista en un juego de FromSoftware. \r\n\r\nUN SISTEMA DE JUEGO QUE DEFINIRÁ EL GÉNERO \r\n\r\nCrea a tu propio personaje en este refinado juego de rol y acción de FromSoftware y define tu estilo de juego a partir del amplio abanico de armas, poderes mágicos y habilidades que encontrarás ', 30, 64.99, 5, '../img/eldenring/er1.jpg-../img/eldenring/er2.jpg-../img/eldenring/er3.jpg-../img/eldenring/er4.jpg-../img/eldenring/er5.jpg', 'XboxOne-PS5-PS4-PC', 'Rol-Aventura'),
(4, 'The Legend of Zelda Breath of the Wild', 'Entra en un mundo de aventura\r\nOlvida todo lo que sabes sobre los juegos de The Legend of Zelda. Entra en un mundo de descubrimientos, exploración y aventura en The Legend of Zelda: Breath of the Wild, un nuevo juego de la aclamada serie que rompe con las convenciones. Viaja por praderas, bosques y cumbres montañosas para descubrir qué ha sido del asolado reino de Hyrule en esta maravillosa aventura a cielo abierto. Características - Explora las tierras de Hyrule como más te guste Escala torres y montañas en busca de nuevos destinos y sigue tu propio camino para llegar hasta ellos. Por el camino lucharás contra enormes enemigos, cazarás feroces bestias y recolectarás ingredientes para preparar las comidas y elixires que te permitirán subsistir durante tu aventura.\r\n\r\n- Más de 100 santuarios que descubrir y explorar\r\nLos santuarios salpican el paisaje de Hyrule y están esperando a ser descubiertos por ti en cualquier orden. Búscalos de diversas maneras y resuelve los diversos puzles que albergan. Ábrete camino entre las trampas e ingenios mecánicos de los santuarios para conseguir objetos especiales y otros objetos que te serán de ayuda en tu aventura.\r\n\r\n- Prepárate y equípate a conciencia\r\nUn mundo entero está esperando a que lo explores; necesitarás variedad de atuendos y equipamiento para llegar hasta todos sus rincones. Tendrás que abrigarte o vestir ropas más ligeras para adaptarte a climas gélidos y calores desérticos. Algunas prendas de ropa podrán incluso producir ciertos efectos sobre ti, como hacerte más rápido o sigiloso.\r\n\r\n- Luchar contra los enemigos requiere estrategia\r\nEl mundo está habitado por enemigos de todas las formas y tamaños. Cada uno tiene su propio método de ataque y armas, así que se impone pensar rápido y desarrollar las estrategias adecuadas para derrotarlos.\r\n', 15, 64.99, 0, '../img/zelda/zelda1.jpg-../img/zelda/zelda2.jpg-../img/zelda/zelda3.jpg-../img/zelda/zelda4.jpg-../img/zelda/zelda5.jpg', 'NintendoSwitch', 'Aventura-Rol'),
(5, 'Baldo: The guardian owls', 'Viaja a través de una tierra mágica repleta de misterios que desentrañar.\r\n\r\nBaldo: los Búhos Guardianes está repleto de desafiantes rompecabezas que resolver e intrincadas mazmorras que explorar. Atraviesa este cautivador mundo abierto como Baldo y conoce a un montón de personajes extravagantes e inolvidables, mientras luchas por descifrar la críptica profecía y frustrar el destino.\r\n\r\nDesde encantadores caprichos hasta emocionantes aventuras, descubre nuevas ciudades y sus peculiares habitantes, lucha contra feroces enemigos, localiza templos ocultos y recoge objetos tanto mágicos como mundanos para obtener nuevas y poderosas armas, o para ayudar a desvelar los innumerables secretos de esta extraña tierra.\r\n\r\nCaracterísticas:\r\n\r\nExplora numerosas mazmorras llenas de puzles, enemigos y trampas.\r\nUna larga y emocionante aventura de más de 80 horas.\r\nLucha contra muchos jefes y enemigos carismáticos.\r\nAcción, aventura, exploración y puzles: el mejor Zelda de los últimos años.\r\nDescubre un universo encantador, un verdadero homenaje a las producciones del Studio Ghibli.\r\nMejora el rendimiento de tu héroe, desbloquea nuevos poderes y armas.\r\nPasea libremente por un mundo abierto, descubre lugares secretos, conoce a muchos personajes.', 5, 16.99, 0, '../img/baldo/baldo1.jpg-../img/baldo/baldo2.jpg-../img/baldo/baldo3.jpg-../img/baldo/baldo4.jpg-../img/baldo/baldo5.jpg', 'PS4-NintendoSwitch', 'Rol'),
(6, 'Cuphead', 'Cuphead es un juego de acción clásico estilo \"dispara y corre\" que se centra en combates contra el jefe. Inspirado en los dibujos animados de los años 30, los aspectos visual y sonoro están diseñados con esmero empleando las mismas técnicas de la época, es decir, animación tradicional a mano, fondos de acuarela y grabaciones originales de jazz.\r\n\r\nJuega como Cuphead o Mugman (en modo de un jugador o cooperativo) y cruza mundos extraños, adquiere nuevas armas, aprende poderosos supermovimientos y descubre secretos ocultos mientras procuras saldar tu deuda con el diablo.\r\n\r\nLa edición incluye una expansión, 6 cartas, una tarjeta y artes exclusivos en el interior de cada carátula.', 13, 36.99, 8, '../img/cuphead/cp1.jpg-../img/cuphead/cp2.jpg-../img/cuphead/cp3.jpg-../img/cuphead/cp4.jpg-../img/cuphead/cp5.jpg', 'XboxOne-PS4-PS5-PC-NintendoSwitch', 'Accion'),
(7, 'Sekiro', 'Sekiro-Shadows Die Twice Dirigido por Hidetaka Miyazaki, Sekiro: Shadows Die Twice es un juego de acción y aventuras en tercera persona con elementos RPG. Esta propuesta single-player pone al jugador en el papel protagonista de un guerrero de noble corazón, cuya misión es rescatar a su amo, un joven señor, al tiempo que busca la venganza sobre su archienemigo. En el papel de “Sekiro” o “el lobo de un solo brazo”, los jugadores descubrirán las distintas formas de enfrentarse en combate a los enemigos de forma estratégica.', 30, 69.99, 30, '../img/sekiro/sekiro1.jpg-../img/sekiro/sekiro2.jpg-../img/sekiro/sekiro3.jpg-../img/sekiro/sekiro4.jpg-../img/sekiro/sekiro5.jpg', 'XboxOne-PS4-PS5-PC', 'Aventura-Accion'),
(8, 'Civilization VI', 'Civilization VI es la nueva entrega de la galardonada franquicia Civilization. Expande tu imperio, haz avanzar tu cultura y enfréntate a los mejores líderes de la historia. ¿Podrá tu civilización superar la prueba del tiempo?', 7, 59.99, 0, '../img/civilization6/c1.jpg-../img/civilization6/c2.jpg-../img/civilization6/c3.jpg-../img/civilization6/c4.jpg-../img/civilization6/c5.jpg', 'XboxOne-PS4-PS5-PC-NintendoSwitch', 'Estrategia'),
(9, 'Resident Evil 4', 'Sobrevivir es solo el principio.\r\n\r\nSeis años después de la catástrofe biológica en Raccoon City, el agente Leon S. Kennedy, uno de los supervivientes del desastre, ha sido enviado a rescatar a la hija del presidente, a quien han secuestrado. Siguiendo su rastro, llega a una apartada población europea, donde sus habitantes sufren un mal terrible. Así comienza esta historia de un arriesgado rescate y terror escalofriante donde se cruzan la vida y la muerte, y el miedo y la catarsis.\r\n\r\nCon una mecánica de juego modernizada, una historia reimaginada y unos gráficos espectacularmente detallados, Resident Evil 4 supone el renacimiento de un gigante del mundo de los videojuegos.\r\n\r\nRevive la pesadilla que revolucionó el género del survival horror.', 24, 42.99, 0, '../img/re4/re1.jpg-../img/re4/re2.jpg-../img/re4/re3.jpg-../img/re4/re4.jpg-../img/re4/re5.jpg-', 'PS5-PC', 'Accion'),
(10, 'Blasphemous II', 'La segunda escritura de la saga Blasphemous augura el retorno de El Penitente, con una historia que arranca desde el DLC gratuito Wounds of Eventide del juego original, donde el Corazón en el cielo anunció el regreso del Milagro y profetizó el nacimiento de un nuevo niño milagroso.\r\n\r\nDespertado en una nueva tierra extraña y desplazado de su lugar de descanso final, El Penitente vuelve a ser arrojado al interminable ciclo de vida, muerte y resurrección, sin más opción que explorar este peligroso nuevo mundo y descubrir sus secretos largo tiempo olvidados.\r\n\r\nHordas de grotescos enemigos se interpondrán en tu camino, aguardando el juicio final de la brutal mano de El Penitente, con titánicos jefes retorcidos que también acechan en la oscuridad, a la espera de una oportunidad para mandarte de vuelta a la tumba de la que saliste.\r\n\r\nAcabar con ellos no será fácil, pero como Blasphemous 2 ofrece más posibilidades para personalizar y mejorar tu repertorio de habilidades, además de varias armas únicas que empuñar con tus ansias de justicia y furia infinita, la victoria podría estar a tu alcance.\r\n\r\n En última instancia, solo hay una cosa segura... que la penitencia nunca termina.\r\n\r\nExplora un mundo no lineal más completo\r\n\r\nDespués de despertar en una extraña nueva tierra, tu aventura empieza de nuevo con una serie de paisajes encantadoramente grotescos, que rezuman atractivo gótico y están plagados de trampas despiadadas. Tú decides cómo abordar este mundo laberíntico, no hay decisiones incorrectas, solo cuentas que zanjar.\r\n\r\nCombate salvaje\r\n\r\nEl Penitente no tiene piedad y, con su repertorio de nuevas armas que ofrecen nuevos movimientos, ejecuciones brutales y combos ampliados, la destrucción caerá sobre cualquiera que se interponga en su camino.\r\n\r\nPersonaliza tu sesión de juego a tu manera.\r\n\r\nBlasphemous 2 ofrece nuevas formas de jugar y te brinda la capacidad de personalizar y mejorar tu conjunto de habilidades básicas, además de varias armas nuevas únicas con las que realizar ataques devastadores contra tus enemigos.\r\n\r\nGrandiosas batallas apasionantes contra jefes\r\n\r\nHordas de enemigos monstruosos se interponen entre tú y tu objetivo; jefes retorcidos con rutinas de ataque exclusivas y capacidades aplastantes pondrán a prueba tus habilidades mientras luchas por alzarte con la victoria cuando las aguas se calmen.\r\n\r\nExplora un completo mundo nuevo\r\n\r\nTe aguarda todo un mundo nuevo rebosante de nuevos PNJ misteriosos con los que interactuar; unos te ofrecerán su ayuda y otros te la pedirán, mientras q', 13, 36.99, 0, '../img/blas2/blas1.jpg-../img/blas2/blas2.jpg-../img/blas2/blas3.jpg-../img/blas2/blas4.jpg-../img/blas2/blas5.jpg', 'XboxOne-PS4-PC-NintendoSwitch', 'Accion-Aventura'),
(11, 'XCOM 2', 'La Tierra ha cambiado. Han pasado veinte años desde que los líderes mundiales se rindieran incondicionalmente ante las fuerzas alienígenas. XCOM, la última defensa del planeta, acabó destrozada y dispersa. Ahora, en XCOM 2, los alienígenas dominan la Tierra y construyen resplandecientes ciudades que prometen un futuro brillante para la humanidad mientras esconden siniestros planes y eliminan a todos los opositores a su nuevo orden.\r\n\r\nSolo quienes viven en los límites de la sociedad tienen un margen de libertad. Allí vuelve a reunirse una fuerza para luchar por la humanidad. Siempre a la fuga y con todo en su contra, las fuerzas restantes de XCOM deben encontrar el modo de avivar una resistencia global y eliminar la amenaza alienígena de una vez por todas.\r\n\r\nCaracterísticas:\r\n\r\n- XCOM a la fuga: Toma el mando del Avenger, una nave alienígena de suministro convertida en el cuartel general móvil de XCOM. Guía a tus fuerzas de combate por todo el mundo, consigue el apoyo del pueblo y haz públicos los siniestros planes de los alienígenas.\r\n\r\n- Recluta combatientes de la resistencia: Cinco clases de soldados, cada una con su propio árbol de habilidades y con nuevas capacidades de clase como Ímpetu que te permiten crear soldados concretos para tus tácticas.\r\n\r\n- Combate táctico de guerrilla: Nuevos sistemas de juego que ofrecen mayor flexibilidad táctica en combate. El estado del mundo afecta al entorno de cada misión. Usa la ocultación para emboscar a las patrullas enemigas. Saquea a los enemigos para conseguir equipo y artefactos. Rescata a los VIP y salva a tus camaradas caídos llevándolos al punto de extracción.\r\n\r\n- Una nueva clase de enemigos: Un nuevo elenco de enemigos que ofrece un desafío táctico único, desde nuevas y poderosas especies alienígenas hasta los matones de ADVENT del régimen alienígena.\r\n\r\n- Investiga desarrolla y mejora: Configura y construye salas en el Avenger para dar a XCOM nuevas capacidades en el campo de batalla. Usa a tus científicos e ingenieros para investigar, desarrollar y mejorar armas y blindajes para que se adapten a tus tácticas.\r\n\r\n- Cada misión es un desafío único: Embárcate en misiones por todo el mundo, desde tierras en plena naturaleza hasta el corazón de las megaciudades controladas por los alienígenas y las profundidades de lasinstalaciones alienígenas. Hay combinaciones virtualmente infinitas de mapas, misiones y objetivos.\r\n\r\n- Crea modificaciones personalizadas: Las herramientas centradas en la comunidad te permiten crear tu propia campaña, tácticas de juego, a', 3, 64, 50, '../img/xcom2/xcom1.jpg-../img/xcom2/xcom2.jpg-../img/xcom2/xcom3.jpg-../img/xcom2/xcom4.jpg', 'PS4-PC', 'Estrategia-Accion'),
(12, 'Formula 1', 'Apura la frenada\r\n\r\nApura la frenada en EA SPORTS F1 23, el videojuego oficial del 2023 FIA Formula One World Championship. Un nuevo capítulo del emocionante modo historia «Braking Point» te ofrece dramas a alta velocidad y rivalidades intensas. Compite rueda a rueda en los nuevos circuitos de Las Vegas y Catar y consigue recompensas y mejoras en F1 World. Las nuevas banderas rojas añaden un auténtico elemento estratégico y la función de distancia de carrera al 35 % ofrece más acción y emoción. Conduce los coches de 2023 actualizados, con la parrilla oficial de F1 y sus 20 pilotos y 10 equipos. Crea el equipo de tus sueños y compite para ganar en el modo Carrera profesional de Mi equipo, compite en pantalla dividida o en el multijugador ampliado con multiplataforma y socializa en las nuevas ligas de Racenet.\r\n\r\nCaracterísticas:\r\n\r\nEl modo historia «Braking Point» vuelve con un nuevo y emocionante capítulo con nuevas rivalidades y mucho más drama en F1 23.\r\n\r\nKonnersport Butler F1 Racing Team\r\n\r\nLa historia se centra en Konnersport Butler F1 Racing Team, un nuevo equipo ficticio que llega a la parrilla, en las temporadas 2022 y 2023 de F1. La joven estrella emergente Aiden Jackson no se lleva bien con su osado y arrogante compañero de equipo, Devon Butler. Cuando el futuro se ve amenazado por un problema personal, la hermana de Devon y reciente campeona de F2, Callie Mayer, entra en escena. Para crear la historia de Callie, el equipo de narrativa contó con la piloto de automovilismo británica Jamie Chadwick y la reportera de SkySports F1 Natalie Pinkham. El jefe de equipo, Casper Akkerman, tiene que sortear las dinámicas entre el equipo y la familia, además de las manipulaciones del padre de Devon y Callie (y patrocinador clave del equipo, Davidoff Butler). Mientras tu punto de vista cambia entre los distintos personajes, la historia progresa a través del juego y las escenas cinemáticas, dirigida por tus decisiones.\r\n\r\nF1 World:\r\n\r\nEl novedoso F1 World es tu nuevo centro para una gran variedad de contenidos y eventos diarios, semanales y diversos de la temporada, con un nuevo sistema de progreso del nivel técnico para tu viaje personalizado en la Formula 1. \r\n\r\nNuevos eventos\r\n\r\nCompleta nuevos desafíos y participa en diferentes series individuales competitivas diseñadas para llevarte en solitario por diversos modos, circuitos y experiencias en F1 23. Domina diferentes circuitos, mejora tus habilidades al volante, descubre el contenido de F2, compite en exhibiciones de superdeportivos y más. Los eventos in', 33, 74.99, 15, '../img/f1/f1.jpg-../img/f1/f2.jpg-../img/f1/f3.jpg-../img/f1/f4.jpg-../img/f1/f5.jpg', 'PS4-XboxOne', 'Deporte'),
(13, 'Farming Simulator 22', 'El sueño de cualquier granjero se hace realidad con la Edición Premium de Farming Simulator 22: ¡seis mapas y una flota gigantesca de cientos de máquinas auténticas!\r\n\r\nTanto principiantes como granjeros veteranos podrán disfrutar de una enorme cantidad de contenido para toda la familia y un sinfín de horas de juego cooperativo y competitivo con esta edición, que incluye el juego base premiado internacionalmente, siete paquetes de contenido oficial y dos expansiones.\r\n\r\nTambién disponible por separado, la Expansión Premium está incluida en edición y te lleva hasta Zielonka, un nuevo entorno situado en Europa Central perfecto para cultivar hortalizas. A la lista de 20 cultivos se añaden la zanahoria, la chirivía y la remolacha roja, además de nuevas fábricas.\r\n\r\nLa Expansión Premium incluye más de 35 vehículos y herramientas fielmente digitalizadas con más detalles que nunca. A la serie llegan fabricantes como Dewulf, Gorenc, Agrio y WIFO, y más máquinas de BEDNAR, Fiat, GRIMME, Kverneland, SaMASZ y demás.\r\n\r\n \r\n\r\n Esta edición de Farming Simulator 22 también contiene los siguientes paquetes: Pack Antonio Carraro, Pack Kubota, Pack Vermeer, Pack Göweil, Pack Heno y Forraje y otros dos paquetes por anunciar. Además, también incluye la Expansión Platino, que se centra en la silvicultura e introdujo en la serie marcas como Volvo, mecánicas de juego, un mapa nuevo y más novedades.\r\n\r\n \r\n\r\n Características:\r\n\r\nContenido de la Edición Premium: juego + 7 paquetes + 2 expansiones.\r\nNovedades: la Expansión Premium introduce cultivos, un mapa y máquinas.\r\nIncluye el contenido del Año 1 y Año 2.', 100, 39.39, 0, '../img/fs/fs1.jpg-../img/fs/fs2.jpg-../img/fs/fs3.jpg-../img/fs/fs4.jpg-../img/fs/fs5.jpg', 'PC', 'Estrategia'),
(14, 'Grand Theft Auto V', 'Continúa tu aventura en PS5™ y transfiere tanto tu progreso en el Modo Historia de GTAV, como tus personajes y progreso de GTA Online a PS5™, con una migración única.\r\n\r\nDisfruta de los superventas del entretenimiento Grand Theft Auto V y GTA Online, ahora en PlayStation®5.\r\n\r\nCuando un joven estafador callejero, un ladrón de bancos retirado y un psicópata aterrador se ven involucrados con lo peor y más desquiciado del mundo criminal, el gobierno de los EE. UU. y la industria del espectáculo, deberán llevar a cabo una serie de peligrosos golpes para sobrevivir en una ciudad implacable en la que no pueden confiar en nadie. Y mucho menos los unos en los otros.\r\n\r\nDisfruta de GTA Online, un universo dinámico y en constante evolución para hasta 30 jugadores, donde podrás pasar de ser un estafador callejero a convertirte en el capo de tu propio imperio criminal.\r\n\r\nLos jugadores de PlayStation®5 pueden disfrutar de nuevas mejoras para vehículos de alto rendimiento, del Creador de Profesiones, así como de todas las actualizaciones, expansiones y contenidos de GTA Online actuales y previos, tanto en solitario como con amigos. Lleva a cabo elaborados golpes cooperativos, participa en carreras acrobáticas llenas de adrenalina, compite en Modos Adversario únicos o pasa el tiempo en espacios sociales como clubes nocturnos, salones recreativos, fiestas en el ático, reuniones en el car meet y mucho más.\r\n\r\nExplora Los Santos y el condado de Blaine con más nivel de detalle que nunca:\r\n\r\n• GRÁFICOS IMPRESIONANTES: niveles de fidelidad y rendimiento mejorados, con nuevos modos gráficos que ofrecen resoluciones de hasta 4K, 60 fotogramas por segundo, opciones HDR, trazado de rayos, mejoras en la calidad de las texturas y mucho más.\r\n• CARGA MÁS RÁPIDA: entra en la acción rápidamente, ya que el mundo de Los Santos y el condado de Blaine ahora se carga más rápido que nunca.\r\n• GATILLOS ADAPTATIVOS Y RESPUESTA HÁPTICA: siente cada momento a través del mando DualSense™, desde el daño direccional hasta los efectos atmosféricos, baches en las carreteras, explosiones y mucho más.\r\n• SONIDO TEMPEST 3D: oye los sonidos del mundo con una precisión milimétrica, desde la aceleración de un supercoche robado hasta los disparos de un tiroteo cercano, el estruendo de un helicóptero sobre tu cabeza y mucho más.\r\n\r\nAdemás, nuevas mejoras en el mundo en constante evolución de GTA Online, entre las que se incluyen:\r\n\r\n• NUEVO CONTENIDO EXCLUSIVO: ve a Hao\'s Special Works en el Car Meet de Los Santos, donde encontrarás nuevas mejoras para veh', 6, 19.99, 60, '../img/gta5/gta1.jpg-../img/gta5/gta2.jpg-../img/gta5/gta3.jpg-../img/gta5/gta4.jpg-../img/gta5/gta5.jpg', 'PS4-PS5-XboxOne-NintendoSwitch-PC', 'Accion'),
(15, 'WWE 2K22', 'Disfruta de la sensación de estar a pie de ring en un Wrestlemania en estado puro con su rediseño total desde los controles hasta los gráficos.\r\n\r\nCaraccterísticas:\r\n\r\nMOTOR DE JUEGO REDISEÑADO. NUEVOS CONTROLES. TODAS LAS FUNCIONES QUE TE PUEDAS IMAGINAR. Levántate de la grada y toma el control de toda la fuerza del Universo WWE.\r\n\r\nUN JUEGO QUE QUIZÁS PEGUE DEMASIADO FUERTE. Pegar con tanta fuerza nunca ha sido tan fácil. Lo hemos rediseñado todo, desde los controles a los impresionantes gráficos, para que la sensación sea la misma que estar a pie de ring en un WrestleMania.\r\n\r\nCONTROLA A LAS SUPERSTARS Y A LAS LEYENDAS CLÁSICAS DE LA WWE. Reparte puñetazos, movimientos personales y remates con las Superstars y las leyendas más grandes y de aspecto más realista de la WWE: The Rock, Sasha Banks, Goldberg, \"Stone Cold\" Steve Austin, Brock Lesnar y más.\r\n\r\nCOGE EL VUELO 619 CON DESTINO AL SUPERESTRELLATO. Revive los momentos más importantes de la icónica carrera de Rey Mysterio en 2K Showcase. ¡Booyaka!\r\n\r\nINTRODUCCIÓN A Mi GM. Te toca tener el control como mánager de la WWE. Toma las riendas de Raw, SmackDown, NXT o NXT UK y forma un roster insuperable de Superstars y leyendas de la WWE para enfrentarte a otros GM y crear la mejor marca del Universo WWE. Consigue el show mejor valorado: planea intensas rivalidades, tipos de combates alucinantes, enfrentamientos por los títulos y eventos del PPV en una competición cada vez más reñida de arenas y audiencias. Una vez montado el escenario, juega como Superstar, interrumpe como GM o da órdenes entre bastidores. ¡Tú eliges!\r\n\r\nESCALA POSICIONES EN WWE. Toma el control no de una, sino de dos aventuras en Mi LEYENDA —masculina y femenina— para dictar tu camino según tus propias reglas.\r\n\r\nCREA PARA TI, COMPARTE CON EL MUNDO. El sistema de creación ha vuelto, y con más fuerza que nunca. Sé tú o cualquier otra estrella. Sal al ring cuando y donde quieras.CREA TU PROPIA FACCIÓN. Por primera vez en la franquicia, en el nuevo modo Mi FACCIÓN podrás crear una facción que rivalice contra los mismísimos nWo. ¡Recluta, gestiona y mejora Superstars de la WWE con eventos semanales y actualizaciones periódicas!', 19, 22.7, 0, '../img/wwe/wwe1.jpg-../img/wwe/wwe2.jpg-../img/wwe/wwe3.jpg-../img/wwe/wwe4.jpg-../img/wwe/wwe5.jpg', 'PS4-XboxOne-NintendoSwitch', 'Deporte'),
(16, 'Spider-Man 2', 'Los Spider-Men, Peter Parker y Miles Morales, vuelven con una nueva y fantástica aventura de la aclamada franquicia Marvel\'s Spider-Man.\r\n\r\nBalancéate, salta y usa las nuevas Alarañas para desplazarte más veloz que nunca por la Nueva York de Marvel, cambiando rápidamente entre Peter Parker y Miles Morales. Vive sus diferentes historias con nuevos poderes épicos, y enfréntate al icónico villano Venom, que amenaza con destruir sus vidas, su ciudad y a sus seres queridos.\r\n\r\nUna evolución de la historia de Spider-Man\r\n\r\nEl increíble poder del simbionte lleva a Peter y Miles al límite de sus fuerzas tanto dentro como fuera de la máscara, mientras tratan de equilibrar sus vidas, sus relaciones personales y su deber de proteger a quienes más lo necesitan.\r\n\r\nJuega con dos Spider-Man\r\n\r\nCambia rápidamente entre los Spider-Men mientras exploras una Nueva York de Marvel expandida. Experimenta las nuevas habilidades de simbionte de Peter y los explosivos ataques bioeléctricos de veneno de Miles, y descubre equipamiento de alta tecnología que potencia la experiencia de combate y ofrece profundidad y variedad al juego.\r\n\r\nEnfréntate a icónicos Supervillanos de Marvel\r\n\r\nLucha contra distintos villanos, tanto nuevos como clásicos, incluyendo una versión original del monstruoso Venom, el implacable Kraven el Cazador, el volátil Lizard... ¡y muchos más!\r\n\r\nVisita una Nueva York de Marvel expandida\r\n\r\nExplora una Nueva York de Marvel más extensa que nunca, que incluye dos nuevos barrios, Brooklyn y Queens, junto con otras localizaciones como Coney Island.\r\n\r\nCaracterísticas de la consola PlayStation®5\r\n\r\nAlucinantes efectos visuales potenciados por el motor de Insomniac Games.\r\nCambio de personaje casi instantáneo entre Peter Parker y Miles Morales.\r\nSonido envolvente para sumergirte de lleno en la atmósfera de la gran ciudad.\r\nUna ciudad expandida que puedes explorar como nunca antes gracias a un balanceo con telarañas más rápido y a las nuevas Alarañas.\r\nRetroalimentación háp??ca que te permite sen??r los poderes de los Spider-Men en las palmas de tus manos.\r\nGa??llos adapta??vos que te transmiten las sensaciones del combate y del desplazamiento a la punta de tus dedos.\r\n \r\n\r\nPuntos destacados\r\n\r\nCompletos\r\n\r\nVive una historia original de Marvel’s Spider-Man para un jugador.\r\nCambia entre dos Spider-Man jugables, Peter Parker y Miles Morales, mientras exploras la Nueva York de Marvel.\r\nHaz uso de las nuevas habilidades de simbionte de Peter y de los explosivos ataques de veneno bioeléctricos de Miles.\r\nLucha contra tod', 13, 79.99, 0, '../img/spiderman/spider1.jpg-../img/spiderman/spider2.jpg-../img/spiderman/spider3.jpg-../img/spiderman/spider4.jpg-../img/spiderman/spider5.jpg', 'PS5', 'Accion'),
(17, 'Super Mario Bros Wonder', '¡Viaja a un mundo maravilloso en Super Mario Bros. Wonder para Nintendo Switch!\r\n\r\n¡El estilo de juego de desplazamiento lateral, todo un clásico de Mario, vivirá un cambio radical gracias a la incorporación de las Flores Maravilla! Estos objetos dan pie a momentos espectaculares e increíbles: desde tuberías que cobran vida, hasta la posibilidad de arrasar con todo convirtiéndote en una gigantesca bola de pinchos. ¡Descubre un montón de acontecimientos inesperados!\r\n\r\n \r\n\r\n \r\n\r\n?RECOMENDACIÓN FNAC\r\nSuper Mario Wonder llega a Switch para revolucionar todo lo que sabes del fontanero más divertido de Nintendo, infinidad de nuevos y mágicos niveles te esperan en una aventura donde cada segundo es un misterio constante, y es que en Super Mario Bros Wonder Switch solo una cosa está asegurada, ¡La diversión!\r\n\r\nElige a tu personaje favorito y disfruta de coloridos niveles increíbles\r\n\r\nMario, Peach, Luigi, Daisy, Yoshi o Toad, elige a tu favorito para recorrer los nuevos mundos de Super Mario Bros Wonder Nintendo Switch, una entrega que promete romper con todo lo establecido, siendo la propuesta estéticamente más arriesgada de Nintendo en lo que a nuestro fontanero se refiere. \r\n\r\nEso sí, la combinación de lo nuevo con lo que todos esperamos en un juego de Super Mario está tan lograda, que el título te enganchará desde el primer nivel, seas joven o mayor, conozcas todas las entregas de Mario y sus amigos, o sea la primera vez que juegues a este tipo de videojuegos. Estamos hablando de Nintendo, así que, no tengas ninguna duda, la compañía nipona ¡Ha vuelto a dar en el clavo!\r\n\r\nUn diseño renovado que maravilla a cada paso\r\n\r\nLos diseñadores han optado por abandonar la estética característica de los últimos años, para volver a las raíces de los juegos de Super Mario, esos que no solo cautivaron a más de una generación, sino que lograron una fluidez de juego nunca antes vista. \r\n\r\nEn Super Mario Bros Wonder descubrirás un homenaje a la estética clásica que todos recordamos, pero con tintes actuales y perfectos que nos recuerdan que estamos ante un juego de Super Mario lanzado en 2023. Si buscas un espectáculo visual, que además enganche y sea divertido a más no poder, Super Mario Wonder es para ti. \r\n\r\nCrea recuerdos inolvidables con tus amigos en el modo cooperativo\r\n\r\nSuper Mario Bros Wonder Switch promete horas de diversión, tanto en solitario como en modo cooperativo local de hasta 4 jugadores en la misma consola, donde podréis elegir a vuestro personaje favorito y recorrer juntos los múltiples niveles de un j', 30, 54.99, 0, '../img/smb/smb1.jpg-../img/smb/smb2.jpg-../img/smb/smb3.jpg-../img/smb/smb4.jpg-../img/smb/smb5.jpg', 'NintendoSwitch', 'Aventura'),
(18, 'Elder Scrolls V: Skyrim ', 'La agitación se extiende por el Imperio de Tamriel. El soberano de Skyrim ha sido asesinado. A medida que surgen aspirantes al trono, se van formando alianzas. En mitad de este conflicto, resurge un antiguo mal mucho más peligroso: los dragones, olvidados hace tiempo entre oscuros pasajes de los Elder Scrolls, han regresado a Tamriel. El futuro de Skyrim, incluso el del propio Imperio, pende de un hilo, mientras aguardan la llegada vaticinada del Nacido de Dragón, un héroe dotado del poder de La Voz, el único que puede hacer frente a los dragones.\r\n\r\nCaracterísticas:\r\n\r\nFantasía épica renacida: Skyrim reinventa la fantasía épica en mundos abiertos.\r\nLleva otra vida, en otro mundo: Juega con cualquier tipo de personaje que puedas imaginar y haz lo que se te antoje; la legendaria libertad de elección, narración y aventura de The Elder Scrolls cobra vida como nunca antes.\r\nEres lo que juegas: Escoge entre cientos de armas, hechizos y aptitudes. El nuevo sistema de personajes te permite jugar como tú quieras y definirte a través de tus actos.\r\nEl regreso de los dragones: Lucha contra antiguos dragones como no lo has hecho jamás. Como el Nacido de Dragón, descubre sus secretos y domina su poder para tus propios fines.\r\n', 45, 56.6, 22, '../img/skyrim/skyrim1.jpg-../img/skyrim/skyrim2.jpg-../img/skyrim/skyrim3.jpg-../img/skyrim/skyrim4.jpg-../img/skyrim/skyrim5.jpg', 'XboxOne-PS4-PS5-PC-NintendoSwitch', 'Aventura-Rol-Accion'),
(19, 'Modern Warfare III', 'ADAPTARSE O MORIR EN LA LUCHA CONTRA LA AMENAZA DEFINITIVA\r\n\r\nEn la secuela directa del exitoso juego CallofDuty®: Modern Warfare® II, el capitán Price y la Fuerza operativa 141 se enfrentan a la amenaza definitiva. El criminal de guerra ultranacionalista Vladimir Makarov extiende su alcance por todo el mundo, obligando a la Fuerza operativa 141 a luchar como nunca antes.\r\n\r\nEl combate implica tomar decisiones: diferentes armamentos, diferentes caminos en la misión. Además de las características misiones cinemáticas de la campaña de CallofDuty®, Modern Warfare® III introduce misiones de combate abiertas que ofrecen más opciones al jugador. No hay una solución única para todos los casos: tú eliges si prefieres un enfoque sigiloso o atacar a todo tipo de enemigos.\r\n\r\nES HORA DE SALDAR VIEJAS CUENTAS Y EMPEZAR DE NUEVO\r\n\r\nModern Warfare® III celebra el 20º aniversario de CallofDuty® con una de las mejores colecciones de mapas Multijugador jamás reunidas, tanto favoritos de los fans como nuevos. Los 16 mapas del lanzamiento del Modern Warfare® 2 (2009) original se han modernizado con nuevos modos y características de juego y estarán disponibles en el lanzamiento, mientras que más de 12 mapas principales de 6c6 totalmente nuevos impulsarán las temporadas posteriores al lanzamiento.\r\n\r\nModern WarfareIII también se lanzará con nuevos mapas de Guerra terrestre que contarán con innovadores espacios de juego y el épico regresoyevolución del popular modo Guerra que debutó por primera vez en CallofDuty®: WWII de 2017.\r\n\r\nNUEVOS ZOMBIS EN MUNDO ABIERTO\r\n\r\nPor primera vez, forma equipo con otros pelotones para sobrevivir y luchar contra enormes hordas de no muertos en el mapa de CallofDuty® Zombis más grande de la historia. Modern Warfare® Zombis (MWZ) cuenta una nueva historia de Zombis de Treyarchcon misiones, características principales de Zombis y secretos por descubrir. Prepárate para una experiencia de supervivencia JcEen mundo abierto contra algunos de los mayores enemigos de la historia de CallofDuty.', 25, 76.99, 0, '../img/mw/mw1.jpg-../img/mw/mw2.jpg-../img/mw/mw3.jpg-../img/mw/mw4.jpg-../img/mw/mw5.jpg', 'XboxOne-PS4-PS5-PC', 'Accion'),
(20, 'Halo Infinite', '¡Ya está disponible la temporada 5!\r\n\r\nLa temporada 5, Venganza, ofrece a los jugadores un nuevo pase de batalla que incluye recompensas inspiradas en los Flood, nuevos mapas, un nuevo modo y un sofisticado set de herramientas de IA para Forge. Dentro de poco en la temporada 5, Tiroteo: Rey de la colina le dará un toque diferente al adorado modo cooperativo de supervivencia por oleadas.\r\nCampaña:\r\n¡Ya están disponibles la campaña cooperativa y la repetición de misiones!\r\n\r\nCuando se pierde toda esperanza y el destino de la humanidad pende de un hilo, el Jefe Maestro está listo para enfrentarse al enemigo más despiadado al que jamás haya hecho frente. Ponte la armadura del mayor héroe de la humanidad para vivir una aventura épica y explorar el descomunal anillo de Halo. Para disfrutar de la campaña, compra Halo: Infinite (campaña).\r\nMultijugador gratuito:\r\n\r\n¡El popular multijugador de Halo está de vuelta con un aire renovado y totalmente gratis! A medida que progresas, las actualizaciones de temporada mejoran la experiencia con eventos únicos, modos y mapas nuevos, así como con contenido dedicado a la comunidad.\r\nBeta de Forge:\r\n\r\nLa legendaria herramienta de creación de contenido de Halo ha vuelto y es más potente que nunca. Cuenta con características avanzadas, como un nuevo motor de programación visual, escalado de objetos, iluminación y herramientas de audio, así como mejoras marcadas en cuanto a la fidelidad y los límites de presupuesto de objetos. Ya sea rehaciendo experiencias emblemáticas de entregas anteriores de Halo o creando algo completamente único, las posibilidades de crear emocionantes mapas personalizados y modos de juego son infinitas.\r\nConfiguración y optimización para PC:\r\n\r\nHalo: Infinite está diseñado para jugar en PC. Entre otras cosas, dispone de ajustes gráficos avanzados, compatibilidad con pantallas ultrapanorámicas y super ultrapanorámicas, asignación de botones triple y características como el escalado dinámico y los FPS variables, lo que convierte a Halo: Infinite en la mejor experiencia de Halo en PC hasta la fecha.', 37, 59.99, 0, '../img/halo/halo1.jpg-../img/halo/halo2.jpg-../img/halo/halo3.jpg-../img/halo/halo4.jpg-../img/halo/halo5.jpg', 'XboxOne', 'Accion');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`,`usuario`,`idProductos`),
  ADD KEY `idProductos` (`idProductos`),
  ADD KEY `compra_ibfk_2` (`usuario`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `personas` (`usuario`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `personas` (`usuario`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `clientes` (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
