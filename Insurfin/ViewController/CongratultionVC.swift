//
//  CongratultionVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 27/02/23.
//

import UIKit

class CongratultionVC: UIViewController {
    
    
    
    @IBOutlet weak var congratulationImage: UIImageView!
    @IBOutlet weak var approvalStatusLbl: UILabel!
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var approvedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
// MARK: Calling CornerRadius Function
        
        self.cornerRadius()

        
    }
    
    func cornerRadius(){
        
// MARK: Set Image CornerRadius
        
        congratulationImage.layer.cornerRadius = 12
        
        
// MARK: Set View CornerRadius
        
        statusView.layer.borderWidth = 1
        statusView.layer.borderColor = UIColor(red: 0.867, green: 0.867, blue: 0.867, alpha: 1).cgColor
        statusView.layer.cornerRadius = 12
        
    }
    
    
    @IBAction func startedBtn(_ sender: Any) {
        
        
    }
    

    @IBAction func backBtn(_ sender: Any) {
        
    }
    
    
    
}
