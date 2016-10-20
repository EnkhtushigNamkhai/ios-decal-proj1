//
//  AddViewController.swift
//  Project1
//
//  Created by Enkhtushig Namkhai on 10/19/16.
//  Copyright © 2016 EnkhtushigNamkhai. All rights reserved.
//

import UIKit

protocol SomeDelegate {
    func sendBack(str: String)
    func updateModel(strs: [String])
}

class AddViewController: UIViewController {
    
//    var delegate: SomeDelegate? = nil
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var dateTextField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Here")
        let list = [titleTextField.text!, dateTextField.text!]
        var final_list = UserDefaults.standard.object(forKey: "final_list") as! [[String]]
        print(final_list)
        final_list.append(list)
        UserDefaults.standard.set(final_list, forKey: "final_list")
        print(final_list)
        
        
    
//        if (delegate != nil) {
//            if (titleTextField.text != nil && dateTextField.text != nil){
//                print("HHHHHHHHH SO GOES HERER")
//                
//                print(list)
//                delegate?.updateModel(strs: list )
//            
////                navigationController!.popViewController(animated: true)
//                print("DOES GO HERE!!!!!!!")
//                dismiss(animated: true, completion: nil)
//                print("DISMISSSSS")
//            
//            }
//            print("TEXT FIELD IS NIL!!!")
//        }
//        print("DELEGATE IS NILL!!")
//    }
    
}




//    @IBAction func DoneTapped(_ sender: AnyObject) {
//        if (delegate != nil) {
//            if (titleTextField.text != nil && dateTextField.text != nil){
//                print("HHHHHHHHH SO GOES HERER")
//                let list = [titleTextField.text, dateTextField.text]
//                delegate?.updateModel(strs: list as! [String])
//
//                navigationController!.popViewController(animated: true)
//                print("DOES GO HERE!!!!!!!")
//                dismiss(animated: true, completion: nil)
//                print("DISMISSSSS")
//
//            }
//            print("TEXT FIELD IS NIL!!!")
//        }
//        print("DELEGATE IS NILL!!")
//
//    }
}
