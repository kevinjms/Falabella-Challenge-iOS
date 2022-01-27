//
//  AppFalabellaCoordinator.swift
//  Falabella-Challenge
//
//  Created by Kevin Marin on 26/1/22.
//

import UIKit
import CoreFeatureApp

enum Route {
    case coreFeatureAppModule
}

protocol BaseCoordinator {
    func start() -> UINavigationController
    func navigate(_ router: Route)
}

final class AppCoordinator: BaseCoordinator{

    var navController: UINavigationController?
    
    func start() -> UINavigationController {
        let presenter = MainPresenter(coordinator: self)
        let controller = MainViewController(presenter: presenter)
        
        let navController = UINavigationController(rootViewController: controller)

        self.navController = navController
        
        return navController
    }
    
    func navigate(_ router: Route) {
        switch router {
        case .coreFeatureAppModule:
            let presenter = LoginPresenter()
            let controller = LoginViewController(presenter: presenter)
            
            navController?.pushViewController(controller, animated: true)
        }
    }
}
