//
//  EmailCellView.swift
//  GmailRecreation
//
//  Created by Liam Horch on 6/16/23.
//

import SwiftUI

struct EmailCellView: View {
    let email: Email
    
    var body: some View {
        HStack(alignment: .top) {
            Circle()
                .frame(width: 64, height: 64)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(email.sentFrom)
                        .font(.system(size: 22))
                    Spacer()
                    Text(email.sentAt)
                }
                .bold(!email.read)
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text(email.subject)
                            .bold(!email.read)
                        Text(email.body)
                    }
                    
                    Image(systemName: "star")
                }
            }
            .lineLimit(1)
            .truncationMode(.tail)
            
            
        }
        .padding()
    }
    
    func shortenString(_ string: String, _ length: Int) -> String {
        guard string.count > length else { return string }
        
        let index = string.index(string.startIndex, offsetBy: length)
        return string[..<index] + "..."
    }
}

struct EmailCellView_Previews: PreviewProvider {
    static var previews: some View {
        EmailCellView(email: Email.mockEmail())
    }
}
