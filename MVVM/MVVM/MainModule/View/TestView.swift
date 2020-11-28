//
//  TestView.swift
//  MVVM
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class TestView: UIView {
    
    var viewData: ViewData = .initial {
        didSet {
            setNeedsLayout()
        }
    }

    lazy var imageViewIcon = makeImageView()
    lazy var activityIndicator = makeActivityIndicator()
    lazy var titleLabel = makeTitleLalbel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        switch viewData {
        case .initial:
            updateLayout(viewData: nil, isHidden: true)
            updateActivityView(isHidden: true)
        case .loading(let loading):
            updateLayout(viewData: loading, isHidden: false)
            updateActivityView(isHidden: false)
        case .success(let success):
            updateLayout(viewData: success, isHidden: false)
            updateActivityView(isHidden: false)
        case .failure(let failure):
            updateLayout(viewData: failure, isHidden: false)
            updateActivityView(isHidden: true)
        }
    }
    
    private func updateLayout(viewData: ViewData.Data?, isHidden: Bool) {
        imageViewIcon.image = UIImage(named: viewData?.icon ?? "")
        imageViewIcon.isHidden = isHidden
        titleLabel.text = viewData?.title
        titleLabel.isHidden = isHidden
    }
    
    private func updateActivityView(isHidden: Bool) {
        if isHidden {
            activityIndicator.isHidden = true
            activityIndicator.stopAnimating()
        } else {
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
        }
    }
}
