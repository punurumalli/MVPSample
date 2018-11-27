//
//  Extensions.swift
//  MVP Sample
//
//  Created by Mallikarjun on 27/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: StoryBoardIdentifier { }

extension UITableViewCell: ReusableView, NibLoadableView {}

extension UICollectionViewCell: ReusableView, NibLoadableView {}

extension UITableViewHeaderFooterView: ReusableView, NibLoadableView {}

extension UITableView {
    
    func register<T: UITableViewCell>(_: T.Type) {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func registerHeader<T: UITableViewHeaderFooterView>(_: T.Type) {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forHeaderFooterViewReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        return cell
    }
    
    func dequeueReusableHeader<T: UITableViewHeaderFooterView>() -> T {
        guard let view = dequeueReusableHeaderFooterView(withIdentifier: T.defaultReuseIdentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        return view
    }
}

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T {
        guard let cell =  dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        return cell
    }
}


extension UIView {
    class func fromNib<T: UIView>() -> T {
        guard let view =  Bundle.main.loadNibNamed(String(describing: T.self),
                                                   owner: nil, options: nil)?[0] as? T
            else {  fatalError("Could not load view from xib") }
        return view
    }
}

extension Notification.Name {
    static let menuToggledFromMaster = Notification.Name("Keyboard")
}

