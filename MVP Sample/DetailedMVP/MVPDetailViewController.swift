//
//  MVPDetailViewController.swift
//  MVP Sample
//
//  Created by Mallikarjun on 27/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import UIKit

class MVPDetailViewController: BaseViewController {

    private var presenter : MVPDetailPresenter?
    @IBOutlet weak var mvpTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        configurePresenter()
    }
    override func configurePresenter() {
        let p = MVPDetailPresenterImplementation(isTitleNeeded: true, isFooterNeeded: false, isHeaderNeeded: false)
        p.delegate = self
        p.intialDataSetup()
        presenter = p
    }
    
    override func registerCells() {
        mvpTableView.register(DetailedTableViewCell.self)
    }

}

// MARK: - UITableViewDelegate,UITableViewDataSource
extension MVPDetailViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (presenter?.numberOfRows)!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell: DetailedTableViewCell = tableView.dequeueReusableCell()
        presenter?.configure(customCell: cell, forRow: indexPath.row)
        return cell
    }
}
// MARK: - View methods
extension MVPDetailViewController : MVPDetailView{
    
    func reloadData() {
        
    }
    
    func setTitle(name: String?) {
        self.title = name
    }
    
    func addHeaderView(value: String?) {
        
    }
    
    func addFooterView(value: String?) {
        
    }
    
    func navigate(sender: AnyObject?) {
        
    }
    
}
