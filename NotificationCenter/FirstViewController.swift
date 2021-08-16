//
//  ViewController.swift
//  NotificationCenter
//
//  Created by PGK Shiva Kumar on 08/08/21.
//

import UIKit

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(printName), name: NSNotification.Name("Notification"), object: nil)
    }
    @objc func printName(notification : Notification){
        printVCName()
        // Accessing data from notification.
        if let obj = notification.object as? [String : Any]{
            print(obj)
        }
        if let userinfo = notification.userInfo as? [String : Any]{
            print(userinfo)
        }
    }
    func printVCName(){
        print("Name Of VC is : FirstViewController")
    }
    @IBAction func nextButtonTapped(_ sende : UIButton){
        if let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
