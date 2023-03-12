//
//  BaseViewController.swift
//  InstaTimeLine
//
//  Created by Akramjon on 10/03/23.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func appDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    func sceneDelegate() -> SceneDelegate {
        return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
    }
}
