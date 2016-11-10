//
//  ViewController.swift
//  ACMWeather
//
//  Created by Ethan Gill on 11/3/16.
//  Copyright © 2016 Ethan Gill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempLabel.text = "Press Refresh"
        conditionLabel.text = "Press Refresh"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func refreshButtonPressed(_ sender: Any) {
        tempLabel.text = "Loading"
        conditionLabel.text = "Loading"
        
        //fetch weather
        Model.sharedInstance.fetchWeather(locationCode: Model.sharedInstance.locationURL)
    }

}

