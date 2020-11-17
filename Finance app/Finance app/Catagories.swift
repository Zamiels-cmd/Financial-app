//
//  Catagories.swift
//  Finance app
//
//  Created by student on 11/16/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class Catagories: UIViewController, UITabBarControllerDelegate, UITableViewDelegate {


    @IBOutlet weak var AddCatagory: UIButton!
    @IBOutlet weak var CatagoryDisplay: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "category", for: indexPath)
        
        cell.textLabel!.text = "Category Item"
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CatagoryDisplay.delegate = self
        CatagoryDisplay.layer.cornerRadius = 10

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


// Adds options in Inspector to better manipulate the circle button

@IBDesignable extension UIButton {

      @IBInspectable var borderWidth: CGFloat {
         set {
             layer.borderWidth = newValue
         }
         get {
             return layer.borderWidth
         }
     }

      @IBInspectable var cornerRadius: CGFloat {
         set {
             layer.cornerRadius = newValue
         }
         get {
             return layer.cornerRadius
         }
     }

      @IBInspectable var borderColor: UIColor? {
         set {
             guard let uiColor = newValue else { return }
             layer.borderColor = uiColor.cgColor
         }
         get {
             guard let color = layer.borderColor else { return nil }
             return UIColor(cgColor: color)
         }
     }
 }

