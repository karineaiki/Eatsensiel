//
//  InventaireView.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 22/03/2023.
//

import SwiftUI

struct InventaireView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("fondBeige")
                    .ignoresSafeArea()
                VStack (spacing: 40) {
                    Text("Inventaire")
                        .font(.custom("Karita Personal Use", size: 25))
                        .font(.system(size: 30))
                        .foregroundColor(Color("marron"))
                        .padding(.top,20)
                    NavigationLink(destination: InventaireDetailPlacardView(stockage: "Placard") ) {
                        
                        ZStack{
                            
                            Circle()
                                .tint(Color("orange"))
                                .frame(height:150)
                            Text("Placard")
                                .fontWeight(.bold)
                                .foregroundColor(Color("fondBeige"))
                                .font(.custom("Exo", size: 20))
                        }
                    }
                    NavigationLink(destination: InventaireDetailFrigoView(stockage: "Frigo") ) {
                        ZStack{
                            Circle()
                                .tint(Color("orange"))
                                .frame(height:150)
                            Text("Frigo")
                                .fontWeight(.bold)
                                .foregroundColor(Color("fondBeige"))
                                .font(.custom("Exo", size: 20))
                        }               }
                    NavigationLink(destination: InventaireDetailCongelateurView(stockage: "Congélateur") ) {
                        ZStack{
                            Circle()
                                .tint(Color("orange"))
                                .frame(height:150)
                            Text("Congélateur")
                                .fontWeight(.bold)
                                .foregroundColor(Color("fondBeige"))
                                .font(.custom("Exo", size: 20))
                            
                        }
                        .padding(.bottom,-40)
                    }
                       
                        .frame(maxWidth: .infinity)
                        NavigationLink(destination: DLCView(selected: .frigo)) {
                            
                            ZStack {
                                Circle()
                                    .frame(width: 70,height: 90)
                                    .foregroundColor(Color("orange"))
                                Text("+")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("fondBeige"))
                            }
                        }
                        
                        .padding(.leading, 250)
                    }
                }
                
            }
            .edgesIgnoringSafeArea(.top)
                    }
                    
                }
    
    struct InventaireView_Previews: PreviewProvider {
        static var previews: some View {
            InventaireView()
        }
    }
