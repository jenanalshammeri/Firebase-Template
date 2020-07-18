//
//  ProductTableViewController.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    var storeData : Store!
    @IBOutlet weak var storeName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStoreName()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func setStoreName()
    {
       storeName.text = storeData.name
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductTableViewCell

        // Configure the cell...
        cell.imageView?.image = UIImage(named: productData[indexPath.row].name)
        cell.productTVPrice.text = productData[indexPath.row].price
        cell.productTVBrand.text = productData[indexPath.row].brand
        cell.productTVName.text = productData[indexPath.row].name
        //cell.storeTVName.text = storeData[indexPath.row].name
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     var selectedProduct = productData[indexPath.row]
        performSegue(withIdentifier: "toProductDetail", sender: selectedProduct)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    { let nextDetailVC = segue.destination as! ItemDetailPlainViewController
        nextDetailVC.productData = sender as! Product
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
