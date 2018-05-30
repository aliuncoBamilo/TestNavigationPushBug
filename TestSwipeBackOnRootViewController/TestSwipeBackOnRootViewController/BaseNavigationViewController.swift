//
//  BaseNavigationViewController.swift
//  TestSwipeBackOnRootViewController
//
//  Created by Ali Saeedifar on 5/30/18.
//  Copyright © 2018 Ali Saeedifar. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //I don't know why I have these code here! :-|
        self.interactivePopGestureRecognizer?.delegate = self
    }
    
    
    //I don't know why I have these code here! :-|
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
