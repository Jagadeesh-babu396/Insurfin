//
//  OTPVerificationVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 16/02/23.
//

import UIKit

class OTPVerificationVC: UIViewController {
    

    @IBOutlet var otpView: UIView!
    @IBOutlet weak var otpTF1: UITextField!
    @IBOutlet weak var otpTF2: UITextField!
    @IBOutlet weak var otpTF3: UITextField!
    @IBOutlet weak var otpTF4: UITextField!
    @IBOutlet weak var otpTF5: UITextField!
    @IBOutlet weak var otpTF6: UITextField!
    @IBOutlet weak var otpBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

   //Marks:- scrolling view
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(OTPVerificationVC.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(OTPVerificationVC.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    

    @objc func keyboardWillShow(notification: NSNotification) {
            
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
           return
        }
            self.otpView.frame.origin.y = 5 - keyboardSize.height
    }

    @objc func keyboardWillHide(notification: NSNotification) {
      self.otpView.frame.origin.y = 5
    }
    
    
    @IBAction func backActionBtn(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
    
    @IBAction func ContinueActionBtn(_ sender: Any) {
        
        
        let wlecVC = storyboard?.instantiateViewController(withIdentifier: "WelcomeScreenVC")
       wlecVC?.modalPresentationStyle = .fullScreen
        self.present(wlecVC!, animated: true)
        
    }
    
    @IBAction func sendAgainBtn(_ sender: Any) {
        
        
    }
    
}
