//
//  BillBrain.swift
//  Tipsy
//
//  Created by Raghavendra Mirajkar on 02/07/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct BillBrain {
    var bill = Bill(splitNumber: 2.0, tipPercent: 0.1, bill: 0.0)
    
    mutating func setTip(_ tip : String) {
        switch tip {
        case "0%" :
            bill.tipPercent = 0.0
        case "10%" :
            bill.tipPercent = 0.1
        case "20%" :
            bill.tipPercent = 0.2
        default :
            bill.tipPercent = 0.0
        }
    }
    
    mutating func setSplit(_ split : Double) {
        bill.splitNumber = Float(split)
    }
    
    func getSplit(_ split: Double) -> String {
        return String(format: "%.0f", split)
    }
    
    mutating func calculateBill(_ amount: Float) {
        bill.bill = (amount + (amount * bill.tipPercent)) / bill.splitNumber
    }
    
}
