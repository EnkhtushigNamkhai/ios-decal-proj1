//
//  MasterViewController.swift
//  Project1
//
//  Created by Enkhtushig Namkhai on 10/19/16.
//  Copyright © 2016 EnkhtushigNamkhai. All rights reserved.
//

import UIKit


class MasterViewController: UITableViewController{
    var model = [[String]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = UserDefaults.standard.object(forKey: "final_list") as! [[String]]
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDID APPEAR")
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NewTaskSegue" {
        }
        else if segue.identifier == "StatSegue" {
            let vc = segue.destination as! StatViewController
            vc.num = model.count
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of rows
        
        return model.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        let list = UserDefaults.standard.object(forKey: "list") as! [[String]]
        let task = model[indexPath.row]
        cell.textLabel?.text = task[0]
        cell.detailTextLabel?.text = task[1]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
         
            model.remove(at: indexPath.row)
            UserDefaults.standard.set(model, forKey: "final_list")
            tableView.reloadData()
        }
    }
}
