//
//  ViewController.swift
//  FinalMsAppCenter
//
//  Created by Akvelon on 5/28/21.
//

import UIKit
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {
    // Buttons
    let crashButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Crash", for: .normal)
        button.addTarget(self, action: #selector(buttonIsCrash) , for: .touchUpInside)
        button.backgroundColor = .red
        return button
    }()
    
    let clickButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Click", for: .normal)
        button.addTarget(self, action: #selector(buttonIsClick) , for: .touchUpInside)
        button.backgroundColor = .blue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppCenter.start(withAppSecret: "60606808-754a-45c8-8ec4-bb6c7fb20f07", services:[
          Analytics.self,
          Crashes.self
        ])
        
        view.addSubview(crashButton)
        view.addSubview(clickButton)
        
        createClickButtonConstrait()
        createCrashTheAppConstrait()
    }
    
    // Actions
    @objc func buttonIsClick() {
        Analytics.trackEvent("Change button color")
        if clickButton.backgroundColor == .blue {
            clickButton.backgroundColor = .green
        } else {
            clickButton.backgroundColor = .blue
        }
    }
    
    @objc func buttonIsCrash() {
        fatalError()
    }
}

extension ViewController {
    
    // Constraits
    private func createClickButtonConstrait() {
        clickButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        clickButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        clickButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        clickButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func createCrashTheAppConstrait() {
        crashButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        crashButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        crashButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        crashButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}

