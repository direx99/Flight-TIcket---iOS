//
//  HomeView.swift
//  Fligh TIcket
//
//  Created by Dinith Hasaranga on 2024-09-18.
//

import SwiftUI

// MARK: Home View Screen
struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                VStack {
                    Text("Discover a new place.")
                        .font(.system(size: 25))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.white)
                    Text("Explore, Journey, Discover & Adventure")
                        .font(.system(size: 13))
                        .fontWeight(.regular)
                        .foregroundStyle(Color.white)
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                SearchWidget(selectedButton: .oneWay)
                Spacer()
            }
            .padding(.horizontal,20)
        }
    }
}

// MARK: Search Widget
struct SearchWidget: View {
    
    enum TripType {
        case oneWay
        case roundTrip
    }
    
    var selectedButton: TripType
    
    @State private var selectedTripType: TripType = .oneWay
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    selectedTripType = .oneWay
                }) {
                    Text("One-way")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .foregroundColor(selectedTripType == .oneWay ? .white : .black)
                        .background(selectedTripType == .oneWay ? Color.blue : Color("Light-Gray"))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    selectedTripType = .roundTrip
                }) {
                    Text("Round-trip")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .foregroundColor(selectedTripType == .roundTrip ? .white : .black)
                        .background(selectedTripType == .roundTrip ? Color.blue : Color("Light-Gray"))
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding(.bottom, 10)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    HomeView()
}
