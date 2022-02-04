//
//  AvelordViewController.swift
//  Truth Or Dare
//
//  Created by Husik on 08.01.22.
//

import UIKit
import Localize_Swift

class AvelordViewController: UIViewController {
    
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var fNameLabel: UILabel!
    @IBOutlet weak var lNameLavel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSelectClick(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 { //Angleren
            fNameLabel.text = "HiKey".localizableString(loc: "en")
            lNameLavel.text = "AnglerenKey".localizableString(loc: "en")
        }else if seg.selectedSegmentIndex == 1 { // Ruseren
            fNameLabel.text = "HiKey".localizableString(loc: "ru")
            lNameLavel.text = "AnglerenKey".localizableString(loc: "ru")
        }else if seg.selectedSegmentIndex == 2 { // Hayeren
            fNameLabel.text = "HiKey".localizableString(loc: "hy")
            lNameLavel.text = "AnglerenKey".localizableString(loc: "hy")
        }
    }
//    func languageChangeed(strLan: String){
//        fNameLabel.text = "HiKey".localizableString(loc: "strLan")
//        lNameLavel.text = "AnglerenKey".localizableString(loc: "hy")
//    }
}
//extension String{
//    func localizableString(loc: String) -> String {
//        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
//        let bundle = Bundle(path: path!)
//        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
//    }
//}
