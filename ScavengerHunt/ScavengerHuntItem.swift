// // // // // // // // // // // // // // // // // // // // // //
//  ScavengerHuntItem.swift                                    //
//  ScavengerHunt                                              //
//                                                             //
//  Created by Michael Hockerman on 10/16/14.                  //
//  Copyright (c) 2014 Michael Hockerman. All rights reserved. //
// // // // // // // // // // // // // // // // // // // // // //

import UIKit

class ScavengerHuntItem: NSObject, NSCoding {
    
    let NameKey = "Name"
    let PhotoKey = "Photo"
    
    let name: String
    var photo: UIImage?
    
    var isComplete: Bool {
        get {
            return photo != nil
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(name, forKey: NameKey)
        if let thePhoto = photo {
            coder.encodeObject(thePhoto, forKey: PhotoKey)
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey(NameKey) as String
        photo = aDecoder.decodeObjectForKey(PhotoKey) as? UIImage
    }
    
}