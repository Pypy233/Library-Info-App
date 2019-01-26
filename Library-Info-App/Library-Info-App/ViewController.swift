//
//  ViewController.swift
//  Library-Info-App
//
//  Created by py on 2019/1/20.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var loginbtn: UIButton!
    
    @IBAction func loginClickOn(_ sender: Any) {
    
        print("Login test passed...")
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

