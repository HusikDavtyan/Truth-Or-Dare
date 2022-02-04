//
//  SecondViewController.swift
//  Truth Or Dare
//
//  Created by Husik on 21.12.21.
//

import UIKit
import Localize_Swift

class MainViewController: UIViewController {
    
    private var isMenuShown: Bool = false
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var backViewForMenu: UIView!
    @IBOutlet weak var leadingConstraintForMenuView: NSLayoutConstraint!
    @IBOutlet weak var partyModeButton: UIButton!
    @IBOutlet weak var hotModeButton: UIButton!

    @IBOutlet weak var partyModeConstraint: NSLayoutConstraint!
    @IBOutlet weak var hotModeConstraint: NSLayoutConstraint!
    let standard = UserDefaults.standard
    var selectedLanguage = ""
    var animationPerformedOnce = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //changeSegment()
        //setLocalizedStrings()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        partyModeConstraint.constant -= view.bounds.width
        hotModeConstraint.constant -= view.bounds.width
    }
    //Menu
    
    @IBAction func menuButton(_ sender: Any) {
        UIView.animate(withDuration: 0.6) {
            self.leadingConstraintForMenuView.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.backViewForMenu.alpha = 0.75
            self.backViewForMenu.isHidden = false
            UIView.animate(withDuration: 0.1) {
                self.leadingConstraintForMenuView.constant = 0
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.isMenuShown = true
            }
        }
    }
    
    var menuViewController: MenuViewController?
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "menuSegue")
//        {
//            if let controller = segue.destination as? MenuViewController
//            {
//                self.menuViewController = controller
//                self.menuViewController?.delegate = self
//            }
//        }
//    }

    
    //Animated
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !animationPerformedOnce {
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                self.partyModeConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.6, options: .curveEaseOut, animations: {
                self.hotModeConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            animationPerformedOnce = true
        }
    }
    //Change Language
//    func changeSegment() {
//        guard let value = standard.string(forKey: "language") else { return }
//        switch value {
//        case "en":
//            lenguageSeg.selectedSegmentIndex = 0
//        case "ru":
//            lenguageSeg.selectedSegmentIndex = 1
//        case "hy":
//            lenguageSeg.selectedSegmentIndex = 2
//        default:
//            print("Nooo")
//        }
//    }
//    func setLocalizedStrings() {
//        partyModeButton.setTitle("party_mode".localized(), for: .normal)
//        hotModeButton.setTitle("hote_mode".localized(), for: .normal)
//
//    }
//    @IBAction func lenguageSegment(_ sender: UISegmentedControl) {
//        changeLanguage1()
//        setLocalizedStrings()
//    }
//    func changeLanguage1() {
//        if lenguageSeg.selectedSegmentIndex == 0 { // English
//            selectedLanguage = "en"
//        }else if lenguageSeg.selectedSegmentIndex == 1 { // Russian
//            selectedLanguage = "ru"
//        } else if lenguageSeg.selectedSegmentIndex == 2 { // Armenian
//            selectedLanguage = "hy"
//        }
//        standard.set(selectedLanguage, forKey: "language")
//        standard.synchronize()
//        if let value = standard.string(forKey: "language") {
//            Localize.setCurrentLanguage(value)
//        }
//    }
    //Navigate To SecondVC
    @IBAction func partyModButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let partyModeVC = storyboard.instantiateViewController(withIdentifier: "partyModeVC") as! PartyModeViewController
        partyModeVC.modalPresentationStyle = .overFullScreen
        partyModeVC.modalTransitionStyle = .flipHorizontal
        self.present(partyModeVC, animated:true, completion:nil)
    }
    @IBAction func hoteModeButtons(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let hoteModeVC = storyboard.instantiateViewController(withIdentifier: "hoteModeVC") as! HoteModeViewController
        hoteModeVC.modalPresentationStyle = .overFullScreen
        hoteModeVC.modalTransitionStyle = .flipHorizontal
        self.present(hoteModeVC, animated:true, completion:nil)
    }
}


