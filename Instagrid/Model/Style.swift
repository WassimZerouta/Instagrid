//
//  Style.swift
//  Instagrid
//
//  Created by Wass on 05/04/2023.
//

import Foundation


// class that inherits from Display class that allows to select the display style when it's called
class Style: Display {
    
    enum Style {
        case display1, display2, display3
    }
    
    var style: Style = .display1 {
        
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        
        switch style {
            
        case .display1:
            firstDisplay()

        case .display2:
            secondDisplay()

        case .display3:
            thirdDisplay()
        
        }
    }
}
