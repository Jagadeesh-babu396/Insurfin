//
//  PermanentAddressVC.swift
//  Insurfin
//
//  Created by Jagadeesh on 28/02/23.
//

import UIKit

class PermanentAddressVC: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var model = [Model]()
    var hiddensection = Set<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

//        model.append(Model(title: "Current", data: ["Addressline 1*","Address line 2*","City","State","Country","Pincode","GST number(if applicable)"], placeholder: ["Enter address line 1*","Enter address line 2*","Enter city*","Select state*","India","Enter Pincode","Enter GST number"]))
//        model.append(Model(title: "", data: ["Addressline 1*","Address line 2*","City","State","Country","Pincode","GST number(if applicable)"], placeholder: ["Enter address line 1*","Enter address line 2*","Enter city*","Select state*","India","Enter Pincode","Enter GST number"]))
        
        model.append(Model(title: "Communication Address & GST info",nametitle: ["Address line 1*","Address line 2*","City*","State*","Country","Pincode"], placeholder: ["Enter address line 1","Enter address line 2","Enter city","Select state","india","Enter pincode"]))
        
        model.append(Model(title: "Permanent Address",nametitle: ["Address line 1*","Address line 2*","City*","State*","Country","Pincode"], placeholder: ["Enter address line 1","Enter address line 2","Enter city","Select state","india","Enter pincode"]))
        
        
       
        tableview.delegate = self
        tableview.dataSource = self
       
    }
    
    
    
    

}

extension PermanentAddressVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if self.hiddensection.contains(section) {
               return 0
           }

        return model[section].nametitle.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "PermanentViewCell") as? PermanentViewCell
        cell?.DetailstitleLbl.text = model [indexPath.section].nametitle[indexPath.row]
        cell?.detailsTf.placeholder = model[indexPath.section].placeholder[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
                
                let label = UILabel()
                label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        label.text = model[section].title
        label.font =  UIFont(name: "DMSans-Bold", size: 18)
                label.textColor = .black
                
                headerView.addSubview(label)
                
                return headerView
//        let button = UIButton()
//        button.backgroundColor = .white
//        button.tag = section
//        button.setTitle(model[section].title, for: .normal)
//        button.addTarget(self, action: #selector(hideSection(sender:)), for: .touchUpInside)
//        return button
    }
    
    @objc func hideSection(sender: UIButton) {
        
        let section = sender.tag
        
        func indexPathsForSection() -> [IndexPath] {
            var indexPaths = [IndexPath]()
            
            for row in 0..<self.model[section].nametitle.count {
                indexPaths.append(IndexPath(row: row,
                                            section: section))
            }
            
            return indexPaths
        }
        
        if self.hiddensection.contains(section) {
            self.hiddensection.remove(section)
            self.tableview.insertRows(at: indexPathsForSection(),
                                      with: .fade)
        } else {
            self.hiddensection.insert(section)
            self.tableview.deleteRows(at: indexPathsForSection(),with: .fade)
            
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
        
    }
    
}


