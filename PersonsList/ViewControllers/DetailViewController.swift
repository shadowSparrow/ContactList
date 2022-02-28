//
//  DetailViewController.swift
//  PersonsList
//
//  Created by mac on 27.02.2022.
//

import UIKit

class DetailViewController: UIViewController {

    var person: Person?
    var text: String?
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = person?.fullName
        phoneLabel.text = person?.phone
        emailLabel.text = person?.email
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
