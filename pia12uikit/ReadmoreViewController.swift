//
//  ReadmoreViewController.swift
//  pia12uikit
//
//  Created by BillU on 2024-01-15.
//

import UIKit

class ReadmoreViewController: UIViewController {

    
    @IBOutlet weak var bigLabel: UILabel!
    
    var thetodo = "HEJ"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bigLabel.text = thetodo
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
