//
//  ViewDataSource.swift
//  SampleProject
//
//  Created by Joy Marie Navales on 27/02/2019.
//  Copyright © 2019 Joy Marie Navales. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewDataSource: NSObject {
    fileprivate let presenter: Presenter
    
    init(presenter: Presenter) {
        self.presenter = presenter
    }
    
    func configureTabStripController(with controller: ButtonBarPagerTabStripViewController) {
        
        controller.settings.style.buttonBarItemBackgroundColor = UIColor.blue
        controller.settings.style.buttonBarBackgroundColor = UIColor.blue
        controller.settings.style.selectedBarBackgroundColor = UIColor.LightBlue
        controller.settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14.0)
        controller.settings.style.selectedBarHeight = 3.0
        controller.settings.style.buttonBarItemTitleColor = UIColor.white
        controller.settings.style.buttonBarItemsShouldFillAvailableWidth = true
    }
}
