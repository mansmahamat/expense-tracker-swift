//
//  IntroScreen.swift
//  Expense-tracker
//
//  Created by Mansour Mahamat-salle on 09/04/2024.
//

import SwiftUI

struct IntroScreen: View {
    @AppStorage("isFirstTime") private var isFirstTime: Bool = false
    var body: some View {
        VStack(spacing : 15){
            Text("Welcome to the Expense tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 65)
            
            
            VStack(alignment: .leading, spacing: 25 ,content: {
                PointView(symbol: "eurosign", title: "Transactions", subTitle: "Track your incomes and expenses")
                
                PointView(symbol: "chart.bar.fill", title: "Charts", subTitle: "Your transaction with graphic charts")
                
                PointView(symbol: "magnifyingglass", title: "Filters", subTitle: "Find your transactions quicly")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button(action: {}, label: {
                Text("Start")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 15)
                    .background(
                                      RoundedRectangle(cornerRadius: 12)
                                          .fill(Color.teal)
                                  )
                                  .contentShape(Rectangle())
            })
        }
        .padding(15)
    }
    
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 15){
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(.teal)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 4, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundColor(.gray)
            })
        }
    }
}

struct IntroScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntroScreen()
    }
}
