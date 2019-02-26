//
//  ContentViewController.swift
//  SampleProject
//
//  Created by Joy Marie Navales on 27/02/2019.
//  Copyright © 2019 Joy Marie Navales. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ContentViewController: UIViewController {

    var itemInfo: IndicatorInfo?
}

extension ContentViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo!
    }
}
