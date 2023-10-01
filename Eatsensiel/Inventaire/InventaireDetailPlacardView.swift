//
//  InventaireDetailPlacardView.swift
//  Eatsensiel
//
//  Created by APPRENANT 28 on 23/03/2023.
//

import SwiftUI

struct InventaireDetailPlacardView: View {
   @State var stockage = "Placard"
   @State var selected = 0
  var Inventairesproduitssecs = ["Produits secs","Pâtes","Riz","Semoules"]
  var Inventairesconserves = [""]
  var body: some View {
     
       
           ZStack{
               Color("fondBeige")
               VStack{
                   Text("Inventaire")
                       .font(.custom("Karita Personal Use", size: 25))
                       .font(.system(size: 30))
                       .foregroundColor(Color("marron"))
                       .padding(.top ,90)

                   HStack{
                       ZStack{
                           Circle()
                               .fill(Color("orange"))
                               .frame(height:130)
                           Text(stockage)
                               .fontWeight(.bold)
                               .foregroundColor(.white)
                               .font(.custom("Exo", size: 20))
                       }
                   }
                   
                   ZStack(alignment: .bottomTrailing) {
                       ScrollView {
                           
                           CategorieStockageView(categorie: .pates, stockage: .placard)
                           
                           CategorieStockageView(categorie: .riz, stockage: .placard)
                           
                           CategorieStockageView(categorie: .semoules, stockage: .placard)
                           
                           CategorieStockageView(categorie: .conserves, stockage: .placard)
                           
                           CategorieStockageView(categorie: .epices, stockage: .placard)
                           
                           CategorieStockageView(categorie: .produitssecs, stockage: .placard)
                           
                           CategorieStockageView(categorie: .aperitifs, stockage: .placard)
                               .padding(.bottom, 80)
                       }
                       .frame(maxWidth: .infinity)
                       NavigationLink(destination: DLCView(selected: .placard)) {
                           
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
struct InventaireDetailPlacardView_Previews: PreviewProvider {
    static var previews: some View {
        InventaireDetailPlacardView()
    }
}
