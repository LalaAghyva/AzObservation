//
//  ViewController.swift
//  AzObservation
//
//  Created by Lala on 11.03.24.
//

import UIKit
import RxSwift
import RxCocoa

let NOTIFICATION_KEY = "key_notification"

class ViewController: UIViewController {
    
    var disposeBag = DisposeBag()

    @IBOutlet weak var txtLabel: UILabel!
    
    var rxIsLiked : BehaviorRelay<Bool> = BehaviorRelay(value: false)
    
    var isLiked : Bool = false {
        didSet {
            updateUI()
            print("Deyer \(isLiked)")
        }
    }
    
    func updateUI() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rxIsLiked.subscribe { isResult in
            print("Deyer : \(isResult)")
        }.disposed(by: disposeBag)
        
        isLiked = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(messageReceived), name: NSNotification.Name(NOTIFICATION_KEY), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(messageReceived), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        rxIsLiked.accept(!rxIsLiked.value)
    }
    
    @objc func messageReceived() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as? SecondViewController
        secondViewController?.prm = "Hello World"
        secondViewController?.onCallBack = { prm in
            
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(NOTIFICATION_KEY), object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }


}

