//
//  ViewController.swift
//  RandomDataGenerator
//
//  Created by kumarlav0 on 03/08/2021.
//  Copyright (c) 2021 kumarlav0. All rights reserved.
//

import UIKit
import RandomDataGenerator

class myCell: UITableViewCell {
    @IBOutlet weak var gnderLbl: UILabel!
    @IBOutlet weak var salaryLbl: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var empIdLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    
}


class ViewController: UIViewController {
    @IBOutlet weak var mtTableView: UITableView!
    
    var myEmps = [Employee]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mtTableView.separatorColor = .clear
        
        
         myEmps = DataGenerator().createEmployees(numberOfEmploye: 10)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myEmps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mtTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myCell
        cell.nameLbl.text = self.myEmps[indexPath.row].empName?.uppercased()
        cell.imgView.image = self.myEmps[indexPath.row].empImage
        cell.emailLbl.text = "Email: " + self.myEmps[indexPath.row].empEmail! + " | " + self.myEmps[indexPath.row].empMobileNumber!
        cell.empIdLbl.text = "Emp_id: " + self.myEmps[indexPath.row].empID!
        cell.gnderLbl.text = "Gender: " + self.myEmps[indexPath.row].empGender!.rawValue + " | Age: \(self.myEmps[indexPath.row].empAge!)"
        cell.salaryLbl.text = "Salary: \(self.myEmps[indexPath.row].empMonthlySalary!)"
        cell.selectionStyle = .none
        return cell
    }
    
    
    
}
