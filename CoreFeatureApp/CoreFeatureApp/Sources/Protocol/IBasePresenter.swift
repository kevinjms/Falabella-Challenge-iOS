//
//  IBasePresenter.swift
//  CoreFeatureApp
//
//  Created by Kevin Marin on 26/1/22.
//

import Foundation

public protocol IBasePresenter {
    associatedtype T
    
    var view: T? { get set }
    
    mutating func loadView(view: T)
}

public extension IBasePresenter {
    mutating func loadView(view: T) {
        self.view = view
    }
}
