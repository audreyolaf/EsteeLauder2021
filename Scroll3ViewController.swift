//
//  Scroll3ViewController.swift
//  EsteeLauder2021
//
//  Created by Scholar on 8/3/21.
//

import UIKit

class Scroll3ViewController: UIViewController {

    @IBOutlet weak var color1: UIButton!
    @IBOutlet weak var color2: UIButton!
    @IBOutlet weak var color3: UIButton!
    @IBOutlet weak var color4: UIButton!
    @IBOutlet weak var mainScrollView: UIScrollView!
    var imageArray = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        color1.layer.cornerRadius = 15
        color2.layer.cornerRadius = 15
        color3.layer.cornerRadius = 15
        color4.layer.cornerRadius = 15
        
        mainScrollView.frame = view.frame
        imageArray = [#imageLiteral(resourceName: "EL_27"), #imageLiteral(resourceName: "EL_20"), #imageLiteral(resourceName: "EL_24")]
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
