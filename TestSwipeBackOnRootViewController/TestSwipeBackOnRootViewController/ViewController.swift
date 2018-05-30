//
//  ViewController.swift
//  TestSwipeBackOnRootViewController
//
//  Created by Ali Saeedifar on 5/30/18.
//  Copyright © 2018 Ali Saeedifar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak private var tableview: UITableView!
    var dataSource = ["New York", "Washangton", "Sanfrancisco", "Whatever", "SomeThing Else", "And So On"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableview.register(UINib(nibName: "SimpleTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableview.dataSource = self
        self.tableview.delegate = self
    }

    @IBAction func simpleButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "simplePushSegue", sender: nil)
    }
 
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableview.dequeueReusableCell(withIdentifier: "cell") as! SimpleTableViewCell
        if indexPath.row < dataSource.count {
            cell.update(title: dataSource[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "simplePushSegue", sender: nil)
    }
}

