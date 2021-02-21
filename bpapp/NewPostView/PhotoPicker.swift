//
//  PhotoPicker.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import SwiftUI
import UIKit
import PhotosUI

struct PhotoPicker: UIViewControllerRepresentable {
    
    let configuration: PHPickerConfiguration
    
    @Binding var pickerResult: UIImage
    @Binding var isPresented: Bool
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        let controller = PHPickerViewController(configuration: configuration)
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    // Use a Coordinator to act as your PHPickerViewControllerDelegate
    class Coordinator: PHPickerViewControllerDelegate {
        
        private let parent: PhotoPicker
        
        init(_ parent: PhotoPicker) {
            self.parent = parent
        }
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            if results[0].itemProvider.canLoadObject(ofClass: UIImage.self) {
                results[0].itemProvider.loadObject(ofClass: UIImage.self) { [weak self] newImage, error in
                    if let error = error {
                        print("Can't load image \(error.localizedDescription)")
                    } else if let image = newImage as? UIImage {
                        // Add new image and pass it back to the main view
                        self?.parent.pickerResult = image
                    }
                }
            } else {
                print("Can't load asset")
            }
            parent.isPresented = false // Set isPresented to false because picking has finished.
        }
    }
}
