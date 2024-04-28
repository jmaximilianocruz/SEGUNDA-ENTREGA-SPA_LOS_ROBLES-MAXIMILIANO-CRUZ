-- creacion de base de datos--

     DROP DATABASE IF EXISTS spa_los_robles ; 
	 CREATE DATABASE spa_los_robles ; 
     USE spa_los_robles ;

     
-- creacion de tablas--
    
     CREATE TABLE EMPLEADO(
		idempleado 			INT PRIMARY KEY AUTO_INCREMENT 
	 ,	nombre 				VARCHAR (100) NOT NULL
     ,	correo 				VARCHAR (100) UNIQUE NOT NULL
     ,	telefono 			VARCHAR (30) NOT NULL
     ,  direccion 			VARCHAR (100) NOT NULL 
     ,	cuil 				VARCHAR (11) NOT NULL
     ,  fechacontratacion 	DATETIME
     ,	idspa				INT DEFAULT "1"
     ) 
     COMMENT "almacena informacion sobre los empleados"
     ;
     
      INSERT INTO EMPLEADO
   (NOMBRE, CORREO, TELEFONO, DIRECCION, CUIL,FECHACONTRATACION)
   VALUES
('Hall Seally', 'hseally0@wikipedia.org', '7746700586', '0099 Harper Junction', '77372564200', '2024-02-21 10:47:33'),
('Stella Chatburn', 'schatburn1@prlog.org', '0689276508', '76316 Karstens Park', '87865032280', '2023-12-06 06:53:09'),
('Galvan Roxbee', 'groxbee2@google.co.uk', '4130979701', '785 Ludington Drive', '65133123578', '2024-01-29 13:18:35'),
('Gwenora Scorrer', 'gscorrer3@friendfeed.com', '8614634056', '58394 Bonner Hill', '20131077266', '2023-12-09 21:53:10'),
('Deerdre Cheverell', 'dcheverell4@auda.org.au', '6739311137', '8347 Northland Crossing', '06803005287', '2023-11-30 02:28:35'),
('Alfredo Di Francesco', 'adi5@umich.edu', '6156910263', '2608 Evergreen Lane', '37792187468', '2024-01-09 07:52:49'),
('Siegfried Bellis', 'sbellis6@shinystat.com', '1175207551', '31 Oriole Circle', '14980665691', '2023-11-29 23:45:35'),
('Padraig Cuxon', 'pcuxon7@springer.com', '0150093470', '916 Sunbrook Terrace', '35960132505', '2024-01-07 11:33:29'),
('Aurilia Rozenzweig', 'arozenzweig8@tinyurl.com', '5054815643', '2 Anhalt Alley', '22856699437', '2024-02-14 14:13:14'),
('Bennett Mathelon', 'bmathelon9@taobao.com', '9623442556', '61409 Merrick Place', '98711508332', '2024-01-30 05:37:04'),
('Kurtis Paeckmeyer', 'kpaeckmeyera@flavors.me', '9754894728', '6 Carioca Parkway', '32276032460', '2023-12-10 01:20:25'),
('Sax Joist', 'sjoistb@hostgator.com', '1295956934', '42 Dayton Place', '91236287409', '2024-01-05 10:09:04'),
('Charles Criag', 'ccriagc@twitter.com', '8606633208', '6191 Erie Circle', '50034754155', '2023-12-14 06:46:40'),
('Nomi Mustoe', 'nmustoed@is.gd', '8314641200', '254 Basil Road', '87264723642', '2023-12-22 11:45:40'),
('Eimile Whitloe', 'ewhitloee@devhub.com', '5071836912', '1 Troy Circle', '28353746895', '2024-02-07 10:06:23');



     
     CREATE TABLE CLIENTE(
		idcliente 		INT PRIMARY KEY AUTO_INCREMENT 
	,	nombreyapellido VARCHAR (100) DEFAULT "a_confirmar"
    ,   dni 			VARCHAR (8) UNIQUE NOT NULL
	,	correo 			VARCHAR (100) UNIQUE NOT NULL 
	,	telefono 		VARCHAR (30) NOT NULL 
	,	idspa 			INT DEFAULT "1"
    )
    COMMENT "almacena informacion sobre clientes"
    ;
    
       INSERT INTO CLIENTE
   (IDCLIENTE,NOMBREYAPELLIDO,DNI,CORREO,TELEFONO)
   VALUES
 (1, 'Franklin Shoulder', '71080193', 'fshoulder0@twitpic.com', '3908630312'),
 (2, 'Piotr Jendrach', '30833498', 'pjendrach1@diigo.com', '6852900398'),
 (3, 'Elston Jakoubec', '15883339', 'ejakoubec2@harvard.edu', '5535325422'),
 (4, 'Mile Bockett', '19958063', 'mbockett3@cafepress.com', '2666179532'),
 (5, 'Aurilia Tawn', '91741011', 'atawn4@moonfruit.com', '6151147219'),
 (6, 'Gawain Trusler', '51496421', 'gtrusler5@rakuten.co.jp', '9562201635'),
 (7, 'Judie Yaus', '39138445', 'jyaus6@google.nl', '0982122500'),
 (8, 'Giacinta Camock', '75708678', 'gcamock7@prnewswire.com', '4967142834'),
 (9, 'Berte Viste', '43707576', 'bviste8@canalblog.com', '7240299155'),
 (10, 'Nicki Rappa', '31437997', 'nrappa9@cnet.com', '1419100300'),
 (11, 'Linoel Ellson', '15912456', 'lellsona@edublogs.org', '9231905260'),
 (12, 'Alex Gulley', '04904106', 'agulleyb@google.es', '1947114832'),
 (13, 'Obidiah Pinilla', '46542370', 'opinillac@rakuten.co.jp', '1097323188'),
 (14, 'Cyrillus Greenaway', '56881364', 'cgreenawayd@360.cn', '8960700665'),
 (15, 'Ramon McCall', '39551950', 'rmccalle@dell.com', '8524591188'),
 (16, 'Blair Helstrom', '60420613', 'bhelstromf@youtube.com', '3972516797'),
 (17, 'Rodrigo McIlwain', '88091802', 'rmcilwaing@hao123.com', '1110392672'),
 (18, 'Karly Vasyukhnov', '11758629', 'kvasyukhnovh@goo.gl', '8770975930'),
 (19, 'Christy Mottinelli', '92027215', 'cmottinellii@weibo.com', '9838948632'),
 (20, 'Jillana Kedie', '35593050', 'jkediej@moonfruit.com', '8184387814'),
 (21, 'Kary Monery', '90867955', 'kmoneryk@google.com.hk', '5618375605'),
 (22, 'Frants Fidelus', '51137324', 'ffidelusl@java.com', '3386125093'),
 (23, 'Monro Colston', '48962573', 'mcolstonm@timesonline.co.uk', '3163767923'),
 (24, 'Pepi Marthen', '90447517', 'pmarthenn@blogtalkradio.com', '6673934581'),
 (25, 'Lissie Aird', '10104360', 'lairdo@goo.gl', '6588110847'),
 (26, 'Collette Cano', '91383006', 'ccanop@microsoft.com', '2446027121'),
 (27, 'Bette-ann Kingcote', '22384963', 'bkingcoteq@twitpic.com', '9444792250'),
 (28, 'Teador Culy', '73078834', 'tculyr@behance.net', '0933153015'),
 (29, 'Karil Luetkemeyers', '88559571', 'kluetkemeyerss@cdc.gov', '8137249125'),
 (30, 'Clementia Costar', '02972280', 'ccostart@twitpic.com', '3534004353'),
 (31, 'Les Balch', '24165084', 'lbalchu@paginegialle.it', '4815380074'),
 (32, 'Korrie Neller', '58420034', 'knellerv@state.tx.us', '0861879511'),
 (33, 'Ulick Durn', '17780596', 'udurnw@rediff.com', '0001169874'),
 (34, 'Enoch Jamme', '28302055', 'ejammex@php.net', '6068398021'),
 (35, 'Coral Pow', '67461500', 'cpowy@whitehouse.gov', '9181444028'),
 (36, 'Madel Manolov', '08958522', 'mmanolovz@rambler.ru', '6711974204'),
 (37, 'Garrett Threadgill', '38442824', 'gthreadgill10@kickstarter.com', '5063557872'),
 (38, 'Colby Kunes', '22995930', 'ckunes11@umn.edu', '8796129018'),
 (39, 'Hugo Parkman', '18899054', 'hparkman12@dell.com', '1644071649'),
 (40, 'Remus Turpin', '47991229', 'rturpin13@about.me', '7702917059'),
 (41, 'Modestia Fozzard', '47290914', 'mfozzard14@squidoo.com', '3039561618'),
 (42, 'Dell Grimes', '79443839', 'dgrimes15@aboutads.info', '9208023141'),
 (43, 'Danyelle Cornbill', '98182832', 'dcornbill16@berkeley.edu', '5042015043'),
 (44, 'Gordan Winsom', '05014708', 'gwinsom17@sakura.ne.jp', '3431899161'),
 (45, 'Arie Twort', '18747650', 'atwort18@weebly.com', '5796230816'),
 (46, 'Vasilis McNeish', '70673042', 'vmcneish19@ftc.gov', '9659525400'),
 (47, 'Shane Commins', '45629080', 'scommins1a@ftc.gov', '1170374743'),
 (48, 'Keary Carnilian', '71855115', 'kcarnilian1b@printfriendly.com', '9416822876'),
 (49, 'Ynes Dreinan', '89151728', 'ydreinan1c@twitter.com', '1876183268'),
 (50, 'Quill Sollime', '09020822', 'qsollime1d@tinyurl.com', '1293788678');
   
    
    
     CREATE TABLE RESERVA(
        idreserva    INT PRIMARY KEY AUTO_INCREMENT 
     ,	idcliente    INT
     ,	idempleado   INT
     ,	idhabitacion INT
     ,	fechaentrada DATETIME NOT NULL
     ,  fechasalida  DATETIME NOT NULL  
     ,	cancelacion	 DATETIME 
     ,  formadepago  varchar (50) DEFAULT "EFECTIVO"
     ,	idspa        INT DEFAULT "1"
     ) 
     COMMENT "almacena informacion sobre las reservas en general" 
     ; 
     
     CREATE TABLE SPA(
		idspa 		INT PRIMARY KEY DEFAULT "1"
     ,	direccion 	VARCHAR (100)
	 ,  correo 		VARCHAR (100)
     ,	TELEFONO 	VARCHAR (30)
     )
	 COMMENT "almacena informacion sobre el SPA"
     ; 
     
     INSERT INTO SPA
