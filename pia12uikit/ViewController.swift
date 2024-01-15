//
//  ViewController.swift
//  pia12uikit
//
//  Created by BillU on 2024-01-15.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var niceLabel: UILabel!
    
    @IBOutlet weak var todoTableview: UITableView!
    
    @IBOutlet weak var todoTextfield: UITextField!
    
    var mycounter = 0
    var todo = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        todoTableview.dataSource = self
        todoTableview.delegate = self
        
    }

    
    
    @IBAction func addTodo(_ sender: Any) {
        todo.append(todoTextfield.text!)
        todoTableview.reloadData()
    }
    
    
    @IBAction func clickstuff(_ sender: Any) {
        
        mycounter = mycounter + 1
        
        niceLabel.text = String(mycounter)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return todo.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "fancyrow") as! TodoTableViewCell
        
        cell.todoLabel.text = todo[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("KLICK PÅ RAD!!!")
        print(indexPath.row)
        
        performSegue(withIdentifier: "goreadmore", sender: indexPath.row)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dest = segue.destination as! ReadmoreViewController
        
        dest.thetodo = todo[sender as! Int]
        
    }

}

