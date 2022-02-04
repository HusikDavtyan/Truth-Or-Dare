//
//  ThirdViewController.swift
//  Truth Or Dare
//
//  Created by Husik on 21.12.21.
//

import UIKit

class PartyModeViewController: UIViewController {
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
    var emptyQuesionsDare: [String] = [" "]
    var quesionsDare: [String] = ["party_dare_key_1", "party_dare_key_2", "party_dare_key_3",
                                  "party_dare_key_4", "party_dare_key_5", "party_dare_key_6",
                                  "party_dare_key_7", "party_dare_key_8", "party_dare_key_9",
                                  "party_dare_key_10", "party_dare_key_11", "party_dare_key_12",
                                  "party_dare_key_13", "party_dare_key_14", "party_dare_key_15",
                                  "party_dare_key_16", "party_dare_key_17", "party_dare_key_18",
                                  "party_dare_key_19", "party_dare_key_20", "party_dare_key_21",
                                  "party_dare_key_22", "party_dare_key_23", "party_dare_key_24",
                                  "party_dare_key_25", "party_dare_key_26", "party_dare_key_27",
                                  "party_dare_key_28", "party_dare_key_29", "party_dare_key_30",
                                  "party_dare_key_31", "party_dare_key_32", "party_dare_key_33",
                                  "party_dare_key_34", "party_dare_key_35", "party_dare_key_36",
                                  "party_dare_key_37", "party_dare_key_38", "party_dare_key_39",
                                  "party_dare_key_40", "party_dare_key_41", "party_dare_key_42",
                                  "party_dare_key_43", "party_dare_key_44", "party_dare_key_45",
                                  "party_dare_key_46", "party_dare_key_47", "party_dare_key_48",
                                  "party_dare_key_49", "party_dare_key_50"]
    var emptyQuesionsTruth: [String] = [" "]
    var quesionsTruth: [String] = ["party_truth_key_1", "party_truth_key_2", "party_truth_key_3",
                                   "party_truth_key_4", "party_truth_key_5", "party_truth_key_6",
                                   "party_truth_key_7", "party_truth_key_8", "party_truth_key_9",
                                   "party_truth_key_10", "party_truth_key_11", "party_truth_key_12",
                                   "party_truth_key_13", "party_truth_key_14", "party_truth_key_15",
                                   "party_truth_key_16", "party_truth_key_17", "party_truth_key_18",
                                   "party_truth_key_19", "party_truth_key_20", "party_truth_key_21",
                                   "party_truth_key_22", "party_truth_key_23", "party_truth_key_24",
                                   "party_truth_key_25", "party_truth_key_26", "party_truth_key_27",
                                   "party_truth_key_28", "party_truth_key_29", "party_truth_key_30",
                                   "party_truth_key_31", "party_truth_key_32", "party_truth_key_33",
                                   "party_truth_key_34", "party_truth_key_35", "party_truth_key_36",
                                   "party_truth_key_37", "party_truth_key_38", "party_truth_key_39",
                                   "party_truth_key_40", "party_truth_key_41", "party_truth_key_42",
                                   "party_truth_key_43", "party_truth_key_44", "party_truth_key_45",
                                   "party_truth_key_46","party_truth_key_47","party_truth_key_48",
                                   "party_truth_key_49", "party_truth_key_50"]
    
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
