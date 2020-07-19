//
//  AnimalDetailPlainViewController.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class AnimalDetailPlainViewController: UIViewController
{
    var animalData : Animal!
    
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalImg: UIImageView!
    @IBOutlet weak var animalDescription: UILabel!
    @IBOutlet weak var animalShelter: UILabel!
    @IBOutlet weak var bookAppt: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureUI()
        self.navigationItem.title = animalData.name
        setAnimalsDetails()
        // Do any additional setup after loading the view.
    }
    
    
    func setAnimalsDetails()
    {
        //animalName.text = animalData.name
        animalImg.image = UIImage(named: animalData.name)
        animalDescription.text = animalData.description
        animalShelter.text = animalData.shelter
    }
    
    
    func configureUI(){
    animalDescription.layer.cornerRadius = 20
    animalShelter.layer.cornerRadius = 20
    bookAppt.layer.cornerRadius = 20
    }
    
    
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
}
