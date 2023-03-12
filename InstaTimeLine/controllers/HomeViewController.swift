//
//  HomeViewController.swift
//  InstaTimeLine
//
//  Created by Akramjon on 25/02/23.
//

import UIKit

class HomeViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    // MARK: - METHOD
    
    func initView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
        setNavigationBar()
        
        items.append(Post(fullname: "Sherzod", user_img: "im_person1", post_img: "im_post1"))
        items.append(Post(fullname: "Malika", user_img: "im_person2", post_img: "im_post2"))
    }
    
    func setNavigationBar(){
        let camera = UIImage(systemName: "circle.rectangle.dashed")
        let send = UIImage(systemName: "paperplane.fill")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        
        title = "Instagram"
        
    }
    // MARK: - ACTION
    
    @objc func leftTapped(){
        
    }
    
    @objc func rightTapped(){
        
    }
    
    // MARK: - TABLE VIEW
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as!  PostTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
        
    }
}
