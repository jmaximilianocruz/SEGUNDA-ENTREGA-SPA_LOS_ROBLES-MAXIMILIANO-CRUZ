--  VISTAS -- 


-- Trae la cantidad de reservas por habitacion en el 2024"--
CREATE OR REPLACE VIEW vw_count_reserva_2024 AS
(select
	idhabitacion
, 	count(1) idreserva
from reserva
where 
	fechaentrada between "2024-01-01" and "2024-12-31"
group by idhabitacion ) 
;


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