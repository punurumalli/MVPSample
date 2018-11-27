//
//  MVPDetailView.swift
//  MVP Sample
//
//  Created by Mallikarjun on 27/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation

/// inherited from base view and to add more methods in intial view
protocol MVPDetailView : BaseView {
    func reloadData()
}
