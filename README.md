# GAME-DATABASE
Este repositorio se ha creado con el fin de entregar un trabajo de la asignatura de Base de Datos.

**Indice**

 - [**Modelo**](#Modelo)
 - [**Diagrama Relacional**](#Diagrama-relacional)
 - [**Querys**](#Querys)



# Modelo

La base de datos pretende ser una base de datos como la de la tienda [Game](https://www.game.es/). 


# Diagrama Relacional

A continuación se muestra el diagrama a partir del cual se ha creado la base de datos:




# Querys

Las __querys__ que he podido crear, son las siguientes, basandome en usos reales de la base de datos:

  - Seleccionar la información de un cliente específico:
  ```
  Select * from cliente where id = 2;
  ```
  
  - Seleccionar los juegos cuya categoría es RPG:
  ```
  Select * from juego where genero = "RPG";
  ```
  
  - Seleccionar todas las facturas del cliente cuyo ID es 2:
  ```
  select * from factura where cliente_id = 2;
  ```
  
  - Mostrar todos los juegos que ha comprado el cliente cuyo ID es 2:
  ```
  SELECT factura.id as "Num. Factura", juego.titulo as "Titulo del juego"
  FROM factura
  JOIN facturajuegos ON factura.id = facturajuegos.factura_id
  JOIN juego ON juego.id = facturajuegos.juego_id
  WHERE factura.cliente_id = 1 ;
  ```
  
  - Mostrar todos los juegos de la consola Nintendo Swithc:
  ```
  select juego.titulo from juego 
  join juegoconsola on juego.id = juegoconsola.juego_id
  join consola on consola.id = juegoconsola.consola_id
  where consola.modelo = "Nintendo Switch";
  ```

  - Mostrar los juegos que se vendieron durante el mes de diciembre de 2022 y su respectivo comprador:
  ```
  select CONCAT(cliente.nombre,' ', cliente.apellidos)  as "Cliente", juego.titulo as "Titulo del juego"  
  from cliente
  JOin factura on factura.cliente_id = cliente.id
  JOin facturajuegos on facturajuegos.factura_id = factura.id
  Join juego on facturajuegos.juego_id = juego.id
  where factura.fecha between "2022-12-01" and "2022-12-31";
  ```
  
  - Mostrar juegos y consolas disponibles de una tienda:
  ```
   (select  consola.modelo as "Consolas y juegos" from consola
 join tiendaconsola on consola.id = tiendaconsola.consola_id
 join tienda on tiendaconsola.tienda_id = tienda.id
 where tienda.id = 3 )
 union
  (select  juego.titulo from juego
 join tiendajuegos on juego.id = tiendajuegos.juego_id
 join tienda on tiendajuegos.tienda_id = tienda.id
 where tienda.id = 3 )
  ```

  