(IDSPA, DIRECCION, CORREO , TELEFONO)
VALUES
(1, "AVENIDA MITRE 2380","SPA_LOS_ROBLES@GMAIL.COM", "1160459709");



     
     CREATE TABLE HABITACION (
		idhabitacion INT PRIMARY KEY AUTO_INCREMENT 
     ,	numerohabitacion INT NOT NULL
     ,  tipohabitacion VARCHAR (50) NOT NULL
     ,  preciohabitacion DECIMAL (10,2)
     ,	disponible BOOLEAN
     ,  idspa INT DEFAULT "1"
     )
     COMMENT "almacena informacion sobre la habitacion y disponibilidad" 
     ; 
        
	INSERT INTO HABITACION
    (IDHABITACION,NUMEROHABITACION,TIPOHABITACION,PRECIOHABITACION,DISPONIBLE)
    VALUES
(1, 1, 'TRIPLE','200', false),
(2, 2, 'DOBLE', '160', true),
(3, 3, 'TRIPLE', '200', true),
(4, 4, 'TRIPLE', '200', false),
(5, 5, 'DOBLE', '250', false),
(6, 6, 'TRIPLE', '200', false),
(7, 7, 'DOBLE', '150', true),
(8, 8, 'TRIPLE', '200', false),
(9, 9, 'DOBLE', '150', true),
(10, 10, 'TRIPLE', '200', false),
(11, 11, 'TRIPLE', '200', false),
(12, 12, 'TRIPLE', '200', true),
(13, 13, 'DOBLE', '150', false),
(14, 14, 'DOBLE', '150', true),
(15, 15, 'TRIPLE', '200', true),
(16, 16, 'TRIPLE', '200', false),
(17, 17, 'DOBLE', '150', true),
(18, 18, 'TRIPLE', '200', true),
(19, 19, 'DOBLE', '200', true),
(20, 20, 'TRIPLE', '250', true),
(21, 21, 'DOBLE', '200', true),
(22, 22, 'TRIPLE', '250', true),
(23, 23, 'TRIPLE', '250', true),
(24, 24, 'DOBLE', '200', true),
(25, 25, 'TRIPLE', '250', false),
(26, 26, 'TRIPLE', '250', true),
(27, 27, 'TRIPLE', '250', true),
(28, 28, 'TRIPLE', '250', false),
(29, 29, 'DOBLE', '200', false),
(30, 30, 'DOBLE', '200', false);
        
        
        
        
-- creacion de foreing keys --
 
