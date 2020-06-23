//
//  ViewController.swift
//  8Ball
//
//  Created by Tina Thomsen on 23/06/2020.
//  Copyright © 2020 Tina Thomsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var textView: UITextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
		print("Device was shaken!")
		//randomSentence()
		textView.text = randomSentence()
	}
	
	func randomSentence()->String{
		let sentence = ["As I see it, yes.","Ask again later.", "Better not tell you now.", "Cannot predict now.", "Concentrate and ask again.", "Don’t count on it.", "It is certain.", "It is decidedly so.", "Most likely.", "My reply is no.", "My sources say no.", "Outlook not so good.", "Outlook good.", "Reply hazy, try again.",	 "Signs point to yes.", "Very doubtful.", "Without a doubt.", "Yes.", "Yes – definitely.", "You may rely on it."]
		
		if let random = sentence.randomElement(){
			return random
		}
		return ""
	}

}

