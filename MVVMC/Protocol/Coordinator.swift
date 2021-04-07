//
//  Coordinator.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

protocol Coordinator {

	var rootViewController: UIViewController { get }

	func start()
}
