//
//  LandmarkRow.swift
//  swiftuibeginner
//
//  Created by Dwi Randy Herdinanto on 27/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            self.landmark.image.resizable().frame(width:50, height: 50)
            Text(self.landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .imageScale(.medium)
            }
            
        }.padding(.leading, 10)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
