//
//  ShopInfoCell.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/23.
//

import SwiftUI

struct ShopInfoCell: View {
    var location: DDGLocation
    
    var body: some View {
        HStack {
            Image(location.icon_image)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
                .clipShape(Circle())
            Text(location.name)
                .font(.title3)
                .fontWeight(.semibold)
        }//: HSTACK
    }//: BODY
}

struct ShopInfoCell_Previews: PreviewProvider {
    static var previews: some View {
        ShopInfoCell(location: MockData.sample)
    }
}

