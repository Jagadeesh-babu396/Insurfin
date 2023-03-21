//
//  RegistrationSuceessfulVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 27/02/23.
//

import UIKit

class RegistrationSuceessfulVC: UIViewController {
    
    
    @IBOutlet weak var registrationImage: UIImageView!
    @IBOutlet weak var approvalStatusView: UIView!
    @IBOutlet weak var approvalStatusLbl: UILabel!
    @IBOutlet weak var pendingLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

 //MARK: Calling CornerRadius Function
        
        self.cornerRadius()
       
    }
    
 //MARK: Set CornerRadius
    
    func cornerRadius() {
        
        registrationImage.layer.cornerRadius = 12
                
        approvalStatusView.layer.borderWidth = 1
        approvalStatusView.layer.borderColor = UIColor(red: 0.867, green: 0.867, blue: 0.867, alpha: 1).cgColor
        approvalStatusView.layer.cornerRadius = 12
        
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        
        
    }
    

}
