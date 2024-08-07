-- pokedex es foreign key en mis pokemones

-- modificar columna pokedex primary key en pokemones kanto
Alter Table pokemoneskanto 
modify column pokedex INT primary key auto_increment NOT NULL;

-- modificar columna pokedex foreign key en mis pokemones
alter table mis_pokemones 
add foreign key (pokedex) references pokemoneskanto(pokedex);

-- agregar datos
insert into mis_pokemones (pokedex) 
values (1);

ALTER TABLE generationc2.mis_pokemones ADD id int primary key auto_increment NOT NULL;

truncate mis_pokemones ;


ALTER TABLE mis_pokemones 
ADD constraint FOREIGN KEY(pokedex) REFERENCES pokemonesKanto(pokedex);





INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (1,'Thu Jan 31 00:00:00 CLST 2019','Independencia',0,20.9,0.5),
	 (1,'Wed Jan 30 00:00:00 CLST 2019','Estacion Central',0,28.3,0.8),
	 (2,'Fri Feb 01 00:00:00 CLST 2019','Independencia',0,52.7,1.3),
	 (3,'Fri Mar 01 00:00:00 CLST 2019','Independencia',0,105.8,2.0),
	 (3,'Tue Jan 29 00:00:00 CLST 2019','Macul',0,100.5,2.1),
	 (4,'Fri Feb 01 00:00:00 CLST 2019','Independencia',0,22.9,0.6),
	 (4,'Sun Jan 27 00:00:00 CLST 2019','Independencia',0,31.7,0.7),
	 (5,'Sun Feb 03 00:00:00 CLST 2019','La Reina',0,60.1,1.2),
	 (5,'Sun Feb 03 00:00:00 CLST 2019','Pedro Aguirre Cerda',0,80.9,1.5),
	 (6,'Sun Jan 27 00:00:00 CLST 2019','Independencia',0,120.9,1.8);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (6,'Fri Feb 08 00:00:00 CLST 2019','Independencia',0,130.1,2.0),
	 (7,'Fri Feb 08 00:00:00 CLST 2019','Independencia',0,30.8,0.5),
	 (7,'Sat Jan 26 00:00:00 CLST 2019','Independencia',1,35.7,0.6),
	 (8,'Sat Feb 16 00:00:00 CLST 2019','Cerrillos',0,40.9,1.1),
	 (9,'Sat Feb 16 00:00:00 CLST 2019','Independencia',0,151.0,1.6),
	 (9,'Sat Jan 26 00:00:00 CLST 2019','Independencia',0,180.9,1.8),
	 (10,'Wed Feb 13 00:00:00 CLST 2019','Cerro Navia',0,10.1,0.5),
	 (10,'Sat Jan 26 00:00:00 CLST 2019','Independencia',0,7.1,0.2),
	 (11,'Wed Feb 13 00:00:00 CLST 2019','Santiago',1,25.9,0.7),
	 (11,'Fri Mar 01 00:00:00 CLST 2019','Santiago',0,25.1,0.5);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (12,'Mon Mar 04 00:00:00 CLST 2019','Recoleta',0,27.8,1.1),
	 (13,'Sat Jan 26 00:00:00 CLST 2019','Santiago',0,5.1,0.3),
	 (13,'Mon Mar 04 00:00:00 CLST 2019','La Granja',1,8.2,0.5),
	 (16,'Mon Mar 04 00:00:00 CLST 2019','Santiago',0,13.1,0.3),
	 (16,'Tue Jan 01 00:00:00 CLST 2019','Santiago',1,13.9,0.4),
	 (16,'Fri Mar 08 00:00:00 CLST 2019','Estacion Central',0,13.2,0.3),
	 (19,'Thu Jan 24 00:00:00 CLST 2019','Santiago',0,10.8,0.4),
	 (19,'Fri Mar 08 00:00:00 CLST 2019','Estacion Central',0,9.3,0.3),
	 (19,'Fri Mar 08 00:00:00 CLST 2019','Santiago',0,11.6,0.5),
	 (19,'Thu Jan 24 00:00:00 CLST 2019','Independencia',1,15.7,0.8);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (19,'Thu Mar 14 00:00:00 CLST 2019','Estacion Central',0,6.6,0.3),
	 (20,'Thu Mar 14 00:00:00 CLST 2019','Independencia',0,45.8,0.7),
	 (21,'Sat Mar 16 00:00:00 CLST 2019','Recoleta',0,4.0,0.5),
	 (21,'Sun Mar 17 00:00:00 CLST 2019','Providencia',0,10.9,0.9),
	 (22,'Mon Mar 18 00:00:00 CLST 2019','Independencia',0,61.7,1.2),
	 (23,'Thu Feb 21 00:00:00 CLST 2019','Independencia',1,34.9,2.0),
	 (26,'Thu Feb 21 00:00:00 CLST 2019','Las Condes',0,41.9,0.8),
	 (27,'Thu Feb 21 00:00:00 CLST 2019','Independencia',0,22.9,0.6),
	 (28,'Sat Jan 19 00:00:00 CLST 2019','Estacion Central',0,53.5,1.0),
	 (29,'Thu Feb 21 00:00:00 CLST 2019','Estacion Central',0,7.1,0.5);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (30,'Wed Mar 20 00:00:00 CLST 2019','Providencia',0,25.9,0.9),
	 (31,'Sat Jan 19 00:00:00 CLST 2019','Independencia',0,99.8,1.8),
	 (33,'Wed Mar 20 00:00:00 CLST 2019','Santiago',1,23.0,0.9),
	 (33,'Thu Mar 21 00:00:00 CLST 2019','Independencia',0,22.1,0.8),
	 (34,'Sat Mar 23 00:00:00 CLST 2019','Las Condes',0,112.9,1.7),
	 (34,'Fri Jun 21 00:00:00 CLT 2019','Las Condes',0,150.1,1.9),
	 (34,'Fri Jan 11 00:00:00 CLST 2019','Independencia',0,88.1,1.5),
	 (34,'Sat Jun 15 00:00:00 CLT 2019','Santiago',0,70.9,1.4),
	 (34,'Tue Jun 18 00:00:00 CLT 2019','Independencia',0,130.1,1.8),
	 (35,'Fri May 31 00:00:00 CLT 2019','Santiago',0,8.0,0.6);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (35,'Sat Jan 12 00:00:00 CLST 2019','Estacion Central',0,9.5,0.6),
	 (36,'Tue Apr 30 00:00:00 CLT 2019','Estacion Central',0,80.1,1.7),
	 (36,'Tue Jun 18 00:00:00 CLT 2019','El Bosque',0,45.8,1.3),
	 (37,'Fri Mar 29 00:00:00 CLST 2019','El Bosque',0,11.9,0.7),
	 (38,'Fri Jan 11 00:00:00 CLST 2019','San Bernardo',0,35.8,1.8),
	 (40,'Thu Feb 28 00:00:00 CLST 2019','San Bernardo',0,15.4,1.2),
	 (41,'Sun Jun 16 00:00:00 CLT 2019','Maipu',0,8.9,0.9),
	 (41,'Sun Jun 16 00:00:00 CLT 2019','Maipu',0,5.1,0.4),
	 (41,'Mon Jan 28 00:00:00 CLST 2019','Las Condes',0,8.6,0.7),
	 (41,'Sat Jul 27 00:00:00 CLT 2019','Las Condes',0,4.9,0.5);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (41,'Tue Jan 01 00:00:00 CLST 2019','Independencia',0,9.1,0.9),
	 (41,'Wed Jun 26 00:00:00 CLT 2019','Pe√±alol√©n',0,15.8,1.1),
	 (41,'Fri Feb 22 00:00:00 CLST 2019','Independencia',0,4.8,0.4),
	 (41,'Fri Feb 22 00:00:00 CLST 2019','Santiago',0,7.6,0.5),
	 (41,'Sat May 25 00:00:00 CLT 2019','Santiago',0,6.3,0.6),
	 (44,'Wed Jan 09 00:00:00 CLST 2019','Santiago',0,23.8,0.8),
	 (45,'Wed Apr 24 00:00:00 CLT 2019','Santiago',0,20.8,1.3),
	 (48,'Fri Jun 14 00:00:00 CLT 2019','Estacion Central',0,33.9,1.0),
	 (48,'Sat Mar 23 00:00:00 CLST 2019','Estacion Central',0,29.7,0.9),
	 (48,'Fri Feb 22 00:00:00 CLST 2019','Estacion Central',1,40.1,1.3);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (49,'Sat Feb 23 00:00:00 CLST 2019','Macul',0,14.2,1.5),
	 (49,'Fri Jun 14 00:00:00 CLT 2019','Macul',0,11.9,1.1),
	 (50,'Fri Jan 25 00:00:00 CLST 2019','La Granja',0,0.9,0.3),
	 (51,'Wed Jun 05 00:00:00 CLT 2019','Macul',0,33.9,0.7),
	 (52,'Wed Jun 05 00:00:00 CLT 2019','Macul',0,4.5,0.6),
	 (52,'Wed Jul 03 00:00:00 CLT 2019','Santiago',0,7.5,0.9),
	 (52,'Sun Jun 02 00:00:00 CLT 2019','Independencia',0,3.1,0.3),
	 (53,'Wed Jan 09 00:00:00 CLST 2019','Estacion Central',0,28.9,0.9),
	 (53,'Sun May 05 00:00:00 CLT 2019','Estacion Central',0,27.0,1.0),
	 (55,'Thu Apr 04 00:00:00 CLST 2019','Estacion Central',0,80.1,1.8);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (56,'Sun Feb 24 00:00:00 CLST 2019','Independencia',0,25.0,0.6),
	 (57,'Fri Jun 21 00:00:00 CLT 2019','La Reina',0,40.1,0.8),
	 (58,'Sat Mar 23 00:00:00 CLST 2019','Independencia',0,26.7,0.9),
	 (58,'Sun Jan 06 00:00:00 CLST 2019','Las Condes',1,23.5,0.8),
	 (58,'Sat Feb 23 00:00:00 CLST 2019','Las Condes',0,25.0,0.7),
	 (60,'Sat Jun 01 00:00:00 CLT 2019','Las Condes',0,12.7,0.6),
	 (60,'Sun Jun 23 00:00:00 CLT 2019','La Florida',0,11.6,0.5),
	 (61,'Fri Jan 11 00:00:00 CLST 2019','El Bosque',0,29.9,1.2),
	 (62,'Thu Feb 28 00:00:00 CLST 2019','El Bosque',1,55.3,1.4),
	 (63,'Fri Jul 19 00:00:00 CLT 2019','Huechuraba',0,13.4,0.7);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (63,'Sat Jun 01 00:00:00 CLT 2019','Huechuraba',0,10.1,0.6),
	 (66,'Sun Jun 23 00:00:00 CLT 2019','Huechuraba',0,20.0,0.9),
	 (66,'Fri Jun 28 00:00:00 CLT 2019','Independencia',0,24.1,1.0),
	 (68,'Wed May 15 00:00:00 CLT 2019','El Bosque',0,113.1,1.2),
	 (68,'Sun Jan 06 00:00:00 CLST 2019','Independencia',0,120.5,1.4),
	 (68,'Fri Apr 19 00:00:00 CLT 2019','Independencia',0,115.7,1.2),
	 (68,'Sat Jan 19 00:00:00 CLST 2019','Santiago',0,130.4,1.6),
	 (70,'Thu May 02 00:00:00 CLT 2019','Santiago',1,7.1,1.1),
	 (71,'Tue Jun 25 00:00:00 CLT 2019','Santiago',0,20.4,1.9),
	 (71,'Thu Jan 10 00:00:00 CLST 2019','San Bernardo',0,14.9,1.6);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (72,'Fri May 31 00:00:00 CLT 2019','Estacion Central',0,40.1,0.8),
	 (72,'Tue Jun 25 00:00:00 CLT 2019','San Bernardo',0,32.8,0.6),
	 (72,'Sat Jun 01 00:00:00 CLT 2019','Santiago',0,45.3,0.9),
	 (72,'Thu Mar 21 00:00:00 CLST 2019','Santiago',0,42.5,0.9),
	 (73,'Sat Jun 01 00:00:00 CLT 2019','Independencia',0,60.9,1.8),
	 (76,'Sat Jun 01 00:00:00 CLT 2019','Independencia',0,305.8,1.4),
	 (76,'Tue Jun 25 00:00:00 CLT 2019','Maipu',0,320.1,1.6),
	 (77,'Sat Mar 16 00:00:00 CLST 2019','Maipu',0,40.1,1.1),
	 (78,'Tue Apr 30 00:00:00 CLT 2019','Santiago',0,124.6,1.7),
	 (78,'Thu Mar 14 00:00:00 CLST 2019','Independencia',0,140.7,1.9);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (78,'Thu Mar 07 00:00:00 CLST 2019','Las Condes',0,131.4,1.8),
	 (79,'Mon Apr 29 00:00:00 CLT 2019','Las Condes',0,37.1,1.2),
	 (79,'Wed Feb 13 00:00:00 CLST 2019','Estacion Central',0,40.8,1.3),
	 (80,'Wed May 29 00:00:00 CLT 2019','Lo Barnechea',0,90.1,1.7),
	 (80,'Wed May 29 00:00:00 CLT 2019','El Bosque',0,98.5,1.9),
	 (81,'Thu Feb 21 00:00:00 CLST 2019','Lo Barnechea',0,5.9,0.4),
	 (81,'Fri Mar 22 00:00:00 CLST 2019','El Bosque',0,7.1,0.6),
	 (81,'Fri Mar 22 00:00:00 CLST 2019','Independencia',0,4.9,0.3),
	 (84,'Fri Mar 22 00:00:00 CLST 2019','Independencia',0,40.9,1.4),
	 (84,'Thu Jul 11 00:00:00 CLT 2019','El Bosque',0,35.1,1.3);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (85,'Sun Apr 28 00:00:00 CLT 2019','San Miguel',0,85.8,1.8),
	 (85,'Thu Jul 18 00:00:00 CLT 2019','Macul',0,99.9,2.0),
	 (86,'Sun May 26 00:00:00 CLT 2019','Independencia',0,89.1,1.2),
	 (87,'Thu Jul 25 00:00:00 CLT 2019','Macul',0,140.1,1.8),
	 (88,'Sun Apr 28 00:00:00 CLT 2019','Estacion Central',0,31.9,0.9),
	 (89,'Sun Jul 28 00:00:00 CLT 2019','San Bernardo',0,40.5,1.3),
	 (90,'Thu May 23 00:00:00 CLT 2019','Huechuraba',0,6.1,0.3),
	 (90,'Tue Jul 30 00:00:00 CLT 2019','Macul',0,7.9,0.4),
	 (90,'Thu May 23 00:00:00 CLT 2019','Estacion Central',0,18.7,1.0),
	 (92,'Wed Jul 31 00:00:00 CLT 2019','Santiago',0,0.1,1.3);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (92,'Fri Jun 28 00:00:00 CLT 2019','Santiago',0,0.2,1.4),
	 (92,'Thu Jul 11 00:00:00 CLT 2019','Quilicura',0,0.1,1.3),
	 (93,'Tue May 21 00:00:00 CLT 2019','Santiago',1,0.1,1.6),
	 (94,'Fri Jul 12 00:00:00 CLT 2019','Santiago',0,38.9,1.7),
	 (95,'Sat Jun 29 00:00:00 CLT 2019','Santiago',0,240.8,8.9),
	 (96,'Fri Jul 26 00:00:00 CLT 2019','Estacion Central',0,45.9,1.3),
	 (97,'Fri Mar 22 00:00:00 CLST 2019','Estacion Central',0,80.4,1.7),
	 (97,'Fri Mar 22 00:00:00 CLST 2019','La Cisterna',0,75.5,1.6),
	 (97,'Fri Jul 26 00:00:00 CLT 2019','Estacion Central',0,71.9,1.4),
	 (99,'Fri Apr 26 00:00:00 CLT 2019','Estacion Central',0,98.5,2.1);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (99,'Fri Apr 26 00:00:00 CLT 2019','Independencia',1,101.1,2.2),
	 (100,'Wed Jul 24 00:00:00 CLT 2019','Santiago',0,9.1,0.6),
	 (100,'Sun Jun 30 00:00:00 CLT 2019','Maipu',0,9.5,0.6),
	 (101,'Fri Apr 26 00:00:00 CLT 2019','Maipu',0,60.1,1.0),
	 (101,'Mon Jul 22 00:00:00 CLT 2019','Pe√±alol√©n',0,66.9,1.2),
	 (102,'Sat May 18 00:00:00 CLT 2019','Macul',0,1.9,0.2),
	 (103,'Sun Jul 21 00:00:00 CLT 2019','Macul',0,125.9,2.1),
	 (103,'Fri Jul 19 00:00:00 CLT 2019','Macul',0,120.8,2.0),
	 (103,'Mon Apr 22 00:00:00 CLT 2019','Independencia',0,117.6,1.9),
	 (105,'Mon Apr 22 00:00:00 CLT 2019','Santiago',0,44.9,0.9);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (105,'Sun Jun 30 00:00:00 CLT 2019','Estacion Central',0,41.7,0.8),
	 (105,'Fri Jul 19 00:00:00 CLT 2019','Estacion Central',0,50.8,1.1),
	 (105,'Wed Mar 27 00:00:00 CLST 2019','Estacion Central',1,45.1,1.0),
	 (109,'Wed Mar 27 00:00:00 CLST 2019','El Bosque',0,2.1,1.2),
	 (111,'Wed Jul 17 00:00:00 CLT 2019','El Bosque',0,102.6,0.9),
	 (112,'Fri May 17 00:00:00 CLT 2019','Lo Barnechea',0,130.9,2.0),
	 (112,'Sun Jun 30 00:00:00 CLT 2019','Lo Barnechea',0,145.7,2.1),
	 (113,'Sat Apr 20 00:00:00 CLT 2019','Independencia',0,38.8,1.0),
	 (114,'Fri Apr 19 00:00:00 CLT 2019','Santiago',0,29.8,0.9),
	 (114,'Wed Jul 17 00:00:00 CLT 2019','San Bernardo',0,35.0,1.1);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (116,'Tue May 14 00:00:00 CLT 2019','San Bernardo',0,8.9,0.5),
	 (117,'Fri Jul 12 00:00:00 CLT 2019','Providencia',0,40.2,1.8),
	 (119,'Fri Jul 12 00:00:00 CLT 2019','Providencia',0,45.8,1.5),
	 (119,'Fri Mar 29 00:00:00 CLST 2019','Providencia',0,41.7,1.2),
	 (121,'Tue Jul 09 00:00:00 CLT 2019','Recoleta',0,87.9,1.1),
	 (121,'Fri Mar 29 00:00:00 CLST 2019','Providencia',0,79.8,1.0),
	 (121,'Tue Jul 09 00:00:00 CLT 2019','Providencia',0,80.1,1.0),
	 (121,'Sun Mar 31 00:00:00 CLST 2019','Vitacura',0,82.5,1.2),
	 (123,'Sun Mar 31 00:00:00 CLST 2019','Providencia',0,55.8,1.5),
	 (123,'Tue Apr 16 00:00:00 CLT 2019','Providencia',0,52.0,1.4);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (123,'Sat Jul 06 00:00:00 CLT 2019','Vitacura',0,53.3,1.2),
	 (123,'Sat Jul 06 00:00:00 CLT 2019','Quinta Normal',0,51.9,1.5),
	 (125,'Fri Jan 04 00:00:00 CLST 2019','Vitacura',0,45.1,1.5),
	 (125,'Sun Jul 21 00:00:00 CLT 2019','Vitacura',0,40.2,1.3),
	 (126,'Tue Apr 16 00:00:00 CLT 2019','Vitacura',0,50.1,1.3),
	 (127,'Sun May 12 00:00:00 CLT 2019','Vitacura',0,62.6,1.7),
	 (127,'Fri Jan 04 00:00:00 CLST 2019','Santiago',0,66.8,1.8),
	 (127,'Sun May 12 00:00:00 CLT 2019','Santiago',0,56.7,1.2),
	 (127,'Tue Apr 16 00:00:00 CLT 2019','Quinta Normal',0,52.8,1.1),
	 (131,'Sat Apr 13 00:00:00 CLT 2019','Santiago',0,252.8,2.8);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (134,'Wed Apr 10 00:00:00 CLT 2019','Santiago',0,24.7,1.0),
	 (135,'Thu May 09 00:00:00 CLT 2019','Independencia',0,22.9,1.1),
	 (136,'Wed Apr 10 00:00:00 CLT 2019','Santiago',0,24.4,1.0),
	 (137,'Thu Jan 03 00:00:00 CLST 2019','Macul',0,36.5,0.9),
	 (138,'Sun Mar 31 00:00:00 CLST 2019','Santiago',0,7.5,0.4),
	 (138,'Sun Mar 31 00:00:00 CLST 2019','Independencia',0,8.9,0.5),
	 (138,'Thu May 09 00:00:00 CLT 2019','Macul',0,15.5,1.1),
	 (139,'Wed Apr 10 00:00:00 CLT 2019','Maipu',0,57.3,1.5),
	 (140,'Thu Jan 03 00:00:00 CLST 2019','San Bernardo',0,15.5,0.6),
	 (143,'Sat May 04 00:00:00 CLT 2019','Maipu',0,460.1,2.3);
