create database game;

use game;

create table cliente (id int NOT NULL AUTO_INCREMENT,
                     nombre varchar(25), 
                     apellidos varchar(100),
                     telefono varchar(25),
                     Correo varchar(50),
                     PRIMARY KEY(id));


create table tienda (id int ,
                     direccion varchar(100),
                     pais varchar(25),
                    PRIMARY KEY(id));


create table factura (id int NOT NULL ,
                      cliente_id int ,
                      tienda_id int,
                      fecha DATE,
                      PRIMARY KEY(id),
                      FOREIGN KEY (cliente_id) REFERENCES cliente(id),
                      FOREIGN KEY (tienda_id) REFERENCES tienda(id));
                      
 create table juego (id int ,
                     titulo varchar(100) UNIQUE,
                     genero varchar(25),
                     precio DECIMAL(10,2),
                     PRIMARY KEY(id),
                    CHECK (precio >= 0));
                    

create table consola(id int,
                    modelo varchar(100) UNIQUE,
                    precio DECIMAL(10,2),
                     PRIMARY KEY(id),
                    CHECK (precio >= 0));
 

create table juegoconsola(juego_id int,
                         consola_id int,
                         FOREIGN KEY (juego_id) REFERENCES juego(id),
                      		FOREIGN KEY (consola_id) REFERENCES consola(id));
 
create table facturaconsola (consola_id int,
                           factura_id int,
                           FOREIGN KEY (consola_id) REFERENCES consola(id),
                      		FOREIGN KEY (factura_id) REFERENCES factura(id));


create table facturajuegos (juego_id int,
                           factura_id int,
                           FOREIGN KEY (juego_id) REFERENCES juego(id),
                      		FOREIGN KEY (factura_id) REFERENCES factura(id));
                            
create table tiendajuegos ( juego_id int,
                           tienda_id int,
		 					FOREIGN KEY (juego_id) REFERENCES juego(id),
                      		FOREIGN KEY (tienda_id) REFERENCES tienda(id));
                            
create table tiendaconsola ( consola_id int,
                           tienda_id int,
		 					FOREIGN KEY (consola_id) REFERENCES consola(id),
                      		FOREIGN KEY (tienda_id) REFERENCES tienda(id));
                            

