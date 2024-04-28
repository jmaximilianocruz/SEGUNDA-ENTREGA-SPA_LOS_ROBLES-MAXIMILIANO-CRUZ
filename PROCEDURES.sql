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
