//
//  TabBarViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class TabBarViewController: UITabBarController {

    var viewModel: TabBarViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = appDarkColor
        tabBar.barTintColor = appWhiteColor
        tabBar.layer.masksToBounds = true
        tabBar.barStyle = .default
        tabBar.layer.cornerRadius = 25
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
}

final class AppCustomTabBar: UITabBarItem {
    
    
    override var title: String? {
        get { return nil }
        set { super.title = newValue }
    }

    override var imageInsets: UIEdgeInsets {
        get { return UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0) }
        set { super.imageInsets = newValue }
    }

    convenience init(image: UIImage?, selectedImage: UIImage?) {
        self.init()
        self.image = image
        self.selectedImage = selectedImage
    }

    override init() {
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
