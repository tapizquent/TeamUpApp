//
//  LoginVC.swift
//  TeamUpApp
//
//  Created by Jose Tapizquent on 8/31/17.
//  Copyright © 2017 Jose Tapizquent. All rights reserved.
//

import UIKit
import Firebase


class LoginVC: UIViewController {
    @IBOutlet weak var backBtn: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        backBtn.isUserInteractionEnabled = true
        backBtn.addGestureRecognizer(tapGestureRecognizer)
        backBtn.tintColor = UIColor(red: 244.0, green: 245.0, blue: 248.0, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "City Img Background"))
    }

    @IBAction func continueBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        self.dismiss(animated: true, completion: nil)
        // Your action
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
