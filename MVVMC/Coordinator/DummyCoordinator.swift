//
//  DummyCoordinator.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class DummyCoordinator: Coordinator {
	var rootViewController: UIViewController {
		return navigationController
	}
	
	private let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		let screen = makeDummy1Screen()
		Router.shared.push(screen, on: self)
	}
	
	private func makeDummy1Screen() -> Dummy1Screen {
		let onNavigationEvent: ((Dummy1ViewController.NavigationEvent) -> Void) = { [weak self] (navigationEvent: Dummy1ViewController.NavigationEvent) in
			
			guard let self = self else {
				return
			}
			
			switch navigationEvent {
			case .button:
				let screen = self.makeDummy2Screen()
				Router.shared.push(screen, on: self)
			}
		}
		
		return Dummy1Screen(onNavigationEvent: onNavigationEvent)
	}
	
	private func makeDummy2Screen() -> Dummy2Screen {
		let onNavigationEvent: ((Dummy2ViewController.NavigationEvent) -> Void) = { [weak self] (navigationEvent: Dummy2ViewController.NavigationEvent) in
			
			guard let self = self else {
				return
			}
			
			switch navigationEvent {
			case .button:
				let screen = self.makeDummy3Screen()
				Router.shared.push(screen, on: self)
			}
		}
		
		return Dummy2Screen(onNavigationEvent: onNavigationEvent)
	}
	
	private func makeDummy3Screen() -> Dummy3Screen {
		let onNavigationEvent: ((Dummy3ViewController.NavigationEvent) -> Void) = { [weak self] (navigationEvent: Dummy3ViewController.NavigationEvent) in
			
			guard let self = self else {
				return
			}
			
			switch navigationEvent {
			case .button:
				self.navigationController.popToRootViewController(animated: true)
			}
		}
		
		return Dummy3Screen(onNavigationEvent: onNavigationEvent)
	}
	
}
