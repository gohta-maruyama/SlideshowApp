//
//  NextViewController.swift
//  SlideshowApp
//
//  Created by 丸山昂大 on 2021/10/28.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    var image:UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailImageView.image = image
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
