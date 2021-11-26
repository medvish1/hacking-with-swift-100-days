//
//  SiteTableViewController.swift
//  project04
//
//  Created by VICTOR MOREIRA MELLO on 11/11/21.
//

import UIKit

class SiteTableViewController: UITableViewController {
    let websites = ["apple.com", "google.com", "xkcd.com", "taylorswift.com"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Websites"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Site", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = websites[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "webView") as? ViewController {
            vc.path = websites[indexPath.row]
            vc.websites = websites
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
