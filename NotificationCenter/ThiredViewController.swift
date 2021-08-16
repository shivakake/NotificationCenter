//
//  ThiredViewController.swift
//  NotificationCenter
//
//  Created by PGK Shiva Kumar on 08/08/21.
//

import UIKit

class ThiredViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(printName), name: NSNotification.Name("Notification"), object: nil)
    }
    @objc func printName(notification : Notification){
        printVCName()
    }
    func printVCName(){
        print("Name Of VC is : ThiredViewController")
    }
    @IBAction func nextButtonTapped(_ sende : UIButton){
        if let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController{
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
