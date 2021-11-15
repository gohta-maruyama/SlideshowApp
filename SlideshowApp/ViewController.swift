//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 丸山昂大 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var ssButton: UIButton!
    
    let imageArray = ["image1.jpg","image2.jpg","image3.jpg"]
    var imageNumber = 0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "image1.jpg")
        
    }
    
    @IBAction func nextAction(_ sender: Any) {
        showNextImage()
    }
    func showNextImage(){
        imageNumber += 1
        if imageNumber >= imageArray.count {
           imageNumber = 0
        }
        let imageName = imageArray[imageNumber]
        imageView.image = UIImage(named: imageName)
    }
    
    func stopSlideShow(){
        nextButton.isEnabled = true
        backButton.isEnabled = true
        ssButton.setTitle("再生", for: .normal)
        self.timer.invalidate()
        self.timer = nil
    }
    
    func startSlideShow(){
        nextButton.isEnabled = false
        backButton.isEnabled = false
        ssButton.setTitle("停止", for: .normal)
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
    }

    @IBAction func backAction(_ sender: Any) {
        imageNumber -= 1
        if imageNumber < 0 {
           imageNumber = imageArray.count - 1
        }
        let imageName = imageArray[imageNumber]
        imageView.image = UIImage(named: imageName)
    }
    
    @objc func updateTimer(_ timer: Timer) {
        showNextImage()
    }
    @IBAction func ssAction(_ sender: Any) {
        if self.timer == nil {
            startSlideShow()
        } else {
            stopSlideShow()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextViewController = segue.destination as! NextViewController
        nextViewController.image = UIImage(named: imageArray[imageNumber])
        stopSlideShow()
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        startSlideShow()
        
        
    }


}

