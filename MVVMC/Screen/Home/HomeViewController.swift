//
//  HomeViewController.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class HomeViewController: UIViewController {
	
	enum NavigationEvent {
		case login
	}
	
	var onNavigationEvent: ((NavigationEvent) -> Void)?
	
	private let viewModel: HomeViewModel

	init(viewModel: HomeViewModel) {
		self.viewModel = viewModel
		super.init(nibName: "HomeViewController", bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBAction func loginTapped(_ sender: Any) {
		onNavigationEvent?(.login)
	}
}
