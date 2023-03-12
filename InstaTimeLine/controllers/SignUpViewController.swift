//
//  SignUpViewController.swift
//  InstaTimeLine
//
//  Created by Akramjon on 25/02/23.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

// MARK: - METHOD
    
    
    
    
//MARK: - ACTION
    
    @IBAction func onSignedUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSignedIn(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
}
