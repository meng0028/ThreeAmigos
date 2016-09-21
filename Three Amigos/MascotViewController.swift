 //
//  MascotViewController.swift
//  Three Amigos
//
//  Created by Robert.M on 2016-09-21.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

import UIKit

class MascotViewController: UIViewController {

    @IBOutlet weak var mascotimage: UIImageView!
    @IBOutlet weak var mascotName: UILabel!
    
    // Names Array of Strings
    var names: [String] = ["android", "Duke", "Tux"]
    
    // Names[0] is "Android"
    // Names[1] is "Duke"
    // Names[2] us "Tux"
    // Names[3] is UNDEFINED
    
    // Size of names is 3
    
    // Images Array of UIimage
    var images: [UIImage] = [
        UIImage(named: "android.png")!,
        UIImage(named: "duke.png")!,
        UIImage(named: "tux.png")!
    ]
    // domain values of names array is 0, 1, 2
    var index:  Int  = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mascotimage.image = images[index]
        mascotName.text = names[index]
    }
    
    @IBAction func handleNext(_ sender: AnyObject) {
        index = index + 1
        if (index >= names.count) {
            index = 0
        }
        mascotimage.image = images[index]
        mascotName.text = names[index]
        
    }
    @IBAction func handlePrevious(_ sender: AnyObject) {
        index = index - 1
        if (index < 0) {
            index = names.count - 1
        }
        mascotimage.image = images[index]
        mascotName.text = names[index]
    }

 }