-- empleado
ALTER TABLE EMPLEADO
	ADD CONSTRAINT FK_EMPLEADO_CLIENTE
    FOREIGN KEY (idspa) REFERENCES SPA (idspa); 
    
-- habitacion
ALTER TABLE HABITACION
	ADD CONSTRAINT FK_SPA_HABITACION
    FOREIGN KEY (idspa) REFERENCES SPA (idspa); 
    
-- reserva
 ALTER TABLE RESERVA
	ADD CONSTRAINT FK_RESERVA_CLIENTE
    FOREIGN KEY (idcliente) REFERENCES CLIENTE (idcliente); 
    
     ALTER TABLE RESERVA
	ADD CONSTRAINT FK_RESERVA_HABITACION
    FOREIGN KEY (idhabitacion) REFERENCES HABITACION (idhabitacion); 
    
     ALTER TABLE RESERVA
	ADD CONSTRAINT FK_RESERVA_EMPLEADO
    FOREIGN KEY (idempleado) REFERENCES EMPLEADO (idempleado); 
    
   
    
--        V I S T A S          -- 

-- Trae la cantidad de reservas por habitacion en el 2024"--
CREATE OR REPLACE VIEW vw_count_reserva_2024 AS
(select
	idhabitacion
, 	count(1) idreserva
from reserva
where 
	fechaentrada between "2024-01-01" and "2024-12-31"
group by idhabitacion ) ;

