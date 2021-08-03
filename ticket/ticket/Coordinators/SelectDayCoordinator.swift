//
//  SelectDayCoordinator.swift
//  ticket
//
//  Created by Andre Dantas on 01/08/21.
//

import UIKit

final class SelectDayCoordinator: NSObject, Coordinator {
    var children = [Coordinator]()
    let navigationController = UINavigationController()

    func start() {
        let settingsViewController = SelectDayViewController(coordinator: self)
        navigationController.viewControllers = [settingsViewController]
        navigationController.navigationBar.prefersLargeTitles = true

        if #available(iOS 13.0, *) {
            navigationController.tabBarItem = UITabBarItem(
                title: "Ticket",
                image: UIImage(systemName: "gear"),
                selectedImage: UIImage(systemName: "gear.fill"))
        } else {
            navigationController.tabBarItem.title = "My Ticket"
        }
    }
}

extension SelectDayCoordinator: SelectDayViewControllerCoordinator {

}
