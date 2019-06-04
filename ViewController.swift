//
//  ViewController.swift
//  imageloader
//
//  Created by aisulubekbossynova on 6/4/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let con = Constant()
    //    static let stanford = URL(string: "https://upload.wikimedia.org/wikipedia/commons/5/55/Stanford_Oval_September_2013_panorama.jpg")
    
    @IBOutlet weak var myImageView: UIImageView!
    var image: UIImage? {
        get{
            return myImageView.image
        }
        set{
            myImageView.image = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        if myImageView.image == nil{
            fetchImage()
        }
        
    }
    private func fetchImage() {
        if let url = con.imgurl {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                image = UIImage(data: imageData)
            }
        }
    }
   

}
struct Constant {
    let imgurl = Bundle.main.url(forResource: "tokyo", withExtension: "jpg")
}