-- disponibilidad de habitaciones para mejor control interno 
CREATE OR REPLACE VIEW vw_habitaciones_disponibles AS
SELECT 
	idhabitacion AS "Numero_habitacion", 
CASE 
when disponible = 1 then "Disponible"
ELSE "No_Disponible"
END AS Disponibilidad
FROM Habitacion;


-- vista: muestra la reserva, habitacion y el cliente"..
CREATE OR REPLACE VIEW vw_reserva_cliente AS
(SELECT 
	reserva.idreserva
,	reserva.idhabitacion
,	cliente.nombreyapellido 
FROM Reserva
INNER JOIN cliente
ON reserva.idcliente = cliente.idcliente );



-- Recursos humanos me pidio una lista de todos los empleados--
CREATE OR REPLACE VIEW vw_personal AS
(select 
	idempleado as ID_empleado
,    nombre as Nombre_Apellido
,	cuil as N_cuil
,	fechacontratacion as fecha_de_contratacion 
from empleado ) ; 



--        F U N C I O N E S      --

-- recursos humanos me pide que cuente los años de antiguedad para las vacaciones
-- de los empleados -- 

DROP FUNCTION IF EXISTS fn_empleados_vacaciones_antiguedad; 
DELIMITER //
CREATE FUNCTION fn_empleados_vacaciones_antiguedad (fechacontratacion date)
returns int
deterministic
reads sql data
COMMENT "ESTA FUNCION ME RETORNA LOS DIAS DE VACACIONES DE LOS EMPLEADOS"
 BEGIN
	DECLARE DIAS_VACACIONES INT;
    DECLARE ANTIGUEDAD INT;
    SET ANTIGUEDAD = timestampdiff(year,fechacontratacion,CURDATE());

IF ANTIGUEDAD <= 5 THEN SET DIAS_VACACIONES = 14;
	ELSEIF ANTIGUEDAD between 5 and 10 THEN SET DIAS_VACACIONES = 21 ; 
	ELSEIF ANTIGUEDAD between 10 and 20 THEN SET DIAS_VACACIONES = 28;
	ELSEIF ANTIGUEDAD > 20 THEN SET DIAS_VACACIONES = 35;
    else set ANTIGUEDAD = 0 ;
