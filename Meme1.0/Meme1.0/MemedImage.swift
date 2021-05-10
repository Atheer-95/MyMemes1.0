//
//  MemedImage.swift
//  Meme1.0
//
//  Created by Eth Os on 11/09/1442 AH.
//

import Foundation
import UIKit

class MemedImage: UIViewController {
    
    func generateMemedImage() -> UIImage {

        // Render view to an image
        UIGraphicsBeginImageContext(self.view.frame.size)
        view.drawHierarchy(in: self.view.frame, afterScreenUpdates: true)
        let memedImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return memedImage
    }

    struct Meme {
        let topText: UITextField
        let bottomText: UITextField
        let originalImage: UIImageView
        var memeImage: memedImage
      
    }
    
    func save() {
            // Create the meme
            let meme = Meme(topText: top.text!, bottomText: bottom.text!, originalImage: pickImageView.image!, memedImage: memedImage)
    }
}
