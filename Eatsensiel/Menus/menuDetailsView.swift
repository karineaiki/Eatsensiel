//
//  menuDetailsView.swift
//  menusview
//
//  Created by Apprenant 31 on 22/03/2023.
//

import SwiftUI

struct menuDetailsView: View {
    var recipe: Recipe
    @State var nbPerso = 1
    
    //    var searchnumber = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color("fondBeige")
                    .ignoresSafeArea()
                ScrollView {

                VStack {
                        Image(recipe.img)
                            .resizable()
                            .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color("vert"))
                            .frame(width:300, height:50)
                        
                        Text(recipe.recette)
                            .font(.custom("Exo", size: 20))
                            .foregroundColor(Color("fondBeige"))
                            .frame(height: 100)
                        
                    }
                    .padding(.bottom,4)
                    VStack(alignment: .leading) {
                        Text("Pour")
                            .font(.custom("Exo", size: 20))
                            .foregroundColor(Color("marron"))
                            .padding(.leading,1)
                        
                
                        Stepper(value: $nbPerso) {
                            
                            Text("\(nbPerso) personne(s)")
                                .font(.custom("Exo", size: 20))
                                .foregroundColor(Color("marron"))
                        }
                       
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 48)

                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color("vert"))
                            .frame(width:150, height:50)
                        Text("Ingrédients")
                        
                            .font(.custom("Exo", size: 20))
                            .foregroundColor(Color("fondBeige"))
                    }
                    .padding(.bottom,5)
                    
                        VStack(alignment: .leading){
                            ForEach(recipe.ingredients) { ingredient in
                                //                      ForEach(ingredient, id:  \.self) {
                                //                         Ingredient in
                                HStack {
                                    Text(ingredient.produit)
                                        .font(.custom("Exo", size: 20))
                                        .foregroundColor(Color("marron"))
                                        .padding(10)
                                    Spacer()
                                    Text("\(ingredient.quantite * nbPerso)\(ingredient.unite.rawValue)")
                                    .font(.custom("Exo", size: 18))
                                    .foregroundColor(Color("marron"))
                                }
                                .padding(.horizontal, 48)
                                
                                //                          }
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color("vert"))
                                .frame(width:150, height:50)
                            Text("Préparation")
                                .font(.custom("Exo", size: 20))
                                .foregroundColor(Color("fondBeige"))
                        }
                        VStack(alignment: .leading){
                            ForEach(recipe.prepare, id:  \.self) { prepare in
                                Text(prepare)
                                    .font(.custom("Exo", size: 20))
                                    .foregroundColor(Color("marron"))
                                    .padding(10)
                            }.padding(.trailing,5)
                        }
                    }
                    Spacer()
                    
                    
                    VStack {
                        NavigationLink(destination: ListeView()){
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("orange"))
                                    .frame(width: 100, height: 55)
                                Text("Ajouter")
                                    .font(.custom("Exo", size: 20))
                                    .foregroundColor(.white)
                            }
                            
                        }
                    }
                    .edgesIgnoringSafeArea(.top)
                }
            }
        }
    }
}



struct menuDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        menuDetailsView(recipe: recipes[0])
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            
            TextField("...", text: $text)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .frame(width: 60)
                .keyboardType(.numberPad)
                .onTapGesture {
                    self.isEditing = true
                }
            
            //            if isEditing {
            //                Button(action: {
            //                    self.isEditing = false
            //                    self.text = ""
            //
            //                }) {
            //                    Text("Cancel")
            //                }
            //                .padding(.trailing, 10)
            //                .transition(.move(edge: .trailing))
            //                .animation(.default)
            //            }
        }
    }
}