INSERT INTO generationc2.mis_pokemones (pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES
	 (144,'Sat Jul 13 00:00:00 CLT 2019','Independencia',0,55.4,1.7),
	 (145,'Sat Apr 06 00:00:00 CLST 2019','Santiago',0,52.6,1.6),
	 (146,'Sat Apr 06 00:00:00 CLST 2019','Estacion Central',0,60.0,2.0),
	 (147,'Sat May 04 00:00:00 CLT 2019','Estacion Central',0,4.5,2.0),
	 (147,'Wed Jul 03 00:00:00 CLT 2019','Estacion Central',0,3.1,1.8),
	 (148,'Wed May 01 00:00:00 CLT 2019','Providencia',0,18.6,4.1),
	 (149,'Mon Jul 01 00:00:00 CLT 2019','El Bosque',0,288.9,2.9),
	 (149,'Mon Apr 01 00:00:00 CLST 2019','Conchali',0,279.5,2.4),
	 (149,'Mon Apr 01 00:00:00 CLST 2019','Macul',0,290.1,3.0);


	
	ALTER TABLE generationc2.mis_pokemones ADD id int primary key auto_increment NOT NULL;

-- seleccionar todos de la era kanto tipo fuego
select nombre,tipo1, pokedex  from pokemoneskanto p 
where tipo1 = 'fuego';

-- seleccionar charizard de mis pokemones
select mp.pokedex, nombre, fecha_captura  from mis_pokemones mp 
inner join pokemoneskanto p 
on mp.pokedex = p.pokedex
where nombre = 'Charizard';

-- seleccionar pokemones fuegos de mis pokemones

select mp.pokedex, nombre,tipo1, fecha_captura from mis_pokemones mp 
inner join pokemoneskanto p 
on mp.pokedex = p.pokedex 
where p.tipo1 = 'fuego';

-- pokemones tipo1 y 2 venenosos
select nombre,tipo1,tipo2,fecha_captura from mis_pokemones mp 
inner join pokemoneskanto p 
on mp.pokedex=p.pokedex 
where tipo2='venenoso';

