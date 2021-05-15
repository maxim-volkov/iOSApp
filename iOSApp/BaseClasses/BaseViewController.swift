//
//  BaseViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit
import AudioToolbox

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.standardAppearance.backgroundColor = .systemBackground
        navigationController?.navigationBar.standardAppearance.shadowColor = .clear
        navigationController?.navigationBar.tintColor = .appBlackBrandColor
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func makeShakeAnimation() -> CAAnimation? {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        let shake = CAKeyframeAnimation(keyPath: "transform.translation.x")
        shake.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        shake.duration = 0.75
        shake.values = [-20, 20, -15, 15, -10, 10, -5, 5, 0]
        return shake
    }

    @objc private func viewTapped() {
        view.endEditing(true)
    }
    deinit {
        print("viewcontroller deallocated")
    }
}
