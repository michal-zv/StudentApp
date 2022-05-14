//
//  NewStudentViewController.swift
//  StudentApp
//
//  Created by Michal on 12/05/2022.
//

import UIKit

class NewStudentViewController: UIViewController {


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
        self.navigationController?.popViewController(animated: true)
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
