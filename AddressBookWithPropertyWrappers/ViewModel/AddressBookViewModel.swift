

import Foundation

class AddressBookViewModel: ObservableObject {
    @Published var addressBook = AddressBook() // TODO: PUBLISHED - Add a property wrapper so that changes will be published
    
    var contactCount: Int { addressBook.numberOfContacts }
    
    var favoritedContactCount: Int { addressBook.numberOfFavorites }
    
    func toggleFavorite(atIndex index: Int) {
        addressBook.toggleFavorite(atIndex: index)
    }
    
    func contact(atIndex index: Int) -> Contact {
        addressBook.contact(atIndex: index)
    }
}
