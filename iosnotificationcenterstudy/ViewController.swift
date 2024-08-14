//
//  ViewController.swift
//  iosnotificationcenterstudy
//
//  Created by kenan on 13.08.2024.
//

import UIKit

extension Notification.Name{
    static let notName = Notification.Name("minePublish")
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.doIt(notification:)), name: .notName, object: nil)
    }


    @IBOutlet weak var customLabel: UILabel!
    
    
    @IBAction func routePage(_ sender: UIButton) {
    }
    
    @objc func doIt(notification:NSNotification){
        let gelenMesaj = notification.userInfo?["mesaj"]
        let gelenTarih = notification.userInfo?["tarih"]
       let gelenNesne = notification.userInfo?["nesne"] as! User
        
        customLabel.text = "\(gelenNesne.user_name!) -- \(gelenTarih!) -- \(gelenMesaj!)"
    }
    
    
}

