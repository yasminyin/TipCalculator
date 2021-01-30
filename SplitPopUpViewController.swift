//
//  SplitPopUpViewController.swift
//  Prework
//
//  Created by Yue YIN on 1/29/21.
//

import UIKit

class SplitPopUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
    }
    
    
    
    @IBOutlet weak var averageAmount: UILabel!
    @IBOutlet weak var personSize: UILabel!
    
    @IBAction func changePersonSize(_ sender: UIStepper) {
        personSize.text = String(sender.value)
        let person = Double(personSize.text!) ?? 0
        averageAmount.text = String(format:"$%.2f", global.ttlAmount/person)
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        self.view.removeFromSuperview()
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
