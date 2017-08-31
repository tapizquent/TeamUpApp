//
//  MainVC.swift
//  TeamUpApp
//
//  Created by Jose Tapizquent on 8/30/17.
//  Copyright © 2017 Jose Tapizquent. All rights reserved.
//

import UIKit
import Spring

class MainVC: UIViewController {
    
    @IBOutlet weak var newAccBtn: SpringButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        applyBackgroundtoView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func applyBackgroundtoView(){
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "City Img Background"))
    }
    @IBAction func newAccBtnPressed(_ sender: Any) {
        print("Create account pressed")
        newAccBtn.animation = "flash"
        newAccBtn.animate()
    }
    
}

