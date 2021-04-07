//
//  HomeScreen.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class HomeScreen: Screen {
	private let onNavigationEvent: ((HomeViewController.NavigationEvent) -> Void)
	
	init(onNavigationEvent: @escaping ((HomeViewController.NavigationEvent) -> Void)) {
		self.onNavigationEvent = onNavigationEvent
	}
	
	func make() -> UIViewController {
		let viewModel = HomeViewModel()
		let viewController = HomeViewController(viewModel: viewModel)
		viewController.onNavigationEvent = onNavigationEvent
		
		return viewController
	}
}
