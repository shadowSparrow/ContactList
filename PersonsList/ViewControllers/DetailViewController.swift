//
//  DetailViewController.swift
//  PersonsList
//
//  Created by mac on 25.02.2022.
//

import UIKit

class DetailViewController: UIViewController {

    var person: Person!
    
    
    
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let person = person else { return }
        
        self.title = "\(person.name)  \(person.surname)"
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        
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
