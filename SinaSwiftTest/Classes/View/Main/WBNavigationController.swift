//
//  WBNavigationControllerControllerViewController.swift
//  SinaSwiftTest
//
//  Created by 聂伟 on 2017/4/19.
//  Copyright © 2017年 聂伟. All rights reserved.
//

import UIKit

class WBNavigationController: UINavigationController {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count>0{
            viewController.hidesBottomBarWhenPushed=true
        }
        super.pushViewController(viewController, animated: true)
    }

}
