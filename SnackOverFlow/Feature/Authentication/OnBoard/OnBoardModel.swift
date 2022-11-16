//
//  OnBoardModel.swift
//  SnackOverFlow
//
//  Created by MAA on 19.10.2022.
//

import Foundation

struct OnBoardModel: Identifiable {
    var id: UUID = UUID()
    
    let imageName: String
    let imageDescription: String
    
    static let items: [OnBoardModel] = [
        OnBoardModel(imageName: "img_hand_pick", imageDescription: "Hand-pickle high quality snacks."),
        OnBoardModel(imageName: "img_shop", imageDescription: "Shop global. Mind-blownly affordable."),
        OnBoardModel(imageName: "img_deliver", imageDescription: "Deliver on the promise of time."),
        ]
}
