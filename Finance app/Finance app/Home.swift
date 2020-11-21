//
//  Home.swift
//  Finance app
//
//  Created by JarrenJ on 11/11/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class Home: UIViewController, UITabBarControllerDelegate, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var recentTransactions: UITableView!
    
    @IBOutlet weak var balance: UILabel!
    @IBOutlet weak var currentMonth: UILabel!
    @IBOutlet weak var income: UILabel!
    @IBOutlet weak var expense: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recentTransactions.delegate = self
        recentTransactions.dataSource = self
        recentTransactions.layer.cornerRadius = 10 //set corner radius here
    }
    
    override func viewWillAppear(_ animated: Bool) {
        recentTransactions.reloadData()
        income.text = String(Profile.income)
        expense.text = String(Profile.expense)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Profile.ledger.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "recentTransactionsCell", for: indexPath)
        
        cell.textLabel!.numberOfLines = 0;
        
        cell.textLabel!.text = "Deposit: \(String(Profile.ledger[indexPath.row].deposit ?? 0))\nWithdrawls: \(String(Profile.ledger[indexPath.row].withdrawl ?? 0))"

        return cell
    }

}

