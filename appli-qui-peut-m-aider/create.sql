CREATE TABLE Utilisateurs(
   Id_Utilisateur SERIAL,
   adresse VARCHAR(50) ,
   e_mail VARCHAR(50) ,
   login VARCHAR(50) ,
   nom VARCHAR(50) ,
   prenom VARCHAR(50) ,
   age VARCHAR(50) ,
   date_de_naissance DATE,
   photo VARCHAR(50) ,
   téléphone VARCHAR(50) ,
   groupe_utilisateur INTEGER,
   PRIMARY KEY(Id_Utilisateur),
   UNIQUE(login)
);

CREATE TABLE competences(
   Id_Compétences SERIAL,
   competences VARCHAR(50) ,
   PRIMARY KEY(Id_Compétences),
   UNIQUE(competences)
);

CREATE TABLE Prestation(
   Id_Prestation SERIAL,
   date_debut DATE NOT NULL,
   date_fin DATE NOT NULL,
   heure_debut TIME NOT NULL,
   heure_fin TIME NOT NULL,
   taux_horaire NUMERIC(15,2)  ,
   statut INTEGER,
   facture VARCHAR(50) ,
   Id_Utilisateur INTEGER NOT NULL,
   Id_Compétences INTEGER NOT NULL,
   PRIMARY KEY(Id_Prestation),
   UNIQUE(Id_Utilisateur, date_debut, date_fin, heure_debut, heure_fin),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateurs(Id_Utilisateur),
   FOREIGN KEY(Id_Compétences) REFERENCES competences(Id_Compétences)
);

CREATE TABLE zone_geographique(
   Id_zone_géographique SERIAL,
   code_commune INTEGER,
   ville VARCHAR(50) ,
   PRIMARY KEY(Id_zone_géographique),
   UNIQUE(code_commune)
);

CREATE TABLE posseder(
   Id_Utilisateur INTEGER,
   Id_Compétences INTEGER,
   PRIMARY KEY(Id_Utilisateur, Id_Compétences),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateurs(Id_Utilisateur),
   FOREIGN KEY(Id_Compétences) REFERENCES competences(Id_Compétences)
);

CREATE TABLE se_trouver(
   Id_Prestation INTEGER,
   Id_zone_géographique INTEGER,
   PRIMARY KEY(Id_Prestation, Id_zone_géographique),
   FOREIGN KEY(Id_Prestation) REFERENCES Prestation(Id_Prestation),
   FOREIGN KEY(Id_zone_géographique) REFERENCES zone_geographique(Id_zone_géographique)
);

CREATE TABLE reserver(
   Id_Utilisateur INTEGER,
   Id_Prestation INTEGER,
   PRIMARY KEY(Id_Utilisateur, Id_Prestation),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateurs(Id_Utilisateur),
   FOREIGN KEY(Id_Prestation) REFERENCES Prestation(Id_Prestation)
);

CREATE TABLE se_situer(
   Id_Utilisateur INTEGER,
   Id_zone_géographique INTEGER,
   PRIMARY KEY(Id_Utilisateur, Id_zone_géographique),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateurs(Id_Utilisateur),
   FOREIGN KEY(Id_zone_géographique) REFERENCES zone_geographique(Id_zone_géographique)
);