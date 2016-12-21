//
//  ViewController.swift
//  Dinosys
//
//  Created by Duy on 12/16/16.
//  Copyright © 2016 QuanChung. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var bubbleInfoArray : NSArray = []
    var bubbleViewsArray: NSMutableArray = []
    var heightHeader = 20
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var constraintTop: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    let userTemp = AnimationAvartarConfig().createUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        //self.headerView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Create avartar on headerview
    func createAvarta(heightView : CGFloat)
    {
        let viewUser = AnimationAvartarConfig()
        self.bubbleInfoArray = viewUser.createAvartar()
        for i in 0...self.bubbleInfoArray.count-1
        {
            let temp = self.bubbleInfoArray[i] as! AnimationAvartarInfo
            let viewUser = temp.imvAvarta
            viewUser.frame = temp.frame
            viewUser.layer.cornerRadius = viewUser.frame.size.width/2
            viewUser.clipsToBounds = true
            viewUser.tag = i
            let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapAvatar))
            viewUser.addGestureRecognizer(tap)
            viewUser.isUserInteractionEnabled = true
            if (heightView > (viewUser.frame.origin.y + viewUser.frame.height)) {
                self.headerView .addSubview(viewUser)
            }
        }
    }
    
    // handle tap avarta on headerview
    func handleTapAvatar(_ sender: UITapGestureRecognizer){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "detailVC") as! UserDetaiViewController
        vc.userDetail = userTemp[(sender.view?.tag)!] as! ModelUser
        let transition:CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromTop
        self.navigationController!.view.layer.add(transition, forKey: kCATransition)
        self.navigationController?.pushViewController(vc, animated: false)
    }
    func removeSubview(heightView : CGFloat){
        for view in self.headerView.subviews {
            if(heightView < (view.frame.origin.y + view.frame.height) )
            {
                view.removeFromSuperview()
            }
        }
    }
    
    
    
    // config tablewview
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userTemp.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UserTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UserTableViewCell
        let user = userTemp[indexPath.row] as! ModelUser
        cell.imvAvarta.image = UIImage(named: user.avatarUser)
        cell.nameUser.text = user.nameUser
        cell.emailUser.text = user.emailUser
        return cell
    }
    func tableView( _ tableView : UITableView,  titleForHeaderInSection section: Int)->String? {
        return "People"
    }
    
    private func tableView (tableView:UITableView , heightForHeaderInSection section:Int)->Float
    {
        return 20.0
    }
    
     func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let screenSize = UIScreen.main.bounds
        _ = screenSize.width
        let screenHeight = screenSize.height
        let scrollOffsetY = scrollView.contentOffset.y;
        print("scrollOffsetY view",scrollOffsetY)
        if -scrollOffsetY > 20 {

            if self.constraintTop.constant < screenHeight-100 {
                self.constraintTop.constant+=20
                createAvarta(heightView: self.constraintTop.constant)
            }
        }
        if scrollOffsetY > 20 {
            print("scrollOffsetY view",scrollOffsetY)
            if self.constraintTop.constant>=20 {
                self.constraintTop.constant-=15
                removeSubview(heightView: self.constraintTop.constant)
            }
        }
    }
    
    
    // Animation avarta if need 
    func scaleAnimaton(viewSacle : UIView)
    {
        UIView.animate(withDuration: 0.3 ,
                                   animations: {
                                    viewSacle.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            },
                                   completion: { finish in
                                    UIView.animate(withDuration: 0.6){
                                        viewSacle.transform = CGAffineTransform.identity
                                    }
        })
    }
    
    
}

