//
//  TestView + Extension.swift
//  MVVM
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

extension TestView {
    func makeImageView() -> UIImageView {
        let imageViewIcon = UIImageView()
        imageViewIcon.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageViewIcon)
        imageViewIcon.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1).isActive = true
        imageViewIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageViewIcon.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageViewIcon.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        return imageViewIcon
    }
    
    func makeActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.color = .gray
        activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        addSubview(activityIndicator)
        activityIndicator.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 5).isActive = true
        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        return activityIndicator
    }
    
    func makeTitleLalbel() -> UILabel {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = .gray
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.numberOfLines = 0
        addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageViewIcon.bottomAnchor, multiplier: 2).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        return titleLabel
    }
}
