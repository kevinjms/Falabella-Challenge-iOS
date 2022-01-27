//
//  MainPresenter.swift
//  Falabella-Challenge
//
//  Created by Kevin Marin on 26/1/22.
//

import Foundation

protocol IMainPresenter {
    //MARK: - Navigation
    func navigateToLogin()
}

final class MainPresenter: IMainPresenter {

    //MARK: - Variables
    private let coordinator: BaseCoordinator
    
    //MARK: - initializers
    init(coordinator: BaseCoordinator) {
        self.coordinator = coordinator
    }
    
    //MARK: - Navigation
    func navigateToLogin() {
        coordinator.navigate(.coreFeatureAppModule)
    }
}
