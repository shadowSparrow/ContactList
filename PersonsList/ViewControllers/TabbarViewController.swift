//
//  TabbarViewController.swift
//  PersonsList
//
//  Created by mac on 27.02.2022.
//

import UIKit

class TabbarViewController: UITabBarController {

    
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
        // Do any additional setup after loading the view.
    }
    
    private func setupViewControllers() {
        
        let navigationVC = viewControllers?.first as? UINavigationController
        
        if let contactsVC = navigationVC?.topViewController as? ContactsViewController {
            //contactsVC.text = "Passed"
            contactsVC.persons = persons
        }
        
        let navigationVC2 = viewControllers?.last as? UINavigationController
        
        if let sectionVC = navigationVC2?.topViewController as? SectionViewController {
            sectionVC.text = "Passed1"
            sectionVC.persons = persons
        }
        
        
        
        
        
        
        
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
