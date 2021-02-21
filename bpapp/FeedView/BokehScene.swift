//
//  BokehScene.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import Foundation
import SpriteKit

class BokehScene : SKScene {
    
    var bokeh: SKEmitterNode?
    
    override func didMove(to view: SKView) {
        
        self.bokeh = SKEmitterNode(fileNamed: "BokehParticle.sks")
        self.bokeh?.position = CGPoint(x: 360, y: 640)
        
        self.addChild(bokeh!)
        
    }
    
}
