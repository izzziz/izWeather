//
//  ViewController.swift
//  izWeather
//
//  Created by Izzat Jabali on 2/3/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let locations = ["Sydney", "New York", "Toronto", "Mexico", "Dubai", "Tokio", "London", "Paris", "Barcelona", "Moscow", "Singapore", "Los Angeles", "Madrid", "Rome", "Chicago", "San Francisco", "Berlin", "Doha", "Melbourne"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell Pressed")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = locations[indexPath.row]
        return cell
    }
    
}

