//
//  ViewPresenter.swift
//  SampleProject
//
//  Created by Joy Marie Navales on 27/02/2019.
//  Copyright © 2019 Joy Marie Navales. All rights reserved.
//

import UIKit
import XLPagerTabStrip

protocol Presenter: class {
    func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController]
}

final class ViewPresenter: Presenter {
    private weak var view: View?
    
    init(view: View) {
        self.view = view
    }
    
    func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let watchController = pagerTabStripController.storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as! ContentViewController
        watchController.itemInfo = "Watch"
        let sleepController = pagerTabStripController.storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as! ContentViewController
        sleepController.itemInfo = "Sleep"
        let chartController = pagerTabStripController.storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as! ContentViewController
        chartController.itemInfo = "Chart"
        
        return [watchController, sleepController, chartController]
    }
}
