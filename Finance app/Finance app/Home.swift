//
//  Home.swift
//  Finance app
//
//  Created by JarrenJ on 11/11/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class Home: UIViewController, UITabBarControllerDelegate, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recentTransactionsCell", for: indexPath)
        
        cell.textLabel!.text = "Transaction"
        return cell
    }
    
    
    
    @IBOutlet weak var recentTransactions: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recentTransactions.delegate = self
        recentTransactions.dataSource = self
        recentTransactions.layer.cornerRadius = 10 //set corner radius here
    }
    


}

