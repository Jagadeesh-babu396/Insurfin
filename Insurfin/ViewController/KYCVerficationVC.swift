//
//  KYCVerficationVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 26/02/23.
//

import UIKit

class KYCVerficationVC: UIViewController {
 
    @IBOutlet weak var aadhaarTableView: UITableView!
    @IBOutlet weak var aadhaarBtn: UIButton!

    
    var hiddensection = Set<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aadhaarTableView.delegate = self
        aadhaarTableView.dataSource = self
        
        
      
    }
    
    
    
    
    @IBAction func continueBtn(_ sender: Any) {
 
        
    }
    
    @IBAction func addharHideBtn(_ sender: Any) {
        
        if aadhaarTableView.isHidden {
            animate(toogle: false)
        }else {
            animate(toogle: true)
        }
    }
    
    func animate(toogle: Bool){
        
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.aadhaarTableView.isHidden = true
                self.aadhaarBtn.setImage(UIImage(named: "DowncolorIcon"), for: .normal)
            }
        }else {
            UIView.animate(withDuration: 0.3) {
                self.aadhaarTableView.isHidden = false
                self.aadhaarBtn.setImage(UIImage(named: "ColorUpIcon"), for: .normal)
            }
        }
    }
    
}

extension KYCVerficationVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = aadhaarTableView.dequeueReusableCell(withIdentifier: "KYCVerificationCell") as? KYCVerificationCell
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}


