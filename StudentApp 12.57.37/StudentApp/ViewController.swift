//
//  ViewController.swift
//  StudentApp
//
//  Created by Michal on 12/05/2022.
//

import UIKit

class ViewController: UIViewController, MySegueProtocol {
    
    func getVideContainer(identifier: String) -> UIView {
        return viewContainer;
    }
    
    @IBOutlet weak var viewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSegue(withIdentifier: "ListSegue", sender: self)
    }
}

protocol MySegueProtocol{
    func getVideContainer(identifier:String) ->UIView
}

class MySegue: UIStoryboardSegue{
    
    override func perform() {
        let svc = self.source
        let dvc = self.destination
        
        svc.addChild(dvc)

        if let svcp = svc as? MySegueProtocol{
            let container = svcp.getVideContainer(identifier: self.identifier!)
            dvc.view.frame = container.frame
            dvc.view.frame.origin.x = 0
            dvc.view.frame.origin.y = 0
            container.addSubview(dvc.view)
        }
    }
}
