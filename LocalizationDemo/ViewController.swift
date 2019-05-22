//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by apple on 22/05/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentedControlPressed(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0 {
            // English
            firstNameLabel.text = "FirstNameKey".localizableString(loc: "en")
            lastNameLabel.text = "LastNameKey".localizableString(loc: "en")
        }
        else {
            // Spanish
            firstNameLabel.text = "FirstNameKey".localizableString(loc: "es")
            lastNameLabel.text = "LastNameKey".localizableString(loc: "es")
        }
    }
    
}

extension String {
    func localizableString(loc: String) -> String {
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        let bundle = Bundle(path: path! )
        
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
