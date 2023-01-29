//
//  SceneFactory.swift
//  VIPLearning
//
//  Created by Mahdi Saedi on 29/01/2023.
//

import UIKit

protocol SceneFactory {
    var navigationController: UINavigationController { get }
    func start()
}

class MainSceneFactory: SceneFactory {
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        
    }
    
    
}
