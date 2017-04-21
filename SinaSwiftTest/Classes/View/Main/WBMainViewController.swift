//
//  WBMainViewController.swift
//  SinaSwiftTest
//
//  Created by 聂伟 on 2017/4/19.
//  Copyright © 2017年 聂伟. All rights reserved.
//

import UIKit
//主控制器
class WBMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupChildController()
        setUpComposeButton()
    }
    
    @objc
    func composeStatus() {
        print("666")
    }
    
    public lazy var composeButton:UIButton=UIButton.cz_imageButton("tabbar_compose_icon_add", backgroundImageName: "tabbar_compose_button")

}

extension WBMainViewController{
    public func setUpComposeButton(){
        tabBar.addSubview(composeButton)
        let count=CGFloat(childViewControllers.count)
        let w=tabBar.bounds.width/count-1
        composeButton.frame=tabBar.bounds.insetBy(dx: 2*w, dy: 0)
        
        composeButton.addTarget(self, action: #selector(composeStatus), for: .touchUpInside)
    }
    
    public func setupChildController(){
        let array=[
            ["clsName":"WBHomeViewController","title":"首页","imageName":"home"],
            ["clsName":"WBMessageViewController","title":"消息","imageName":"message_center"],
            ["clsName":"UIViewController"],
            ["clsName":"WBDiscoverViewController","title":"发现","imageName":"discover"],
            ["clsName":"WBProfileViewController","title":"我","imageName":"profile"],
        ]
        var arrayM=[UIViewController]()
        for dic in array {
            arrayM.append(controller(dict: dic))
        }
        viewControllers=arrayM
    }
    
    private func controller(dict:[String:String])-> UIViewController{
        guard let clsName = dict["clsName"],
        let title = dict["title"],
        let imageName = dict["imageName"],
        let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
        else {
            return UIViewController()
        }
        
        
        let vc=cls.init()
        vc.title=title
        vc.tabBarItem.image=UIImage.init(named: "tabbar_"+imageName)
        vc.tabBarItem.selectedImage=UIImage.init(named: "tabbar_"+imageName+"_selected")?.withRenderingMode(.alwaysOriginal)
        
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .highlighted)
        vc.tabBarItem.setTitleTextAttributes(
            [NSFontAttributeName:UIFont.systemFont(ofSize: 12)], for: UIControlState(rawValue:0))
        let nav=WBNavigationController(rootViewController:vc)
        return nav
        
    }
}
