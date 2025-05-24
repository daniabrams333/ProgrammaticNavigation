//
//  DetailView.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject private var router: Router
    let id: Int
    
    var body: some View {
        VStack {
            Text("Detail Page\(id)")
            
            Button("Go To Settings") {
                router.navigate(to: .settings)
            }
            
            Button("Return to Home") {
                router.navigateToRoot()
            }
            
            Button("Go Back") {
                router.navigateBack()
            }
        }
        .navigationTitle("Detail")
    }
}

//#Preview {
//    DetailView()
//}
