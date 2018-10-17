//
//  ViewController.swift
//  DukeCalories
//
//  Created by Merle Nye on 10/13/18.
//  Copyright © 2018 Merle Nye. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section{
        case 0:
            cell.textLabel?.text = "Add a Meal"
        case 1:
            cell.textLabel?.text = "Daily Calories"
        case 2:
            cell.textLabel?.text = "My History"
        default:
            cell.textLabel?.text = "This Should not happen"
        }
        return cell
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HomeScreen"
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "WU.jpg")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    


}

