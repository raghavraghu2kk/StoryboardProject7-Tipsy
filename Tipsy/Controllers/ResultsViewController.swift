//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Raghavendra Mirajkar on 01/07/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var result = Bill(splitNumber: 2.0, tipPercent: 0.1, bill: 0.0)
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.2f", result.bill)
        settingsLabel.text = "Split between \(result.splitNumber) people, with \(result.tipPercent * 100.0)% tip"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
