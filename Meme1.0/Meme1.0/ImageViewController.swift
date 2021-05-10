//
//  ImageViewController.swift
//  Meme1.0
//
//  Created by Eth Os on 09/09/1442 AH.
//

import Foundation
import Foundation
import UIKit

class ImageViewController: UIViewController,  UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
    let pickerController = UIImagePickerController()
    
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        pickerController.delegate = self
    }
    override func viewWillAppear(_ animated: Bool){
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    
    @IBOutlet weak var pickImageView: UIImageView!
    
    @IBAction func pickAnImage(_ sender: Any) {

                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .photoLibrary
                present(imagePicker, animated: true, completion: nil)
            }
       
    @IBAction func imageFromCamera(_ sender: Any) {
        let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .camera
                present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey : Any]){
        
        if let image = info [UIImagePickerController.InfoKey.originalImage] as? UIImage {
                   pickImageView.contentMode = .scaleAspectFit
                   pickImageView.image = image
               }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            dismiss(animated: true, completion: nil)
}
}

    
