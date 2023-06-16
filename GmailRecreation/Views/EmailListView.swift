//
//  EmailListView.swift
//  GmailRecreation
//
//  Created by Liam Horch on 6/16/23.
//

import SwiftUI

struct EmailListView: View {
    @ObservedObject var viewModel = EmailListViewModel()
    
    var body: some View {
        VStack {
            ForEach(viewModel.emails, id: \.self) { email in
                EmailCellView(email: email)
            }
        }
        .onAppear {
            viewModel.loadEmails()
        }
    }
}

struct EmailListView_Previews: PreviewProvider {
    static var previews: some View {
        EmailListView()
    }
}
