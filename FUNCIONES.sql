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