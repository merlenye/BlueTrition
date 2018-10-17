//
//  ABPTableViewController.swift
//  DukeCalories
//
//  Created by Merle Nye on 10/13/18.
//  Copyright © 2018 Merle Nye. All rights reserved.
//

import UIKit

class ABPTableViewController: UITableViewController {
    var meal = [ABP]()
    let dailyFoodIntake = DailyFoodIntake()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadABP()
    }

    // MARK: - Table view data source

    @IBOutlet var maketable: UITableView!
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meal.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ABPTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ABPTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ABPTableViewCell.")
        }
        
        let meals = meal[indexPath.row]
        
        cell.namelabel.text = meals.name
        cell.photoImageView.image = meals.photo
//        cell.ratingControl.rating = meals.rating
        
        return cell
    }
    
    @IBAction func updatingcalories(_ sender: Any) {
        finalcount += 500
    }
    private func loadABP(){
        let photo1 = UIImage(named: "TurkeyClub.jpg")
        let photo2 = UIImage(named: "Parfait.jpg")
        let photo3 = UIImage(named: "turkeycheddarpicnic.jpg")
        let photo4 = UIImage(named: "ChickenAdvocado.jpg")
        let photo5 = UIImage(named: "Caprese Chicken.jpg")
        let meal1 = ABP(name: "Turkey Club", photo: photo1, calorieCount: 100)
        let meal2 = ABP(name: "Parfait", photo: photo2, calorieCount: 200)
        let meal3 = ABP(name: "Turkey & Cheddar", photo: photo3, calorieCount: 300)
        let meal4 = ABP(name: "Chicken Avocado",photo: photo4, calorieCount:500)
        let meal5 = ABP(name: "Caprese Chicken",photo: photo5, calorieCount:500)
        dailyFoodIntake.addMeal(meal: meal1)
        dailyFoodIntake.addMeal(meal: meal2)
        dailyFoodIntake.addMeal(meal: meal3)
        self.meal.append(meal1)
        self.meal.append(meal2)
        self.meal.append(meal3)
        self.meal.append(meal4)
        self.meal.append(meal5)
    }
    
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

