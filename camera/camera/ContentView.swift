//
//  ContentView.swift
//  camera
//
//  Created by User1 on 25/04/2020.
//  Copyright © 2020 User1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    
    var body: some View {
        
        
        VStack {
            
            image?.resizable()
                .scaledToFit()
            
            Button(action: {
                
                self.showImagePicker = true
                
            }) {
                Text("Open Camera")
            }.padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            
            
        }.sheet(isPresented: self.$showImagePicker) {
        
        PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
            
            
        }
        
    }
    
}
    
    /*
     
     
     
     */


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

