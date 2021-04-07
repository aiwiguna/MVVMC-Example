//
//  AppDelegate.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow? {
		get {
			return Router.shared.window
		}
		
		set {
			
		}
	}
	
	private let appCoordinator: AppCoordinator = AppCoordinator()

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		appCoordinator.start()
		return true
	}


}

