//
//  ViewController.swift
//  Instagrid
//
//  Created by Wass on 09/11/2022.
//

import UIKit

class ViewController: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate  {
    
    
    
    @IBOutlet weak var displayImage: UIView!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    
    @IBOutlet weak var firstDisplaySelector: UIImageView!
    @IBOutlet weak var secondDisplaySelector: UIImageView!
    @IBOutlet weak var thirdDisplaySelector: UIImageView!
    
    @IBOutlet weak var display: DisplayImage!
    
    
    @IBOutlet weak var label: UILabel!
    
    var selectedView: UIView!
    
    let imagePicker = UIImagePickerController()
    
    // Buttons allowing to choose between the three displays
    @IBAction func firstDisplayButton() {
        firstDisplay()
    }
    
    @IBAction func secondDisplayButton() {
     secondDisplay()
    }
    
    @IBAction func thirdDisplayButton() {
    thirdDisplay()
    }
    
    
    //Action buttons functions
    func firstDisplay() {
        display.isHidden = false
        display.style = .display1
        firstDisplaySelector.isHidden = false
        secondDisplaySelector.isHidden = true
        thirdDisplaySelector.isHidden = true
    }
    
    func secondDisplay() {
        display.isHidden = false
        display.style = .display2
        firstDisplaySelector.isHidden = true
        secondDisplaySelector.isHidden = false
        thirdDisplaySelector.isHidden = true
    }
    
    func thirdDisplay() {
        display.isHidden = false
        display.style = .display3
        firstDisplaySelector.isHidden = true
        secondDisplaySelector.isHidden = true
        thirdDisplaySelector.isHidden = false
    }
    
    func labelText() {
        label.text = "Swipe up to share"
        label.font = UIFont(name:"Delm-Medium", size:25)
    }
    
    // Function allowing to select a photo in the album photos.
    @objc func chooseImage(_ gesture: UITapGestureRecognizer) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            selectedView = gesture.view
            
            
            present(imagePicker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        (selectedView as? UIImageView)?.image = info[.originalImage] as? UIImage
        dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
    
    // swipeUp function allow to manage the swipe up movement on the display, and start the activityViewController in order to record the display image.
    @objc  func swipeUp(_ sender:UIPanGestureRecognizer) {
        let translation = sender.translation(in: displayImage)
        switch sender.state {
        case .began, .changed:
                UIView.animate(withDuration: 0.50) {
                    self.displayImage.transform = CGAffineTransform(translationX: 0, y: translation.y)
            }
        case .cancelled, .ended:
            if translation.y < -200 {
                UIView.animate(withDuration: 0.75) {
                    self.displayImage.transform = CGAffineTransform(translationX: 0, y: -650)
                }
                
            let image = self.displayImage.takeScreenShot()
            let activityController = UIActivityViewController(activityItems: [image] , applicationActivities: nil)
            present(activityController, animated: true)

                activityController.completionWithItemsHandler = {(activityType: UIActivity.ActivityType?, completed: Bool, returnedItems: [Any]?, error: Error?) in
                    UIView.animate(withDuration: 0.75) {
                        self.displayImage.transform = .identity
                    }
                }
            } else {
                UIView.animate(withDuration: 0.5) {
                    self.displayImage.transform = .identity
                }
            }
        default:
            break
        }
    
    }
    
    // swipeLeft function allow to manage the swipe left movement on the display, and start the activityViewController in order to record the display image.
    @objc  func swipeLeft(_ sender:UIPanGestureRecognizer) {
        let translation = sender.translation(in: displayImage)
        switch sender.state {
        case .began, .changed:
                UIView.animate(withDuration: 0.50) {
                    self.displayImage.transform = CGAffineTransform(translationX: translation.x, y: 0)
            }
        case .cancelled, .ended:
            if translation.x < -200 {
                UIView.animate(withDuration: 0.75) {
                    self.displayImage.transform = CGAffineTransform(translationX: -650, y: 0)
                }
                
            let image = self.displayImage.takeScreenShot()
            let activityController = UIActivityViewController(activityItems: [image] , applicationActivities: nil)
            present(activityController, animated: true)

                activityController.completionWithItemsHandler = {(activityType: UIActivity.ActivityType?, completed: Bool, returnedItems: [Any]?, error: Error?) in
                    UIView.animate(withDuration: 0.75) {
                        self.displayImage.transform = .identity
                    }
                }
            } else {
                UIView.animate(withDuration: 0.5) {
                    self.displayImage.transform = .identity
                }
            }
        default:
            break
        }
    
    }
    
    //Notifies when the orientation is about to change, in order to choose between the swipeUp function and the swipeLeftFunction.
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isPortrait{
            labelText()
            let swipeUpGestureReconizer = UIPanGestureRecognizer(target: self, action: #selector(swipeUp(_:)))
            self.displayImage.addGestureRecognizer(swipeUpGestureReconizer)
           
        } else  if UIDevice.current.orientation.isLandscape {
            label.text = "Swipe left to share"
            label.font = UIFont(name:"Delm-Medium", size:25)
            let swipeLeftGestureReconizer = UIPanGestureRecognizer(target: self, action: #selector(swipeLeft(_:)))
            self.displayImage.addGestureRecognizer(swipeLeftGestureReconizer)
           
        }
    }
    
    override func viewDidLoad() {
        
        secondDisplay()
        
        labelText()

        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        
        //Implementation of the chooseImage function when we tap on a imageView.
        [imageView1,imageView2,imageView3,imageView4,imageView5,imageView6].forEach {
            $0?.isUserInteractionEnabled = true
            $0?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(chooseImage)))
        }
    }
}

extension UIView {
    
    // Add a screenshot feature to the UIView class.
    func takeScreenShot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        if image != nil {
            return image!
        }
        
        return UIImage()
    }
}


