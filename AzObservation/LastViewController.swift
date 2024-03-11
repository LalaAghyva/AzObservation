//
//  LastViewController.swift
//  AzObservation
//
//  Created by Lala on 11.03.24.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(NOTIFICATION_KEY), object: nil, userInfo: nil)
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
