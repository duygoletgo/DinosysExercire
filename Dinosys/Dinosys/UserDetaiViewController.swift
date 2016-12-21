//
//  UserDetaiViewController.swift
//  Dinosys
//
//  Created by Duy on 12/21/16.
//  Copyright © 2016 QuanChung. All rights reserved.
//

import UIKit

class UserDetaiViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    var userDetail:ModelUser! = nil
    
    @IBOutlet weak var coverAvarta: UIImageView!
    @IBOutlet weak var colectionview: UICollectionView!
    let userTemp = AnimationAvartarConfig().createUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colectionview.dataSource = self
        self.colectionview.delegate = self
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        let addBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(UserDetaiViewController.tapAddBtn))
        self.navigationItem.rightBarButtonItem = addBtn
        // Do any additional setup after loading the view.
        self.coverAvarta.image = UIImage(named: userDetail.avatarUser)
        
    }

    func tapAddBtn() {
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.userTemp.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UserDetailCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collecCell", for: indexPath) as! UserDetailCollectionViewCell
        let user = userTemp[indexPath.row] as! ModelUser
        cell.imvAvarta.image = UIImage(named: user.avatarUser)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
