//
//  UserData.swift
//  swiftuibeginner
//
//  Created by Dwi Randy Herdinanto on 28/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserData : ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
