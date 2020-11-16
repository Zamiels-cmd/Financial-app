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
