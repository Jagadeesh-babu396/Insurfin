//
//  ImageUploadVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 06/03/23.
//

import UIKit

class ImageUploadVC: UIViewController {
    
    var array = ["Take photo","Uploadn from gallery"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var uploadImage: UIImageView!
    @IBOutlet weak var UploadPictureView: UIView!
    @IBOutlet weak var BackgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 //MARK: Calling Delegate and dataSource
        

        tableView.dataSource = self
        tableView.delegate = self
        
 //MARK: Calling cornerRadius
        
        self.cornerRadius()
       
    }
    
    
    
    @IBAction func backBtn(_ sender: Any) {
   
  //MARK: Set dismiss button
        self.dismiss(animated: true)
        
        
    }
    
    @IBAction func uploadImageBtn(_ sender: Any) {
        
//MARK: Set view hidden and unhidden
        
        if UploadPictureView.isHidden == true {
            UploadPictureView.isHidden = false
        }else {
            UploadPictureView.isHidden = true
        }
            
        
    }
    
    @IBAction func cancelViewBtn(_ sender: Any) {
        
//MARK: Set View remove
        
        self.UploadPictureView.removeFromSuperview()
        
        
    }
    
  //MARK: Set cornerRadius
    
    func cornerRadius(){
        
        BackgroundView.layer.cornerRadius = 40
        
        UploadPictureView.layer.cornerRadius = 20
        
        
        
    }
    
    
    
}

// MARK: Set TableviewDelegate and TableViewDataSource

extension ImageUploadVC: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageUploadCell")as? ImageUploadCell
        cell?.imageUploadLbl.text = array[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
            let alert = UIAlertController(title: "Insurfin Would Like to Access Your Camera", message: "Allow access to camera and to upload photos from your library", preferredStyle: .alert)
            let dontAllow = UIAlertAction(title: "Don'tAllow", style: .default) { action in
                print(action)
            }
            let allow = UIAlertAction(title: "Allow", style: .default) { profile in
                print(profile)
            }
            
            alert.addAction(dontAllow)
            alert.addAction(allow)
            self.present(alert, animated: true)
        }
    }
    
}
