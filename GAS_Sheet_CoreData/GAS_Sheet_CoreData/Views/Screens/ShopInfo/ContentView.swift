//
//  ContentView.swift
//  CoreDataCloudKit
//
//  Created by kitano hajime on 2022/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: []) private var location: FetchedResults<LocationEntity>
    
    @StateObject var vm = ContentViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(vm.location) { location in
                    // Every element has navigation link
                    NavigationLink {
                        LocationDetailView(location: location)
                    } label: {
                        ShopInfoCell(location: location)
                    }
                }//: FOREACH
            } //: LIST
            .onAppear {
                vm.getLocation()
            }
            .navigationTitle("Shope List")
        }//: NAVIGATION
    }//: BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
