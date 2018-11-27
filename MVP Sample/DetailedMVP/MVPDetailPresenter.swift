//
//  MVPDetailPresenter.swift
//  MVP Sample
//
//  Created by Mallikarjun on 27/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation
import UIKit

protocol MVPDetailPresenter : BasePresenter {

    /// number Of Sections
    var numberOfSections: Int { get }
    
    /// number Of Rows
    var numberOfRows: Int { get }
    
    func configure(customCell : DetailedTableViewCell,forRow row:Int)
}

class MVPDetailPresenterImplementation: MVPDetailPresenter {
    
    private var isTitleRequired : Bool?
    private var isFooterRequired  : Bool?
    private var isHeaderRequired : Bool?
    public weak var delegate: MVPDetailView?
    private var rows : [Row] = []

    init(isTitleNeeded : Bool,isFooterNeeded : Bool,isHeaderNeeded : Bool) {
        isTitleRequired = isTitleNeeded
        isFooterRequired = isFooterNeeded
        isHeaderRequired = isHeaderNeeded
    }
    
    func intialDataSetup() {
        delegate?.setTitle(name: "MVPDetail_Screen_Title".localized)
        getData()
    }
    
    /// To get the data.
    private func getData(){
        
        if let path = Bundle.main.path(forResource: "Sampledata", ofType: "plist"),
            let list = NSDictionary(contentsOfFile: path){
            
            let sectionObjects = list["rows"] as? [NSDictionary]
            
            for dict in sectionObjects!{
                let row = Row.init(fromDictionary: dict)
                rows.append(row)
            }
            if rows.count > 0{
                delegate?.reloadData()
            }
        }
    }
    var numberOfSections: Int{
        return 1
    }
    
    var numberOfRows: Int{
        return rows.count
    }
    func configure(customCell : DetailedTableViewCell,forRow row:Int){
        let rowData = rows[row]
        customCell.configure(title: rowData.title!, desciption: rowData.about!)
    }

}
