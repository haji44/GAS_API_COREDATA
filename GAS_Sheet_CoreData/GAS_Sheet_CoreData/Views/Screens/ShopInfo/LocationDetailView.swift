//
//  LocationDetailView.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/23.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    var location: DDGLocation
    
    var body: some View {
        VStack(spacing: 50) {
            // MARK: - HEADER
            Image(location.header_image)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            Text(location.detail)
            Spacer()
        }
        .navigationTitle(location.name)
        .navigationViewStyle(.stack)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView(location: MockData.sample)
        }
    }
}
