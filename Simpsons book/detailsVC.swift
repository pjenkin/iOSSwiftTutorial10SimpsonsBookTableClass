//
//  detailsVC.swift
//  Simpsons book
//
//  Created by Peter Jenkin on 06/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var ageLabel: UILabel!
    // actually occupation instead of age - REMmed out after connection deleted
    @IBOutlet weak var occupationLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedSimpson = Simpson()     // for taking data from 1st view
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
