//
//  ViewController.swift
//  SuperScrollview
//
//  Created by 梁雅軒 on 2017/3/15.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var textView: UITextView!
    var arrData = [String]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "MyCell")
        for i in 1...20 {
            arrData.append("\(i)")
        }
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        textView.text = "qcervmqwermqvwejrvqwervejkqwrvkjqwejkrvqwekjrvqwkejrvejkqwrvjqewkrvjqwekjrvqwekjrveqwjkrvkjqwevrjkqwevmrqwekjrvqwekjvrjqwkervjkwqejkrvqwervekmqwjkrqejkrvweqjkvrjkweqvrqweqcervmqwermqvwejrvqwervejkqwrvkjqwejkrvqwekjrvqwkejrvejkqwrvjqewkrvjqwekjrvqwekjrveqwjkrvkjqwevrjkqwevmrqwekjrvqwekjvrjqwkervjkwqejkrvqwervekmqwjkrqejkrvweqjkvrjkweqvrqweqcervmqwermqvwejrvqwervejkqwrvkjqwejkrvqwekjrvqwkejrvejkqwrvjqewkrvjqwekjrvqwekjrveqwjkrvkjqwevrjkqwevmrqwekjrvqwekjvrjqwkervjkwqejkrvqwervekmqwjkrqejkrvweqjkvrjkweqvrqweqcervmqwermqvwejrvqwervejkqwrvkjqwejkrvqwekjrvqwkejrvejkqwrvjqewkrvjqwekjrvqwekjrveqwjkrvkjqwevrjkqwevmrqwekjrvqwekjvrjqwkervjkwqejkrvqwervekmqwjkrqejkrvweqjkvrjkweqvrqweqcervmqwermqvwejrvqwervejkqwrvkjqwejkrvqwekjrvqwkejrvejkqwrvjqewkrvjqwekjrvqwekjrveqwjkrvkjqwevrjkqwevmrqwekjrvqwekjvrjqwkervjkwqejkrvqwervekmqwjkrqejkrvweqjkvrjkweqvrqweqcervmqwermqvwejrvqwervejkqwrvkjqwejkrvqwekjrvqwkejrvejkqwrvjqewkrvjqwekjrvqwekjrveqwjkrvkjqwevrjkqwevmrqwekjrvqwekjvrjqwkervjkwqejkrvqwervekmqwjkrqejkrvweqjkvrjkweqvrqwe"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = arrData[indexPath.row]
        
        return cell
    }

}
