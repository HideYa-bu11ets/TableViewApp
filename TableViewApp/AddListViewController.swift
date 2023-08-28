//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 沼田英也 on 2023/08/28.
//

import UIKit

class AddListViewController: UIViewController {
  
    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = [] //入力したリストを格納する配列
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard
        if userDefaults.object(forKey: "add") != nil{
            taskArray = userDefaults.object(forKey: "add") as! [String]
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTask(_ sender: UIButton) {
        let userDefaults = UserDefaults.standard
        taskArray.append(addTextField.text!)
        userDefaults.set(taskArray, forKey: "add")
        self.navigationController?.popViewController(animated: true)
        print(taskArray)
        
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
