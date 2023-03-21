//
//  WelcomeScreenVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 24/02/23.
//

import UIKit

class WelcomeScreenVC: UIViewController {
    
    @IBOutlet weak var welcomeImage: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeImage.layer.borderWidth = 0.5
        welcomeImage.layer.borderColor = UIColor.white.cgColor
        welcomeImage.layer.cornerRadius = 20
        
        
        
    
    }
    
    @IBAction func AssociateBtn(_ sender: Any) {
        
        let rgstrVC = storyboard?.instantiateViewController(withIdentifier: "PersonaldetailsVC")
        rgstrVC?.modalPresentationStyle = .fullScreen
        self.present(rgstrVC!, animated: true)
        
    }
    

}
