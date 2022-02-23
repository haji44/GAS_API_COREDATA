//
//  GASTabView.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/23.
//

import SwiftUI

struct GASTabView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            UserView()
                .tabItem {
                    Label("User", systemImage: "person.fill")
                }
        }
    }
}

struct GASTabView_Previews: PreviewProvider {
    static var previews: some View {
        GASTabView()
    }
}
