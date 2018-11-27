//
//  IntitalViewController.swift
//  MVP Sample
//
//  Created by Mallikarjun on 26/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import UIKit

class IntitalViewController: BaseViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    private var presenter : initalPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePresenter()
    }
    
    override func configurePresenter() {
       let p = InitialPresenterImplementation(isTitleNeeded: true, isFooterNeeded: false, isHeaderNeeded: false)
        p.delegate = self
        presenter = p
        p.intialDataSetup()
    }
    
    override func registerCells() {
     
    }
    @IBAction func next(_ sender: Any) {
        
        // MARK: - As there is no object to pass to other view controller,we can directly call from here else need to call from the presenter
        navigate(sender: sender as AnyObject)
    }
}
extension IntitalViewController : initialView {
    
    func setTitle(name: String?) {
        self.title = name
    }
    
    func addHeaderView(value: String?) {
        
    }
    
    func addFooterView(value: String?) {
        
    }
    
    func navigate(sender: AnyObject?) {
        performSegue(withIdentifier: MVPDetailSegueIdentifier, sender: self)
    }
    func setDescription(value: String) {
        descriptionLabel.text = value
    }
}
