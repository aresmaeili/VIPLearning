//
//  MainSceneFactory.swift
//  VIPLearning
//
//  Created by Alireza on 11/10/1401 AP.
//

import UIKit

class MainSceneFactory: SceneFactory {

    var navigationController: UINavigationController
    let windows: UIWindow
    let service: NetworkProtocol = Network()
    init(windows:UIWindow, navigationController: UINavigationController) {
        self.windows = windows
        self.navigationController = navigationController
        windows.rootViewController = navigationController
        self.windows.makeKeyAndVisible()
    }
    
    func start() {
        let baseSceneFactory: SceneFactory = BaseSceneFactory(navigationController: navigationController, service: service)
        baseSceneFactory.start()
    }
    
//    func navToDetailsVc(data: ViewModel) {
//        let baseSceneFactory: SceneFactory = BaseSceneFactory(navigationController: navigationController, service: service)
//        baseSceneFactory.navToDetailsVc(data: data)
//    }
    
    func navToDetailsVc(data: ViewModel) -> DetailViewController {
        let baseSceneFactory = BaseSceneFactory(navigationController: navigationController, service: service)
        return baseSceneFactory.navToDetailsVc(data: data)
    }
    
}
