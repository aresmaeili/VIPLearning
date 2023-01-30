//
//  SceneFactory.swift
//  VIPLearning
//
//  Created by Alireza on 11/10/1401 AP.
//

import UIKit

protocol SceneFactory {
    var navigationController: UINavigationController { get }
    func start()
    func navToDetailsVc(data: ViewModel) -> DetailViewController 
}
