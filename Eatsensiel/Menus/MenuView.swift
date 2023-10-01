//
//  MenuView.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 22/03/2023.
//

import SwiftUI

struct MenuView: View {
    @State var searchText = "Poulet"
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Color("fondBeige")
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Recettes")
                        .font(.custom("Karita Personal Use", size: 25))
                        .font(.largeTitle)
                        .foregroundColor(Color("marron"))
                        .padding(.bottom,10)
                    
                    
                    SearchBar(text: $searchText)
                    ScrollView {
                        ForEach (recipes){ recipe in
                            NavigationLink(destination: menuDetailsView(recipe: recipe)){
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .fill(Color("vert"))
                                        .frame(width:300, height:60)
                                        .padding(.top,50)
                                    
                                    HStack{
                                        Image(recipe.img)
                                            .resizable()
                                            .frame(width: 120, height: 120)
                                            .clipShape(Circle())
                                        
                                        
                                            .padding(.leading)
                                            .padding(.top,50)
                                        
                                        
                                        
                                        
                                        Text(recipe.recette)
                                            .font(.custom("Exo", size: 20))
                                            .font(.system(size: 25))
                                            .frame(width: 150, height: 100)
                                            .foregroundColor(Color("fondBeige"))
                                            .padding(.top,50)
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity)
                            }
                        }
                        .ignoresSafeArea()
                    }
                    
                }
            }
        }
        
    }
    struct MenuView_Previews: PreviewProvider {
        static var previews: some View {
            MenuView()
        }
    }
    struct SearchBar: View {
        @Binding var text: String
        
        
        var body: some View {
            HStack {
                TextField("Search ...", text: $text)
                    .padding(8)
                    .background{
                        RoundedRectangle(cornerRadius: 8,style: .continuous)
                            .strokeBorder(.gray.opacity(0.2), lineWidth: 1)
                    }
                    .overlay(alignment: .trailing) {
                        if !text.isEmpty {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                            }
                            .padding(.trailing, 16)
                        }
                    }
                    .padding(.horizontal, 32)
                    
            }
        }
    }
}
