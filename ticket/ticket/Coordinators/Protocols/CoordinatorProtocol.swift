//
//  CoordinatorProtocol.swift
//  ticket
//
//  Created by Andre Dantas on 01/08/21.
//

import Foundation

protocol Coordinator: AnyObject {
    var children: [Coordinator] { get set }
}

extension Coordinator {
    func addChild(_ coordinator: Coordinator) {
        children.append(coordinator)
    }

    func removeChild(_ coordinator: Coordinator) {
        children.removeAll(where: { $0 === coordinator })
    }
}