END IF;
return dias_vacaciones ;
END//
DELIMITER ;


-- FUNCIONES --
-- CREAME UNA FUNCION EN LA CUAL ME CALCULE UN DESCUENTO DEL 10% Y SI CON TARJETA DE 
-- CREDITO RECARGO DEL 35%. 

DROP FUNCTION IF EXISTS fn_calcular_precio_final; 

DELIMITER //
CREATE FUNCTION fn_calcular_precio_final_habitacion (preciohabitacion DECIMAL (10,2) , metodopago VARCHAR (20))
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
COMMENT "ESTA FUNCION ME RETORNA EL PRECIO FINAL DE LA HABITACION"
BEGIN
DECLARE preciofinal DECIMAL (10,2);
IF metododepago = "Efectivo_o_Transferencia" THEN
	SET preciofinal = preciohabitacion * 0.90 ; -- descuento del 10 % --
ELSEIF metododepago = "Tarjeta_credito" THEN
	SET preciofinal = preciohabitacion * 1.35 ; -- recargo del 35%--
ELSE 
	SET preciofinal = preciohabitacion ; -- si el metodo de pago no es valido, el precio se mantiene--
END IF; 
RETURN preciofinal; 
END// 
DELIMITER ; 




-- STORE PROCEDURES: "GESTIONRESERVA", este procedimiento toma como parametros el ID
-- del cliente, el ID de la habitacion, la fecha de entrada y la fecha de salida. Luego
-- verifica si la habitacion esta disponible para las fechas especificadas y realiza la reserva
-- si esta disponible. 

DROP PROCEDURE IF EXISTS sp_gestionarReserva;

DELIMITER //
CREATE PROCEDURE sp_gestionarReserva (
IN idcliente INT,
IN idhabitacion INT,
IN fechaentrada DATE,
IN fechasalida DATE
)
BEGIN
DECLARE disponible INT; 
-- verificar si la habitacion esta disponible para hacer la reserva las fechas seleccionadas --
SELECT COUNT(*) INTO disponible
FROM habitacion
WHERE idhabitacion = idhabitacion
AND ((fechaentrada BETWEEN fechaentrada AND fechasalida)
OR (fechasalida BETWEEN fechaentrada AND fechasalida));
-- si la habitacion esta disponible realiza la reserva -- 
IF disponible = 0 THEN
INSERT INTO reserva (idcliente, idhabitacion, fechaentrada, fechasalida)
VALUES (idcliente, idhabitacion, fechaentrada, fechasalida); 
SELECT  "RESERVA REALIZADA CORRECTAMENTE" ;
ELSE 
SIGNAL SQLSTATE "45000" 
SET message_text = "LO SENTIMOS,LA HABITACION NO ESTA DISPONIBLE";
END IF; 
END // 
DELIMITER ; 



--       T R I G G E R        --

-- TRIGGER AFTER PARA ACTUALIZAR LA DISPONIBILIDAD DE LAS HABITACION DESPUES DE QUE SE HIZO LA RESERVA --
DROP TRIGGER IF EXISTS actualizar_disponibilidad;
DELIMITER //
CREATE TRIGGER actualizar_disponibilidad 
AFTER INSERT ON habitacion 
FOR EACH ROW 
BEGIN
UPDATE disponible
SET disponible = 0
WHERE idhabitacion = NEW.idhabitacion;
END// 
DELIMITER ; 


-- TRIGGER BEFORE PARA VERIFICAR LA DISPONIBILIDAD DE LA HABITACION ANTES DE REALIZAR UNA RESERVA -- 
DROP TRIGGER IF EXISTS verifica_disponibilidad;
DELIMITER // 
CREATE TRIGGER verifica_disponibilidad 
BEFORE INSERT ON HABITACION
FOR EACH ROW 
BEGIN 
DECLARE habitacion INT;
SELECT disponible INTO habitacion 
FROM habitacion
WHERE idhabitacion = NEW.idhabitacion;
IF disponible = O THEN 
SIGNAL SQLSTATE "45000"
SET MESSAGE_TEXT = "LA HABITACION SELECCIONADA NO ESTA DISPONIBLE";
END IF;
END //
DELIMITER ; 





