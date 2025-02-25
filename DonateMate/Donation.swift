//
//  Donation.swift
//  DonateMate
//
//  Created by Patrick Ly on 25/2/2025.
//
//@State var itemName: String = ""
//@State var description: String = ""
//@State var address: String = ""
//@State var instructions: String = ""
//
//@State var selectedDates: Set<DateComponents> = []
//@State var selectedDate = Date()
//@State var selectedTime = Date()
//
//
//@State private var donationItem: PhotosPickerItem?
//@State private var itemImage: Image?
import Foundation
import SwiftUI

struct Donation {
    let uuid: String

    var name: String
    var image: Image
    var distance: String
    var description: String
    var address: String
    var instructions: String
    var selectedDates: Set<DateComponents>
    var fromTime: Date
    var toTime: Date
    
    
}
