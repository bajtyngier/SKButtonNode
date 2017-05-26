//
//  GameScene.swift
//  SKButtonNode
//
//  Created by Konrad Bajtyngier on 21/04/2017.
//  Copyright © 2017 Konrad Bajtyngier. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
	
	let texture1 = SKTexture(imageNamed: "button1")
	let texture2 = SKTexture(imageNamed: "button2")
	
	override func didMove(to view: SKView) {
		
		
		
		//Exmaple 1 - simple example with texture and text
		
		let button1 = SKButtonNode(texture: texture1) {
			print("Button 1 pressed!")
		}
		button1.setTitle("Example 1")
		button1.position = CGPoint(x: view.frame.midX, y: view.frame.height-100)
		addChild(button1)
		
		
		
		//Example 2 - example with different highlighetd state
		
		let button2 = SKButtonNode(texture: texture1, title: "Example 2") {
			print("Button 2 pressed!")
		}
		button2.titleLabel?.fontSize = 15
		button2.titleLabel?.fontName = "Avenir-Black"
		button2.setTexture(texture2, for: .highlighted)
		button2.setTitleColor(SKColor.red, for: .highlighted)
		button2.position = CGPoint(x: view.frame.midX, y: view.frame.height-200)
		addChild(button2)
		
		
		
		//Example 3 - button based on a shape, not image
		
		let shape = SKShapeNode(circleOfRadius: 40)
		shape.fillColor = SKColor.brown
		shape.strokeColor = SKColor.white
		if let button3 = SKButtonNode(view: view, shape: shape, title: "Ok") {
			button3.action = {
				print("Button 3 pressed!")
			}
			button3.setTitleColor(SKColor.black, for: .highlighted)
			button3.setAlpha(0.5, for: .highlighted)
			button3.position = CGPoint(x: view.frame.midX, y: view.frame.height-350)
			addChild(button3)
		}
		
    }
	
}
