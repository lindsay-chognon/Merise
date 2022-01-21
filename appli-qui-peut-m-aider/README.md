Le fichier .loo contient la structure de la base de données qui permet de comprendre les relations entre les différentes tables. 
Cette base de données contient des utilisateurs qui ont le rôle d'aidé ou d'aidant (groupe_utilisateur), des compétences, des prestations (qui sont en statut 1 ou 2 si elles sont déjà réservées ou non) et des zones géographiques auxquelles peuvent être liés les utilisateurs ou les prestations.
Des tables pivot permettent de faire le lien entre ces entités (par exemple la table de réservations).

Le fichier create.sql permet de créer les différentes tables dans une base de données Postgresql. Ce script a été testé sur PGadmin. 
Le fichier insert.sql contient les scripts alimentant les différentes tables afin d'effectuer des tests par la suite. 
Le fichier select.sql permet de tester différentes requêtes de récupération d'informations sur la base grâce au jeu de test inséré précédemment. L'effet de chacun de ces scripts est précisé en commentaire dans le fichier.

J'ai constaté à la fin que j'ai encore quelques erreurs que j'ai oublié au niveau des accents ou des pluriels sur les noms de champs ou de tables.
