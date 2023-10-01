//
//  Recipe.swift
//  menusview
//
//  Created by Apprenant 31 on 22/03/2023.
//

import Foundation

struct Recipe : Identifiable{
    var id = UUID()
    var recette: String
    var img: String
    var ingredients: [Ingredient]
    var prepare: [String]
    var numberOfperson: Int = 1
}


struct Ingredient : Identifiable{
    var id = UUID()
    var produit : String
    var quantite : Int
    var unite : Unit
}

var recipes = [
    Recipe(recette:"Poulet au curry", img: "curry",
           ingredients:[
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Curry", quantite : 25, unite : .gramme),
            Ingredient(produit:"Sel", quantite : 5, unite : .gramme)
           ],
           prepare:["• Emincez les blancs de poulet."
                    ,"• Cuire le poulet à feu doux.",
                    "• Ajouter le curry en poudre, le sel et mélanger."]),
    
    Recipe(recette:"Spaghetti au poulet", img: "patespoulet",
           ingredients:[
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Spaghetti", quantite : 100, unite : .gramme),
            Ingredient(produit:"Parmesan", quantite : 30, unite : .gramme)
            ],
           prepare : ["• Emincez les blancs de poulet.","• Cuire le poulet à feu doux.","• Cuire les pâtes.","• Mélanger les pâtes et le poulet.","• Sopoudrer le parmesan."]),
    
    Recipe(recette:"Salade caesar", img: "caesar",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Salade", quantite : 100, unite : .gramme),
            Ingredient(produit:"Parmesan", quantite : 30, unite : .gramme),
            Ingredient(produit:"Tomate", quantite : 50, unite : .gramme),
            Ingredient(produit:"Oignions frits", quantite : 25, unite : .gramme),
            Ingredient(produit:"Olives", quantite : 10, unite : .gramme)],
           prepare:["• Emincez les blancs de poulet.","• Cuire le poulet à feu doux.","• Disposer la salade.","• Disposer les tomates tranchées.","• Mettre les oignons frits.","• Puis les olives et le parmesan."]),
    
    Recipe(recette:"Poulet panée", img: "pane",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Chapelure", quantite : 35, unite : .gramme),
            Ingredient(produit:"Blanc d'oeuf", quantite : 30, unite : .gramme),
            Ingredient(produit:"Lait", quantite : 20, unite : .centilitre),
            Ingredient(produit:"Farine", quantite : 15, unite : .gramme),
            Ingredient(produit:"Persil", quantite : 3, unite : .gramme)],
           prepare:["• Laver et hacher le persil. Mélanger la chapelure et le persil haché dans une assiette creuse. ","• Battre le blanc d'oeuf avec le lait dans un bol.","• Fariner l'escalope de poulet, la plonger dans la préparation liquide et la retourner plusieurs fois dans la chapelure.","• Dans une poêle bien chaude huilée, faire cuire l'escalope panée jusqu'à ce qu'elle soit bien dorée. Egoutter et servir aussitôt."]),
    
    Recipe(recette:"Poulet à l'indienne", img: "indien3",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Farine", quantite : 15, unite : .gramme),
            Ingredient(produit:"Carotte", quantite : 100, unite : .gramme),
            Ingredient(produit:"Beurre", quantite : 20, unite : .gramme),
            Ingredient(produit:"Crème fraîche", quantite : 20, unite : .centilitre),
            Ingredient(produit:"Gousse d'ail", quantite : 15, unite : .gramme),
            Ingredient(produit:"Echalotte", quantite : 25, unite : .gramme),
            Ingredient(produit:"Tomates pelées", quantite : 150, unite : .gramme),
            Ingredient(produit:"Echalotte", quantite : 25, unite : .gramme)],
           prepare:["• Couper les carottes, l’ail, les échalotes et la pomme, en petits dés.","• Emincer les filets de poulet.","• Faire dorer les émincés, dans du beurre et ajouter les dés (carottes, pomme, etc...) pour les faire revenir.","• Saupoudrer de farine et de curry, tourner.","• Ajouter un grand verre d’eau, les tomates pelées et coupées en petits dés. ","• Laisser cuire, à petit feu, pendant 20 à 30 min.","• Incorporer la crème fraîche et porter à ébullition pendant 1 min."]),
    
    Recipe(recette:"Poulet au citron", img: "citron",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Farine", quantite : 15, unite : .gramme),
            Ingredient(produit:"Persil", quantite : 3, unite : .gramme),
            Ingredient(produit:"Citron", quantite : 20, unite : .centilitre),
            Ingredient(produit:"Beurre", quantite : 20, unite : .gramme),
            Ingredient(produit:"Bouillon de volaille", quantite : 20, unite : .centilitre),
          ],
           prepare:["• Découper les filets de poulet dans la largeur pour affiner les tranches.","• Enfariner les morceaux de poulet obtenus.","• Préparer un bouillon de volaille (équivalent d'un cube ou de 15 cl).","• Faire fondre le beurre dans une poêle.","• Y faire revenir le poulet, rapidement, un aller-retour suffit. ","• Sortir le poulet de la poêle, le réserver entre deux assiettes pour le maintenir chaud.","• Porter à ébullition puis saler, le poulet et le persil et enfin faire cuire à feu doux 2 minutes."]),
    
    Recipe(recette:"Poulet à la moutarde", img: "moutarde",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Crème fraîche", quantite : 20, unite : .centilitre),
            Ingredient(produit:"Echalotte", quantite : 25, unite : .gramme),
            Ingredient(produit:"Gousse d'ail", quantite : 15, unite : .gramme),
            Ingredient(produit:"Sel", quantite : 5, unite : .gramme),
            Ingredient(produit:"Moutarde", quantite : 25, unite : .gramme),
            Ingredient(produit:"Poivre", quantite : 5, unite : .gramme),
            ],
           prepare:["• Emincer l'ail et les échalotes en petit morceaux. ","• Dans une poêle faire chauffer un morceau de beurre et y mettre les escalopes jusqu'à mi-cuisson. Les retirer et les garder au chaud.","• Dans un saladier mélanger la crème fraîche, la moutarde, l'ail et les échalotes, saler et poivrer.","• Verser ce mélange dans la poêle, au premier bouillon ajouter les filets.","• Laisser cuire 10 min à feu doux."]),
    
    Recipe(recette:"Poulet au chèvre", img: "chevre2",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Huile d'olive", quantite : 20, unite : .centilitre),
            Ingredient(produit:"Crottin de chèvre frais", quantite : 150, unite : .gramme),
            Ingredient(produit:"Poivre", quantite : 5, unite : .gramme),
            Ingredient(produit:"Herbe de provence", quantite : 15, unite : .gramme),
            Ingredient(produit:"Pâtes feuilletée", quantite : 100, unite : .gramme),
            ],
           prepare:["• Inciser le filet de poulet sur le côté, comme pour en faire un sandwich. ","• Insérer le crottin de chèvre à l'intérieur.","• Poivrer, parsemer les herbes de provence et arroser d'un filet d'huile d'olive sur le filet.","• Fermer en papillote avec le papier cuisson et mettre au four 20 min à 200°C (thermostat 6-7).","• Déposer le poulet cuit dans la pâte feuilletée et remettre au four."]),
    
    Recipe(recette:"Poulet aux poivrons", img: "poivron",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Poivre", quantite : 5, unite : .gramme),
            Ingredient(produit:"Poivron", quantite : 100, unite : .gramme),
            Ingredient(produit:"Beurre", quantite : 20, unite : .gramme),
            Ingredient(produit:"Sel", quantite : 5, unite : .gramme),
            Ingredient(produit:"Crème fraîche", quantite : 20, unite : .centilitre),
           ],
           prepare:["• Découper les filets de poulet en petites lamelles (environ 3cm x 1cm). Les mettre dans une sauteuse dans laquelle le beurre a doucement fondu. Pendant qu'il 'bronze', couper en tous petits dés le poivron (bien enlever les parties blanches). ","• Rajouter le poivron au poulet et les laisser faire connaissance jusqu'à ce que le poulet rosisse! A ce moment là, rajouter la crème liquide, le sel et le poivre, remuer pour bien tout mélanger et laisser cuire très doucement environ 20 minutes.","• Juste avant de servir, rajouter, pour lier la sauce, 2 ou 3 cuillères à soupe de crème fraîche épaisse.","• Peut le servir simplement avec du riz... et attendre les compliments (version light avec crème allégée à 15 % et toujours aussi bon!)."]),
                    
    
    Recipe(recette:"Poulet au sésame", img: "sesame",
           ingredients: [
            Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
            Ingredient(produit:"Huile de noix", quantite : 15, unite : .centilitre),
            Ingredient(produit:"Sésame", quantite : 40, unite : .gramme),
            Ingredient(produit:"Moutarde", quantite : 25, unite : .gramme),
            Ingredient(produit:"Citron", quantite : 20, unite : .centilitre),

           ],
           prepare:["• Couper au ciseau les filets en aiguillettes et les placer dans un saladier.","• Les recouvrir du jus de citron, de la moutarde et de l'huile de noix, bien mélanger et ajouter le sésame. ","• Laisser mariner au moins 1 heure au frais.","• Faire revenir les aiguillettes avec la moitié de la marinade dans une poêle dans une cuillérée à soupe d'huile de noix."]),



    
]

    var Ingredients = [
        Ingredient(produit:"Filet de poulet", quantite : 150, unite : .gramme),
        Ingredient(produit:"Curry", quantite : 25, unite : .gramme),
        Ingredient(produit:"Spaghetti", quantite : 100, unite : .gramme),
        Ingredient(produit:"Parmesan", quantite : 30, unite : .gramme),
        Ingredient(produit:"Salade", quantite : 100, unite : .gramme),
        Ingredient(produit:"Tomate", quantite : 50, unite : .gramme),
        Ingredient(produit:"Oignions frits", quantite : 25, unite : .gramme),
        Ingredient(produit:"Olives", quantite : 10, unite : .gramme),
        Ingredient(produit:"Sel", quantite : 5, unite : .gramme),
        Ingredient(produit:"Chapelure", quantite : 35, unite : .gramme),
        Ingredient(produit:"Blanc d'oeuf", quantite : 30, unite : .gramme),
        Ingredient(produit:"Lait", quantite : 20, unite : .centilitre),
        Ingredient(produit:"Farine", quantite : 15, unite : .gramme),
        Ingredient(produit:"Persil", quantite : 3, unite : .gramme),
        Ingredient(produit:"Carotte", quantite : 100, unite : .gramme),
        Ingredient(produit:"Beurre", quantite : 20, unite : .gramme),
        Ingredient(produit:"Crème fraîche", quantite : 20, unite : .gramme),
        Ingredient(produit:"Gousse d'ail", quantite : 15, unite : .gramme),
        Ingredient(produit:"échalotte", quantite : 25, unite : .gramme),
        Ingredient(produit:"Tomates pelées", quantite : 150, unite : .gramme),
        Ingredient(produit:"échalotte", quantite : 25, unite : .gramme),
        Ingredient(produit:"Bouillon de volaille", quantite : 20, unite : .centilitre),
        Ingredient(produit:"Moutarde", quantite : 25, unite : .gramme),
        Ingredient(produit:"Poivre", quantite : 5, unite : .gramme),
        Ingredient(produit:"Huile d'olive", quantite : 20, unite : .centilitre),
        Ingredient(produit:"Crottin de chèvre frais", quantite : 150, unite : .gramme),
        Ingredient(produit:"Herbe de provence", quantite : 15, unite : .gramme),
        Ingredient(produit:"poivron", quantite : 100, unite : .gramme),
        Ingredient(produit:"Huile de noix", quantite : 15, unite : .centilitre),
        Ingredient(produit:"sésame", quantite : 40, unite : .gramme),
        Ingredient(produit:"pâtes feuilletée", quantite : 100, unite : .gramme),
        Ingredient(produit:"Citron", quantite : 20, unite : .centilitre),




    ]

