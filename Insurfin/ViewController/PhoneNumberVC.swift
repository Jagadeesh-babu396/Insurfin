//
//  PhoneNumberVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 16/02/23.
//

import UIKit
import UserNotifications

class PhoneNumberVC: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var phoneNumberView: UIView!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var phoneNumbErrorLabel: UILabel!
    
    @IBOutlet weak var numberStackView: UIStackView!
    @IBOutlet weak var ContinueAlpha: UIButton!
    @IBOutlet weak var welcomeView: UIView!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
        
        
            phoneNumberTextField.delegate = self
            phoneNumberTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
            continueButton.alpha = 0.5
            
            phoneNumberView.layer.borderWidth = 1
            phoneNumberView.layer.cornerRadius = 10
            phoneNumberView.layer.borderColor = UIColor(red: 0, green: 0.353, blue: 0.667, alpha: 1).cgColor
            
       self.welcomeView.endEditing(true)

            
        
//MARK: Set View Scrolling Part
        
        NotificationCenter.default.addObserver(self, selector: #selector(PhoneNumberVC.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(PhoneNumberVC.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        
        

        
        
        
    }
    

    
    @IBAction func continueOtpBtn(_ sender: Any) {
        
        
            
            let valid = Validation()
            if let phonetext = phoneNumberTextField.text {
                if valid.isValidPhone(phone: phonetext) {
                    let otpVC = storyboard?.instantiateViewController(withIdentifier: "OTPVerificationVC")
                    otpVC?.modalPresentationStyle = .fullScreen
                    present(otpVC!, animated: true)
                    
                    ContinueAlpha.isUserInteractionEnabled = false
                    
                } else {
                    ContinueAlpha.isUserInteractionEnabled = true
                    
                    phoneNumberView.layer.borderWidth = 1
                    phoneNumberView.layer.borderColor = UIColor.red.cgColor
                    phoneNumberView.layer.cornerRadius = 10
                    errorLabel.text = "Enter a valid 10 digit number"
                    
                    
                }
                
            }
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {

          if let text = textField.text, !text.isEmpty {
              continueButton.alpha = 1.0
              
            } else {
                continueButton.alpha = 0.5
          }
    }

    //MARK: Textfield editing to change characters
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let text = (phoneNumberTextField.text! as NSString).replacingCharacters(in: range, with: string)

        if text.isEmpty{
            continueButton.isEnabled = true
            continueButton.alpha = 0.5
        }else {
            continueButton.isEnabled = false
            continueButton.alpha = 1.0
            phoneNumberView.layer.borderWidth = 1
            phoneNumberView.layer.borderColor = UIColor(red: 0, green: 0.353, blue: 0.667, alpha: 1).cgColor
            phoneNumberView.layer.cornerRadius = 10
            phoneNumbErrorLabel.text = nil
        }
        
    
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        self.phoneNumberTextField = textField
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if (phoneNumberTextField.text?.isEmpty != nil) {
        }else {
            self.ContinueAlpha.isEnabled = true
        }
        
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
            
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
           return
        }
            self.welcomeView.frame.origin.y = 0 - keyboardSize.height
    }

    @objc func keyboardWillHide(notification: NSNotification) {
      self.welcomeView.frame.origin.y = 0
    }
//MARK: Phone number Validations
    
//    func otpAction() {
//
//
//    let valid = Validation()
//        if let phonetext = phoneNumberTF.text {
//            if valid.isValidPhone(phone: phonetext) {
//            let otpVC = storyboard?.instantiateViewController(withIdentifier: "OTPVerificationVC")
//                   otpVC?.modalPresentationStyle = .fullScreen
//                   present(otpVC!, animated: true)
//
//
//               } else {
//
////                   numberStackView.layer.borderWidth = 1
////                   numberStackView.layer.borderColor = UIColor.red.cgColor
////                   numberStackView.layer.cornerRadius = 10
////                   errorLabel.text = "Enter a valid 10 digit number"
//               }
//           }
//        }
     
   
    
}
