//
//  TipsStructure.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 23/03/2023.
//

import SwiftUI

struct TipsRecette : Identifiable {
    var id = UUID()
    var imageTips : String
    var textTips : String
    var explanationTips : LocalizedStringKey
}


var tipsRecettes = [
    
    TipsRecette(imageTips: "CircuitsCourts", textTips: "Favorisez les circuits courts", explanationTips: "Les circuits courts sont des modes de distribution que l’on retrouve souvent dans la filière agricole.\n\nIls limitent le nombre d’intermédiaires entre le producteur et le consommateur avec la vente directe ou la vente indirecte (pas plus d’un intermédiaire).\n\nL’agriculture biologique pratique beaucoup les circuits courts, notamment pour éviter le transport de produits fragiles."),
    TipsRecette(imageTips: "bocauxVerre", textTips: "Les différentes méthodes de conservation", explanationTips: "Les traitements de conservation appliqués aux aliments visent à préserver leur comestibilité et leurs propriétés gustatives et nutritives en empêchant le développement des bactéries, champignons et microorganismes qu'ils contiennent et qui peuvent dans certains cas entraîner une intoxication alimentaire.\n\nLes trois méthodes utilisées pour la conservation des aliments reposent sur :\n\nla chaleur : pasteurisation, stérilisation, appertisation, semi-conserves ;\n\nle froid : surgélation, congélation, réfrigération ;\n\nautres techniques : conditionnement sous vide ou sous atmosphère modifiée, lyophilisation, déshydratation et séchage, fermentation, salage, confisage, saumurage, fumage ou fumaison, ionisation, etc.\n\n**Les techniques de conservation par la chaleur**\n\nLe traitement des aliments par la chaleur est la technique la plus utilisée pour la conservation de longue durée.\n\n**La pasteurisation**\n\nElle a pour but la destruction des micro-organismes pathogènes et d’altération. La technique utilisée consiste à soumettre les aliments à une température comprise entre 85° C et 100° C pendant une durée déterminée et à les refroidir brutalement. Avantage de cette méthode : elle préserve les caractéristiques des denrées alimentaires, notamment leur saveur. Les denrées pasteurisées comportent une date limite de conservation (DLC) et sont à conserver au frais.\n\n**La stérilisation**\n\nIl s’agit d’un traitement thermique à des températures supérieures à 100° C visant à détruire toute forme microbienne, ce qui assure la stabilité à température ambiante des denrées.\n\n**Le traitement à ultra haute température (UHT)**\n\nAvec cette méthode de conservation, le produit (lait, par exemple) est porté à une haute température au-delà de 135° C pendant une courte période (1 à 5 secondes), puis immédiatement et très rapidement refroidi. Il est ensuite conditionné aseptiquement. Ce traitement permet une conservation longue à température ambiante.\n\n**L’appertisation (conserves)**\n\nCe procédé associe deux techniques :\n\n**un conditionnement dans un récipient étanche** ;\n\nun traitement thermique (en général la stérilisation).\n\nLes produits obtenus peuvent se conserver plusieurs années à température ambiante (5 ans maximum). Elles comportent une date de durabilité minimale, la date passée, la denrée perd de ses qualités gustatives ou nutritives sans pour autant constituer un danger pour celui qui la consommerait.\n\n**Les semi-conserves**\n\nLes semi-conserves sont des denrées alimentaires périssables, conditionnées en récipients étanches aux liquides, et ayant subi un traitement de conservation (pasteurisation, salage, séchage, etc.) en vue d'en assurer une conservation plus limitée que les conserves.\n\nElles doivent être stockées au froid. Elles comportent le plus souvent une date limite de consommation, mais peuvent comporter, compte tenu de leur durée de conservation (le plus souvent de quelques mois), une date de durabilité minimale."),
TipsRecette(imageTips: "restes", textTips: "Cuisiner ses restes", explanationTips: "**Découvrez nos recettes pour éviter le gaspillage tout en se régalant**\n\nOn a souvent des ingrédients qui restent dans le réfrigérateur ou dans le placard, plus ou moins en petites quantités et on ne sait pas toujours quoi en faire.\n\nVoici donc quelques recettes faciles et rapides pour vous aider à cuisiner ces restes et à éviter le gaspillage, sans que ça se voit.\n\nQuiche à la raclette, oeufs cocotte aux champignons, pain perdu, salade de pâtes au thon, feuilletés au fromage, pesto de fanes de radis...\n\nVous allez forcément trouver quelque chose à préparer !\n\nRetrouvez plus de recettes sur [Mes recettes faciles](https://www.mesrecettesfaciles.fr/diaporama/anti-gaspillage-des-recettes-pour-cuisiner-avec-des-restes)\n\n\nBon appétit !"),
    TipsRecette(imageTips: "Epluchures", textTips: "Faites votre bouillon de légumes avec vos épluchures ♻️", explanationTips: "Le principe est simple, si on cuit les ingrédients, départ au froide, ils donneront tous leurs nutriments au bouillon. En revanche, si on met un ingrédient dans un liquide bouillant, c’est l’ingrédient qui prend le goût du liquide. Donc en général quand on veut faire un bouillon qui a du goût, on met les ingrédients dans l’eau froide. \n\nDans cette version, j’ai fait un mixte. J’ai commencé par mettre les épluchures dans l’eau froide puis j’y ai cuit des poireaux, carottes et panais que j’ai récupérés pour d’autres plats.Laver avec une brosse très précautionneusement les légumes.\n\nLes éplucher et conserver les légumes pour les cuire dans le bouillon.\n\nDans une grande casserole, verser 3 litres d’eau froide. Déposer toutes les épluchures et les restes de légumes défraîchis de votre frigidaire. N’oubliez pas le bouquet garni.\n\nMettre à ébullition avec un feu assez fort et laisser réduire à feu moyen pendant une bonne heure.\n\nAjouter alors les légumes entier et laisser cuire 30 minutes de plus. Prendre le soin d’attacher les poireaux ensemble pour mieux les récupérer."),
    TipsRecette(imageTips: "zeroDechets", textTips: "Atteindre le 0 déchets", explanationTips: "**Une cuisine zéro déchet… Ou au moins s’en approcher !**\n\nJ’aime bien la notion de zéro déchet, parce qu’elle est radicale. Mais aussi un peu décourageante, quelque part. Car entre les emballages alimentaires plus ou moins utiles, les épluchures de légumes et autres déchets d’origine animale, les couverts en plastique… La poubelle de cuisine déborde vite, très vite. Et le zéro déchet paraît loin, très loin.\n\nEt si on commençait déjà par réduire nos déchets, en éliminant ceux qu’on peut facilement éviter ?\n\n[La révolution des tortues nous donne la solution !](https://larevolutiondestortues.fr/reduire-ses-dechets-cuisine/)"),
    TipsRecette(imageTips: "compost", textTips: "Faire son compost", explanationTips: "**DÉCOUVREZ PAS À PAS LES ÉTAPES À SUIVRE POUR COMPOSTER CHEZ SOI**\n\nVous souhaitez faire votre propre compost ? Bravo ! Installer un composteur dans son jardin ou en appartement est une excellente idée, écologique et citoyenne. Composter, c’est un pas de plus vers un mode de vie plus durable. \n\nVous ne savez pas par où commencer pour démarrer votre composteur ? Quels sont les déchets alimentaires à mettre dans le bac à compost ? Comment entretenir le compost ? \n\nRassurez-vous, faire son compost soi-même en recyclant ses biodéchets n’est pas bien compliqué, à condition toutefois de respecter certaines techniques de base. Prêt à découvrir le monde merveilleux du compost et à mettre les mains dans la terre ? Nous vous expliquons dans cet article comment faire du compost en 5 étapes et vous donnons tous nos conseils pour l’entretenir.\n\n[Suivez le guide !](https://alchimistes.co/faire-du-compost/)"),
    TipsRecette(imageTips: "frigo", textTips: "Organiser son frigo pour faire des économies", explanationTips: "**Économie d'énergie réfrigérateur : tout savoir**\n\nComment économiser l’électricité en entretenant son réfrigérateur ? Comment baisser la consommation électrique de votre frigo ? Votre réfrigérateur est l’un des rares équipements électriques de votre foyer qui ne se repose jamais, puisque sa fonction consiste précisément à générer et maintenir un certain niveau de froid 24 heures sur 24 et toute l’année.\n\nQuel que soit son modèle, il consomme donc de l’énergie jour et nuit, à chaque fois que son compresseur se met en route sur commande du thermostat qui régule sa température. Cela ne signifie pas pour autant que vous n’avez aucun pouvoir sur cette consommation. Quelques précautions et bonnes habitudes suffisent pour réduire l’impact de son réfrigérateur sur la facture d’électricité.\n\nPlus d'iformations sur [Ekwateur](https://ekwateur.fr/2019/02/25/economies-electricite-refrigerateur/)")
]
