import os
import random
from datetime import datetime

LIEN_AFFILIE = os.environ.get("MANGOOLS_AFFILIATE_LINK", "https://mangools.com/affilie/toncode")
SUJETS = [
    "Comment trouver des mots-cles faciles a ranker",
    "Les 5 meilleurs outils SEO pour debutants",
    "Pourquoi la recherche de mots-cles est essentielle"
]
sujet = random.choice(SUJETS)
date_du_jour = datetime.now().strftime("%Y-%m-%d")

# Crée un fichier HTML avec le lien d'affiliation
nom_fichier = f"{sujet.lower().replace(' ', '-')}-{date_du_jour}.html"
contenu = f"""<html><head><title>{sujet}</title></head><body>
<h1>{sujet}</h1>
<p>Pour reussir en SEO, il est crucial d'utiliser les bons outils. J'utilise personnellement <b>Mangools</b>.</p>
<p><a href="{LIEN_AFFILIE}">Decouvrez Mangools ici</a> (Lien affilie)</p>
<p><i>Article genere automatiquement.</i></p>
</body></html>"""

with open(nom_fichier, "w", encoding="utf-8") as f:
    f.write(contenu)

print(f"Article genere : {nom_fichier}")
