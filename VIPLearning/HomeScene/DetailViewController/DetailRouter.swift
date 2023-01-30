//
//  DetailRouter.swift
//  VIPLearning
//
//  Created by Alireza on 11/10/1401 AP.
//  Copyright © 1401 AP ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol DetailRoutingLogic {
    
}

protocol DetailDataPassing {
    var dataStore: DetailDataStore? { get }
}

class DetailRouter: NSObject, DetailRoutingLogic, DetailDataPassing {
    private let sceneFactory: SceneFactory
    private weak var viewController: DetailViewController?
    init(sceneFactory: SceneFactory, viewController: DetailViewController) {
        self.sceneFactory = sceneFactory
    }
    
    // MARK: - Properties
    var dataStore: DetailDataStore?
}
