//
//  ViewController.swift
//  UIImageAnimation
//
//  Created by Vibhor Gupta on 8/16/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    let iv: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "tile0")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 24
        imageView.layer.masksToBounds  = true
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleToFill

        return imageView
    }()


    var sprite = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()


        navigationItem.title = "Twitter animation"
        view.backgroundColor = .green

        view.addSubview(iv)



        iv.heightAnchor.constraint(equalToConstant: 75).isActive=true
        iv.widthAnchor.constraint(equalToConstant: 75).isActive=true
        iv.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true

        iv.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 100).isActive = true


        for i in 0 ..< 29 {
            sprite.append(UIImage(named: "tile\(i)")!)
        }

        iv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.animate) ))
    }


    @objc func animate(){
        iv.animationImages = sprite
        iv.animationDuration = 0.5
        iv.animationRepeatCount = 1
        iv.startAnimating()
    }
}

