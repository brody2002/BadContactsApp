

import SwiftUI

struct AddressBookView: View {
    // TODO: STATEOBJECT - Add property wrapper to viewModel so that it observes changes
    private var viewModel = AddressBookViewModel()
    
    // TODO: STATE - Add property wrapper to displayFavoriteCount property so it can be reassigned
    @State private var displayFavoriteCount = true
    
    var body: some View {
        VStack {
            Text("Address Book")
                .font(.title)
                .padding()                               
            Spacer()
            ContactsView()
                .environmentObject(viewModel)
            //TODO: ENVIRONMENTOBJECT - Pass the viewModel to the ContactsView
            Spacer()
            if displayFavoriteCount {
                HStack {
                    Text("You have \(viewModel.favoritedContactCount) favorite" + (viewModel.favoritedContactCount != 1 ? "s" : ""))
                        .padding()
                    Spacer()
                }
            }
            // TODO: STATE - Add toggle for displayFavoriteCount
            Toggle("Display number of favorites", isOn: $displayFavoriteCount)
                .padding()
        }
        .background(Color(red: 0/255, green: 142/255, blue: 237/255).ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBookView()
    }
}
