//
//  NewPostView.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import SwiftUI
import PhotosUI

struct NewPostView: View {
    
    @State private var isPresented: Bool = false
    @State private var result: UIImage = UIImage(named: "1080")!
    
    var body: some View {
        VStack {
            Group {
                Image(uiImage: result)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .clipped()
            }
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
            
            Button("Pick a picture") {
                isPresented.toggle()
            }
            .sheet(isPresented: $isPresented) {
                let configuration = PHPickerConfiguration(photoLibrary: PHPhotoLibrary.shared())
                PhotoPicker(configuration: configuration, pickerResult: $result, isPresented: $isPresented)
            }
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
