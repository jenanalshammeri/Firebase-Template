//
//  StoreTableViewCell.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class StoreTableViewCell: UITableViewCell {

    var storeData : Store!
    var UserData: Store!
        
    {
        didSet{
            self.setStoreTVDetails()
        }
    }
    func setStoreTVDetails(){
        if let UserData = UserData {
        }
   }
    
    @IBOutlet weak var storeTVImg: UIImageView!
    @IBOutlet weak var storeTVName: UILabel!
    @IBOutlet weak var storeTVLocation: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /*func setStoreTVDetails()
    {
        storeTVImg.image = UIImage(named: storeData.name)
        storeTVName.text = storeData.name
        storeTVLocation.text = storeData.location
    }*/

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
