//
//  ViewController.swift
//  TestProjDemo1
//
//  Created by Will Saults on 9/22/18.
//  Copyright © 2018 AppVentures. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.setTitle("SUH DUDE!", for: .normal)
    }
}

