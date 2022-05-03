//
//  blur.swift
//  musica
//
//  Created by 李梓溪 on 25/7/21.
//

import Foundation
import SwiftUI
struct Blur: UIViewRepresentabe {
    var style : UIBlurEffect .Style = .systemMaterial
    func makeUIView(context : Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView( uiView: UIVisualEffectView, context: Context)
    {uiView. effect = UIBlurEffect(style: style)
        
    }
}
