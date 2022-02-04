//
//  ViewController.swift
//  Truth Or Dare
//
//  Created by Husik on 14.12.21.
//

import UIKit
import Localize_Swift

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var truthLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var dareLabel: UILabel!
    @IBOutlet weak var truthLabelConstraint: NSLayoutConstraint!
    @IBOutlet weak var orLabelConstraint: NSLayoutConstraint!
    @IBOutlet weak var dareLabelConstraint: NSLayoutConstraint!
    @IBOutlet weak var playButtonConstraint: NSLayoutConstraint!
    //@IBOutlet var backgroundView: UIView!

    var animationPerformedOnce = false

    override func viewDidLoad() {
        super.viewDidLoad()
        truthLabelConstraint.constant -= view.bounds.width
        orLabelConstraint.constant -= view.bounds.width
        dareLabelConstraint.constant -= view.bounds.width
        playButtonConstraint.constant -= view.bounds.width
        setLocalizedStrings()
        //gradient()
    }
//    func gradient() {
//        let layer = CAGradientLayer()
//        layer.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
//        layer.colors = [UIColor.systemRed.cgColor, UIColor.black.cgColor]
//        view.layer.addSublayer(layer)
//        view.addSubview(playButton)
//        view.addSubview(truthLabel)
//        view.addSubview(orLabel)
//        view.addSubview(dareLabel)
//    }
    //Change Language
    func setLocalizedStrings() {
        playButton.setTitle("play_key".localized(), for: .normal)
        truthLabel.text = "truth_key".localized()
        orLabel.text = "or_key".localized()
        dareLabel.text = "dare_key".localized()
        
        
        
        
    }
    //Animated
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !animationPerformedOnce {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.truthLabelConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                self.orLabelConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.6, options: .curveEaseOut, animations: {
                self.dareLabelConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.9, options: .curveEaseOut, animations: {
                self.playButtonConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            animationPerformedOnce = true
        }
        
    }
    //Navigate To SecondVC
    @IBAction func playButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as! MainViewController
        mainVC.modalPresentationStyle = .overFullScreen
        mainVC.modalTransitionStyle = .crossDissolve
        self.present(mainVC, animated:true, completion:nil)
    }
}
