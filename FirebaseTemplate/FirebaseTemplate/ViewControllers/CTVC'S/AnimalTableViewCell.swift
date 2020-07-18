//
//  AnimalTableViewCell.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell
{
    
    var animalData : Animal!
    
    var UserData: Animal!{
        didSet{
            self.setAnimalsTVDetails()
        }
    }
    func setAnimalsTVDetails(){
        if let UserData = UserData {
        }
    }
    
    @IBOutlet weak var animalTVImg: UIImageView!
    @IBOutlet weak var animalTVName: UILabel!
    @IBOutlet weak var animalTVAge: UILabel!
    @IBOutlet weak var animalTVShelter: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
        // Initialization code
    }

   /*func setAnimalsTVDetails()
    {
        animalTVImg.image = UIImage(named: animalData.name)
        animalTVName.text = animalData.name
        animalTVAge.text = animalData.age
        animalTVShelter.text = animalData.shelter
    }*/
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    

     }
}
