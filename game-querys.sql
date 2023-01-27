/* Seleccionar la información de un cliente */

Select * from cliente where id = 2;



/* Mostrar los juegos de RPG */

Select * from juego where genero = "RPG";



/* Seleccionar todas las facturas del cliente 2 */

select * from factura where cliente_id = 2;



/* Mostrar todos juegos que ha comprado el cliente 2 */

SELECT factura.id as "Num. Factura", juego.titulo as "Titulo del juego"
FROM factura
JOIN facturajuegos ON factura.id = facturajuegos.factura_id
JOIN juego ON juego.id = facturajuegos.juego_id
WHERE factura.cliente_id = 1 ;




/* Seleccionar juegos de la consola Nintendo Switch)*/

select juego.titulo from juego 
join juegoconsola on juego.id = juegoconsola.juego_id
join consola on consola.id = juegoconsola.consola_id
where consola.modelo = "Nintendo Switch";



/* Mostrar los clientes y los juegos que compraron durante el mes de Diciembre de 2022*/

select CONCAT(cliente.nombre,' ', cliente.apellidos)  as "Cliente", juego.titulo as "Titulo del juego"  
from cliente
JOin factura on factura.cliente_id = cliente.id
JOin facturajuegos on facturajuegos.factura_id = factura.id
Join juego on facturajuegos.juego_id = juego.id
where factura.fecha between "2022-12-01" and "2022-12-31";


/* Mostrar todos los juegos y consolas disponibles en una tienda */
 
 (select  consola.modelo as "Consolas y juegos" from consola
 join tiendaconsola on consola.id = tiendaconsola.consola_id
 join tienda on tiendaconsola.tienda_id = tienda.id
 where tienda.id = 3 )
 union
  (select  juego.titulo from juego
 join tiendajuegos on juego.id = tiendajuegos.juego_id
 join tienda on tiendajuegos.tienda_id = tienda.id
 where tienda.id = 3 )

