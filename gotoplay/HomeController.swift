//
//  ViewController.swift
//  gotoplay
//
//  Created by Caio on 29/11/20.
//

import UIKit

class HomeController: UIViewController {
    var homeViewModel = HomeViewModel();
    
    @IBOutlet weak var btnOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeViewModel.authorize()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnOutletDown(_ sender: Any) {
        homeViewModel.getLatest();
    }
    
}

