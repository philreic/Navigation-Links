//
//  SecondView.swift
//  Navigation Links
//
//  Created by Philippe Reichen on 10/14/21.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var selectedView: Int?
    
    var body: some View {
        
        VStack{
        Text("I am view \(selectedView ?? 0)")
            
            Button("Go Back"){
                selectedView = nil
            }
            
        }
        .navigationBarHidden(true)
        
    }
    
    
    
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(selectedView: .constant(1))
    }
}
