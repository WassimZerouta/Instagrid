//
//  DisplayImage.swift
//  Instagrid
//
//  Created by Wass on 25/11/2022.
//

import UIKit

// class that defines the different display style

class Display {

 var imageView1: UIImageView
 var imageView2: UIImageView
 var imageView3: UIImageView
 var imageView4: UIImageView
 var imageView5: UIImageView
 var imageView6: UIImageView
 var imageView7: UIImageView
 var imageView8: UIImageView
 var imageView9: UIImageView
 var imageView10: UIImageView
    
 var imagePlus1: UIImageView
 var imagePlus2: UIImageView
 var imagePlus3: UIImageView
 var imagePlus4: UIImageView
 var imagePlus5: UIImageView
 var imagePlus6: UIImageView
 var imagePlus7: UIImageView
 var imagePlus8: UIImageView
 var imagePlus9: UIImageView
 var imagePlus10: UIImageView
    
 var firstDisplaySelector: UIImageView
 var secondDisplaySelector: UIImageView
 var thirdDisplaySelector: UIImageView
    
 var bottomVerticalColumn: UIView
 var topVerticalColumn: UIView
    
    
    private func layerPosition() {
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
    }
        
    func firstDisplay() {
        
        layerPosition()
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
        
        firstDisplaySelector.isHidden = false
        secondDisplaySelector.isHidden = true
        thirdDisplaySelector.isHidden = true
        
        if let image4 = imageView4.image { imageView1.image = image4 }
        if let image7 = imageView7.image { imageView1.image = image7 }
        if let image5 = imageView5.image { imageView2.image = image5 }
        if let image8 = imageView8.image { imageView2.image = image8 }
        if let image6 = imageView6.image { imageView3.image = image6 }
        if let image9 = imageView9.image { imageView3.image = image9 }
    }

    func secondDisplay() {
        
        layerPosition()
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
        
        firstDisplaySelector.isHidden = true
        secondDisplaySelector.isHidden = false
        thirdDisplaySelector.isHidden = true
        
        if let image1 = imageView1.image { imageView4.image = image1 }
        if let image7 = imageView7.image { imageView4.image = image7 }
        if let image2 = imageView2.image { imageView5.image = image2 }
        if let image8 = imageView8.image { imageView5.image = image8 }
        if let image3 = imageView3.image { imageView6.image = image3 }
        if let image9 = imageView9.image { imageView6.image = image9 }
    }
 
    func thirdDisplay() {
        
        layerPosition()
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
        
        firstDisplaySelector.isHidden = true
        secondDisplaySelector.isHidden = true
        thirdDisplaySelector.isHidden = false
        
        if let image1 = imageView1.image { imageView7.image = image1 }
        if let image4 = imageView4.image { imageView7.image = image4 }
        if let image2 = imageView2.image { imageView8.image = image2 }
        if let image5 = imageView5.image { imageView8.image = image5 }
        if let image3 = imageView3.image { imageView9.image = image3 }
        if let image6 = imageView6.image { imageView9.image = image6 }
        
    }
    
    init(_ imageView1: UIImageView, _ imageView2: UIImageView, _ imageView3: UIImageView,_ imageView4: UIImageView,_ imageView5: UIImageView,_ imageView6: UIImageView,_ imageView7: UIImageView,_ imageView8: UIImageView,_ imageView9: UIImageView,_ imageView10: UIImageView,_ imagePlus1: UIImageView,_ imagePlus2: UIImageView,_ imagePlus3: UIImageView,_ imagePlus4: UIImageView,_ imagePlus5: UIImageView,_ imagePlus6: UIImageView,_ imagePlus7: UIImageView,_ imagePlus8: UIImageView,_ imagePlus9: UIImageView,_ imagePlus10: UIImageView,_ firstDisplaySelector: UIImageView,_ secondDisplaySelector: UIImageView,_ thirdDisplaySelector: UIImageView,_ bottomVerticalColumn: UIView,_ topVerticalColumn: UIView) {
        self.imageView1 = imageView1
        self.imageView2 = imageView2
        self.imageView3 = imageView3
        self.imageView4 = imageView4
        self.imageView5 = imageView5
        self.imageView6 = imageView6
        self.imageView7 = imageView7
        self.imageView8 = imageView8
        self.imageView9 = imageView9
        self.imageView10 = imageView10
        self.imagePlus1 = imagePlus1
        self.imagePlus2 = imagePlus2
        self.imagePlus3 = imagePlus3
        self.imagePlus4 = imagePlus4
        self.imagePlus5 = imagePlus5
        self.imagePlus6 = imagePlus6
        self.imagePlus7 = imagePlus7
        self.imagePlus8 = imagePlus8
        self.imagePlus9 = imagePlus9
        self.imagePlus10 = imagePlus10
        self.firstDisplaySelector = firstDisplaySelector
        self.secondDisplaySelector = secondDisplaySelector
        self.thirdDisplaySelector = thirdDisplaySelector
        self.bottomVerticalColumn = bottomVerticalColumn
        self.topVerticalColumn = topVerticalColumn
    }
}
