

import SwiftUI

struct ModelClass : Identifiable
{
    let id = UUID()
    let title: String
    let size: String
    let quantity: Int
    let price: Double
}
