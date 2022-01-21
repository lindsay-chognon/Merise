-- Sélectionner tous les utilisateurs qui sont des aidés

SELECT * FROM utilisateurs WHERE groupe_utlisateur = 1;

-- Sélectionner tous les utilisateurs qui sont des aidants

SELECT * FROM utilisateurs WHERE groupe_utlisateur = 2;

-- Sélectionner tous les aidants qui ont la compétence "apprendre à conduire une voiture volante et qui sont des aidants"

SELECT * FROM utilisateurs
INNER JOIN posseder on utilisateurs.id_utilisateur = posseder.id_utilisateur
WHERE id_compétences = 8 AND groupe_utilisateur = 2;

-- Sélectionner toutes les prestations qui permettent de faire garder son gobelin dont la date n'est pas passée et qui sont toujours actives (statut = 2)
-- On récupère l'aidant qui propose le prestation dans la même requête

SELECT * FROM prestation
INNER JOIN utilisateurs on prestation.id_utilisateur = utilisateurs.id_utilisateur
WHERE id_compétences = 3 AND date_debut >= '21/01/2022' AND statut = 2; 

-- Sélectionner toutes les réservations effectuées par l'utilisateur ayant l'id 14 

SELECT * FROM reserver
WHERE id_utilisateur = 14;

SELECT * FROM prestation
WHERE id_prestation = 2;  
