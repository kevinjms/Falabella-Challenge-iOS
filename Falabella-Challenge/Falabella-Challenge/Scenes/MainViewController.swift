//
//  MainViewController.swift
//  Falabella-Challenge
//
//  Created by Kevin Marin on 24/1/22.
//

import UIKit

final class MainViewController: UIViewController {
    
    //MARK: - View's Variables
    private var button: UIButton = {
        let button = UIButton()
        
        button.setTitle("Abrir Modulo", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        return button
    }()
    
    //MARK: - Variables
    private var presenter: IMainPresenter?
    
    //MARK: - initializers
    init(presenter: IMainPresenter ) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupSubview()
    }

    //MARK: - Setup
    private func setupSubview() {
        view.addSubview(button)
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Main App"
    }
        
    //MARK: - Actions
    @objc func buttonAction(sender: UIButton!) {
        presenter?.navigateToLogin()
    }
}

