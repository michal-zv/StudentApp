//
//  NewStudentViewController.swift
//  StudentApp
//
//  Created by Michal on 12/05/2022.
//

import UIKit

class NewStudentViewController: UIViewController, MySegueProtocol {

    @IBOutlet weak var ViewControllerNew: UIView!
    
    func getVideContainer(identifier: String) -> UIView {
        return ViewControllerNew;
    }
    
    @IBOutlet weak var phoneTv: UITextField!
    @IBOutlet weak var nameTv: UITextField!
    @IBOutlet weak var idTv: UITextField!
    @IBOutlet weak var addressTv: UITextField!
    @IBOutlet weak var avatarImgv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func save(_ sender: Any) {
        let student = Student()
        student.id = idTv.text
        student.name = nameTv.text
        student.phone = phoneTv.text
        student.address = addressTv.text
        Model.instance.add(student: student)
        performSegue(withIdentifier: "SaveSegue", sender: self)
    }
    
    @IBAction func cancel(_ sender: Any) {
        performSegue(withIdentifier: "CancelSegue", sender: self)
    }
    
    
    
//    // MARK: - Navigation
//
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         if((segue.identifier == "CancelSegue") || (segue.identifier == "SaveSegue")){
//             segue.destination as! StudentsTableViewController
//         }
//     }

}
