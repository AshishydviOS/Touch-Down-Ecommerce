//
//  NavigationbarView.swift
//  Touchdown
//
//  Created by Ashish Yadav on 29/03/23.
//

import SwiftUI

struct NavigationbarView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack {
            Button {
                print("Test MeSSAGE")
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } // :Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                print("test Message")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            } // :Button


        } //: HStack
    }
    
    // MARK: - body
}

// MARK: - Preview
struct NavigationbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationbarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
