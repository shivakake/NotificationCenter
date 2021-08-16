//
//  SecondViewController.swift
//  NotificationCenter
//
//  Created by PGK Shiva Kumar on 08/08/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(printName), name: NSNotification.Name("Notification"), object: nil)
    }
    @objc func printName(notification : Notification){
        printVCName()
    }
    func printVCName(){
        print("Name Of VC is : SecondViewController")
    }
    @IBAction func nextButtonTapped(_ sende : UIButton){
        if let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThiredViewController") as? ThiredViewController{
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
