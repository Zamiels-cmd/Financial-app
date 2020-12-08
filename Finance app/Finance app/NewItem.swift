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
    


    @IBOutlet weak var acceptButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func removeItem(itemID: Int) -> Void {
        Profile.ledger.remove(at: Int(RemoveItemID.text!) ?? -1)
    }
    
    func addItem(deposit: Int?, withdrawl: Int?, income: Int?, expense: Int?) -> Void {
        Profile.ledger.append(Item(deposit: Double(DepositInput.text!) ?? 0, withdrawl: Double(WithdrawlInput.text!) ?? 0, income: Double(IncomeInput.text!) ?? 0, expense: Double(ExpenseInput.text!) ?? 0))
    }
    
    
    @IBAction func acceptButtonClick(_ sender: Any) {
        
        addItem(deposit: Int(DepositInput.text!) ?? 0, withdrawl: Int(WithdrawlInput.text!) ?? 0, income: Int(IncomeInput.text!) ?? 0, expense: Int(ExpenseInput.text!) ?? 0 )

        Profile.income = Profile.income + (Double(IncomeInput.text!) ?? 0) + (Double(DepositInput.text!) ?? 0)
        Profile.expense = Profile.expense + (Double(ExpenseInput.text!) ?? 0)

        DepositInput.text = ""
        WithdrawlInput.text = ""
        IncomeInput.text = ""
        ExpenseInput.text = ""
        
        let alertController = UIAlertController(title: "Item Added", message:
            "Go see it in your Home Tab!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }

}
