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
    @State private var result: UIImage = UIImage(named: "720")!
    
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
            
            HStack {
                Button(action: {
                    isPresented.toggle()
                }) {
                    Label("Pick a picture", systemImage: "photo")
                        .padding(10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 1.0)
                        )
                }
                .sheet(isPresented: $isPresented) {
                    let configuration = PHPickerConfiguration(photoLibrary: PHPhotoLibrary.shared())
                    PhotoPicker(configuration: configuration, pickerResult: $result, isPresented: $isPresented)
                }
                Button(action: {
                    // TODO: upload picture
                }) {
                    Label("Post", systemImage: "square.and.arrow.up")
                        .padding(10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 1.0)
                        )
                        .disabled(result == UIImage(named: "720")!)
                }
            }
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
