//
//  LoginViewController.swift
//  CoreFeatureApp
//
//  Created by Kevin Marin on 26/1/22.
//

import UIKit

public protocol ILoginView: UIViewController {

}

final public class LoginViewController<TPresenter: ILoginPresenter>: UIViewController {
    
    //MARK: - View's Variables
    let titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Login"
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.tintColor = .orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    //MARK: - Variables
    var presenter: TPresenter
    
    //MARK: - initializers
    public init(presenter: TPresenter ) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        self.presenter.loadView(view: self as! TPresenter.T)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - LifeCycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
        
    //MARK: - Setup
    private func setupSubview() {
        view.addSubview(titleLabel)
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Login"
    }
    
    //MARK: - Method

    //MARK: - Action
}

extension LoginViewController: ILoginView {

}
