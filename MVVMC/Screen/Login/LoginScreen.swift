//
//  LoginScreen.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class LoginScreen: Screen {
	private let onNavigationEvent: ((LoginViewController.NavigationEvent) -> Void)
	
	init(onNavigationEvent: @escaping ((LoginViewController.NavigationEvent) -> Void)) {
		self.onNavigationEvent = onNavigationEvent
	}
	
	func make() -> UIViewController {
		let viewModel = LoginViewModel()
		let viewController = LoginViewController(viewModel: viewModel)
		viewController.onNavigationEvent = onNavigationEvent
		
		return viewController
	}
}
