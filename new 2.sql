/*chauffeur (NumChauffeur_pk,nom,prenom,sexe,salaire,adresse,age)
bus(numBus_pk,capacite,type,immatriculation)
voyage(#numChaffeur,#numBus,dateVoyage,villeDepart,villeArrivee)
entrer les requete sql permettant:
1- De creer une base de donnee <<Transport>>
2- De connecter a la base de donnees <Transport>>
3- de creer les differentes table sans contraintes primaire et etrangere
4- D'ajouter les contraintes des cles primaire et etrangere
5- D'ajouter colonne telephone a la table chauffeur
6- De supprimer la table bus
7- D'inserer  un chauffeur a la table chauffeur
8- De supprimer la contrainte des cles primaire de la table chauffeur
9- D'augmenter de 10% le salaire des chauffeurs gagnant plus de 35000 gds le mois
10-De supprimer le salaire des chauffeurs gagnant plus de 75 000 gds le mois 
11- Donner le nom , le prenom et le salaire des chauffeurs qui ont conduit le bus numero 5 pendant le mois de septembre 
12- Afficher le nom des chauffeurs dont le salaire est superieur au salaire de <<jacques>> */

--1- 
create database Transport ;
--2
use Transport;
--3
--chauffeur (NumChauffeur_pk,nom,prenom,sexe,salaire,adresse,age)
create table chauffuer( numChauffeur int (3) not null,
						prenom char (15),
						nom char(15),
						sexe char (15),
						salaire char(15),
						adresse char(15),
						age int (3) );

--bus(numBus_pk,capacite,typeBus,immatriculation)
create table bus ( numBus int (5) not null,
						capacite int (5),
						typeBus char (15),
						immatriculation char(15) );

--voyage(#numChaffeur,#numBus,dateVoyage,villeDepart,villeArrivee)
create table voyage (numChauffeur int (10),
						numBus int (5),
						dateVoyage date ,
						villeDepart varchar (100),
						villeArrivee varchar (100) );
						
--4 
alter table chauffeur add CONSTRAINT pk_numChauffeur primary key (numChauffeur);
alter table bus add constraint pk_numBus primary key (numBus);
alter table voyage add  constraint fk_numChauffeur foreign key (numChauffeur) REFERENCES chauffeur (numChauffeur);
alter table voyage add constraint fk_numBus foreign key(numBus) REFERENCES bus (numBus);

--5
alter table chauffeur ADD COLUMN telephone int (12);

--6
DROP table bus;

--7
--chauffeur (NumChauffeur_pk,nom,prenom,sexe,salaire,adresse,age)
INSERT INTO chauffeur (NumChauffeur,nom,prenom,sexe,salaire,adresse,age) VALUES(1,'Labonte','Jean-Robert','M',3000,'Delmas 33',28);

--8
ALTER TABLE chauffeur DROP CONSTRAINT PK_chauffeur;


--9- D'augmenter de 10% le salaire des chauffeurs gagnant plus de 35000 gds le mois
UPDATE chauffeur
SET salaire = salaire * 1.10
WHERE salaire > 35000;


--10
update chauffeur
set salaire = null 
WHERE salaire > 35000;

--11
SELECT c.nom, c.prenom, c.salaire
FROM chauffeur c
JOIN voyage v ON c.NumChauffeur = v.numChauffeur
WHERE v.numBus = 5 AND MONTH(v.dateVoyage) = 9;

--12
SELECT c1.nom
FROM chauffeur c1
JOIN chauffeur c2 ON c2.nom = 'jacques'
WHERE c1.salaire > c2.salaire;
