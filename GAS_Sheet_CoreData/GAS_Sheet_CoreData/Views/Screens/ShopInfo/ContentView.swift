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
                
//                            for fetchLocation in vm.location {
//                                let newLoacation = LocationEntity(context: viewContext)
//                                newLoacation.name = fetchLocation.name
//                                newLoacation.detail = fetchLocation.detail
//                                newLoacation.latitude = fetchLocation.latitude
//                                newLoacation.longitude = fetchLocation.longitude
//                                newLoacation.phone_number = fetchLocation.phone_number
//                                newLoacation.street = fetchLocation.street
//                                newLoacation.website = fetchLocation.website
                                
//                                newLoacation.icon_image = Image(fetchLocation.icon_image)
//                                do {
//                                    try viewContext.save()
//                                } catch {
//
//                                }
//                            }
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
