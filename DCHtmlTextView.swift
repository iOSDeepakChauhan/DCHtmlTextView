//
//  DCHtmlTextView.swift
//  sample
//
//  Created by vend64 on 2/9/20.
//  Copyright © 2020 vend64. All rights reserved.
//

import Foundation
import UIKit

public class DCHtmlTextView: UITextView {
    /// This method will render the Plain HTML tags in to UITextView
    /// - Parameter text: Optional strng ehich contain the html tags as string which does not include any styling for example like "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu..<br /><br /> <p><b>Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu.</b></p>"
     public func setHTMLText(text: String?) {
        guard let htmlString = text else {
            return
        }
        let modifiedString = htmlString.replacingOccurrences(of: "< br / >", with: "<br/>")
               let htmlCSSString = "<style>" +
                   "html *" +
                   "{" +
                   "padding: \(0.0);" +
                   "font-size: \(DCSpace.xs) !important;" +
                   "color: #\(585858) !important;" +
                   "font-family: \("Roboto"), Roboto !important;" +
               "}</style> \(modifiedString)"
               guard let data = htmlCSSString.data(using: String.Encoding.utf8),
                   let attributedString = try? NSAttributedString(data: data,
                                                           options: [.documentType: NSAttributedString.DocumentType.html,
                                                                     .characterEncoding: String.Encoding.utf8.rawValue],
                                                           documentAttributes: nil) else {
                                                               return
               }
               attributedText = attributedString
    }
}

public struct DCSpace {
   public static let xxxs: CGFloat = 4.00
   public static let xxs: CGFloat = 8.00
   public static let xs: CGFloat = 16.00
   public static let s: CGFloat = 24.00
   public static let m: CGFloat = 32.00
   public static let l: CGFloat = 48.00
}
