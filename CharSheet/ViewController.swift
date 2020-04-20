//
//  ViewController.swift
//  CharSheet
//
//  Created by Yuri on 19/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //removes line on navigation bar
        navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.pushViewController(CharSheetViewController(), animated: true)
    }


}

