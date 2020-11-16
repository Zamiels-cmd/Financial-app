//
//  ProfileView.swift
//  Finance app
//
//  Created by student on 11/16/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ProfileView: UIViewController {

    @IBOutlet weak var CurrentProfile: UILabel!
    
    @IBOutlet weak var SelectProfile: UIButton!
    @IBOutlet weak var SaveProfile: UIButton!
    @IBOutlet weak var DeleteProfile: UIButton!
    
    @IBOutlet weak var SaveData: UIButton!
    @IBOutlet weak var SaveConfig: UIButton!
    @IBOutlet weak var ClearInformation: UIButton!
    
    @IBOutlet weak var CreateProfile: UIButton!
    
    
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
