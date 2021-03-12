//
//  ViewController.swift
//  ExpleoMVVMDemo
//
//  Created by Jayant Tiwari on 09/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    
    var expleoViewModel = ExpleoViewModel()
    
    var expleoView : ExpleoView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expleoView = ExpleoView(label: lblName)
    }


    @IBAction func btnFetchDataClicked(_ sender: Any) {
        
        expleoViewModel.setData(view: expleoView! )
        
    }
}

