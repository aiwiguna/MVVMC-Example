//
//  Dummy1Screen.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class Dummy1Screen: Screen {
	private let onNavigationEvent: ((Dummy1ViewController.NavigationEvent) -> Void)
	
	init(onNavigationEvent: @escaping ((Dummy1ViewController.NavigationEvent) -> Void)) {
		self.onNavigationEvent = onNavigationEvent
	}
	
	func make() -> UIViewController {
		let viewController = Dummy1ViewController()
		viewController.onNavigationEvent = onNavigationEvent
		
		return viewController
	}
}
