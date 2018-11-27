//
//  InitialPresenter.swift
//  MVP Sample
//
//  Created by Mallikarjun on 26/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import Foundation

protocol initalPresenter : BasePresenter {
}

class InitialPresenterImplementation: initalPresenter {
    
    private var isTitleRequired : Bool?
    private var isFooterRequired  : Bool?
    private var isHeaderRequired : Bool?
    public weak var delegate: initialView?

    init(isTitleNeeded : Bool,isFooterNeeded : Bool,isHeaderNeeded : Bool) {
        isTitleRequired = isTitleNeeded
        isFooterRequired = isFooterNeeded
        isHeaderRequired = isHeaderNeeded
    }
    
    func intialDataSetup() {
        delegate?.setTitle(name: "Initial_Screen_Title".localized)
        delegate?.setDescription(value: "Initial_Screen_Description".localized)

    }
}
