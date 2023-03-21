//
//  BankAccountCell.swift
//  Insurfin
//
//  Created by Jagadeesh on 28/02/23.
//

import UIKit

class BankAccountCell: UITableViewCell {
    
    
    @IBOutlet weak var hideBtnImage: UIButton!
    @IBOutlet weak var bankView: UIView!
    @IBOutlet weak var AccountnumberTf: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    @IBAction func panUploadBtn(_ sender: Any) {
        
    }
    
    
    @IBAction func hideActionBtn(_ sender: Any) {
        
        if bankView.isHidden == true {
            hideBtnImage.setImage(UIImage(named: "ColorUpIcon"), for: .normal)
            
            bankView.isHidden = false
        }else {
            bankView.isHidden = true
            hideBtnImage.setImage(UIImage(named: "DowncolorIcon"), for: .normal)
        }
        
        
        
    }
    
}
