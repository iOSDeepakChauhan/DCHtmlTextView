//
//  ViewController.swift
//  DCHtmlTextView
//
//  Created by Deepak on 02/09/2020.
//  Copyright (c) 2020 Deepak. All rights reserved.
//

import UIKit
import DCHtmlTextView

struct Constants {
    static let infoButtonTitle = "..."
}

class ViewController: UIViewController {
    
    @IBOutlet weak var htmlTextView: DCHtmlTextView!

    let plainText = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu."
    let boldText = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu..<br /><br /> <p><b>Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu.</b></p>"
    let unorderedList = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu.. <br/> <br/> <ul><li>Lorem ipsum</li><li>Lorem ipsum</li><li>Lorem ipsum</li></ul>"
    let orderedList = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu.. <br/> <br/> <ol><li>orem ipsum</li><li>orem ipsum</li><li>orem ipsum</li></ol>"
    let bulletPoints = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu.<br /><br />Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu:<br /><br />●  Lorem ispum<br />●  Lorem ispum<br />●  Lorem ispum"
    let linkText = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu. <a href='http://www.google.com'>Lorem ispum</a>  <a href='http://www.google.com'>Lorem ispum</a>."
    let mobileNumber = "Lorem ispum <a href='tel:18002222121'>1800 222 2121</a> or <a href='tel:+6562222121'>(65) 6222 2121</a>(if you are overseas) Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu."
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayHTMlSTringInTextView(htmlString: self.plainText)
        addMorenavButton()
    }
    func displayHTMlSTringInTextView(htmlString: String) {
        htmlTextView.setHTMLText(text: htmlString)
    }
    func addMorenavButton() {
        self.title = "Example"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: Constants.infoButtonTitle, style: .plain, target: self, action: #selector(moreButtonTapped) )
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "Info"
    }
    @objc func moreButtonTapped() {
        let actionSheet = UIAlertController(title: "DCHtmlTextView", message: "Please select action", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Plain text", style: .default, handler: { (_)in
            self.displayHTMlSTringInTextView(htmlString: self.plainText)
        }))
        actionSheet.addAction(UIAlertAction(title: "bold text", style: .default, handler: { (_)in
            self.displayHTMlSTringInTextView(htmlString: self.boldText)
        }))
        actionSheet.addAction(UIAlertAction(title: "Bullet points", style: .default, handler: { (_)in
            self.displayHTMlSTringInTextView(htmlString: self.bulletPoints)
        }))
        actionSheet.addAction(UIAlertAction(title: "Ordered list", style: .default, handler: { (_)in
            self.displayHTMlSTringInTextView(htmlString: self.orderedList)
        }))
        actionSheet.addAction(UIAlertAction(title: " unordered list", style: .default, handler: { (_)in
            self.displayHTMlSTringInTextView(htmlString: self.unorderedList)
        }))
        actionSheet.addAction(UIAlertAction(title: "link", style: .default, handler: { (_)in
            self.displayHTMlSTringInTextView(htmlString: self.linkText)
        }))
        actionSheet.addAction(UIAlertAction(title: "Phone number", style: .default, handler: { (_)in
            self.displayHTMlSTringInTextView(htmlString: self.mobileNumber)
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (_)in
            print("User click Cancel button")
        }))
        self.present(actionSheet, animated: true, completion: {
            print("completion block")
        })
    }
}
