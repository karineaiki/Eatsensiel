//
//  Astucesdetails.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 22/03/2023.
//

import SwiftUI

struct AstucesListView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("fondBeige")
                    .edgesIgnoringSafeArea(.top)
                VStack{
                    Text("Tips")
                        .font(.custom("Karita Personal Use", size: 25))
                        .foregroundColor(Color("marron"))
                    ScrollView {
                        Color("fondBeige")
                        VStack {
                            
                            ForEach(tipsRecettes) {tipsRecette in
                                NavigationLink {
                                    AstucesDetails(tipsRecette: tipsRecette)
                                } label:{
                                    VStack (alignment:.leading){
                                        HStack {
                                            Image(tipsRecette.imageTips)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 100, height: 100)
                                                .clipShape(Circle())
                                            
                                            Text(tipsRecette.textTips)
                                                .font(.custom("Exo", size: 20))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("vert"))

                                                .padding(.leading,10)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                            
                                        }
                                        .padding(.horizontal)

                                        Divider()
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.top,20)
            }
        }
    }
}



struct AstucesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AstucesListView()
    }
}
