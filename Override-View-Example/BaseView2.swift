//
//  BaseView2.swift
//  Override-View-Example
//
//  Created by Bryan Nguyen on 2/20/21.
//

import UIKit

class BaseView2: BaseView {
    
    // MARK: - Properties
    
    internal var exampleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dog")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configuration
    
    override func setupViews() {
        super.setupViews()
        
        super.containerView.backgroundColor = .systemBlue
        super.fillerLabel.text = "This is different text"
        
        super.containerView.addSubview(exampleImageView)
        
        setupExampleImageView()
    }
    
    private func setupExampleImageView() {
        exampleImageView.topAnchor.constraint(equalTo: super.containerView.topAnchor, constant: 10).isActive = true
        exampleImageView.centerXAnchor.constraint(equalTo: super.containerView.centerXAnchor).isActive = true
        exampleImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        exampleImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
