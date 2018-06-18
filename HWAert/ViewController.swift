//
//  ViewController.swift
//  HWAert
//
//  Created by mikhey on 06.05.2018.
//  Copyright © 2018 mikheenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var winsLabel: UILabel!
    
    @IBOutlet weak var lossLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //MARK: -Buttons

    @IBAction func rockButton(_ sender: Any) {
        self.winsLabel.text = "0"
        alert(title: "Your choise", message: "rock = 1", style: .alert)
    }
    
//    @IBAction func paperButton(_ sender: Any) {
//        self.winsLabel.text = "0"
//        self.lossLabel.text = "0"
//        alert(title: "Your choise", message: "paper = 2", style: .alert)
//    }
//
//    @IBAction func scissorsButton(_ sender: Any) {
//            self.winsLabel.text = "0"
//            self.lossLabel.text = "0"
//            alert(title: "Your choise", message: "scissors = 3", style: .alert)
//    }
    
    func alert(title: String, message: String, style: UIAlertControllerStyle) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.winsLabel.text! += (text?.text)!
        }
        alertController.addTextField { (textField) in
            
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }

}
