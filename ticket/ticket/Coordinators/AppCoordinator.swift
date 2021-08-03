//
//  AppCoordinator.swift
//  ticket
//
//  Created by Andre Dantas on 01/08/21.
//

import UIKit

final class AppCoordinator: NSObject, Coordinator {
    var children = [Coordinator]()

    let tabBarController = UITabBarController()

    func start() {
        let deviceCoordinator = SelectDayCoordinator()
        deviceCoordinator.start()
        addChild(deviceCoordinator)
        
        tabBarController.viewControllers = [
            deviceCoordinator.navigationController
        ]
    }
}

