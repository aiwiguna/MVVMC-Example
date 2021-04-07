//
//  HomeCoordinator.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class HomeCoordinator: Coordinator {
	var rootViewController: UIViewController {
		return navigationController
	}
	
	var onLogin: (() -> Void)?
	
	private let navigationController: UINavigationController = UINavigationController()
	
	func start() {
		let screen = makeHomeScreen()
		Router.shared.push(screen, on: self)
	}
	
	private func makeHomeScreen() -> HomeScreen {
		let onNavigationEvent: ((HomeViewController.NavigationEvent) -> Void) = { [weak self] (navigationEvent: HomeViewController.NavigationEvent) in
			
			guard let self = self else {
				return
			}
			
			switch navigationEvent {
			case .login:
				self.onLogin?()
			}
		}
		
		return HomeScreen(onNavigationEvent: onNavigationEvent)
	}
	
}
