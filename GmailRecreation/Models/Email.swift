//
//  Email.swift
//  GmailRecreation
//
//  Created by Liam Horch on 6/16/23.
//

import Foundation

struct Email: Hashable {
    let sentFrom: String
    let sentAt: String
    let subject: String
    var body: String
    var read: Bool = false
    
    static func mockEmail() -> Email {
        return Email(sentFrom: "Liam",
                     sentAt: "Jan 5th",
                     subject: "Jan 6th Planning",
                     body: "The time is upon us to take back what is ours mwahaha!")
    }
    // Add more...
}
