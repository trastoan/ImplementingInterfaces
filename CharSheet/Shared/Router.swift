//
//  Router.swift
//  CharSheet
//
//  Created by Yuri on 21/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit
import SwiftUI

struct Router {
    enum Approach {
        case viewCode
        case storyboard
        case xib
        case xibCode
        case swiftui
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
        case .xibCode:
            controller = RandomViewController()
        case .swiftui:
            controller = UIHostingController(rootView: CharSheetView())
        }
        
        navigation.viewControllers = [controller]
        
        return navigation
    }
    
    private func configureNavigationController() -> UINavigationController {
        let navigation = UINavigationController()
        let appearence = UINavigationBarAppearance()
        appearence.backgroundColor = .mustardYellow
        appearence.titleTextAttributes = [.font : UIFont.systemFont(ofSize: 21, weight: .bold)]
        appearence.shadowColor = .clear


        navigation.navigationBar.standardAppearance = appearence
        navigation.navigationBar.scrollEdgeAppearance = appearence
        return navigation
    }
}
