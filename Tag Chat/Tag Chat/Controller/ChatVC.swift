//
//  ChatVC.swift
//  Tag Chat
//
//  Created by Surasak Wattanapradit on 20/9/2560 BE.
//  Copyright © 2560 Surasak Wattanapradit. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // When click menuBtn will show slide menu from left
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // pan = แตะจากด้านซ้ายจอเลื่อนเข้ามากลางจอ ให้แสดงเมนู Slide Menu // tap = แตะที่นอกเมนู ซ่อน Slide Menu
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
    
}
