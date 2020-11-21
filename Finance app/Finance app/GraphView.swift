//
//  GraphView.swift
//  Finance app
//
//  Created by student on 11/16/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class GraphView: UIViewController {

    //below are the graph bars vary height to change amount
    @IBOutlet weak var ExpenseLastMonth: UILabel!
    @IBOutlet weak var IncomeLastMonth: UILabel!
    
    @IBOutlet weak var ExpenseThisMonth: UILabel!
    @IBOutlet weak var IncomeThisMonth: UILabel!
    
    @IBOutlet weak var BackGround: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let barrier=BackGround.bounds.size.height
        
        let maxAmount=max(Profile.getTotalIncome,Profile.getTotalWithdrawls,LastProfile.getTotalWithdrawls,LastProfile.getTotalIncome)
        
        ExpenseLastMonth.heightAnchor.constraint(equalToConstant: barrier*CGFloat(LastProfile.getTotalWithdrawls/maxAmount)).isActive=true
        
        ExpenseThisMonth.heightAnchor.constraint(equalToConstant: barrier*CGFloat(Profile.getTotalWithdrawls/maxAmount)).isActive=true
        
        IncomeLastMonth.heightAnchor.constraint(equalToConstant: barrier*CGFloat(LastProfile.getTotalIncome/maxAmount)).isActive=true
        
        IncomeThisMonth.heightAnchor.constraint(equalToConstant: barrier*CGFloat(Profile.getTotalIncome/maxAmount)).isActive=true
    
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
