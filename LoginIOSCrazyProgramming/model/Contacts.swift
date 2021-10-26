//
//  Contacts.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 26/10/21.
//

import Foundation
import SwiftUI

struct Contacts: Identifiable {
    let id = UUID()
    let contactName: String
    let contactImage: String
    let contactPhone: String
    let contactAddress: String
    let contactEmail: String
}

let contacts = [
    Contacts(contactName: "David Warner", contactImage: "warner", contactPhone:"+02909090345", contactAddress: "Sydney, New South Wales", contactEmail: "davidWarner31@gmail.com"),
    Contacts(contactName: "Aaron Finch", contactImage: "finch", contactPhone: "+02909090346", contactAddress: "Melbourne, Victoria", contactEmail: "aaronFinch5@gmail.com"),
    Contacts(contactName: "Mitchell Marsh", contactImage: "marsh", contactPhone: "+02909090346", contactAddress: "Perth, Western Australia", contactEmail: "mitchellMarsh8@gmail.com"),
    Contacts(contactName: "Steve Smith", contactImage: "smith", contactPhone: "+02909090348", contactAddress: "Sydney, New South Wales", contactEmail: "steveSmith49@gmail.com"),
    Contacts(contactName: "Glenn Maxwell", contactImage: "maxwell", contactPhone: "+02909090349", contactAddress: "Melbourne, Victoria", contactEmail: "glennMaxwell32@gmail.com"),
    Contacts(contactName: "Marcus Stoinis", contactImage: "stoinis", contactPhone: "+02909090350", contactAddress: "Perth, Western Australia", contactEmail: "marcusStoinis13@gmail.com"),
    Contacts(contactName: "Matthew Wade", contactImage: "wade", contactPhone: "+02909090351", contactAddress: "Hobart, Tasmania", contactEmail: "matthewWade17@gmail.com"),
    Contacts(contactName: "Mitchell Starc", contactImage: "starc", contactPhone: "+02909090352", contactAddress: "Sydney, New South Wales", contactEmail: "mitchellStarc56@gmail.com"),
    Contacts(contactName: "Pat Cummins", contactImage: "cummins", contactPhone: "+02909090353", contactAddress: "Logan City, Queensland", contactEmail: "patCummins30@gmail.com"),
    Contacts(contactName: "Josh Hazlewood", contactImage: "hazlewood", contactPhone: "+02909090354",contactAddress: "Gold Coast, Queensland", contactEmail: "joshHazlewood38@gmail.com"),
    Contacts(contactName: "Adam Zampa", contactImage: "zampa", contactPhone: "+02909090355", contactAddress: "Adelaide, South Australia", contactEmail: "adamZampa88@gmail.com")
]
