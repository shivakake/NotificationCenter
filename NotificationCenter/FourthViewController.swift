//
//  FourthViewController.swift
//  NotificationCenter
//
//  Created by PGK Shiva Kumar on 08/08/21.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(printName), name: NSNotification.Name("Notification"), object: nil)
    }
    @objc func printName(notification : Notification){
        printVCName()
    }
    func printVCName(){
        print("Name Of VC is : FourthViewController")
    }
    @IBAction func nextButtonTapped(_ sende : UIButton){
        if let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FifthViewController") as? FifthViewController{
            navigationController?.pushViewController(controller, animated: true)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            // Passing data with notification.
            let objects = ["Name" : "Shiva" , "Id" : "shiva123"]
            let user = ["Mobile" : "9052998993"]
            NotificationCenter.default.post(name: NSNotification.Name("Notification"), object: objects, userInfo: user)
            
        }
    }
}
