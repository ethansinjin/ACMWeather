//
//  Model.swift
//  ACMWeather
//
//  Created by Ethan Gill on 11/3/16.
//  Copyright © 2016 Ethan Gill. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Model {
    static let sharedInstance : Model = Model()
    
    private let apiKey = "c487b559ea99fbc6"
    private let rootURL = "https://api.wunderground.com/api/"
    private let conditionsURL = "/conditions/q/"
    let locationURL = "KY/Lexington" //hardcoded for now
    private let suffixURL = ".json"
    
    func fetchWeather(locationCode: String) -> [String: String] {
        let url = rootURL + apiKey + conditionsURL + locationCode + suffixURL
        
        Alamofire.request(url).responseJSON { (response) in
            if let JSON = response.result.value {
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    print("JSON: \(json)")
                case .failure(let error):
                    print(error)
                }
            }
        }
        
        Alamofire.request(url).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            
        }
    }
}
