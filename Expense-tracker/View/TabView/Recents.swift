//
//  Recents.swift
//  Expense-tracker
//
//  Created by Mansour Mahamat-salle on 11/04/2024.
//

import SwiftUI

struct Recents: View {
    
    // User property
    @AppStorage("userName") private var userName: String = ""
    
    // View properties
    @State private var startDate:  Date = .now.startOfMonth
    @State private var endDate:  Date = .now.endOfMonth
    
    var body: some View {
        GeometryReader {
            // Animation purpose
            let size = $0.size
            
            NavigationStack {
                ScrollView(.vertical){
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]){
                        Section {
                            // DAte filter
                            Button(action: {
                                
                            }, label: {
                                Text("\(format(date: startDate, format: "dd MM yy")) to \(format(date: endDate, format: "dd MM yy"))")
                                    .font(.caption2)
                                    .foregroundStyle(.gray)
                            })
                            .hSpacing(.leading)
                            
                            
                            // CARD VIEW
                            CardView(income: 2044, expense: 4097)
                            
                            
                            // CUSTOM SEGMENT CONTROL
                        } header: {
                            HeaderView(size)
                        }
                        
                    }
                    .padding(15)
                }
            }
            .background(.gray.opacity(0.15))
        }
        
        // Header View
        }
    
    
    @ViewBuilder
    func HeaderView(_ size: CGSize) -> some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 5, content: {
                Text("Welcome")
                    .font(.title.bold())
                
                if !userName.isEmpty {
                    Text(userName)
                        .font(.callout)
                        .foregroundStyle(.gray)
                }
            })
            
            Spacer(minLength: 0)
            
            NavigationLink {
                
            } label: {
                Image(systemName: "plus")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 45, height: 45)
                    .background(appTint.gradient)
                    .clipShape(Circle())
            }
        }
       
            .padding(.bottom, 5)
            .background{
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .padding(.horizontal, -15)
                    .padding(.top, -(safeArea.top + 15) )
            }
    }
    
    func headerScale(_ size: CGSize, proxy: GeometryProxy) -> CGFloat {
        return 1
    }
}

struct Recents_Previews: PreviewProvider {
    static var previews: some View {
        Recents()
    }
}
