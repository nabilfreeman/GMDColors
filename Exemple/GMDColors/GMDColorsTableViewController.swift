//
//  ViewController.swift
//  GDMColors
//
//  Created by Vincenzo Favara on 12/10/15.
//  Copyright © 2015 Vincenzo Favara. All rights reserved.
//

import UIKit

class GMDColorsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    let gMDColors : Array = UIColor.GMDColors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gMDColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let color : UIColor = gMDColors[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = color
        cell.textLabel!.text = color.hexStringValue
        
        return cell
    }


}

