//
//  DailyIntakeViewController.swift
//  DukeCalories
//
//  Created by Merle Nye on 10/14/18.
//  Copyright © 2018 Merle Nye. All rights reserved.
//

import UIKit

class DailyIntakeViewController: UIViewController {

    let dailyFoodIntake: DailyFoodIntake! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //for meal in dailyFoodIntake.meals {
            //Create a new label
            //make its text the meal name, and calorie
          //  meal.name
            //meal.calorieCount
        //}
    }
    
    @IBOutlet weak var calorieDisp: UILabel!
    
    public func calorieUpdate() {
        calorieDisp.text = "Total Calories: \(finalcount)"
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
