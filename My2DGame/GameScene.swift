//
//  GameScene.swift
//  My2DGame
//
//  Created by shaon ahmed on 2019-01-30.
//  Copyright © 2019 ShaonDesign. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
//   let label = SKLabelNode(text: "Hello SpriteKit")
    var batman = SKSpriteNode(imageNamed: "bluebatman")
    
    // Runs immediately afther the scene is presented by its corresponding view.
    override func didMove(to view: SKView){
        // Add the label as a child node to the scene’s node tree.
        // addChild(label)
        addChild(batman)
        // Use the view’s width and height to determine the label’s coordinates and position it at the center of the screen.
        // label.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        batman.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        
        // Create a tap gesture recognizer as an instance of the UITapGestureRecognizer class and add it to the scene’s view.
        // action is a selector associated with the tap(recognizer:) method that you will add to the GameScene class
        let recogizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(recogizer)
    }
    @objc func tap(recognizer:UITapGestureRecognizer) {
        let viewLocation = recognizer.location(in: self.view)
        let sceneLocation = convertPoint(fromView: viewLocation)
        
        if atPoint(sceneLocation) == batman {
            let scale = SKAction.scale(by: 0.5, duration: 1)
            batman.run(scale)
        }
    }
    
    //@objc func tap(recognizer:UITapGestureRecognizer) {
        // Determine the tap’s location in the scene’s view coordinates with the
        
        // let viewLocation = recognizer.location(in: view)
        // You convert the location’s point from view coordinates to scene ones
        // let sceneLocation = convertPoint(fromView: viewLocation)
        // 1 second animation that moves a certain node from its current position to the point where you tapped the screen.
        // let moveToAction = SKAction.move(to: sceneLocation, duration: 1)
        // batman.run(moveToAction)
        // let moveByAction = SKAction.moveBy(x: sceneLocation.x - batman.position.x, y: sceneLocation.y - batman.position.y, duration: 1)
    
        // REVERSED ACTIONS AND SEQUENCES
        // Reverse the “move by” action with the reversed() instance method from the SKAction class: it does the exact opposite as its counterpart now.
        // let moveByReversedAction = moveByAction.reversed()
        // Create an array of actions which contains the action itself and its reversed one
        //let moveByActions = [moveByAction, moveByReversedAction]
        // Declare a sequence of actions
        // let moveSequence = SKAction.sequence(moveByActions)
        
        // let moveRepeatSequence = SKAction.repeat(moveSequence, count: 3)
        
        // let moveRepeatForeverSequence = SKAction.repeatForever(moveSequence)
        // let scale = SKAction.scale(to: 0.5, duration: 1)
        // Run the sequence
        // batman.run(moveRepeatForeverSequence)
        // batman.run(scale)
        
    // }
}
