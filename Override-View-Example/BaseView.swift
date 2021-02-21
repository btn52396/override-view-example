//
//  BaseView.swift
//  Override-View-Example
//
//  Created by Bryan Nguyen on 2/20/21.
//

import UIKit

class BaseView: UIView {
    
    // MARK: - Properties
    
    internal var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    internal var fillerLabel: UILabel = {
        let label = UILabel()
        label.text = "This is filler text"
        label.textAlignment = .center
        label.textColor = .white
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    internal func setupViews() {
        addSubview(containerView)
        containerView.addSubview(fillerLabel)
        
        setupContainerView()
        setupFillerLabel()
    }
    
    private func setupContainerView() {
        containerView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    private func setupFillerLabel() {
        fillerLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10).isActive = true
        fillerLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        fillerLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor).isActive = true
        fillerLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
    }
    
}
