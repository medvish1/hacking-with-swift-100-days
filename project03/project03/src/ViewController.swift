//
//  ViewController.swift
//  project01
//
//  Created by VICTOR MOREIRA MELLO on 08/11/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [ImageProperties]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viwer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
            .filter { $0.hasPrefix("nssl") }
            .sorted(by: { $0 < $1 })
        
        pictures = items
            .enumerated()
            .map { ImageProperties(fileName: $1, position: $0+1, numberOfPictures: items.count) }
        
        
        print(pictures)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = pictures[indexPath.row].name
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

