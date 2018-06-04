//
//  ViewController.swift
//  swift-Assignment-1
//
//  Created by Celal Aslan on 2018-05-31.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let landscapeButton: UIButton = {
    let landscape = UIButton()
        landscape.setTitle("Landscape", for: .normal)
        return landscape
    }()
    
    let portraitButton: UIButton = {
        let portrait = UIButton()
        portrait.setTitle("Portrait", for: .normal)
        return portrait
    }()
    
    let SquareButton: UIButton = {
        let square = UIButton()
        square.setTitle("Square", for: .normal)
        return square
    }()

    let frameBoxView: UIView = {
        let frameBox = UIView()
        frameBox.backgroundColor = .green
        frameBox.translatesAutoresizingMaskIntoConstraints = false
        return frameBox
    }()
    
    let purpleBoxView: UIView = {
        let purpleBox = UIView()
        purpleBox.backgroundColor = .purple
        purpleBox.translatesAutoresizingMaskIntoConstraints = false
        return purpleBox
    }()
    
    let redBoxView: UIView = {
        let redBox = UIView()
        redBox.backgroundColor = .red
        redBox.translatesAutoresizingMaskIntoConstraints = false
       return redBox
    }()
    
    let orangeBoxViewBig: UIView = {
        let orangeBox = UIView()
        orangeBox.backgroundColor = .orange
        orangeBox.translatesAutoresizingMaskIntoConstraints = false
        orangeBox.heightAnchor.constraint(equalToConstant: 30)
        orangeBox.widthAnchor.constraint(equalToConstant: 70)
        return orangeBox
    }()
    
    let orangeBoxViewSmall: UIView = {
        let orangeBox = UIView()
        orangeBox.backgroundColor = .orange
        orangeBox.translatesAutoresizingMaskIntoConstraints = false
        orangeBox.heightAnchor.constraint(equalToConstant: 30)
        orangeBox.widthAnchor.constraint(equalToConstant: 50)
        return orangeBox
    }()
    
    let blueBoxView: UIView = {
        let blueBox = UIView()
        blueBox.backgroundColor = .blue
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        return blueBox
    }()
    
    let orangeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis  = UILayoutConstraintAxis.horizontal
        stackView.distribution  = UIStackViewDistribution.equalSpacing
        stackView.alignment = UIStackViewAlignment.center
        stackView.spacing   = 16.0
        return stackView
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis  = UILayoutConstraintAxis.horizontal
        stackView.distribution  = UIStackViewDistribution.equalSpacing
        stackView.alignment = UIStackViewAlignment.center
        stackView.spacing   = 16.0
        return stackView
    }()
    
    private func setupLayout() {
    
      purpleBoxView.heightAnchor.constraint(equalToConstant: 50).isActive = true
      purpleBoxView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
      purpleBoxView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
      purpleBoxView.leftAnchor.constraint(lessThanOrEqualTo: view.leftAnchor, constant: 305).isActive = true
    
    
//        orangeBoxViewSmall.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        orangeBoxViewSmall.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        orangeBoxViewBig.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        orangeBoxViewBig.widthAnchor.constraint(equalToConstant: 70).isActive = true
        orangeStackView.addArrangedSubview(orangeBoxViewSmall)
        orangeStackView.addArrangedSubview(orangeBoxViewBig)
        
        
        redBoxView.topAnchor.constraint(equalTo: view.topAnchor, constant: -40).isActive = true
        redBoxView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        redBoxView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        redBoxView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
//        orangeStackView.centerXAnchor.constraint(equalTo: redBoxView.centerXAnchor).isActive = true
//        orangeStackView.centerYAnchor.constraint(equalTo: redBoxView.centerYAnchor).isActive = true

        
        blueBoxView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blueBoxView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueBoxView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        blueBoxView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttonStackView.addArrangedSubview(portraitButton)
        buttonStackView.addArrangedSubview(landscapeButton)
        buttonStackView.addArrangedSubview(SquareButton)
        buttonStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        buttonStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .green
        view.addSubview(purpleBoxView)
        view.addSubview(redBoxView)
        view.addSubview(blueBoxView)
        view.addSubview(portraitButton)
        
            setupLayout()
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

