//
//  MultipleSections.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 21/07/25.
//
import SwiftUI

struct GridSectionsView: View {
    // Replace with your image names from Assets.xcassets
    let verticalImages = ["trainer1", "trainer2", "trainer3", "trainer4", "trainer6", "trainer7",]
    let horizontalImages = ["trainer1", "trainer2", "trainer3", "trainer4", "trainer6", "trainer7"]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    let rows = [GridItem(.fixed(100))]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // Vertical Grid Section
                Text("Vertical Section")
                    .font(.title2)
                    .padding(.leading)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(verticalImages, id: \.self) { img in
                        Image(img)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 100)
                            .clipped()
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                // Horizontal Grid Section
                Text("Horizontal Section")
                    .font(.title2)
                    .padding(.leading)
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows, spacing: 20) {
                        ForEach(horizontalImages, id: \.self) { img in
                            Image(img)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 100)
                                .clipped()
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(height: 120)
            }
        }
    }
}
#Preview{
    GridSectionsView()
}
