//
//  ItemDetailPlainViewController.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class ItemDetailPlainViewController: UIViewController
{
    var productData : Product!

    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productsStore: UILabel!
    @IBOutlet weak var buyNowLabel: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureUI()
        setProductDetails()
        // Do any additional setup after loading the view.
    }
    
    
    func setProductDetails()
    {
        productName.text = productData.name
        productImg.image = UIImage(named: productData.name)
        productDescription.text = productData.description
        productsStore.text = productData.price
    }

    
    func configureUI()
    {
    productDescription.layer.cornerRadius = 20
    productsStore.layer.cornerRadius = 20
    buyNowLabel.layer.cornerRadius = 20
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
