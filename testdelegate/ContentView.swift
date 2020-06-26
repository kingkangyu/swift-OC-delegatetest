//
//  ContentView.swift
//  testdelegate
//
//  Created by kangyu on 2020/6/26.
//  Copyright © 2020 kangyu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, World!")
        Button(action:{
            let printclass:PrintClass = PrintClass()
            
            
            printclass.printDetails()
            
//            let sampleclass:SampleClass = SampleClass()
//            printclass.setDelegate(sampleclass);
//            printclass.printDetails()
            
            let swiftprint:SwiftPrint = SwiftPrint()
            printclass.setDelegate(swiftprint);
            printclass.printDetails()
            
            
        }){
            Text("Hello, World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
