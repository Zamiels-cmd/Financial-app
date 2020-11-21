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
//        GlobalVariables.items.remove(at: itemID)
    }
    
    func addItem(deposit: Int?, withdrawl: Int?) -> Void {
        Profile.ledger.append(Item(deposit: Double(DepositInput.text!), withdrawl: Double(WithdrawlInput.text!)))
    }
    
    
    @IBAction func acceptButtonClick(_ sender: Any) {
        
        addItem(deposit: Int(DepositInput.text!), withdrawl: Int(WithdrawlInput.text!))

        Profile.income = Profile.income + Double(IncomeInput.text!)!
        Profile.expense = Profile.expense + Double(ExpenseInput.text!)!

        DepositInput.text = ""
        WithdrawlInput.text = ""
        IncomeInput.text = ""
        ExpenseInput.text = ""
        
        let alertController = UIAlertController(title: "Item Added", message:
            "Go see it in your Home Tab!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
//    @IBAction func acceptButtonClicked(_ sender: Any) {
//        addItem(deposit: Int(DepositInput.text!), withdrawl: Int(WithdrawlInput.text!))
//
//        Profile.income = Profile.income + Double(IncomeInput.text!)!
//        Profile.expense = Profile.expense + Double(ExpenseInput.text!)!
//
//        DepositInput.text = ""
//        WithdrawlInput.text = ""
//        IncomeInput.text = ""
//        ExpenseInput.text = ""
//
//        let alertController = UIAlertController(title: "Item Added", message:
//            "Go see it in your Home Tab!", preferredStyle: .alert)
//        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
//
//        self.present(alertController, animated: true, completion: nil)
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
