//
//  ViewController.swift
//  Override-View-Example
//
//  Created by Bryan Nguyen on 2/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    private var baseView: BaseView = {
        let baseView = BaseView()
        baseView.translatesAutoresizingMaskIntoConstraints = false
        return baseView
    }()
    
    private var baseView2: BaseView2 = {
        let baseView = BaseView2()
        baseView.translatesAutoresizingMaskIntoConstraints = false
        return baseView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    // MARK: - Configure
    
    private func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(baseView)
        view.addSubview(baseView2)
        
        setupBaseView()
        setupBaseView2()
    }
    
    private func setupBaseView() {
        baseView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        baseView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        baseView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        baseView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        baseView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
    
    private func setupBaseView2() {
        baseView2.topAnchor.constraint(equalTo: baseView.bottomAnchor, constant: 100).isActive = true
        baseView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        baseView2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        baseView2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        baseView2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }


}

