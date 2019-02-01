//
//  GameViewController.swift
//  My2DGame
//
//  Created by shaon ahmed on 2019-01-30.
//  Copyright © 2019 ShaonDesign. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        // Create the scene with the GameScene class
        // It fills up the entire screen.
        let scene = GameScene(size: view.frame.size)
        // Force downcast the controllers view to a SpriteKit view.
        let skView = view as! SKView
        // Display the screne on the screen.
        skView.presentScene(scene)
    }
}
