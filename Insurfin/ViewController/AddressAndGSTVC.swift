//
//  AddressAndGSTVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 26/02/23.
//

import UIKit

class AddressAndGSTVC: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var currentAddressView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollview.layer.cornerRadius = 40
        currentAddressView.layer.cornerRadius = 40

    }
    
    @IBAction func BackBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

    @IBAction func addPermanentaddressBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "PermanentAddressVC")
        self.present(vc!, animated: true)
        
        
    }
    
    @IBAction func continueBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "KYCVerficationVC")
        self.present(vc!, animated: true)
        
    }
    
    
}

