//
//  ContentView.swift
//  Navigation Links
//
//  Created by Philippe Reichen on 10/14/21.
//

import SwiftUI

let VIEW_COUNT = 30


struct ContentView: View {
    
    @State private var viewSelection: Int?
    @State private var viewIndex = VIEW_COUNT / 2
    
   
    var body: some View {
        
        NavigationView{
            
            VStack{
                Picker("View Selection", selection: $viewIndex){
    ForEach(0..<VIEW_COUNT) { index in
        Text("\(index)")
 }
                }
                Button("Go to View \(viewIndex)") { viewSelection = viewIndex
                }
                ForEach(0..<VIEW_COUNT) { index in
                   NavigationLink(destination: SecondView(selectedView: $viewSelection),
                                  tag: index,
                                  selection: $viewSelection,label: {})
                    
                }
             }
                
                           }
        .navigationViewStyle(StackNavigationViewStyle())
}
                           
                            }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
