//
//  AstucesDetails.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 23/03/2023.
//

import SwiftUI

struct AstucesDetails: View {
    @Environment(\.dismiss) var dismiss
    var tipsRecette: TipsRecette
    var body: some View {
        VStack (alignment:.center) {
            ZStack(alignment: .top){
                Image(tipsRecette.imageTips)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 40) {
                    
                            Button {
                                dismiss()
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .fill(.ultraThinMaterial)
                                        .frame(width: 85, height: 25)
                                        .cornerRadius(30)
//                                    Rectangle()
//                                        .fill(Color("fondBeige"))
//                                        .frame(width: 85, height: 25)
//                                        .cornerRadius(30)
//                                        .opacity(0.6)
                                    Label("Retour", systemImage: "chevron.left")
                                        .imageScale(.medium)
                                        .fontWeight(.semibold)
                                    
                                }
                            }
                            .foregroundColor(Color("marron"))
                         
                Text(tipsRecette.textTips)
                    .font(.custom("Exo", size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color("fondBeige"))
                    .frame(width: 380, height: 70)
                    .background(Color("vert"))
                    .cornerRadius(30)
                
                }


            }

                    
                ScrollView {
                    Text(tipsRecette.explanationTips)
                        .font(.custom("Exo", size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .multilineTextAlignment(.leading)
                        
                }
                .background(Color("fondBeige"))
                .padding(.top, -104)
        }
        .navigationBarHidden(true)
    }
}

struct AstucesDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AstucesDetails(tipsRecette: TipsRecette(imageTips: "Epluchures", textTips: "Epluchures", explanationTips: "Le principe est simple, si on cuit les ingrédients, départ au froide, ils donneront tous leurs nutriments au bouillon. En revanche, si on met un ingrédient dans un liquide bouillant, c’est l’ingrédient qui prend le goût du liquide. Donc en général quand on veut faire un bouillon qui a du goût, on met les ingrédients dans l’eau froide. \n\nDans cette version, j’ai fait un mixte. J’ai commencé par mettre les épluchures dans l’eau froide puis j’y ai cuit des poireaux, carottes et panais que j’ai récupérés pour d’autres plats.Laver avec une brosse très précautionneusement les légumes.\n\nLes éplucher et conserver les légumes pour les cuire dans le bouillon.\n\nDans une grande casserole, verser 3 litres d’eau froide. Déposer toutes les épluchures et les restes de légumes défraîchis de votre frigidaire. N’oubliez pas le bouquet garni.\n\nMettre à ébullition avec un feu assez fort et laisser réduire à feu moyen pendant une bonne heure.\n\nAjouter alors les légumes entier et laisser cuire 30 minutes de plus. Prendre le soin d’attacher les poireaux ensemble pour mieux les récupérer."))
        }
    }
}
