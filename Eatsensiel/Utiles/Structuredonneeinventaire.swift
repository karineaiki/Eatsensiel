//
//  Structuredonneeinventaire.swift
//  Eatsensiel
//
//  Created by APPRENANT 28 on 23/03/2023.
//

import Foundation
import SwiftUI

struct Inventaire : Identifiable, Codable{
    var id = UUID()
    var aliment :String
    var unit : Unit
    var quantite : Int
    var quantiteLeft : Int
    var categorieAliment :Categorie
    var stockage :[Stockage]
    var dlc : Date
}
enum Stockage: String, Codable{
    case frigo = "Frigo"
    case placard = "Placard"
    case congelateur = "Congélateur"
}
enum Categorie: String, Codable{
    case cremerie = "Crèmeries"
    case legumes = "Légumes"
    case fruits = " Fruits"
    case produitssecs = "Produits secs"
    case epices = "Epices"
    case viandes = "Viandes"
    case poisson = "Poissons"
    case conserves = "Conserves"
    case produitscongelés = " Produits congelés"
    case pates = "Pâtes"
    case riz = "Riz"
    case semoules = "Semoules"
    case herbesaromatiques = "Herbes aromatiques"
    case boisson = "Boissons"
    case aperitifs = " Apéritifs"
    case glace = "Glaces"
}
enum Unit:String, Codable{
    case kilo = "Kg"
    case gramme = "g"
    case litre = "L"
    case centilitre = "cL"
    case unite = "Unité(s)"
}


var aliments :[String] = ["Aubergines", "Carottes","Courgettes","Filet de poulet", "Curry", "Sel", "Sphaghetti", "Parmesan", "Salade","Mais","Navets","Oignons","Patates douces","Pommes de terre", "Poivrons","Radis","Tomates","Poireaux","Butternut","Avocats","Concombres","Ail","Echalottes","Champignons","Choux","Choux de Bruxelles","Fraise","Framboises","Kiwis","Pommes","Poires","Letchi","Myrtilles","Groseilles","Kakis","Bananes","Mûres","Mangue","Ananas","Pêches","Nectarines","Abricots","Prunes","Pastèques","Oranges","Mandarines","Clémentines","Citrons","Pamplemousses","Poulet","Steak Haché","Bavette","Entrecôte","Echine de Porc", "Filets de blanc de poulet", "Jambon", "Basse Côte","Lapin","Haut de cuisse", "Cuisse de poulet","Gésiers","Aiguillette de poulet","Viande Haché","Spaghettis","Pâtes","Fusili","Tortellini","Penne","Coquillettes","Farfalles","Riz Basmati","Riz long", "Riz thaï","Riz rond","Haricots blanc","Lentilles","Lentilles corail","Haricots rouges","Haricots coco","Sucre","Farine de blé","Flocons d'avoine","Son d'avoine","Semoule","Sel","Poivre","Curry","Noix de muscade","Herbes de provence","Curcuma","paprika","Raz-el-hanout","Cumin","Persil","Basilic","Haricots rouges","Lentilles corail", "Thon","Cerise","Jus de fruits","Doritos"," Chips","Olives","poivre", "Cacahuétes",]


struct Tabvw_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
