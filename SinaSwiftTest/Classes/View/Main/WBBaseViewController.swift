//
//  WBBaseViewController.swift
//  SinaSwiftTest
//
//  Created by 聂伟 on 2017/4/19.
//  Copyright © 2017年 聂伟. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUi()
    }
}

extension WBBaseViewController{
    func setUpUi() {
        view.backgroundColor=UIColor.cz_random()
    }
    
}
