CREATE TABLE professeur(
   id_professeur INT,
   code VARCHAR(50) NOT NULL,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   competence VARCHAR(50),
   PRIMARY KEY(id_professeur),
   UNIQUE(code)
);

CREATE TABLE Etudiant(
   id_etudiant INT,
   code VARCHAR(50) NOT NULL,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   adresse VARCHAR(150),
   ville VARCHAR(70),
   code_postal VARCHAR(50),
   diplome VARCHAR(50),
   PRIMARY KEY(id_etudiant),
   UNIQUE(code)
);

CREATE TABLE Salle(
   id_salle INT,
   nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_salle),
   UNIQUE(nom)
);

CREATE TABLE matiere(
   id_matiere INT,
   nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_matiere),
   UNIQUE(nom)
);

CREATE TABLE Cours(
   id_salle INT,
   id_cours INT,
   heure_de_debut TIME NOT NULL,
   heure_de_fin TIME NOT NULL,
   jour DATE NOT NULL,
   id_professeur INT NOT NULL,
   id_matiere INT NOT NULL,
   PRIMARY KEY(id_salle, id_cours),
   UNIQUE(heure_de_debut),
   UNIQUE(heure_de_fin),
   UNIQUE(jour),
   FOREIGN KEY(id_salle) REFERENCES Salle(id_salle),
   FOREIGN KEY(id_professeur) REFERENCES professeur(id_professeur),
   FOREIGN KEY(id_matiere) REFERENCES matiere(id_matiere)
);

CREATE TABLE participer(
   id_etudiant INT,
   id_salle INT,
   id_cours INT,
   PRIMARY KEY(id_etudiant, id_salle, id_cours),
   FOREIGN KEY(id_etudiant) REFERENCES Etudiant(id_etudiant),
   FOREIGN KEY(id_salle, id_cours) REFERENCES Cours(id_salle, id_cours)
);

