USE softwarespherebd;

-- USUARIOS-----------------------------------------------------------------------
SELECT * FROM usuarios;
INSERT INTO usuarios VALUES (null, "Carlos", "Lopez", "5581502491", "carloslopez@gmail.com", "Jaiba?28"),
(null, "Mauricio", "Coronado", "5529876764", "maucorona@gmail.com", "Gamerpr0?"),
(null, "Esteban", "Ballesteros", "5539852241", "elesteban.b1989@gmail.com", "@jhhlAAwe7"),
(null, "Ulises", "Ríos", "5569676979", "ulises@gmail.com", "Ulixs?28"),
(null, "Alfredo", "Ocaña", "5585974191", "alfocaña@gmail.com", "Truchavengadora17$$"),
(null, "David", "Rojas", "5522302491", "rojasdavid@gmail.com", "Atungigante$12$"),
(null,"Aranza","Cruz", "5512002927", "ara@gmail.com", "@Aranrz27");


-- SERVICIOS ---------------------------------------------------------------------
SELECT * FROM servicios;
INSERT INTO servicios VALUES 
(null, "https://www.shutterstock.com/image-vector/using-smart-lock-application-icon-260nw-2493334223.jpg", "apps de cardio", "aplicaciones de ejercicios de cardio"),
(null, "https://www.comocrearunapaginaweb.com.mx/wp-content/uploads/2020/06/donde-se-pueden-descargar-las-aplicaciones-moviles.jpg", "app de red social", "aplicación de red social"),
(null, "https://m.media-amazon.com/images/I/61gpLj2KvTL._AC_SL1500_.jpg", "Apps Smart Watch", "Los desarrolladores de Software Sphere tenemos amplia experiencia en el desarrollo de aplicaciones smartwatch que combinan funcionalidad avanzada con una experiencia de usuario intuitiva, cotiza una aquí."),
(null, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA5r0_FrSjm2OgttQLwh_CnVCnzbJ7dLv6oA&s", "Chat Bot para empresas", "Atiende a tus clientes 24/7. Contrata nuestro servicio para que generemos tu Chat Bot con fácil integración a tu sitio web"),
(null, "https://img.freepik.com/vector-premium/idea-creativa-conceptos-diseno-linea-portafolio-digital-caracter_269730-321.jpg?w=740", "Portafolio web", "Te apoyamos a crear tu portafolio digital. Podemos asesorarte para que estructures de la mejor forma tu colección de pruebas electrónicas. Ponte en contacto con nosotros");

-- ORDEN -------------------------------------------------------------------------
SELECT * FROM orden;
INSERT INTO orden VALUES (null, "2024-10-21", "1000", "referencia a la orden de portafolio web", 11);

UPDATE orden SET fecha="2024-10-20"
WHERE id_orden=3;
