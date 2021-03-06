//
//  Scroll2ViewController.swift
//  EsteeLauder2021
//
//  Created by Scholar on 8/3/21.
//

import UIKit

class Scroll2ViewController: UIViewController {

    @IBOutlet weak var color1: UIButton!
    @IBOutlet weak var color2: UIButton!
    @IBOutlet weak var color3: UIButton!
    @IBOutlet weak var color4: UIButton!
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // shade circles
        color1.layer.cornerRadius = 15
        color2.layer.cornerRadius = 15
        color3.layer.cornerRadius = 15
        color4.layer.cornerRadius = 15
        
        // scroll view
        mainScrollView.frame = view.frame
        imageArray = [#imageLiteral(resourceName: "EL_26"), #imageLiteral(resourceName: "EL_17"), #imageLiteral(resourceName: "EL_20-1")]
        for i in 0..<imageArray.count {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width,height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
        }
    }

}
