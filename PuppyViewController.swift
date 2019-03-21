//
//  PuppyViewController
//  AccessibilityPractice
//
//  Created by Katherine Owens on 3/17/19.
//  Copyright © 2019 Katherine Owens. All rights reserved.
//

import UIKit

class PuppyViewController: UIViewController {
    
    lazy var puppyImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    lazy var tinyLabel: UILabel = {
        let label = UILabel()
        label.text = "x"
        label.font.withSize(6)
        return label
    }()
    
    lazy var instructionLabel: UILabel = {
        let label = UILabel()
        label.text = "Click the marked spot below"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGestureRecognizers()
    }
    
    private func buildView() {
        view.addSubview(puppyImageView)
        view.addSubview(tinyLabel)
        view.addSubview(instructionLabel)
    }
    
    private func setupConstraints() {
        puppyImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        puppyImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        puppyImageView.heightAnchor.constraint(equalToConstant: 100)
        puppyImageView.widthAnchor.constraint(equalTo: view.widthAnchor)
        
        instructionLabel.topAnchor.constraint(equalTo: puppyImageView.bottomAnchor, constant: 20)
        instructionLabel.topAnchor.constraint(equalTo: puppyImageView.bottomAnchor, constant: 20)
    }
    
    private func setupGestureRecognizers() {
        self.tinyLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showPhoto)))
    }
    
    @objc func showPhoto() {
        self.puppyImageView.image = UIImage(named: "puppyCheetahFriends")
    }
    
    private func showButton() {
        
    }
}

