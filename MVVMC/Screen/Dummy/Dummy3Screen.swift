//
//  Dummy3Screen.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit
class Dummy3Screen: Screen {
	private let onNavigationEvent: ((Dummy3ViewController.NavigationEvent) -> Void)
	
	init(onNavigationEvent: @escaping ((Dummy3ViewController.NavigationEvent) -> Void)) {
		self.onNavigationEvent = onNavigationEvent
	}
	
	func make() -> UIViewController {
		let viewController = Dummy3ViewController()
		viewController.onNavigationEvent = onNavigationEvent
		
		return viewController
	}
}
