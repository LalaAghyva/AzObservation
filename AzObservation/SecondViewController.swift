//
//  SecondViewController.swift
//  AzObservation
//
//  Created by Lala on 11.03.24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var onCallBack : ((String)->())? = nil

    var prm : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBack() {
        onCallBack?("Hello")
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
