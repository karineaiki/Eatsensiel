//
//  InventaireDétailFrigoView.swift
//  Eatsensiel
//
//  Created by APPRENANT 28 on 23/03/2023.
//

import SwiftUI

struct InventaireDetailFrigoView: View {
    @State var stockage = "Frigo"
    var Inventairesproduitsfrais = ["Produits frais","Viande","Poisson","Produits laitiers"]
    var Inventaireslégumes = ["Légumes","Aubergines","Carottes","Courgettes"]
    var Inventairesfruits = ["Fruits","Abricots","Banane","Pommes"]
    var Inventairescremerie = [""]
    var body: some View {
        
        
        
        ZStack{
            Color("fondBeige")
                .ignoresSafeArea()
            VStack{
                Text("Inventaire")
                    .font(.custom("Karita Personal Use", size: 25))
                    .font(.system(size: 30))
                    .foregroundColor(Color("marron"))
                    .padding(.top ,90)
                
                
                ZStack{
                    Circle()
                        .fill(Color("orange"))
                        .frame(height:130)
                    
                    Text(stockage)
                        .fontWeight(.bold)
                        .foregroundColor(Color("fondBeige"))
                        .font(.custom("Exo", size: 20))
                }
                
                
                ZStack(alignment: .bottomTrailing){
                    ScrollView {
                        
                        CategorieStockageView(categorie: .viandes, stockage: .frigo)
                        
                        CategorieStockageView(categorie: .poisson, stockage: .frigo)
                        
                        CategorieStockageView(categorie: .legumes, stockage: .frigo)
                        
                        CategorieStockageView(categorie: .fruits, stockage: .frigo)
                        
                        CategorieStockageView(categorie: .cremerie, stockage: .frigo)
                        
                        CategorieStockageView(categorie: .herbesaromatiques, stockage: .frigo)
                        
                        CategorieStockageView(categorie: .boisson, stockage: .frigo)
                            .padding(.bottom, 80)
                    }
                    .frame(maxWidth: .infinity)
                    NavigationLink(destination: DLCView(selected: .frigo)) {
                        
                        ZStack {
                            Circle()
                                .frame(width: 60,height: 90)
                                .foregroundColor(Color("orange"))
                            Text("+")
                                .fontWeight(.bold)
                                .foregroundColor(Color("fondBeige"))
                        }
                    }
                    
                    .padding(.trailing, 16)
                }
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        
        
    }
}

struct InventaireDetailFrigoView_Previews: PreviewProvider {
    static var previews: some View {
        InventaireDetailFrigoView()
    }
}

