//
//  Deck.swift
//  CardWorkoutApp
//
//  Created by Shashank Yadav on 25/07/25.
//

import UIKit


// extension another method it is safer for the use

extension UIImage 
{
    static func safe(named name: String) -> UIImage {
        return UIImage(named : name) ?? UIImage(systemName: "xmark.circle")!
    }
}

struct Deck 
{
    static var allValues = [
        
        UIImage.safe(named: "2C"),
        UIImage.safe(named: "3C"),
        UIImage.safe(named: "4C"),
        UIImage.safe(named: "5C"),
        UIImage.safe(named: "6C"),
        UIImage.safe(named: "7C"),
        UIImage.safe(named: "8C"),
        UIImage.safe(named: "9C"),
        UIImage.safe(named: "10C"),
        UIImage.safe(named: "QC"),
        UIImage.safe(named: "JC"),
        UIImage.safe(named: "KC"),
        UIImage.safe(named: "AC"),
    
        UIImage.safe(named: "2H"),
        UIImage.safe(named: "3H"),
        UIImage.safe(named: "4H"),
        UIImage.safe(named: "5H"),
        UIImage.safe(named: "6H"),
        UIImage.safe(named: "7H"),
        UIImage.safe(named: "8H"),
        UIImage.safe(named: "9H"),
        UIImage.safe(named: "10H"),
        UIImage.safe(named: "JH"),
        UIImage.safe(named: "QH"),
        UIImage.safe(named: "KH"),
        UIImage.safe(named: "AH"),
   
        UIImage.safe(named: "2D"),
        UIImage.safe(named: "3D"),
        UIImage.safe(named: "4D"),
        UIImage.safe(named: "5D"),
        UIImage.safe(named: "6D"),
        UIImage.safe(named: "7D"),
        UIImage.safe(named: "8D"),
        UIImage.safe(named: "9D"),
        UIImage.safe(named: "10D"),
        UIImage.safe(named: "KD"),
        UIImage.safe(named: "JD"),
        UIImage.safe(named: "QD"),
        UIImage.safe(named: "AD"),
      
        UIImage.safe(named: "2S"),
        UIImage.safe(named: "3S"),
        UIImage.safe(named: "4S"),
        UIImage.safe(named: "5S"),
        UIImage.safe(named: "6S"),
        UIImage.safe(named: "7S"),
        UIImage.safe(named: "8S"),
        UIImage.safe(named: "9S"),
        UIImage.safe(named: "10S"),
        UIImage.safe(named: "QS"),
        UIImage.safe(named: "JS"),
        UIImage.safe(named: "KS"),
        UIImage.safe(named: "AS"),
      
        
    ]
}



