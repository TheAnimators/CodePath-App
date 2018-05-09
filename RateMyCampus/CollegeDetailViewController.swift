//
//  CollegeDetailViewController.swift
//  RateMyCampus
//
//  Created by Ibukun on 5/8/18.
//  Copyright © 2018 Warpedflo. All rights reserved.
//

import UIKit
import Parse

class CollegeDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var collegeImangeView: UIImageView!
    @IBOutlet weak var uniNameLabel: UILabel!
    @IBOutlet weak var accRate: UILabel!
    @IBOutlet weak var tuitionLabel: UILabel!
    @IBOutlet weak var newsTableView: UITableView!
    
    var news: [Any] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.dataSource = self
        newsTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "NewsCell")
        
        return cell!
        
    }

}
