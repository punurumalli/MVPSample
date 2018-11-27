//
//  BaseViewController.swift
//  MVP Sample
//
//  Created by Mallikarjun on 26/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import UIKit

protocol BaseViewControllerProtocol {
    
    func configurePresenter()
    func registerCells()
}
/*extension BaseViewControllerProtocol  {
    func configurePresenter(){
        
    }
}*/
class BaseViewController: UIViewController,BaseViewControllerProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func configurePresenter() {
        
    }
    
    func registerCells() {
        
    }
}
