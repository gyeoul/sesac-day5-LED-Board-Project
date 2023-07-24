//
//  BoardViewController.swift
//  sesac-day5-LED-Project
//
//  Created by 박창현 on 2023.07.24.
//

import UIKit

class BoardViewController: UIViewController {
    @IBOutlet var menuView: UIView!
    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var confirmButton: UIButton!
    @IBOutlet var colorWell: UIColorWell!
    @IBOutlet var displayLabel: UILabel!
    @IBAction func activeTapGesture(_ sender: UITapGestureRecognizer) {
        if inputTextField.isEditing {
            view.endEditing(true)
        } else {
            menuView.isHidden.toggle()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmButton.tintColor = UIColor.black
        menuView.layer.cornerRadius = 10
        menuView.clipsToBounds = true
        colorWell.selectedColor = .white
        inputTextField.placeholder = "텍스트를 입력해 주세요."
        inputTextField.clearButtonMode = .whileEditing
        displayLabel.text = ""
    }
    @IBAction func setLabelText(_ sender: Any) {
        view.endEditing(true)
        let text = inputTextField.text ?? ""
        displayLabel.text = text
        displayLabel.textColor = colorWell.selectedColor
    }


}
