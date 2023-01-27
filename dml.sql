/* Inserts en clientes */


INSERT INTO cliente (nombre, apellidos, telefono, correo) VALUES 
("Jaume", "Serrano Roig", "+34 643 234 231", "jaume@cifpfbmoll.eu");

INSERT INTO cliente (nombre, apellidos, telefono, correo) VALUES 
("Amin", "Garcia Ramón", "+34 643 123 111", "aminelcrack@gmail.com");

INSERT INTO cliente (nombre, apellidos, telefono, correo) VALUES 
("Abel", "Gasas", "+34 675 167 111", "abelillo@cifpfbmoll.eu");

INSERT INTO cliente (nombre, apellidos, telefono, correo) VALUES 
("Sebastian", "Estacio", "+34 642 27 59 57", "ipopdue24@gmail.com");


/* Inserts  tienda */
INSERT INTO tienda (id, direccion, pais) VALUES (1, "C/ Torcuato Luca de Tena 42", "ESPAÑA");
INSERT INTO tienda (id, direccion, pais) VALUES (2, "c/ Elm Street 1428 ", "EEUU" );
INSERT INTO tienda (id, direccion, pais) VALUES (3, "Cerdanyola del Valles", "ITALIA");

/* Inserts Juegos */ 


INSERT INTO juego (id, titulo, genero, precio) VALUES (1, 'Call of Duty: Black Ops Cold War', 'Acción', 69.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (2, 'FIFA 21', 'Deportes', 59.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (3, 'The Last of Us Part II', 'Aventura', 59.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (4, 'Red Dead Redemption 2', 'Aventura', 59.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (5, 'Minecraft', 'Aventura', 26.95);
INSERT INTO juego (id, titulo, genero, precio) VALUES (6, 'Spider-Man: Miles Morales', 'Acción', 49.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (7, 'Cyberpunk 2077', 'RPG', 59.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (8, 'Halo Infinite', 'FPS', 59.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (9, 'Among Us', 'Acción', 4.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (10, 'Final Fantasy VII Remake', 'RPG', 59.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (11, 'The Witcher 3: Wild Hunt', 'RPG', 39.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (12, 'Mario Bros: Brothers Twins', 'Aventura', 89.99);
INSERT INTO juego (id, titulo, genero, precio) VALUES (13, 'Legend of Zelda: Breath of the Wild', 'RPG', 119.99);

/* Inserts consola */

INSERT INTO consola (id, modelo, precio) VALUES (1, 'PlayStation 5', 499.99);
INSERT INTO consola (id, modelo, precio) VALUES (2, 'Xbox Series X', 499.99);
INSERT INTO consola (id, modelo, precio) VALUES (3, 'Nintendo Switch', 299.99);
INSERT INTO consola (id, modelo, precio) VALUES (4, 'PlayStation 4 Pro', 399.99);
INSERT INTO consola (id, modelo, precio) VALUES (5, 'Xbox One X', 399.99);



/*  Inserts tiendajuego */
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (1, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (1, 2);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (1, 3);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (2, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (2, 3);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (3, 3);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (3, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (3, 2);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (4, 2);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (4, 3);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (5, 2);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (5, 3);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (6, 3);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (6, 2);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (6, 1);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (7, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (7, 3);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (7, 2);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (8, 2);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (8, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (8, 3);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (9, 3);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (9, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (9, 2);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (10, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (10, 2);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (10, 3);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (11, 2);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (11, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (11, 3);

INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (12, 3);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (13, 1);
INSERT INTO tiendajuegos (juego_id, tienda_id) VALUES (13, 2);





/* Inserts tiendaconsola*/

INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (1, 1);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (2, 1);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (3, 1);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (4, 1);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (5, 1);

INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (1, 2);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (2, 2);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (3, 2);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (5, 2);

INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (3, 3);
INSERT INTO tiendaconsola (consola_id, tienda_id) VALUES (4, 3);







/* Inserts juegoconsola */
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (12, 3);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (13, 3);


INSERT INTO juegoconsola (juego_id, consola_id) VALUES (11, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (11, 2);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (11, 3);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (11, 4);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (11, 5);

INSERT INTO juegoconsola (juego_id, consola_id) VALUES (10, 1);


INSERT INTO juegoconsola (juego_id, consola_id) VALUES (9, 3);



INSERT INTO juegoconsola (juego_id, consola_id) VALUES (8, 2);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (8, 5);

INSERT INTO juegoconsola (juego_id, consola_id) VALUES (7, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (7, 2);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (7, 4);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (7, 5);


INSERT INTO juegoconsola (juego_id, consola_id) VALUES (6, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (6, 4);



INSERT INTO juegoconsola (juego_id, consola_id) VALUES (5, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (5, 2);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (5, 3);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (5, 4);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (5, 5);




INSERT INTO juegoconsola (juego_id, consola_id) VALUES (1, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (1, 2);

INSERT INTO juegoconsola (juego_id, consola_id) VALUES (2, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (2, 2);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (2, 3);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (2, 4);


INSERT INTO juegoconsola (juego_id, consola_id) VALUES (3, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (3, 4);

INSERT INTO juegoconsola (juego_id, consola_id) VALUES (4, 1);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (4, 2);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (4, 4);
INSERT INTO juegoconsola (juego_id, consola_id) VALUES (4, 5);

/*  Inserts Factura */ 
INSERT INTO factura (id, cliente_id, tienda_id, fecha) VALUES (1,1,2,'2022-12-01');
INSERT INTO factura (id, cliente_id, tienda_id, fecha) VALUES (2,1,2,'2022-12-12');
INSERT INTO factura (id, cliente_id, tienda_id, fecha) VALUES (3,2,2,'2023-01-07');
INSERT INTO factura (id, cliente_id, tienda_id, fecha) VALUES (4,1,3,'2023-02-19');
INSERT INTO factura (id, cliente_id, tienda_id, fecha) VALUES (5,2,2,'2023-02-11');
INSERT INTO factura (id, cliente_id, tienda_id, fecha) VALUES (6,3,3,'2023-02-13');
INSERT INTO factura (id, cliente_id, tienda_id, fecha) VALUES (7,3,3,'2023-02-20');

/* Inserts facturaconsola */
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (1,1);
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (2,1);
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (5,2);
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (3,3);
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (3,4);
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (1,4);
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (1,6);
INSERT INTO facturaconsola (consola_id, factura_id) VALUES (4,7);


/* inserts facturajuego */
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (1,1);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (3,1);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (7,1);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (4,2);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (5,2);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (11,3);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (12,3);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (13,3);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (2,4);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (3,4);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (6,4);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (8,5);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (9,5);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (13,5);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (12,6);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (13,6);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (1,7);
INSERT INTO facturajuegos (juego_id, factura_id) VALUES (13,7);
