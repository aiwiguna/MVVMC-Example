//
//  AppCoordinator.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

internal class AppCoordinator: Coordinator {
	
	var rootViewController: UIViewController {
		return UIViewController()
	}
	
	private var tabBarCoordinator: TabBarCoordinator = TabBarCoordinator()
	
	func start() {
		tabBarCoordinator.start()
		Router.shared.setRoot(tabBarCoordinator.rootViewController)
	}
}
