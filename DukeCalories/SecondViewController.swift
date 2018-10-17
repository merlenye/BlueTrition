//
//  SecondViewController.swift
//  DukeCalories
//
//  Created by Merle Nye on 10/13/18.
//  Copyright © 2018 Merle Nye. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
   

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Resturants"
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "WU.jpg")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


