//
//  JSONParser.swift
//  Brasil-viagens
//
//  Created by Emerson Sampaio on 19/09/23.
//

import Foundation
import SwiftyJSON

class JSONParser {
    static func parseJSON(from jsonString: String) -> JSON? {
        if let jsonData = jsonString.data(using: .utf8) {
            return try? JSON(data: jsonData)
        }
        return nil
    }
    
    static func getString(from json: JSON, forKey key: String) -> String? {
        return json[key].string
    }
    
    static func getInt(from json: JSON, forKey key: String) -> Int? {
        return json[key].int
    }
    
    static func getDouble(from json: JSON, forKey key: String) -> Double? {
        return json[key].double
    }
}
