//
//  Router.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

internal final class Router {
	static let shared = Router()

	let window: UIWindow = {
		let window = UIWindow(frame: UIScreen.main.bounds)
		return window
	}()
	
	private init() {}
	
	func setRoot(_ viewController: UIViewController) {
		
		// Check whether keyWindow is not empty && window has root view contoller.
		// If true, update the root view contoller with animation.
		// If not, set as new root view controller
		
		let isKeyWindowEmpty = UIApplication.shared.keyWindow == nil
		
		if !isKeyWindowEmpty, window.rootViewController != nil {

			guard let snapshot = window.snapshotView(afterScreenUpdates: true) else {
				return
			}

			viewController.view.addSubview(snapshot)
			window.rootViewController = viewController

			UIView.animate(
				withDuration: 0.25,
				animations: {
					snapshot.layer.opacity = 0
					snapshot.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
				},
				completion: { _ in
					snapshot.removeFromSuperview()
				}
			)
		} else {
			window.rootViewController = viewController
			window.makeKeyAndVisible()
		}
	}
	
	func push(_ screen: Screen, on coordinator: Coordinator) {

		guard let nav = coordinator.rootViewController as? UINavigationController else {
			return
		}

		if nav.viewControllers.count == 0 {
			nav.setViewControllers([ screen.make() ], animated: true)
			return
		}
		nav.pushViewController(screen.make(), animated: true)
	}

	func present(_ screen: Screen, on viewController: UIViewController, isAnimated: Bool = true) {

		viewController.present(screen.make(), animated: isAnimated, completion: nil)
	}
}
