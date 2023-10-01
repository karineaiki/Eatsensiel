//
//  MainView.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 22/03/2023.
//

import SwiftUI

struct MainView: View {
    var dates7: [Date] = [
        .now,
        .now.addingTimeInterval(86400),
        .now.addingTimeInterval(86400*2),
        .now.addingTimeInterval(86400*3),
        .now.addingTimeInterval(86400*4),
        .now.addingTimeInterval(86400*5),
        .now.addingTimeInterval(86400*6)
    ]
    @State private var presentAlert = true
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("fondBeige")
                    .edgesIgnoringSafeArea(.top)
                VStack (alignment:.center){
                    HStack {
                        Image("EatsensielLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                        Text("Ea(t)sensiel")
                            .font(.custom("Karita Personal Use", size: 25))
                            .foregroundColor(Color("marron"))
                        
                        
                        
                    }
                    Text ("Aliments arrivants à la date limite de consommation")
                        .font(.custom("Exo", size: 16))
                        .padding(.trailing, 50)
                        .padding(.top, 10)
                        .padding(.leading,-20)
                        .foregroundColor(Color("marron"))
                    
                    
                    ZStack(alignment: .topTrailing) {
                        ScrollView  {
                            ForEach (dates7, id: \.self) {date in
                                DLCSemaine(date:date)
                                Filterdlc(date: date)
                            }
                            .padding(.bottom, 80)
                            
                        }
                        NavigationLink(destination: AstucesListView()) {
                            Text("Tips")
                                .font(.custom("Karita Personal Use", size: 16))
                                .foregroundColor(Color("fondBeige"))
                                .fontWeight(.bold)
                                .frame(width: 60, height: 60)
                                .background(Color("orange"))
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                            
                        }
                        .padding(8)
                        .padding(.top, -80)
                        
                    }
                }
                .padding([.top, .horizontal])
            }
            .alert(isPresented: $presentAlert) { // 4
                
                Alert(
                    title: Text("Ea(t)sensiel"),
                    message: Text("Attention des aliments arrivent à date de péremption")
                )
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct DLCSemaine: View {
    var date : Date
    var body: some View {
        Text(date, style: .date)
            .font(.custom("Exo", size: 22))
            .font(.title2)
            .fontWeight(.medium)
            .foregroundColor(Color("fondBeige"))
            .frame(width: 350, height: 60)
            .background(Color("vert"))
            .cornerRadius(30)
            .padding()
        
    }
}

extension Date {
    func isSameDay(as date: Date) -> Bool {
        return Calendar.current.isDate(self, inSameDayAs: date)
    }
}

struct Filterdlc: View {
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
    
    var date : Date
    var body: some View {
        VStack (alignment:.leading){
            ForEach(inventaires.filter({ ingredient in
                ingredient.dlc.isSameDay(as: date)
            })) { ingredient in
                HStack{
                    
                    if ingredient.dlc.isSameDay(as:.now) {
                        Image(systemName: "clock.badge.exclamationmark")
                            .renderingMode(.original) // <1>
                            .font(.system(size: 30))
                            .foregroundColor(Color("orange"))
                        
                    }
                    
                    Text("\(ingredient.aliment)")
                        .foregroundColor(Color("marron"))
                        .font(.custom("Exo", size: 20))
                    Spacer()
                    
                    Text("\(ingredient.quantite*ingredient.quantiteLeft/100) \(ingredient.unit.rawValue)")
                        .foregroundColor(Color("marron"))
                        .font(.custom("Exo", size: 20))
                }
                
            }
        }
        .padding(.leading,30)
        .padding(.trailing,30)
    }
}
