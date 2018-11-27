//
//  BaseView.swift
//  MVP Sample
//
//  Created by Mallikarjun on 26/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation

protocol BaseView : class {
    
    /// To set the title of the page
    ///
    /// - Parameter name: name
    func setTitle(name : String?)
    
    /// To add the header view for the page
    ///
    /// - Parameter value: value
    func addHeaderView(value : String?)
    
    /// To add the footer view for the page
    ///
    /// - Parameter value: value
    func addFooterView(value : String?)

    /// To navigate to the next page
    ///
    /// - Parameter sender: Sender
    func navigate(sender : AnyObject?)
}
