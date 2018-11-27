//
//  Model.swift
//  MVP Sample
//
//  Created by Mallikarjun on 27/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation

class Row{
    var title : String?
    var about : String?
    init(fromDictionary dictionary: NSDictionary){
        title = dictionary["title"] as? String
        about = dictionary["Description"] as? String
    }
}
