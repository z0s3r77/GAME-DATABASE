# GAME-DATABASE
Este repositorio se ha creado con el fin de entregar un trabajo de la asignatura de Base de Datos.

**Indice**

 - [**Modelo**](#Modelo)
 - [**Diagrama Relacional**](#Diagrama-relacional)
 - [**Querys**](#Querys)



# Modelo

La base de datos pretende ser una base de datos como la de [Game](https://www.game.es/). 


# Diagrama Relacional

A continuación se muestra el diagrama a partir del cual se ha creado la base de datos:

![Game drawio](https://user-images.githubusercontent.com/80277545/215139971-f569ce4c-6f38-4c90-892c-aff5f4ca7521.png)




# Querys

Las __querys__ que he podido crear, son las siguientes, basandome en usos reales de la base de datos:

  - Seleccionar la información de un cliente específico:
  ```
  Select * from cliente where id = 2;
  ```
  ![Captura de pantalla de 2023-01-27 17-29-53](https://user-images.githubusercontent.com/80277545/215140433-225c3156-6959-4719-b473-02bd0256fb52.png)
  
  
  - Seleccionar los juegos cuya categoría es RPG:
  ```
  Select * from juego where genero = "RPG";
  ```
  ![Captura de pantalla de 2023-01-27 17-30-59](https://user-images.githubusercontent.com/80277545/215140684-11213453-9549-40d6-93c8-79c8b2a36521.png)


  
  - Seleccionar todas las facturas del cliente cuyo ID es 2:
  ```
  select factura.id as "factura", factura.tienda_id as "Tienda ID"
, factura.fecha as "Fecha" from factura where cliente_id = 2;

  ```
  ![Captura de pantalla de 2023-01-27 17-33-10](https://user-images.githubusercontent.com/80277545/215141244-0caf21c7-63b7-4d73-b806-87641bc4988a.png)
  
  
  - Mostrar todos los juegos que ha comprado el cliente cuyo ID es 2:
  ```
  SELECT factura.id as "Num. Factura", juego.titulo as "Titulo del juego"
  FROM factura
  JOIN facturajuegos ON factura.id = facturajuegos.factura_id
  JOIN juego ON juego.id = facturajuegos.juego_id
  WHERE factura.cliente_id = 1 ;
  ```
  ![Captura de pantalla de 2023-01-27 17-33-47](https://user-images.githubusercontent.com/80277545/215141403-94908eb2-cb29-4b20-9e12-056a77cfa058.png)

  
  
  - Mostrar todos los juegos de la consola Nintendo Swithc:
  ```
  select juego.titulo from juego 
  join juegoconsola on juego.id = juegoconsola.juego_id
  join consola on consola.id = juegoconsola.consola_id
  where consola.modelo = "Nintendo Switch";
  ```
  ![Captura de pantalla de 2023-01-27 17-34-16](https://user-images.githubusercontent.com/80277545/215141524-dbd0a7dc-a709-4306-b5fe-f2bf003e39dc.png)


  - Mostrar los juegos que se vendieron durante el mes de diciembre de 2022 y su respectivo comprador:
  ```
  select CONCAT(cliente.nombre,' ', cliente.apellidos)  as "Cliente", juego.titulo as "Titulo del juego"  
  from cliente
  JOin factura on factura.cliente_id = cliente.id
  JOin facturajuegos on facturajuegos.factura_id = factura.id
  Join juego on facturajuegos.juego_id = juego.id
  where factura.fecha between "2022-12-01" and "2022-12-31";
  ```
  ![Captura de pantalla de 2023-01-27 17-35-21](https://user-images.githubusercontent.com/80277545/215141811-5b591a66-e976-487a-afab-7c1f95a14f9f.png)

  
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
  ![image](https://user-images.githubusercontent.com/80277545/215142003-61186c1c-1e05-4e29-aa1b-8017c7ed6b2a.png)


  
