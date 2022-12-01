//
//  DisplayImage.swift
//  Instagrid
//
//  Created by Wass on 25/11/2022.
//

import UIKit

// Creation of UIVIew subclass that allows to display the 3 differents display.

class DisplayImage: UIView {

    @IBOutlet private var imageView1:UIImageView!
    @IBOutlet private var imageView2:UIImageView!
    @IBOutlet private var imageView3:UIImageView!
    @IBOutlet private var imageView4:UIImageView!
    @IBOutlet private var imageView5:UIImageView!
    @IBOutlet private var imageView6:UIImageView!
    

    @IBOutlet private var imagePlus1:UIImageView!
    @IBOutlet private var imagePlus2:UIImageView!
    @IBOutlet private var imagePlus3:UIImageView!
    @IBOutlet private var imagePlus4:UIImageView!
    @IBOutlet private var imagePlus5:UIImageView!
    @IBOutlet private var imagePlus6:UIImageView!
    
    @IBOutlet private var bottomVerticalColumn:UIView!
    @IBOutlet private var topVerticalColumn:UIView!
    
   
    enum Style {
        case display1, display2, display3
    }
    
    var style: Style = .display1 {
        
        didSet {
            setStyle(style)
        }
    }
    
    // setStyle function allow to choose between three different display style.
    private func setStyle(_ style: Style) {
        
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        imageView4.translatesAutoresizingMaskIntoConstraints = false
        
        imageView1.removeConstraints(imageView1.constraints)
        imageView2.removeConstraints(imageView2.constraints)
        imageView3.removeConstraints(imageView3.constraints)
        imageView4.removeConstraints(imageView4.constraints)
        
        
        imageView1.layer.zPosition = 1
        imageView2.layer.zPosition = 1
        imageView3.layer.zPosition = 1
        imageView4.layer.zPosition = 1
        imageView5.layer.zPosition = 1
        imageView6.layer.zPosition = 1
 
        
        switch style {
            
        // First display imageView selection and constraints.
        case .display1:
     
            
            topVerticalColumn.isHidden = true
            bottomVerticalColumn.isHidden = false
            
            imagePlus1.isHidden = true
            imagePlus2.isHidden = true
            imagePlus3.isHidden = false
            imagePlus4.isHidden = false
            imagePlus5.isHidden = true
            imagePlus6.isHidden = false
            
            imageView3.isHidden = false
            imageView4.isHidden = true
            imageView5.isHidden = false
            imageView6.isHidden = true
            
            imageView5.image = imageView2.image
            if (imageView6.image != nil) {
                imageView3.image = imageView6.image}
            
            NSLayoutConstraint.activate([
                imageView1.widthAnchor.constraint(equalToConstant: 270),
                imageView1.heightAnchor.constraint(equalToConstant: 125),
                
                imageView5.widthAnchor.constraint(equalToConstant: 125),
                imageView5.heightAnchor.constraint(equalToConstant: 125),
                imageView5.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
                
                imageView3.widthAnchor.constraint(equalToConstant: 125),
                imageView3.heightAnchor.constraint(equalToConstant: 125),
                imageView3.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
                imageView3.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
           
            ])
            
        // second display imageView selection and constraints.
        case .display2:
            
            topVerticalColumn.isHidden = false
            bottomVerticalColumn.isHidden = true
            
            imagePlus1.isHidden = false
            imagePlus2.isHidden = false
            imagePlus3.isHidden = true
            imagePlus4.isHidden = true
            imagePlus5.isHidden = false
            imagePlus6.isHidden = true
            
            imageView3.isHidden = false
            imageView4.isHidden = true
            imageView5.isHidden = true
            imageView6.isHidden = true
            imageView2.image = imageView5.image
            if (imageView6.image != nil) {
                imageView3.image = imageView6.image}
            
            
            NSLayoutConstraint.activate([
                imageView1.widthAnchor.constraint(equalToConstant: 125),
                imageView1.heightAnchor.constraint(equalToConstant: 125),
                
                imageView2.widthAnchor.constraint(equalToConstant: 125),
                imageView2.heightAnchor.constraint(equalToConstant: 125),
                imageView2.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
                imageView2.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
             
                imageView3.widthAnchor.constraint(equalToConstant: 270),
                imageView3.heightAnchor.constraint(equalToConstant: 125),
                imageView3.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            ])
            
     
        // third display imageView selection and constraints.
        case .display3:
            
            topVerticalColumn.isHidden = false
            bottomVerticalColumn.isHidden = false
            
            
            imagePlus1.isHidden = false
            imagePlus2.isHidden = false
            imagePlus3.isHidden = true
            imagePlus4.isHidden = false
            imagePlus5.isHidden = true
            imagePlus6.isHidden = false
            
            imageView3.isHidden = true
            imageView4.isHidden = false
            imageView5.isHidden = true
            imageView6.isHidden = false
            if (imageView5.image != nil) {
                imageView2.image = imageView5.image}

         
                imageView6.image = imageView3.image
            
        
            
            NSLayoutConstraint.activate([
                imageView1.widthAnchor.constraint(equalToConstant: 125),
                imageView1.heightAnchor.constraint(equalToConstant: 125),
          
                imageView2.widthAnchor.constraint(equalToConstant: 125),
                imageView2.heightAnchor.constraint(equalToConstant: 125),
                imageView2.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
                imageView2.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),

                imageView6.widthAnchor.constraint(equalToConstant: 125),
                imageView6.heightAnchor.constraint(equalToConstant: 125),
                imageView6.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
                imageView6.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
                
                
                imageView4.widthAnchor.constraint(equalToConstant: 125),
                imageView4.heightAnchor.constraint(equalToConstant: 125),
                imageView4.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
                imageView4.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            ])
        }
    }
}
