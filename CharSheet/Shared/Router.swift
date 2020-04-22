//
//  Router.swift
//  CharSheet
//
//  Created by Yuri on 21/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

struct Router {
    enum Approach {
        case viewCode
        case storyboard
        case xib
    }
    
    func mainController(approach: Approach) -> UIViewController {
        let navigation = configureNavigationController()
        var controller: UIViewController!
        
        switch approach {
        case .viewCode:
            controller = CharSheetViewController()
        case .storyboard:
            let storyboard = UIStoryboard(name: "CharSheet", bundle: nil)
            controller = storyboard.instantiateViewController(withIdentifier: "CharSheetController")
        case .xib:
            let storyboard = UIStoryboard(name: "CharSheetXib", bundle: nil)
            controller = storyboard.instantiateViewController(withIdentifier: "CharSheetXibController")
        }
        
        navigation.viewControllers = [controller]
        
        return navigation
    }
    
    private func configureNavigationController() -> UINavigationController {
        let navigation = UINavigationController()
        navigation.navigationBar.barTintColor = .mustardYellow
        navigation.navigationBar.titleTextAttributes = [.font : UIFont.systemFont(ofSize: 21, weight: .bold)]
        navigation.navigationBar.shadowImage = UIImage()
        navigation.navigationBar.isTranslucent = false
        
        return navigation
    }
}
