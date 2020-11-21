//
//  Profile.swift
//  Finance app
//
//  Created by student on 11/16/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class Profile: NSObject {
    struct Item {
        var deposit:Int!
        var withdrawl:Int!
    }
    
    override init() {
        super.init()
    }
    
    public static var name:String=""
    public static var ledger:[Item]=[]
    public static var income:Int=0
    public static var expense:Int=0
    
    
    
    static let getCash=ledger.reduce(0, {x,y in x+y.deposit-y.withdrawl})+income-expense
    static let getTotalWithdrawls=ledger.reduce(0, {x,y in x+y.withdrawl})
    static let getTotalIncome=ledger.reduce(0,{x,y in x+y.deposit})
    

}

class lastProfile: NSObject {
    struct Item {
        var deposit:Int!
        var withdrawl:Int!
    }
    
    override init() {
        super.init()
    }
    
    public static var name:String=""
    public static var ledger:[Item]=[]
    public static var income:Int=0
    public static var expense:Int=0
    

}
