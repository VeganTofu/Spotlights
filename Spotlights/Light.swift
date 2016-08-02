//
//  Light.swift
//  Spotlights
//
//  Created by Adrian Wu on 02/08/2016.
//  Copyright © 2016 VeganTofu. All rights reserved.
//

import Foundation

struct Light {
  var strength:Int
  var name:String
  var imageName:String
}

func createDummyLights() -> [Light]{
  var array = [Light]()
  for i in 0...2{
    let light = Light(strength: i, name: "light_\(i)", imageName: "light\(i)")
    array.append(light)
  }
  return array
}