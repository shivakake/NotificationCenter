//
//  FifthViewController.swift
//  NotificationCenter
//
//  Created by PGK Shiva Kumar on 08/08/21.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(printName), name: NSNotification.Name("Notification"), object: nil)
    }
    @objc func printName(notification : Notification){
        printVCName()
    }
    func printVCName(){
        print("Name Of VC is : FifthViewController")
    }
    @IBAction func nextButtonTapped(_ sende : UIButton){
        navigationController?.popViewController(animated: true)
    }
}
