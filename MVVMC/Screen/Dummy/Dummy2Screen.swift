//
//  Dummy2Screen.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit
class Dummy2Screen: Screen {
	private let onNavigationEvent: ((Dummy2ViewController.NavigationEvent) -> Void)
	
	init(onNavigationEvent: @escaping ((Dummy2ViewController.NavigationEvent) -> Void)) {
		self.onNavigationEvent = onNavigationEvent
	}
	
	func make() -> UIViewController {
		let viewController = Dummy2ViewController()
		viewController.onNavigationEvent = onNavigationEvent
		
		return viewController
	}
}
