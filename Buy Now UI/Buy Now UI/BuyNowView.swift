//
//  BuyNowView.swift
//  Buy Now UI
//
//  Created by Prinon bhowmik on 11/30/24.
//

import SwiftUI

struct BuyNowView: View {
    
    let price : Double
    let discountPercent : Int?
    
    var discount: Double?  {
        if let discountPercent {
            return (Double(100-discountPercent)/100) * price
        }else{
            return nil
        }
    }
    
    let discountColor : Color
    let bgColor : Color
    let yOffset: Double
    let discountAngle: Double
    
    init(
        price: Double,
        discountPercent: Int?,
        discountColor: Color = .blue,
        bgColor: Color = .red,
        yOffset: Double = -20,
        discountAngle: Double = -10
    ) {
        self.price = price
        self.discountPercent = discountPercent
        self.discountColor = discountColor
        self.bgColor = bgColor
        self.yOffset = yOffset
        self.discountAngle = discountAngle
    }
    
    var body: some View {
        VStack{
            if let discountPercent {
                Text("\(discountPercent)% OFF")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(discountColor)
                    .cornerRadius(15)
                    .rotationEffect(.degrees(discountAngle))
                    .offset(y : yOffset)
                    .shadow(radius: 10)
                    .frame(maxWidth:.infinity , alignment: .topTrailing)
                    
            }
            
            HStack{
                Text("Buy Now")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("$\(price,specifier: "%.2f")")
                    .font(.headline)
                    .foregroundColor(.white)
                   
                    .strikethrough(discount != nil)
                
                if let discount {
                    Text("\(discount,specifier: "%.2f")")
                        .font(.headline)
                        .fontWeight(.semibold)
                        
                }
                  
            }
            
        }
    
        .padding()
        .background(
            ZStack {
                RoundedRectangle(
                    cornerRadius: 20
                ).fill(
                    bgColor
                )
                RoundedRectangle(
                    cornerRadius: 20
                ).stroke(.white)
        })
        .padding()
            
    }
}

#Preview {
    ZStack {
        
        Color.black.opacity(0.3).ignoresSafeArea()
        
        VStack {
            BuyNowView(price: 20, discountPercent: 75)
            
            BuyNowView(price: 20, discountPercent: nil)
        }
    }
}
