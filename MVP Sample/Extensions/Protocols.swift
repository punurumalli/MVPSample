//
//  Protocols.swift
//  MVP Sample
//
//  Created by Mallikarjun on 27/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

extension ReusableView where Self: UIView{
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}
protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

protocol StoryBoardIdentifier {}

extension StoryBoardIdentifier where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
