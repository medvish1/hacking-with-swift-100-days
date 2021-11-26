//
//  DetailViewController.swift
//  project01
//
//  Created by VICTOR MOREIRA MELLO on 09/11/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: ImageProperties?
    
    
override func viewDidLoad() {
    super.viewDidLoad()
    
    if let imageDetails = selectedImage {
        imageView.image = UIImage(named: imageDetails.fileName)
        title = "\(imageDetails.position) of \(imageDetails.numberOfPictures)"
    }
    navigationItem.largeTitleDisplayMode = .never

    if let imageToLoad = selectedImage {
        imageView.image = UIImage(named: imageToLoad.fileName)
    }
}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
