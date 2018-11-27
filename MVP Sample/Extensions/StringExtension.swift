//
//  StringExtension.swift
//  MVP Sample
//
//  Created by Mallikarjun on 26/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
