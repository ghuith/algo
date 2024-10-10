ALGORITHM AnalysePhrase
VAR
    phrase: STRING
    longueur_phrase, nombre_mots, nombre_voyelles, i: INTEGER
    voyelles: STRING

BEGIN
    // Initialisation des variables
    longueur_phrase ← 0
    nombre_mots ← 1      // On commence à 1 car il y a au moins un mot
    nombre_voyelles ← 0
    voyelles ← "aeiouyAEIOUY"
    
    
    AFFICHER("Entrez une phrase (terminez par un point) : ")
    LIRE(phrase)

    POUR i ← 1 JUSQU'À LONGUEUR(phrase) FAIRE
        SI phrase[i] = '.' ALORS
            longueur_phrase ← longueur_phrase - 1   // Ne pas compter le point final
            QUITTER
        FINSI
        longueur_phrase ← longueur_phrase + 1      // Incrémenter le compteur de longueur

        SI phrase[i] = ' ' ALORS
            nombre_mots ← nombre_mots + 1          // Incrémenter pour chaque espace
        SINON SI EST_DANS(phrase[i], voyelles) ALORS
            nombre_voyelles ← nombre_voyelles + 1  // Incrémenter pour chaque voyelle
        FINSI
    FINPOUR

    // Affichage des résultats
    AFFICHER("Longueur de la phrase (sans le point) : ", longueur_phrase)
    AFFICHER("Nombre de mots : ", nombre_mots)
    AFFICHER("Nombre de voyelles : ", nombre_voyelles)
END


