//
//  DLCView.swift
//  Eatsensiel
//
//  Created by Apprenant 33 on 22/03/2023.
//

import SwiftUI

struct DLCView: View {
    
    @AppStorage("inventaires") var inventaires = [Inventaire(aliment:"Carottes", unit: .kilo,quantite: 1, quantiteLeft: 100, categorieAliment: .legumes, stockage: [.frigo,.congelateur] ,dlc: Date().addingTimeInterval(345600)),
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
    Inventaire(aliment:"Semoules", unit: .gramme, quantite: 500,quantiteLeft: 100,categorieAliment: .produitssecs, stockage:[ .placard ], dlc: Date().addingTimeInterval(5444418400)),
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
                       
                       
    ]
    
    @State var selected: Stockage
    @State var selectedUnit: Unit = .gramme
    @State var selectedCat: Categorie = .pates
    
    var catByStockage: [Stockage: [Categorie]] = [
        .placard: [.pates, .riz, .semoules, .conserves, .epices, .produitssecs, .aperitifs],
        .frigo: [.viandes, .poisson, .legumes, .fruits, .cremerie, .herbesaromatiques, .boisson],
        .congelateur: [.viandes, .poisson, .legumes, .fruits, .herbesaromatiques, .produitscongelés, .glace]
    ]
    
    @State var text: String = ""
    @State var nombre: String = ""
    @State var value: Double = 100
    @State private var bla = "A"
    @State var date: Date = Date()
    @State private var showGreeting = true
    
    @Environment(\.dismiss) var dismiss
    
    var stockages: [Stockage] = [.placard, .frigo, .congelateur]
    var minDate: Date = Date()
    var maxDate: Date = Date(timeIntervalSinceNow: 36000)
    var unit: [Unit] = [.kilo, .gramme, .litre, .centilitre, .unite]
    
    var filteredInventaire : [String] {
        if text.isEmpty {
            return []
        } else if aliments.contains(where: { $0 == text }) {
            return []
        }else {
            return aliments.filter({ produit in
                produit.lowercased().hasPrefix(text.lowercased())
            })
        }
    }
    
    var body: some View {
        ZStack {
            Color("fondBeige")
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 32) {
                    
                    Picker("Quel est votre endroit de stockage?", selection: $selected) {
                        ForEach(0..<stockages.count) { index in
                            Text(stockages[index].rawValue)
                                .tag(stockages[index])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                        .padding(.vertical)
                    //                Divider()
                    
                    
                    VStack {
                        TextField("Nom du produit", text: $text)
                            .tint(Color("vert"))
                            .font(.custom("Exo", size: 16))
                            .font(.system(size: 24))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding( .vertical, 16)
                        .overlay {
                            if !filteredInventaire.isEmpty {
                                VStack {
                                    ZStack {
                                        Color.white
                                        ScrollView {
                                            VStack(alignment: .leading) {
                                                ForEach(filteredInventaire, id: \.self) { produit in
                                                    HStack {
                                                        Button {
                                                            text = produit
                                                        }label: {
                                                            Text(produit)
                                                        }
                                                        Spacer()
                                                    }
                                                }
                                                
                                            }
                                        }
                                        .padding()
                                    }
                                    
                                    
                                    
                                }
                                .frame(height: 200)
                                .padding(.top, 230)
                                .cornerRadius(16)
                                .font(.system(size: 20))
                                .tint(Color("vert"))
                                .font(.custom("Exo", size: 16))
                                .padding(.horizontal, 16)
                            }
                        }
                        .zIndex(4)
                    HStack{
                        Text("Catégorie")
                            .font(.custom("Exo", size: 16))
                            .foregroundColor(Color("vert"))
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color("vert"))
                            Picker("", selection: $selectedCat){
                                ForEach(0..<catByStockage[selected]!.count) { index in
                                    Text(catByStockage[selected]![index].rawValue)
                                        .tag(catByStockage[selected]![index])
                                }
                                //                                    Divider()
                            }
                            .tint(.white)
                        }
                    }
                    VStack(alignment: .leading) {
                        //                    Divider()
                        Toggle("Date Limite de Consommation", isOn: $showGreeting.animation())
                            .font(.custom("Exo", size: 16))
                            .foregroundColor(Color("vert"))
                            .tint(Color("vert"))
                        
                        if showGreeting {
                            DatePicker("",
                                       selection: $date,
                                       in: minDate...,
                                       displayedComponents: [.date])
                            .padding(8)
                            
                        }
                        Divider()
                    }
                    .padding(.vertical, 5)
                    HStack {
                        VStack(alignment: .leading) {
                            
                            Text("Quantité total")
                                .font(.custom("Exo", size: 16))
                                .foregroundColor(Color("vert"))
                            HStack {
                                TextField("Nombre", text: $nombre)
                                    .tint(Color("vert"))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color("vert"))
                                    Picker("", selection: $selectedUnit){
                                        ForEach(0..<unit.count) { index in
                                            Text(unit[index].rawValue)
                                                .tag(unit[index])
                                                .font(.custom("Exo", size: 16))
                                        }
                                        //                                    Divider()
                                    }
                                    .tint(.white)
                                }
                            }
                        }
                    }
                    .padding(.vertical, 5)
                    ZStack {
                        VStack(alignment: .leading) {
                            
                            Text("Quantité restante")
                                .font(.custom("Exo", size: 16))
                                .foregroundColor(Color("vert"))
                            
                            Slider(value: $value, in: 0...100, step: 1) {
                            } minimumValueLabel: {
                                Text("    Peu")
                                    .font(.custom("Exo", size: 16))
                            } maximumValueLabel: {
                                Text("Plein    ")
                                    .font(.custom("Exo", size: 16))
                            }.tint(Color("vert"))
                        }
                    }
                    Spacer()
                    //                faire un test produit pour voir si il s'inscrit sur l'inventaire
                    
                    HStack {
                        Button{
                            var quantite = Int(nombre) ?? 0
                            let quantityLeft = Double(quantite * Int(value) / 100)
                            var unit = selectedUnit
                            if quantityLeft < 1 && unit == .kilo{
                                unit = .gramme
                                quantite *= 1000
                            }
                            if quantityLeft < 1 && unit == .litre{
                                unit = .centilitre
                                quantite *= 100
                            }
                            let newProduct = Inventaire(aliment: text,
                                                        unit: unit,
                                                        quantite: quantite,
                                                        quantiteLeft: Int(value),
                                                        categorieAliment: selectedCat,
                                                        stockage: [selected],
                                                        dlc: showGreeting ? date : Date(timeIntervalSince1970: 0))
                            inventaires.append(newProduct)
                            dismiss()
                        } label: {
                            ZStack {
                                Circle()
                                    .fill(Color("orange"))
                                    .frame(width: 80, height: 80)
                                Text("Valider")
                                    .font(.custom("Karita Personal Use", size: 15))
                                    .foregroundColor(.white)
                            }
                            
                        }
                        .padding(.trailing, 16)
                    }
                }
                .padding(.top, 32)
                .padding(.horizontal, 32)
                
            }
        }
    }
}

//    .padding(.horizontal)
//                        .tint(Color("vertPale"))
struct DLCView_Previews: PreviewProvider {
    static var previews: some View {
        DLCView(selected: .frigo)
    }
}


