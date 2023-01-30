//
//  AremRouter.swift
//  VIPLearning
//
//  Created by Alireza on 11/9/1401 AP.
//  Copyright © 1401 AP ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol AremRoutingLogic {
    func navToDetails(data: ViewModel)}

protocol AremDataPassing {
    var dataStore: AremDataStore? { get }
}

class AremRouter: NSObject, AremRoutingLogic, AremDataPassing {
    private let sceneFactory: SceneFactory
    init(sceneFactory: SceneFactory , viewController: AremViewController) {
        self.sceneFactory = sceneFactory
    }
    
    // MARK: - Properties
    weak var viewController: AremViewController?
    var dataStore: AremDataStore?
    
    func navToDetails(data: ViewModel) {

        let vc = sceneFactory.navToDetailsVc(data: data)
        sceneFactory.navigationController.pushViewController(vc, animated: true)
    }
    
}