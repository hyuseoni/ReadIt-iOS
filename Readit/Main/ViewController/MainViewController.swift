//
//  MainViewController.swift
//  readit_test
//
//  Created by 권서연 on 01/07/2019.
//  Copyright © 2019 권서연. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var contentsTV: UITableView!
    @IBOutlet var profileImg: UIImageView!
    @IBOutlet var orangeCircle: UIView!
    @IBOutlet var whiteBox: UIView!
    @IBOutlet var categoryCV: UICollectionView!
    let cellSpacingHeight: CGFloat = 6
    var categoryIdx: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImgRounded()
        setViewRounded()
        registerTVC()
        registerCVC()
        contentsTV.delegate = self
        contentsTV.dataSource = self
    
        categoryCV.delegate = self
        categoryCV.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    func setImgRounded() {
        self.profileImg.roundedImage()
    }
    
    func setViewRounded() {
        self.orangeCircle.makeRounded(cornerRadius: 3.5)
        self.whiteBox.makeRounded(cornerRadius: 12.0)
    }

    func registerTVC() {
        
        /*
         xib 로 만들어진 UITableViewCell 을 사용하기 위해서는 아래와 같은 절차가 필요합니다.
         nibName 에는 *.xib 의 이름을 입력합니다.
         forCellReuseIdentifier 에는 *.xib 의 reuseIdentifier 를 입력합니다.
         */
        let nibName = UINib(nibName: "contentsTVCTableViewCell", bundle: nil)
        contentsTV.register(nibName, forCellReuseIdentifier: "contentsTVCTableViewCell")
    }
    
    func registerCVC() {
        let cvcNibName = UINib(nibName: "categoryCVC", bundle: nil)
        categoryCV.register(cvcNibName, forCellWithReuseIdentifier: "categoryCVC")
        
    }
}

extension MainViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = contentsTV.dequeueReusableCell(withIdentifier: "contentsTVCTableViewCell") as! contentsTVCTableViewCell
//        cell.selectionStyle = .none
        return cell
    }
}
extension MainViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let dvc = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        
        //        let episode = episodeList[indexPath.row]
        
    }
}


extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCV.dequeueReusableCell(withReuseIdentifier: "categoryCVC", for: indexPath) as! categoryCVC
        cell.category.setTitle("전체", for: .normal)
        
        return cell
    }
}

extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let dvc = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = 50
        let height: CGFloat = 30
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    }
}
