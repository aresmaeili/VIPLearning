//
//  HomeSceneFactory.swift
//  VIPLearning
//
//  Created by Mahdi Saedi on 29/01/2023.
//

import UIKit

class BaseSceneFactory: SceneFactory {
   
    var navigationController: UINavigationController

    var service: NetworkProtocol
    init(navigationController: UINavigationController, service: NetworkProtocol) {
        self.navigationController = navigationController
        self.service = service
    }
    
    func start() {
        let viewController = createFirstScene()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func navToDetailsVc(data: ViewModel) -> DetailViewController  {
        let viewController = createMehdiScene(data: data)
        return viewController
    }
    
    func createFirstScene() -> FirstViewController {
        let firstConfigure = FirstDefaultConfigurator(sceneFactory: self, service: service)
        let firstVC = firstConfigure.configure()
        return firstVC
    }
    
    func createMehdiScene(data: ViewModel) -> DetailViewController {
        let mehdiConfigure = DetailDefaultConfigurator(sceneFactory: self, service: service, data: data)
        let mehdiVc = mehdiConfigure.configure()
        return mehdiVc
    }

}
