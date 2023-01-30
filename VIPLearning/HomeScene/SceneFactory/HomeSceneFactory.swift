//
//  HomeSceneFactory.swift
//  VIPLearning
//
//  Created by Mahdi Saedi on 29/01/2023.
//

import UIKit

class HomeSceneFactory: SceneFactory {
   
    var navigationController: UINavigationController

    var service: NetworkProtocol
    init(navigationController: UINavigationController, service: NetworkProtocol) {
        self.navigationController = navigationController
        self.service = service
    }
    
    func start() {
        let viewController = createAremScene()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func navToDetailsVc(data: ViewModel) -> DetailViewController  {
        let viewController = createMehdiScene(data: data)
        return viewController
    }
    
    func createAremScene() -> AremViewController {
        let aremConfigure = AremDefaultConfigurator(sceneFactory: self, service: service)
        let aremVC = aremConfigure.configure()
        return aremVC
    }
    
    func createMehdiScene(data: ViewModel) -> DetailViewController {
        let mehdiConfigure = DetailDefaultConfigurator(sceneFactory: self, service: service, data: data)
        let mehdiVc = mehdiConfigure.configure()
        return mehdiVc
    }

}
