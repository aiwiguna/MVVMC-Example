//
//  LoginCoordinator.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class LoginCoordinator: Coordinator {
	var rootViewController: UIViewController {
		return navigationController
	}
	
	private let navigationController: UINavigationController = UINavigationController()
	private let dummyCoordinator: DummyCoordinator
	
	init() {
		dummyCoordinator = DummyCoordinator(navigationController: navigationController)
	}
	
	func start() {
		let screen = makeLoginScreen()
		Router.shared.push(screen, on: self)
	}
	
	private func makeLoginScreen() -> LoginScreen {
		let onNavigationEvent: ((LoginViewController.NavigationEvent) -> Void) = { [weak self] (navigationEvent: LoginViewController.NavigationEvent) in
			
			guard let self = self else {
				return
			}
			
			switch navigationEvent {
			case .register:
				self.dummyCoordinator.start()
			}
		}
		
		return LoginScreen(onNavigationEvent: onNavigationEvent)
	}
	
}
