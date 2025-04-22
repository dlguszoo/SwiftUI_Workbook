//
//  ImageHandling.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/16/25.
//

import UIKit

protocol ImageHandling: AnyObject {
    func addImage(_ image: UIImage, completion: @escaping () -> Void)
    //var recognizedText: String { get set }
}
