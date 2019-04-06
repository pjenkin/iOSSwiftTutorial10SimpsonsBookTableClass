//
//  ViewController.swift
//  Simpsons book
//
//  Created by Peter Jenkin on 05/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class tableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var simpsons = [Simpson]()        // array of Simpson objects
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // table view setup
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // create our characters
        
        let homer = Simpson()
        
        homer.name = "Homer Simpson"
        homer.occupation = "Safety Inspector"
        homer.image = UIImage(named: "homer.png")!

        let bart = Simpson()
        
        bart.name = "Bart Simpson"
        bart.occupation = "Student"
        bart.image = UIImage(named: "bart.png")!

        let marge = Simpson()
        
        marge.name = "Marge Simpson"
        marge.occupation = "Homer Maker"
        marge.image = UIImage(named: "marge.png")!

        let lisa = Simpson()
        
        lisa.name = "Lisa Simpson"
        lisa.occupation = "Student"
        lisa.image = UIImage(named: "lisa.png")!
        
        let moe = Simpson()
        
        moe.name = "Moe Szyslak"
        moe.occupation = "Barkeep"
        moe.image = UIImage(named: "moe.jpeg")!
        
        let nick = Simpson()
        
        nick.name = "Nick Riviera"
        nick.occupation = "Doctor Apparently"
        nick.image = UIImage(named: "nick.png")!
        
        simpsons.append(homer)
        simpsons.append(bart)
        simpsons.append(marge)
        simpsons.append(lisa)
        simpsons.append(moe)
        simpsons.append(nick)
        

    }


    // NB may need in XCode to overwrite auto-completed parameters such as 'tableView:' to avoid an 'unnamed parameters' or 'explicit' warning
    
    // adding delegates to display rows and their actions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsons[indexPath.row].name
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

