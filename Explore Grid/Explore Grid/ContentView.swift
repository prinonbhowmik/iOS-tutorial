

import SwiftUI

struct ContentView: View {
    
    let items : [ModelClass] = [
        .init(
            title: "Nike",
            size: "US 40",
            quantity: 3,
            price: 20.99
        ),
        .init(
            title: "Adidas",
            size: "US 41",
            quantity: 3,
            price: 21.99
        ),
        .init(
            title: "Puma",
            size: "US 40",
            quantity: 3,
            price: 11.99
        ),
        .init(
            title: "All-star",
            size: "US 38",
            quantity: 3,
            price: 18.99
        ),
        .init(
            title: "NB",
            size: "US 40",
            quantity: 3,
            price: 19.99
        )
      
        
    ]
    
    
    
    var body: some View {
        ZStack {
            
            Color
                .gray
                .opacity(
                    0.2
                )
                .ignoresSafeArea()
            
            
            Grid{
                ForEach(
                    items
                ){ item in
                    
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.black.opacity(0.2))
                        .overlay{
                            HStack {
                                GridRow{
                                    Image(
                                        systemName: "shoe.2.fill"
                                    )
                                    .resizable()
                                    .frame(
                                        width: 58.0,
                                        height: 58.0
                                    )
                                    .padding()
                                    .background(
                                        .gray
                                    )
                                    .cornerRadius(
                                        20
                                    ).padding()
                                    
                                    VStack(alignment: .leading){
                                        Text(
                                            item.title
                                        )
                                        .font(
                                            .system(
                                                size: 22
                                            )
                                        )
                                        .font(
                                            .body
                                        )
                                        .fontWeight(
                                            .semibold
                                        )
                                        
                                        Text(
                                            item.size
                                        )
                                        Text(
                                            "Qty: \(item.quantity)"
                                        )
                                        
                                    }
                                        
                                    Spacer()
                                    Spacer()
                                    
                                    Text(
                                        String(format: "$%.2f", item.price)
                                    )
                                    .font(
                                        .system(
                                            size: 23
                                        )
                                    )
                                    .font(
                                        .body
                                    )
                                    .fontWeight(
                                        .semibold
                                    )
                                    
                                    Spacer()
                                    
                                }
                            }
                        }
                    
                }
            }
            .padding()
            
            

        }
        
    }
}

#Preview {
    ContentView()
}
