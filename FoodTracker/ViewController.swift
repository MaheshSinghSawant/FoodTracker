//
//  ViewController.swift
//  FoodTracker
//
//  Created by Mahesh Sawant on 6/2/16.
//  Copyright © 2016 Mahesh Sawant. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    //MARK:properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameMealLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//MARK: UITF Delegates
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        nameMealLabel.text = textField.text
    }
    
    // Add what happens when you press cancel after opening the picker
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // used to dismiss the picker
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    //add what happens when the image is selected,cast it, assign it to a variable, and dismiss
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        photoImageView.image = selectedImage
        dismissViewControllerAnimated(true, completion: nil)
    }
    
//MARK: Actions

    
    @IBAction func selectPhoto(sender: UITapGestureRecognizer) {

        //first resign the FirstResponder which is textfield right now
        nameTextField.resignFirstResponder()
        // create your image picker controller which acts as a pipeline between the views
        let imagePicker = UIImagePickerController()
        //make sure the objects are of Source type .Photolibrary
        imagePicker.sourceType = .PhotoLibrary
        // make sure that the picker controllers delegate is the ViewController
        imagePicker.delegate = self
        
        //use present to show the image picker , animated animates presentations
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    @IBAction func setDefaultLabelText(sender: UIButton) {
        nameMealLabel.text = "Default Text"
    }
}

