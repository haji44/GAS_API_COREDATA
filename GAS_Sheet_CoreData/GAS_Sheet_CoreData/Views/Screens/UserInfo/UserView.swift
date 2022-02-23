//
//  UserView.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/23.
//

import SwiftUI

struct UserView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: []) private var user: FetchedResults<UserEntity>
    
    @State private var name: String = ""
    @FocusState private var nameIsFocused: Bool
    
    var body: some View {
        VStack(spacing: 50) {
            TextField("User name", text: $name)
                .padding(.horizontal, 20)
                .frame(height: 60)
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(10)
                .focused($nameIsFocused)
            
            
            Label("Save", systemImage: "person")
                .font(.system(.title3, design: .rounded))
                .frame(width: 120, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
                .onTapGesture {
                    nameIsFocused = false
                }
            
        }//: VSTACK
        .padding()
    }//: BODY
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
