# Lionnel Balez Soudure : proposition de refonte non officielle

Il s'agit d'une démonstration. Ce n'est pas le site officiel de l'entreprise, et rien ici n'est validé par elle.
Site actuel : https://lionnelbalezsoudure.fr/

## Contenu

- `nouveau-site/` : le nouveau site, autonome (`index.html` et ses images). Les pages s'ouvrent par ancre : `#accueil`, `#entreprise`, `#chaudronnerie`, `#thermolaquage`, `#inox`, `#mobilier`, `#realisations`, `#zone`, `#contact`, `#mentions`.
- `site/` : la présentation (état des lieux, trois propositions, comparatif, informations à confirmer) et la démo.

## Lancer en local

```sh
cd nouveau-site && python3 -m http.server 8080
# puis ouvrir http://127.0.0.1:8080/
```

## Avertissements

- Les textes viennent du site actuel ; les chiffres, les références et l'agrément sont à confirmer par l'entreprise.
- Les photos viennent des diaporamas du site actuel. Aucune autorisation de réutilisation n'a été obtenue : chaque photo est notée « autorisation à obtenir ».
- Les pages sont marquées `noindex`.
