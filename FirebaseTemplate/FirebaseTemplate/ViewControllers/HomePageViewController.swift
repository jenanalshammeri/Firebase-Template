//
//  HomePageViewController.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/14/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    
    @IBAction func pressedAdoption(_ sender: Any) {}
    @IBAction func pressedShop(_ sender: Any) {}
    
   @IBAction func signOut(){
        let alertController = UIAlertController(title: "Sign out!", message: "Are you sure you want to sign out?" , preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(cancelAction)
        let okAction = UIAlertAction(title: "Sign out!", style: .destructive) { action in
            Networking.signOut(success: {
                // Goes back to the previous presented Modally view controller (SignInVC)
                self.dismiss(animated: true, completion: nil)
            })
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    /*override func prepare(for segue: UIIStoryboardSegue, sender : Any?){
        var selectedCategory : String = ""
    }
    guard let*/
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
