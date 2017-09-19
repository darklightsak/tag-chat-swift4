//
//  ChannelVC.swift
//  Tag Chat
//
//  Created by Surasak Wattanapradit on 20/9/2560 BE.
//  Copyright © 2560 Surasak Wattanapradit. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting size of Slide Menu
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
