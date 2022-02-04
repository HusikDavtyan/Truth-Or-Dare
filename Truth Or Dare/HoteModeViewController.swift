//
//  HoteModeViewController.swift
//  Truth Or Dare
//
//  Created by Husik on 15.01.22.
//

import UIKit

class HoteModeViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var truthButtons: UIButton!
    @IBOutlet weak var dareButtons: UIButton!
    @IBOutlet weak var dareConstraint: NSLayoutConstraint!
    @IBOutlet weak var blueConstraint: NSLayoutConstraint!
    @IBOutlet weak var redConstraint: NSLayoutConstraint!
    @IBOutlet weak var truthConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelConstraint: NSLayoutConstraint!
    @IBOutlet weak var photoConstraint: NSLayoutConstraint!
    var animationPerformedOnce = false
    //Tasks
    var quesionsDare: [String] = ["hote_dare_key_1", "hote_dare_key_2", "hote_dare_key_3",
                                  "hote_dare_key_4", "hote_dare_key_5", "hote_dare_key_6",
                                  "hote_dare_key_7", "hote_dare_key_8", "hote_dare_key_9",
                                  "hote_dare_key_10", "hote_dare_key_11", "hote_dare_key_12",
                                  "hote_dare_key_13", "hote_dare_key_14", "hote_dare_key_15",
                                  "hote_dare_key_16", "hote_dare_key_17", "hote_dare_key_18",
                                  "hote_dare_key_19", "hote_dare_key_20", "hote_dare_key_21",
                                  "hote_dare_key_22", "hote_dare_key_23", "hote_dare_key_24",
                                  "hote_dare_key_25", "hote_dare_key_26", "hote_dare_key_27",
                                  "hote_dare_key_28", "hote_dare_key_29", "hote_dare_key_30",
                                  "hote_dare_key_31", "hote_dare_key_32", "hote_dare_key_33",
                                  "hote_dare_key_34", "hote_dare_key_35", "hote_dare_key_36",
                                  "hote_dare_key_37", "hote_dare_key_38", "hote_dare_key_39",
                                  "hote_dare_key_40", "hote_dare_key_41", "hote_dare_key_42",
                                  "hote_dare_key_43", "hote_dare_key_44", "hote_dare_key_45",
                                  "hote_dare_key_46", "hote_dare_key_47", "hote_dare_key_48"]
    var quesionsTruth: [String] = ["hote_truth_key_1", "hote_truth_key_2", "hote_truth_key_3",
                                   "hote_truth_key_4", "hote_truth_key_5", "hote_truth_key_6",
                                   "hote_truth_key_7", "hote_truth_key_8", "hote_truth_key_9",
                                   "hote_truth_key_10", "hote_truth_key_11", "hote_truth_key_12",
                                   "hote_truth_key_13", "hote_truth_key_14", "hote_truth_key_15",
                                   "hote_truth_key_16", "hote_truth_key_17", "hote_truth_key_18",
                                   "hote_truth_key_19", "hote_truth_key_20", "hote_truth_key_21",
                                   "hote_truth_key_22", "hote_truth_key_23", "hote_truth_key_24",
                                   "hote_truth_key_25", "hote_truth_key_26", "hote_truth_key_27",
                                   "hote_truth_key_28", "hote_truth_key_29", "hote_truth_key_30",
                                   "hote_truth_key_31", "hote_truth_key_32", "hote_truth_key_33",
                                   "hote_truth_key_34", "hote_truth_key_35", "hote_truth_key_36",
                                   "hote_truth_key_37", "hote_truth_key_38", "hote_truth_key_39",
                                   "hote_truth_key_40", "hote_truth_key_41", "hote_truth_key_42",
                                   "hote_truth_key_43", "hote_truth_key_44", "hote_truth_key_45",
                                   "hote_truth_key_46", "hote_truth_key_47", "hote_truth_key_48",
                                   "hote_truth_key_49", "hote_truth_key_50"]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationItem.leftBarButtonItem?.title = ""
        dareConstraint.constant -= view.bounds.width
        blueConstraint.constant -= view.bounds.width
        redConstraint.constant -= view.bounds.width
        truthConstraint.constant -= view.bounds.width
        labelConstraint.constant -= view.bounds.width
        photoConstraint.constant -= view.bounds.width
        textLabel.text = "truth_or_Dare".localized()
        setLocalizedStrings()

    }
    //Animated
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !animationPerformedOnce {
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                self.labelConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.6, options: .curveEaseOut, animations: {
                self.blueConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.9, options: .curveEaseOut, animations: {
                self.redConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.6, options: .curveEaseOut, animations: {
                self.dareConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.9, options: .curveEaseOut, animations: {
                self.truthConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.6, delay: 0.6, options: .curveEaseOut, animations: {
                self.photoConstraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            animationPerformedOnce = true
        }
    }
    //Navigate To SecondVC
    @IBAction func dismissButton(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as! MainViewController
        mainVC.modalPresentationStyle = .overFullScreen
        mainVC.modalTransitionStyle = .flipHorizontal
        self.present(mainVC, animated:true, completion:nil)

    }
    //Change Language
    @IBAction func truthButton(_ sender: Any) {
        textLabel.text = quesionsTruth.randomElement()?.localized()
    }
    @IBAction func dareButton(_ sender: Any) {
        textLabel.text = quesionsDare.randomElement()?.localized()
    }
    func setLocalizedStrings() {
        truthButtons.setTitle("truth_key".localized(), for: .normal)
        dareButtons.setTitle("dare_key".localized(), for: .normal)
    }


}
