//
//  AnimalTableViewController.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "adoptCell", for: indexPath) as! AnimalTableViewCell

        // Configure the cell...
       cell.imageView?.image = UIImage(named: animalData[indexPath.row].name)
        cell.animalTVName.text = animalData[indexPath.row].name
        cell.animalTVAge.text = animalData[indexPath.row].age
        cell.animalTVShelter.text = animalData[indexPath.row].shelter

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var selectedAnimal = animalData[indexPath.row]
           performSegue(withIdentifier: "toAnimalDetail", sender: selectedAnimal)
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
        { let nextVC = segue.destination as! AnimalDetailPlainViewController
            nextVC.animalData = sender as! Animal
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
    
}
