//
//  MenuViewController.swift
//  
//
//  Created by Husik on 27.01.22.
//

import UIKit
protocol MenuViewControllerDelegate {
    func hideMenu()
}

class MenuViewController: UIViewController {
    var delegate : MenuViewControllerDelegate?
    var isLanguagesHidden = true
    @IBOutlet weak var languagesView: UIView!
    @IBOutlet weak var languagesButton: UIButton!
    @IBOutlet weak var appRetingButton: UIButton!
    
    
    override func viewDidLoad() {
        languagesView.alpha = 0

    }
    @IBAction func languagesButton(_ sender: Any) {
        if isLanguagesHidden {
            languagesView.alpha = 1
        } else {
            languagesView.alpha = 0
        }
        isLanguagesHidden = !isLanguagesHidden
    }
}
