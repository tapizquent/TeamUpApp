//
//  MainVC.swift
//  TeamUpApp
//
//  Created by Jose Tapizquent on 8/30/17.
//  Copyright © 2017 Jose Tapizquent. All rights reserved.
//

import UIKit
import Spring
import Firebase
import SwiftVideoBackground
import SwiftKeychainWrapper
import Hero

class MainVC: UIViewController {
    
    @IBOutlet weak var bottomBackImg: UIView!
    @IBOutlet weak var newAccBtn: circleButton!
    @IBOutlet var backgroundVideo: BackgroundVideo!
    
    // Variables

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //applyBackgroundtoView()
        
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        isHeroEnabled = true
        
    }
    
    @IBAction func newAccBtnPressed(_ sender: Any) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Applying the image of city to background of view controller. Will animate later.
    
    override func viewWillAppear(_ animated: Bool) {
        backgroundVideo.createBackgroundVideo(name: "Carousel", type: "mp4")
        bottomBackImg.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "Bottom-view-back"))
    }

    func firebaseAuth(_ credential: AuthCredential){
        Auth.auth().signIn(with: credential, completion: {(user, error) in
            if error != nil {
                print("NOTE(ERROR): Unable to authenticate with Firebase- \(String(describing: error))")
            } else {
                print("NOTE: Successfully Authenticated with Firebase")
            }
        })
    }
    
    func completeSignIn(id: String){
        KeychainWrapper.standard.set(id, forKey: KEY_UID)
        

    }

    //MARK: Actions
    
}

