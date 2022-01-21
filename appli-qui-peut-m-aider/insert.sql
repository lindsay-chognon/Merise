-- Insertion des utilisateurs qui ont le groupe utilisateur 1 pour les aidés, 2 pour les aidants

INSERT INTO utilisateurs VALUES (1, 'rue de Gryffondor 01000 GryffondorVille', 'email1@poudlard.fr', 'lightning-wizard', 'Potter', 'Harry', '27', 'photo1', '0606105260', '2');
INSERT INTO utilisateurs VALUES (2, 'rue du Terrier 02000 TerrierVille', 'email2@poudlard.fr', 'red-head-wizard', 'Weasley', 'Ron', '29', 'photo2', '0605285260', '2');
INSERT INTO utilisateurs VALUES (3, 'rue des gobelins 03000 GobelinsVille', 'email3@poudlard.fr', 'super-wizard-woman', 'Granger', 'Hermione', '23', 'photo3', '0606166360', '2');
INSERT INTO utilisateurs VALUES (4, 'rue de serpentard 04000 SerpentardVille', 'email4@poudlard.fr', 'super-wizard', 'Malefoy', 'Drago', '24', 'photo4', '0665986774', '2');
INSERT INTO utilisateurs VALUES (5, 'rue des hyppogriffes 05000 HyppogriffesCity', 'email5@poudlard.fr', 'garde-chasse', 'Hagrid', 'Rubeus', '50', 'photo5', '0609876774', '2');
INSERT INTO utilisateurs VALUES (6, 'rue des phoenix 06000 PhoenixVille', 'email6@poudlard.fr', 'vieux-sorcier', 'Dumbledore', 'Albus', '105', 'photo6', '0609035984', '2');
INSERT INTO utilisateurs VALUES (7, 'rue des méchants 07000 MechantCity', 'email7@poudlard.fr', 'mangemort', 'Voldemort', 'Lord', '45', 'photo7', '0608752974', '2');
INSERT INTO utilisateurs VALUES (8, 'rue de Pré au Lard 08000 Pré-au-lard', 'email8@poudlard.fr', 'potion-man', 'Rogue', 'Severus', '47', 'photo8', '0609060974', '2');
INSERT INTO utilisateurs VALUES (9, 'rue du chateau 09000 PoudlardCity', 'email9@poudlard.fr', 'lovegood', 'Lovegood', 'Luna', '19', 'photo9', '0609080984', '2');
INSERT INTO utilisateurs VALUES (10, 'rue du loup-garou 10000 LOupGarouVille', 'email10@poudlard.fr', 'pleine-lune-loup', 'Lupin', 'Remus', '41', 'photo10', '069731434', '2');
INSERT INTO utilisateurs VALUES (11, 'rue des sortilèges 11000 SortilègesCity', 'email11@poudlard.fr', 'metamorphose-professor', 'McGonagall', 'Minerva', '60', 'photo11', '0673042974', '1');
INSERT INTO utilisateurs VALUES (12, 'rue des baguettes magiques 12000 BaguettesVille', 'email12@poudlard.fr', 'Logbottom', 'Londubat', 'Neville', '21', 'photo12', '0609085486', '1');
INSERT INTO utilisateurs VALUES (13, 'rue de l ordre du phoenix 13000 OrdreVille', 'email13@poudlard.fr', 'le-parrain', 'Black', 'Sirius', '48', 'photo13', '0609704186', '1');
INSERT INTO utilisateurs VALUES (14, 'rue des elfes 14000 BaguettesVille', 'email14@poudlard.fr', 'elfe-de-maison', 'Elfe', 'Dobby', '180', 'photo14', '0609412986', '1');
INSERT INTO utilisateurs VALUES (15, 'rue de la vieille sorcière 15000 MéchanteVille', 'email15@poudlard.fr', 'Mangemort-Woman', 'Lestrange', 'Bellatrix', '37', 'photo15', '0606109486', '1');

-- Insertion des compétences 

INSERT INTO competences VALUES (1, 'apprendre à voler sur un balai');
INSERT INTO competences VALUES (2, 'apprendre à transplaner');
INSERT INTO competences VALUES (3, 'garde de gobelins');
INSERT INTO competences VALUES (4, 'jouer au quidditch avec les enfants');
INSERT INTO competences VALUES (5, 'prendre soin des animaux magiques');
INSERT INTO competences VALUES (6, 'apprendre à fabriquer une cape d invisibilité');
INSERT INTO competences VALUES (7, 'réparer une baguette magique');
INSERT INTO competences VALUES (8, 'apprendre à conduire une voiture volante');
INSERT INTO competences VALUES (9, 'garde d hypogriffes');

-- Insertion des prestations

INSERT INTO prestation VALUES (1, '30/01/2022', '30/01/2022', '15:00:00', '18:00:00', 25.00, 1, 'facture1.pdf', 4, 2);
INSERT INTO prestation VALUES (2, '31/01/2022', '31/01/2022', '12:00:00', '18:00:00', 35.00, 1, 'facture2.pdf', 8, 1);
INSERT INTO prestation VALUES (3, '02/03/2022', '04/03/2022', '10:00:00', '15:00:00', 40.00, 2, 'facture3.pdf', 2, 5); 
INSERT INTO prestation VALUES (4, '05/02/2022', '06/02/2022', '12:00:00', '12:00:00', 34.00, 2, 'facture4', 9, 3);
INSERT INTO prestation VALUES (5, '18/02/2022', '20/02/2022', '12:00:00', '12:00:00', 30.00, 2, 'facture5', 2, 3);
INSERT INTO prestation VALUES (6, '25/02/2022', '25/02/2022', '09:00:00', '19:00:00', 40.00, 1, 'facture6', 7, 3); 

-- Insertion des réservations

INSERT INTO reserver VALUES (11, 3);
INSERT INTO reserver VALUES (14, 2);
INSERT INTO reserver VALUES (13, 1); 

-- Insertion des compétences des utilisateurs

INSERT INTO posseder VALUES (6, 4);
INSERT INTO posseder VALUES (3, 3);
INSERT INTO posseder VALUES (3, 1);
INSERT INTO posseder VALUES (1, 5);
INSERT INTO posseder VALUES (2, 4); 
INSERT INTO posseder VALUES (7, 8); 
INSERT INTO posseder VALUES (10, 8); 
INSERT INTO posseder VALUES (12, 8);