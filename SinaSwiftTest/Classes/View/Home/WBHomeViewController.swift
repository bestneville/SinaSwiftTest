//
//  WBHomeViewController.swift
//  SinaSwiftTest
//
//  Created by 聂伟 on 2017/4/19.
//  Copyright © 2017年 聂伟. All rights reserved.
//

import UIKit

class WBHomeViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc fileprivate func showFriends()  {
        print("trew")
        let vc = WBDiscoverViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension WBHomeViewController{
    override func setUpUi() {
        super.setUpUi()
        navigationItem.leftBarButtonItem=UIBarButtonItem.init(title: "好友", style: .plain, target: self, action: #selector(showFriends))
    }
}
