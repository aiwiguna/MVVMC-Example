//
//  TabBarCoordinator.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class TabBarCoordinator: NSObject, Coordinator {
	var rootViewController: UIViewController {
		return tabBarController
	}
	
	private let tabBarController: TabBarController = TabBarController()
	private let homeCoordinator: HomeCoordinator = HomeCoordinator()
	private let loginCoordinator: LoginCoordinator = LoginCoordinator()

	func start() {
		configureTabBarController()
		configureCoordinators()
	}
	private func configureTabBarController() {

		tabBarController.delegate = self
	}
	
	private func configureCoordinators() {
		configureHomeCoordinator()
		configureLoginCoordinator()
		
		tabBarController.viewControllers = [
			homeCoordinator.rootViewController,
			loginCoordinator.rootViewController
		]
	}
	
	private func configureHomeCoordinator() {
		homeCoordinator.start()
		homeCoordinator.rootViewController.tabBarItem = tabBarController.button1
		
		homeCoordinator.onLogin = { [weak self] in
			guard let self = self else {
				return
			}
			self.tabBarController.selectedViewController = self.loginCoordinator.rootViewController
//			Router.shared.setRoot(self.loginCoordinator.rootViewController)
		}
	}
	
	private func configureLoginCoordinator() {
		loginCoordinator.start()
		loginCoordinator.rootViewController.tabBarItem = tabBarController.button2
	}
}

extension TabBarCoordinator: UITabBarControllerDelegate {
	
	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
		
	}
}
