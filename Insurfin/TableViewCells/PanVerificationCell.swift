//
//  PanVerificationCell.swift
//  Insurfin
//
//  Created by Jagadeesh on 28/02/23.
//

import UIKit

class PanVerificationCell: UITableViewCell {

    @IBOutlet weak var panView: UIView!
    @IBOutlet weak var panTF: UITextField!
    @IBOutlet weak var pantitle: UILabel!
    @IBOutlet weak var hideBtnImage: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    
    @IBAction func hideBtnActtion(_ sender: Any) {
        
        if panView.isHidden == true {
            hideBtnImage.setImage(UIImage(named: "ColorUpIcon"), for: .normal)
            
            panView.isHidden = false
        }else {
            panView.isHidden = true
            hideBtnImage.setImage(UIImage(named: "DowncolorIcon"), for: .normal)
        }
        
        
    }
    
    @IBAction func uploadfileBtn(_ sender: Any) {
    }
}
