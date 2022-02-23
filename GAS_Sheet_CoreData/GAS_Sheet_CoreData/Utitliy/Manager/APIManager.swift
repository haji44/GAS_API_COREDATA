//
//  APIManager.swift
//  CoreDataCloudKit
//
//  Created by kitano hajime on 2022/02/22.
//

import Foundation

class APIManager {
    
    static let shared = APIManager()
    
    let url = "https://script.google.com/macros/s/AKfycbyOb-dg7QrRtLhPolIfzKA8Proy1pS9v_aoADq6C5WTwFoLtIbAgougrKDxzerscrt7/exec"
    let decoder = JSONDecoder()
    
    func getDDGLocation() async throws ->  DDGData? {
        
        guard let url = URL(string: url) else { throw APIError.wrongURL }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw APIError.wrongURL }
        
        do {
            return try decoder.decode(DDGData.self, from: data)
        } catch {
            throw APIError.invalidData
        }
    }
}
