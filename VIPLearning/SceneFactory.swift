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
    let windows: UIWindow
    init(windows:UIWindow, navigationController: UINavigationController) {
        self.windows = windows
        self.navigationController = navigationController
        windows.rootViewController = navigationController
        self.windows.makeKeyAndVisible()
    }
    func start() {
        let homeSceneFactory: SceneFactory = HomeSceneFactory(navigationController: navigationController)
        homeSceneFactory.start()
    }
}

class HomeSceneFactory: SceneFactory {
    var navigationController: UINavigationController

    var network: NetworkProtocol = Network()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = createAremScene()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func createAremScene() -> AremViewController {
        let aremConfigur = AremDefaultConfigurator(sceneFactory: self)
        let arenVC = aremConfigur.configure()
        return arenVC
    }
    
    func createMehdiScene() -> UIViewController {
        let MehdiVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AremViewController") as UIViewController
        return MehdiVc
    }
    
}
