//
//  MainViewController.swift
//  Blur
//
//  Created by Collin Hundley on 1/16/16.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.blurButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        mainView.blurSlider.addTarget(self, action: #selector(sliderMoved(_:)), for: .valueChanged)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func buttonTapped() {
        let radius: CGFloat = mainView.blurView.blurRadius == 0 ? 15 : 0
        UIView.animate(withDuration: 0.5) {
            self.mainView.blurView.setBlurRadius(radius: radius)
        }
    }
    
    @objc func sliderMoved(_ slider: UISlider) {
        mainView.blurView.setBlurRadius(radius: CGFloat(slider.value))
    }
    
}
