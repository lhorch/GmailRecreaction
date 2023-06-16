//
//  EmailService.swift
//  GmailRecreation
//
//  Created by Liam Horch on 6/16/23.
//

import Foundation

class EmailService {
    func getEmails() -> [Email] {
        return Array(repeating: Email.mockEmail(), count: 22)
    }
}
