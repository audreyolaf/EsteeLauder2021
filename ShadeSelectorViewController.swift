//
//  ShadeSelectorViewController.swift
//  EsteeLauder2021
//
//  Created by Scholar on 8/3/21.
//

import UIKit

class ShadeSelectorViewController: UIViewController {

    @IBOutlet weak var shade1ImageView: UIImageView!
    @IBOutlet weak var shade2ImageView: UIImageView!
    @IBOutlet weak var shade3ImageView: UIImageView!
    @IBOutlet weak var shade4ImageView: UIImageView!
    
    @IBOutlet weak var color1: UIButton!
    @IBOutlet weak var color2: UIButton!
    @IBOutlet weak var color3: UIButton!
    @IBOutlet weak var color4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        shade1ImageView.isUserInteractionEnabled = true
        shade2ImageView.isUserInteractionEnabled = true
        shade3ImageView.isUserInteractionEnabled = true
        shade4ImageView.isUserInteractionEnabled = true
        color1.layer.cornerRadius = 15
        color2.layer.cornerRadius = 15
        color3.layer.cornerRadius = 15
        color4.layer.cornerRadius = 15
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
