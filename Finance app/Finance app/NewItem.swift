//
//  NewItem.swift
//  Finance app
//
//  Created by student on 11/16/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class NewItem: UIViewController {

    @IBOutlet weak var DepositInput: UITextField!
    @IBOutlet weak var WithdrawlInput: UITextField!
    @IBOutlet weak var IncomeInput: UITextField!
    @IBOutlet weak var ExpenseInput: UITextField!
    
    @IBOutlet weak var RemoveItemID: UITextField!
    
    @IBOutlet weak var AcceptButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
