//
//  LandmarkList.swift
//  swiftuibeginner
//
//  Created by Dwi Randy Herdinanto on 27/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            
            List{
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Show favorite only")
                }
                
                ForEach(self.userData.landmarks){ landmark in
                    if self.userData.showFavoritesOnly == false || (self.userData.showFavoritesOnly && landmark.isFavorite){
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }.navigationBarTitle("Landmark List", displayMode: .inline)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
