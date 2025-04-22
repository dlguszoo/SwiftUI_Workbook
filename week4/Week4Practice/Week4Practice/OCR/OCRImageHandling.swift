//
//  OCRImageHandling.swift
//  Week4Practice
//
//  Created by 이현주 on 4/12/25.
//

import UIKit

protocol OCRImageHandling: AnyObject {
    func addImage(_ image: UIImage)
    func getImages() -> [UIImage]
    var recognizedText: String { get set }
}
