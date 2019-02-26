//
//  ViewController.swift
//  SampleProject
//
//  Created by Joy Marie Navales on 26/02/2019.
//  Copyright © 2019 Joy Marie Navales. All rights reserved.
//

import UIKit
import XLPagerTabStrip

protocol View: class {
    
}

class ViewController: ButtonBarPagerTabStripViewController {

    private lazy var presenter: Presenter = ViewPresenter(view: self)
    private lazy var dataSource: ViewDataSource = .init(presenter: self.presenter)
    
    override func viewDidLoad() {
        self.dataSource.configureTabStripController(with: self)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return self.presenter.viewControllers(for: pagerTabStripController)
    }
    
}

extension ViewController: View {
    
}

