//
//  Tabview.swift
//  Eatsensiel
//
//  Created by Apprenant 08 on 22/03/2023.
//

import SwiftUI

struct Tabview: View {
    
    init() {
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = UIColor(named: "fondBeige")
        UITabBar.appearance().standardAppearance = tabBarAppearance
        
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
                }
            InventaireView()
                .tabItem {
                    Image(systemName: "cabinet")
                    Text("Inventaire")
                }
            MenuView()
                .tabItem {
                    Image(systemName: "fork.knife.circle")
                    Text("Menus")
                }
            ListeView()
                .tabItem {
                    Image(systemName: "list.bullet.clipboard")
                    Text("Liste de courses")
                }
        }
        
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
