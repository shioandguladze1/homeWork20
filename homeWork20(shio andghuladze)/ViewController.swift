//
//  ViewController.swift
//  homeWork20(shio andghuladze)
//
//  Created by shio andghuladze on 09.08.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePrimeNumbers(_ sender: Any) {
        let queue = OperationQueue()
        queue.addOperation {
            OperationQueue.main.addOperation {
                self.button.isEnabled = false
                self.button.setTitle("Calculating...", for: .normal)
            }
            for i in 0...100_000{
                i.printIfPrime()
            }
            OperationQueue.main.addOperation {
                self.button.isEnabled = true
                self.button.setTitle("Calculate prime numbers", for: .normal)
            }
        }
    }
    
}

extension Int {
    
    func printIfPrime(){
        if self < 2 { return }
        for i in 2...(self / 2 + 1){
            if self % i == 0 { return }
        }
        print(self)
    }
    
}

