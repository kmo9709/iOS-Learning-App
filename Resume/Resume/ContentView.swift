//
//  ContentView.swift
//  Resume
//
//  Created by Mahoney, Kevin (STL) on 12/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Blevin Maphowney")
                        .font(.largeTitle)
                    Text("Chief Shrubber")
                        .foregroundStyle(Color.secondary)
                }
            }
            
            Spacer()
            
            Group {
                Text("Work Experience")
                    .font(.title)
                Rectangle()
                    .frame(height: 1)
                    .padding(.bottom)
                HStack {
                    Text("Awesome Enterprize")
                        .bold()
                        .font(.title3)
                    Spacer()
                    Text("2013-Present")
                }
                    Text("Chief of Shrubberies")
                        .foregroundStyle(Color.secondary)
                Text("Coordinated other groups of shrubbers with the pruning, planting, potting, seeding, and harvesting of shrubberies.").font(.footnote).padding(.top)
                Text("Created a design system by which fence spacing and height requirements would be determined by Shrub height, width, and plume-age").font(.footnote).padding(.top)
            }
            
            Spacer()
            
            Group {
                Text("Education")
                    .font(.title)
                Rectangle()
                    .frame(height: 1)
                    .padding(.bottom, 8)
                HStack {
                    Text("Bachelors Degree")
                        .bold()
                        .font(.title3)
                    Spacer()
                    Text("2007-2012")
                }
                HStack {
                    Text("Computer Science")
                        .foregroundStyle(Color.secondary)
                    Spacer()
                    Text("Missouri S&T")
                }
            }
            
            Spacer()
        
            Text("Interests")
                .font(.title)
            Rectangle()
                .frame(height: 1)
                .padding(.bottom)
            HStack {
                Spacer()
                VStack {
                    Text("⚔️").font(.system(size: 70))
                    Text("Sword Fighting").bold()
                        
                }
                VStack {
                    Text("🎮").font(.system(size: 70))
                    Text("Gaming").bold()
                        
                }
                VStack {
                    Text("😡").font(.system(size: 70))
                    Text("Being a Boss").bold()
                        
                }
                Spacer()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
