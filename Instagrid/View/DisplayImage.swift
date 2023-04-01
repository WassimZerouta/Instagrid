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
    @IBOutlet private var imageView7:UIImageView!
    @IBOutlet private var imageView8:UIImageView!
    @IBOutlet private var imageView9:UIImageView!
    @IBOutlet private var imageView10:UIImageView!
    
    @IBOutlet private var imagePlus1:UIImageView!
    @IBOutlet private var imagePlus2:UIImageView!
    @IBOutlet private var imagePlus3:UIImageView!
    @IBOutlet private var imagePlus4:UIImageView!
    @IBOutlet private var imagePlus5:UIImageView!
    @IBOutlet private var imagePlus6:UIImageView!
    @IBOutlet private var imagePlus7:UIImageView!
    @IBOutlet private var imagePlus8:UIImageView!
    @IBOutlet private var imagePlus9:UIImageView!
    @IBOutlet private var imagePlus10:UIImageView!
    
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
        
        imageView1.layer.zPosition = 1
        imageView2.layer.zPosition = 1
        imageView3.layer.zPosition = 1
        imageView4.layer.zPosition = 1
        imageView5.layer.zPosition = 1
        imageView6.layer.zPosition = 1
        imageView7.layer.zPosition = 1
        imageView8.layer.zPosition = 1
        imageView9.layer.zPosition = 1
        imageView10.layer.zPosition = 1
        
        switch style {
            
        // First display imageView selection and constraints.
        case .display1:
     
            topVerticalColumn.isHidden = true
            bottomVerticalColumn.isHidden = false
            
            imagePlus1.isHidden = false
            imagePlus2.isHidden = false
            imagePlus3.isHidden = false
            imagePlus4.isHidden = true
            imagePlus5.isHidden = true
            imagePlus6.isHidden = true
            imagePlus7.isHidden = true
            imagePlus8.isHidden = true
            imagePlus9.isHidden = true
            imagePlus10.isHidden = true
            
            imageView1.isHidden = false
            imageView2.isHidden = false
            imageView3.isHidden = false
            imageView4.isHidden = true
            imageView5.isHidden = true
            imageView6.isHidden = true
            imageView7.isHidden = true
            imageView8.isHidden = true
            imageView9.isHidden = true
            imageView10.isHidden = true
            
            if let image4 = imageView4.image { imageView1.image = image4 }
            if let image7 = imageView7.image { imageView1.image = image7 }
            if let image5 = imageView5.image { imageView2.image = image5}
            if let image8 = imageView8.image { imageView2.image = image8}
            if let image6 = imageView6.image { imageView3.image = image6}
            if let image9 = imageView9.image { imageView3.image = image9}
    
        // second display imageView selection and constraints.
        case .display2:
            
            topVerticalColumn.isHidden = false
            bottomVerticalColumn.isHidden = true
            
            imagePlus1.isHidden = true
            imagePlus2.isHidden = true
            imagePlus3.isHidden = true
            imagePlus4.isHidden = false
            imagePlus5.isHidden = false
            imagePlus6.isHidden = false
            imagePlus7.isHidden = true
            imagePlus8.isHidden = true
            imagePlus9.isHidden = true
            imagePlus10.isHidden = true
            
            imageView1.isHidden = true
            imageView2.isHidden = true
            imageView3.isHidden = true
            imageView4.isHidden = false
            imageView5.isHidden = false
            imageView6.isHidden = false
            imageView7.isHidden = true
            imageView8.isHidden = true
            imageView9.isHidden = true
            imageView10.isHidden = true
            
            if let image1 = imageView1.image { imageView4.image = image1 }
            if let image7 = imageView7.image { imageView4.image = image7 }
            if let image2 = imageView2.image { imageView5.image = image2 }
            if let image8 = imageView8.image { imageView5.image = image8 }
            if let image3 = imageView3.image { imageView6.image = image3 }
            if let image9 = imageView9.image { imageView6.image = image9 }
            
        // third display imageView selection and constraints.
        case .display3:
            
            topVerticalColumn.isHidden = false
            bottomVerticalColumn.isHidden = false
            
            
            imagePlus1.isHidden = true
            imagePlus2.isHidden = true
            imagePlus3.isHidden = true
            imagePlus4.isHidden = true
            imagePlus5.isHidden = true
            imagePlus6.isHidden = true
            imagePlus7.isHidden = false
            imagePlus8.isHidden = false
            imagePlus9.isHidden = false
            imagePlus10.isHidden = false
            
            imageView1.isHidden = true
            imageView2.isHidden = true
            imageView3.isHidden = true
            imageView4.isHidden = true
            imageView5.isHidden = true
            imageView6.isHidden = true
            imageView7.isHidden = false
            imageView8.isHidden = false
            imageView9.isHidden = false
            imageView10.isHidden = false
            
            if let image1 = imageView1.image  { imageView7.image = image1}
            if let image4 = imageView4.image { imageView7.image = image4 }
            if let image2 = imageView2.image { imageView8.image = image2}
            if let image5 = imageView5.image { imageView8.image = image5}
            if let image3 = imageView3.image { imageView9.image = image3}
            if let image6 = imageView6.image { imageView9.image = image6}
        }
    }
}
