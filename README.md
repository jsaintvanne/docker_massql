#README

## Ligne de commande pour lancer le docker

`docker run -v $(pwd)/data:/data -v $(pwd)/output:/output tmp /data/MIX_ACs.mzML "QUERY scaninfo(MS1DATA)" --output_file /output/results.tsv`

- `-v local:conteneur` permet de monter un dossier "local" sur le "conteneur" 
- `$(pwd)` signifie le dossier dans lequel on travaille actuellement
- on monte un dossier data contenant les data à traiter et un dossier output pour les fichiers de resultats
- `tmp` est le nom de notre container massql
- `/data/MIX_ACs.mzML` est le nom de notre fichier mzML à traiter
- `\"QUERY scaninfo(MS1DATA)\"` est la query de requête de défaut dans l'exemple de massql
- `--output_file /output/results.tsv` est le fichier de sortie de résultats qui va être retrouvé en local car monté sur notre dossier output