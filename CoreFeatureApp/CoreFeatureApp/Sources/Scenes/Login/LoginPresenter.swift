//
//  LoginPresenter.swift
//  CoreFeatureApp
//
//  Created by Kevin Marin on 26/1/22.
//

import Foundation

public protocol ILoginPresenter: IBasePresenter {

}

final public class LoginPresenter: ILoginPresenter {
    
    //MARK: - Variables
    public typealias T = ILoginView
    
    public var view: ILoginView?
    
    //MARK: - initializers
    public init(){
        
    }
}
