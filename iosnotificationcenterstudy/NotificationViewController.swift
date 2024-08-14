//
//  NotificationViewController.swift
//  iosnotificationcenterstudy
//
//  Created by kenan on 13.08.2024.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func routePage(_ sender: UIButton) {
        let user = User(user_name: "Kenan",user_age: "25")
        NotificationCenter.default.post(name:.notName,object: nil,userInfo: ["mesaj":"merhaba","tarih":Date(),"nesne":user])
        dismiss(animated: true,completion: nil)
    }
    


}
