//
//  PresionaldetalisVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 26/02/23.
//

import UIKit

class PersonaldetailsVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var presonalDetailsView: UIView!
    @IBOutlet weak var genderView: UIView!
    @IBOutlet weak var genderTableView: UITableView!
    
    
//MARK: Create a gender array
    
    var gender = ["Male","Female","Other"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
   
 // MARK: Calling CornerRadius
        
        self.cornerRadius()
        
 //MARK: Calling Textfield delegate and Textfield Datasource
        
        genderTableView.delegate = self
        genderTableView.dataSource = self
       
    }
    
    
    @IBAction func dismissBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

    
    @IBAction func continueBtn(_ sender: Any) {
       
//MARK: Setting next screen navigation
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AddressAndGSTVC") {
            self.present(vc, animated: true)
        }
        
    }
    
    @IBAction func selectGenderBtn(_ sender: Any) {
        
    }
    
    
  //MARK: Set CornerRadius View
    
    func cornerRadius() {
        
        self.presonalDetailsView.layer.cornerRadius = 40
        self.scrollView.layer.cornerRadius = 40
    }
}

//MARK: Extension View controller

extension PersonaldetailsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return gender.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = genderTableView.dequeueReusableCell(withIdentifier: "PermanentViewCell", for: indexPath) as? PermanentViewCell
        cell?.nameLabel.text = gender[indexPath.row]
        return cell!
    }
}



