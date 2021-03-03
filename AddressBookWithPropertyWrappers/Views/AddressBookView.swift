//
//  ContentView.swift
//  AddressBookWithPropertyWrappers
//
//  Created by Ben Stone on 3/3/21.
//

import SwiftUI

struct AddressBookView: View {
    // TODO: Add property wrapper to viewModel so that it observes changes
    var viewModel = AddressBookViewModel()
    
    // TODO: Add property wrapper to displayFavoriteCount property
    var displayFavoriteCount = true
    
    var body: some View {
        VStack {
            Text("Address Book")
                .font(.title)
                .padding()                               
            Spacer()
            ContactsView() //TODO: Pass the viewModel to the ContactsView
            Spacer()
            if displayFavoriteCount {
                HStack {
                    Text("You have \(viewModel.favoritedContactCount) favorite" + (viewModel.favoritedContactCount != 1 ? "s" : ""))
                        .padding()
                    Spacer()
                }
            }
            // TODO: Add toggle for displayFavoriteCount
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBookView()
    }
}