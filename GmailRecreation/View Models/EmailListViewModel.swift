//
//  EmailListViewModel.swift
//  GmailRecreation
//
//  Created by Liam Horch on 6/16/23.
//

import Foundation

class EmailListViewModel: ObservableObject {
    @Published var emails: [Email] = [Email]()
    let service = EmailService()
    
    func loadEmails() {
        emails = service.getEmails()
    }
}
