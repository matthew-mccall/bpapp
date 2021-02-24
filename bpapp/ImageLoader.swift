//
//  GetWebImage.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import Foundation
import CoreImage
import UIKit

class ImageLoader: ObservableObject {
    
    @Published var img : UIImage? = nil
        
    init(urlString : String) {
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.img = UIImage(data: data)
                print("Fetched image!")
            }
        }
        task.resume()
    }
}

