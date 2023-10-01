//
//  CategorieStockageView.swift
//  Eatsensiel
//
//  Created by APPRENANT 28 on 27/03/2023.
//

import SwiftUI

struct CategorieStockageView: View {
    @AppStorage("inventaires") var inventaires =
    [Inventaire(aliment:"Carottes", unit: .kilo,quantite: 1, quantiteLeft: 100, categorieAliment: .legumes, stockage: [.frigo,.congelateur] ,dlc: Date().addingTimeInterval(345600)),
    Inventaire(aliment:"Courgettes", unit: .unite, quantite: 3,quantiteLeft: 100, categorieAliment: .legumes, stockage: [.frigo,.congelateur],dlc:Date()),
    Inventaire(aliment:"Aubergines", unit: .unite, quantite: 1,quantiteLeft: 100, categorieAliment: .legumes, stockage: [.frigo,.congelateur],dlc: Date()),
    Inventaire(aliment:"Poulet", unit: .kilo, quantite: 2,quantiteLeft: 100, categorieAliment: .viandes, stockage: [.frigo, .congelateur],dlc: Date().addingTimeInterval(86400)),
    Inventaire(aliment:"Filets de poulet", unit: .gramme, quantite: 400,quantiteLeft: 100, categorieAliment: .viandes, stockage: [.frigo, .congelateur],dlc: Date().addingTimeInterval(345600)),
    Inventaire(aliment:"Curry", unit: .gramme, quantite: 80,quantiteLeft: 100, categorieAliment: .epices, stockage:[ .placard], dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Sel", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .epices, stockage: [.placard], dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Parmesan", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .cremerie, stockage: [.frigo], dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Salade", unit: .gramme, quantite: 400,quantiteLeft: 100,categorieAliment: .legumes, stockage: [.frigo], dlc: Date()),
    Inventaire(aliment:"Pommes", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .fruits, stockage: [.frigo,.congelateur], dlc: Date()),
    Inventaire(aliment:"Viande  de Boeuf", unit: .gramme, quantite: 800,quantiteLeft: 100,categorieAliment: .viandes, stockage:[ .frigo, .congelateur],dlc: Date().addingTimeInterval(345600)),
    Inventaire(aliment:"Oignons", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .legumes, stockage: [.frigo,.congelateur], dlc: Date().addingTimeInterval(518400)),
    Inventaire(aliment:"Orange", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .fruits, stockage: [.frigo, .congelateur],dlc: Date().addingTimeInterval(518400)),
    Inventaire(aliment:"Yaourt", unit: .unite, quantite: 4,quantiteLeft: 100,categorieAliment: .cremerie, stockage: [.frigo], dlc: Date().addingTimeInterval(518400)),
    Inventaire(aliment:"Lait", unit: .litre, quantite: 1,quantiteLeft: 100,categorieAliment: .cremerie, stockage: [.frigo,.placard], dlc: Date().addingTimeInterval(172800)),
    Inventaire(aliment:"Thon", unit: .gramme, quantite: 100,quantiteLeft: 100,categorieAliment: .poisson, stockage: [.frigo,.placard,.congelateur ], dlc: Date().addingTimeInterval(172800)),
    Inventaire(aliment:"Sardine", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .poisson, stockage: [.frigo,.placard,.congelateur ], dlc: Date().addingTimeInterval(172800)),
    Inventaire(aliment:"Semoules", unit: .gramme, quantite: 500,quantiteLeft: 100,categorieAliment: .semoules, stockage:[ .placard ], dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Maqueraux", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .poisson, stockage:[ .frigo, .placard ,.congelateur],dlc:Date().addingTimeInterval(486400)),
    Inventaire(aliment:"Riz Basmati", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .riz, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Riz Rond", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .riz, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Riz Sushi", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .riz, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Spaghetti", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .pates, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Penne", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .pates, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Macaroni", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .pates, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Semoule fine", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .semoules, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Couscous", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .semoules, stockage: [.placard],dlc: Date().addingTimeInterval(345600)),
    Inventaire(aliment:"Boulgour", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .semoules, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Paté de campagne", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .conserves, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Ratatouille", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .conserves, stockage: [.placard],dlc: Date().addingTimeInterval(5444418400)),
    Inventaire(aliment:"Confit de canard", unit: .kilo, quantite: 1,quantiteLeft: 100,categorieAliment: .conserves, stockage: [.placard],dlc: Date().addingTimeInterval(432000)),
    Inventaire(aliment:"Framboises", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .fruits, stockage: [.frigo,.congelateur],dlc: Date().addingTimeInterval(259200)),
    Inventaire(aliment:"Haricots rouges", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .produitssecs, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
    Inventaire(aliment:"Lentilles corail", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .produitssecs, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
    Inventaire(aliment:"Jus de fruits", unit: .litre, quantite: 1,quantiteLeft:100,categorieAliment: .boisson, stockage: [.frigo],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Persil", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .herbesaromatiques, stockage: [.frigo,.congelateur],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Lasagne", unit: .gramme, quantite: 1,quantiteLeft: 100,categorieAliment: .pates, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
    Inventaire(aliment:"Chips", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .aperitifs, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Doritos", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .aperitifs, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Cacahuètes", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .aperitifs, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Olives", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .aperitifs, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Poivre", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .epices, stockage: [.placard],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Ail", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .herbesaromatiques, stockage: [.placard,.frigo,.congelateur],dlc: Date().addingTimeInterval(259200)),
     Inventaire(aliment:"Coriandre", unit: .gramme, quantite: 200,quantiteLeft: 100,categorieAliment: .herbesaromatiques, stockage: [.frigo,.congelateur],dlc: Date().addingTimeInterval(259200)),
     
    ]

    @State var showingList = false
    
    var categorie : Categorie
    var stockage: Stockage
    
    var body: some View {
        VStack{
            Button {
                withAnimation {
                    showingList.toggle()
                }
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color("vert"))
                        .frame(width :350, height: 50)
                    Text(categorie.rawValue)
                        . foregroundColor(Color("fondBeige"))
                        .font(.custom("Exo", size: 20))
                }
                .padding(.top,(6))
            }
            
            if showingList {
                ForEach(inventaires.filter({ produit in
                    return produit.stockage.contains(stockage) && produit.categorieAliment == categorie  }))
                { produit in
                    HStack{
                        Text(produit.aliment)
                            .font(.custom("Exo", size: 18))
                        Spacer()
                        Text("\(produit.quantite*produit.quantiteLeft/100) \(produit.unit.rawValue)")
                            .foregroundColor(Color("marron"))
                            .font(.custom("Exo", size: 20))
                    }
                    .padding(.horizontal, 32)
                }
            }
        }
        .padding()
    }
}
