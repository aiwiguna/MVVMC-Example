//
//  LoginViewController.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class LoginViewController: UIViewController {
	
	enum NavigationEvent {
		case register
	}
	
	var onNavigationEvent: ((NavigationEvent) -> Void)?

	private let viewModel: LoginViewModel
	
	init(viewModel: LoginViewModel) {
		self.viewModel = viewModel
		super.init(nibName: "LoginViewController", bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBAction func loginTapped(_ sender: Any) {
		onNavigationEvent?(.register)
	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
