//
//  ProductTableViewCell.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    var productData : Product!
    var storeData : Store!
    
    var UserData: Product!{
        didSet{
            self.setProductTVDetails()
        }
    }
    func setProductTVDetails(){
        if let UserData = UserData {
        }
    }
    
    
    @IBOutlet weak var productTVImg: UIImageView!
    @IBOutlet weak var storeTVName: UILabel!
    @IBOutlet weak var productTVName: UILabel!
    @IBOutlet weak var productTVPrice: UILabel!
    @IBOutlet weak var productTVBrand: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /*func setProductTVDetails()
    {
        productTVImg.image = UIImage(named: productData.name)
        //storeTVName.text = storeData.name
        productTVName.text = productData.name
        productTVPrice.text = productData.price
        productTVBrand.text = productData.brand
    }*/
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
