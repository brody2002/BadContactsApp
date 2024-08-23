
import Foundation

struct AddressBook {
    private var contacts = [
        Contact(name: "Brody", postalCode: "94107"),
        Contact(name: "Sarah", postalCode: "95616"),
        Contact(name: "MA", postalCode: "94107"),
        Contact(name: "KaiRo", postalCode: "?????")
    ]
    
    mutating func toggleFavorite(atIndex index: Int) {
        contacts[index].isFavorite.toggle()
    }
    
    func contact(atIndex index: Int) -> Contact {
        contacts[index]
    }
        
    func contactIsFavorite(atIndex index: Int) -> Bool {
        contacts[index].isFavorite
    }
    
    var numberOfFavorites: Int {
        var count = 0
        
        for contact in contacts {
            if contact.isFavorite {
                count += 1
            }
        }
        return count
    }
    
    var numberOfContacts: Int {
        contacts.count
    }
}
