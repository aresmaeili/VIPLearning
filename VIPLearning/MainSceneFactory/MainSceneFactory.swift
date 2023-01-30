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
        let homeSceneFactory: SceneFactory = HomeSceneFactory(navigationController: navigationController, service: service)
        homeSceneFactory.start()
    }
    
    func navToDetailsVc(data: ViewModel) {
        let homeSceneFactory: SceneFactory = HomeSceneFactory(navigationController: navigationController, service: service)
        homeSceneFactory.navToDetailsVc(data: data)
    }
    
    func navToDetailsVc(data: ViewModel) -> DetailViewController {
        let homeSceneFactory = HomeSceneFactory(navigationController: navigationController, service: service)
        return homeSceneFactory.navToDetailsVc(data: data)
    }
    
}
