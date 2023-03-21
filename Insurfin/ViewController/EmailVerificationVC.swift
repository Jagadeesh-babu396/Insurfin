//
//  EmailVerificationVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 13/03/23.
//

import UIKit

class EmailVerificationVC: UIViewController {
    
   
    @IBOutlet weak var sucessView: UIView!
    @IBOutlet weak var emailVerificationView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
 //MARK: Calling CornerRadius Func
        
        self.cornerRadius()
        
        

        }
    
//MARK: Set cornerRadius
    
    func cornerRadius() {
        
        self.sucessView.layer.cornerRadius = 40
        
        self.emailVerificationView.layer.cornerRadius = 25
        
        
    }
    
    

    @IBAction func backBtn(_ sender: Any) {
        
        
    }
    
    @IBAction func continueBtn(_ sender: Any) {
        
        
    }
    
    @IBAction func sucessViewBtn(_ sender: Any) {
        
        
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        
        if emailVerificationView.isHidden == true {
            emailVerificationView.isHidden = false
        }else {
            emailVerificationView.isHidden = true
        }
        
    }
    
    @IBAction func sendAgainBtn(_ sender: Any) {
        
    }
    
}
