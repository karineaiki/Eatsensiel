//
//  ListeView.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 22/03/2023.
//

import SwiftUI

struct ListeView: View {
    @State var poulet = false
    @State var saladeRomaine = false
    @State var tomate = false
    @State var boîteDeMaïs = false
    @State var pommes = false
    @State var cerise = false
    @State var pâtes = false
    @State var riz = false
    @State var selected: Int = 0
    @State var text: String = ""
    @State var textNewProduct: String = ""
    
    @State var newProducts: [String] = []
    @State var newProductsValues: [Bool] = []
    
    
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color("fondBeige")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                        Group {
                            Text("Liste de courses")
                                .font(.custom("Karita Personal Use", size: 25))
                                .font(.largeTitle)
                                .foregroundColor(Color("marron"))
                                .padding(.bottom,10)
                        }
                    }
                    Spacer()
                    Form {
                        Section(header: Text("Produits frais")) {
                            HStack {
                                Text("Filets de Poulet - 1kg")
                                    .font(.custom("Exo", size: 16))
                                
                                Spacer()
                                Toggle("", isOn: $poulet)
                                    .toggleStyle(CheckToggleStyle())
                            }
                            .listRowSeparator(.hidden)
                            HStack {
                                Text("Salade romaine - 2 paquets")
                                    .font(.custom("Exo", size: 16))
                                Spacer()
                                Toggle("", isOn: $saladeRomaine)
                                    .toggleStyle(CheckToggleStyle())
                            }
                        }
                        Section(header: Text("Légumes")) {
                            HStack {
                                Text("Tomates - 6 unité(s)")
                                    .font(.custom("Exo", size: 16))
                                Spacer()
                                Toggle("", isOn: $tomate)
                                    .toggleStyle(CheckToggleStyle())
                            }
                            .listRowSeparator(.hidden)
                            HStack {
                                Text("Maïs - 3 boîtes")
                                    .font(.custom("Exo", size: 16))
                                Spacer()
                                Toggle("", isOn: $boîteDeMaïs)
                                    .toggleStyle(CheckToggleStyle())
                            }
                        }
                        Section(header: Text("Fruits")) {
                            HStack {
                                Text("Framboises - 8 unité(s)")
                                    .font(.custom("Exo", size: 16))
                                Spacer()
                                Toggle("", isOn: $cerise)
                                    .toggleStyle(CheckToggleStyle())
                            }
                        }
                        Section(header: Text("Produits secs")) {
                            HStack {
                                Text("Pâtes - 3 paquets")
                                    .font(.custom("Exo", size: 16))
                                Spacer()
                                Toggle("", isOn: $pâtes)
                                    .toggleStyle(CheckToggleStyle())
                            }
                            .listRowSeparator(.hidden)
                            HStack {
                                Text("Riz - 2 paquets")
                                    .font(.custom("Exo", size: 16))
                                Spacer()
                                Toggle("", isOn: $riz)
                                    .toggleStyle(CheckToggleStyle())
                            }
                        }
                        Section(header: Text("Articles divers en plus")) {
                            ForEach(Array(newProducts.enumerated()), id: \.element){ offset, element  in
                                HStack {
                                    Text(element)
                                    Spacer()
                                    Toggle("", isOn: $newProductsValues[offset])
                                        .toggleStyle(CheckToggleStyle())
                                }
                            }
                            TextField("Nouveau produit", text: $textNewProduct)
                                .overlay(alignment: .trailing) {
                                    Button {
                                        if !textNewProduct.isEmpty {
                                            newProducts.append(textNewProduct)
                                            newProductsValues.append(false)
                                            textNewProduct = ""
                                        }
                                    } label: {
                                        Text("valider")
                                            .font(.custom("Exo", size: 16))
                                    }
                                    .buttonStyle(.borderedProminent)
                                    .font(.custom("Exo", size: 16))
                                    .tint(Color("vert"))
                                }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color("fondBeige"))
                    .ignoresSafeArea()
                    
                    HStack {
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color("orange"))
                                .frame(width: 100, height: 55)
                                .foregroundColor(.white)
                            NavigationLink(destination: MenuView()) {
                                Text("Recette en +")
                                    .font(.custom("Exo", size: 16))
                                    .foregroundColor(.white)
                                
                            }
                        }
                        .padding(.trailing, 16)
                        .padding(.bottom, 8)
                    }
                }
                
                
                
                
            }
        }
    }
}





struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            withAnimation {
                configuration.isOn.toggle()
            }
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                    .foregroundColor(Color("vert"))
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
    
}

struct ListeView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
