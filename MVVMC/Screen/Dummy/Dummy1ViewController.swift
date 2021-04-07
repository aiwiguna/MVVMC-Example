//
//  Dummy1ViewController.swift
//  MVVMC
//
//  Created by Antoni Wiguna on 07/04/21.
//

import UIKit

class Dummy1ViewController: UIViewController {
	
	enum NavigationEvent {
		case button
	}
	
	var onNavigationEvent: ((NavigationEvent) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBAction func buttonTapped(_ sender: Any) {
		onNavigationEvent?(.button)
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
