//
//  InventaireDetailView.swift
//  Eatsensiel
//
//  Created by APPRENANT 28 on 22/03/2023.
//

import SwiftUI

struct InventaireDetailCongelateurView: View {
    @State var stockage = "Congélateur"
    var Inventairesproduitscongeles = [""]
    var Inventairespoissons = [""]
    var Inventairesviandes = [""]
    var Inventaireslégumes = ["Légumes","Aubergines","Carottes","Courgettes"]
    var Inventairesfruits = ["Fruits","Abricots","Banane","Pommes"]
    
    var body: some View {
        
            ZStack{
                Color("fondBeige")
                
                VStack{
                    Text("Inventaire")
                        .font(.custom("Karita Personal Use", size: 25))
                        .font(.system(size: 30))
                        .padding(.top ,90)
                        .foregroundColor(Color("marron"))
                    ZStack{
                        Circle()
                            .fill(Color("orange"))
                            .frame(height:130)
                        Text(stockage)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.custom("Exo", size: 20))
                    }
                    ZStack(alignment: .bottomTrailing) {
                    ScrollView {
                        
                        CategorieStockageView(categorie: .viandes, stockage: .congelateur)
                        
                        CategorieStockageView(categorie: .poisson, stockage: .congelateur)
                        
                        CategorieStockageView(categorie: .legumes, stockage: .congelateur)
                        
                        CategorieStockageView(categorie: .fruits, stockage: .congelateur)
                        
                        CategorieStockageView(categorie: .herbesaromatiques, stockage: .congelateur)
                        CategorieStockageView(categorie: .produitscongelés, stockage: .congelateur)
                        CategorieStockageView(categorie: .glace, stockage: .congelateur)
                            .padding(.bottom, 80)
                    }
                    .frame(maxWidth: .infinity)
                        NavigationLink(destination: DLCView (selected: .congelateur)) {
                        ZStack {
                            Circle()
                                .frame(width: 60,height: 90)
                                .foregroundColor(Color("orange"))
                            Text("+")
                                .fontWeight(.bold)
                                . foregroundColor(Color("fondBeige"))
                        }
                            
                        }
                        .padding(.trailing ,16)
                        
                    }
                    
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    
}




struct InventaireDetailCongelateurView_Previews: PreviewProvider {
    static var previews: some View {
        InventaireDetailCongelateurView()
    }
}


