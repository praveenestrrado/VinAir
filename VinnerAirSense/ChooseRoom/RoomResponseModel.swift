//
//  RoomResponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 11/02/21.
//

import Foundation
import SwiftyJSON

//struct RoomResponseModel : Mappable {
//    var httpcode : String?
//    var status : String?
//    var message : String?
//    var data : Data?
//
//    init?(map: Map) {
//
//    }
//
//    mutating func mapping(map: Map) {
//
//        httpcode <- map["httpcode"]
//        status <- map["status"]
//        message <- map["message"]
//        data <- map["data"]
//    }
//
//}
//struct All_rooms : Mappable {
//    var id : Int?
//    var room_name : String?
//    var image : String?
//    var status : Int?
//
//    init?(map: Map) {
//
//    }
//
//    mutating func mapping(map: Map) {
//
//        id <- map["id"]
//        room_name <- map["room_name"]
//        image <- map["image"]
//        status <- map["status"]
//    }
//
//}
//struct Data : Mappable {
//    var all_rooms : [All_rooms]?
//
//    init?(map: Map) {
//
//    }
//
//    mutating func mapping(map: Map) {
//
//        all_rooms <- map["all_rooms"]
//    }
//
//}
class RoomResponseModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let aall_roomsData: all_roomsData?

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        aall_roomsData = all_roomsData(json["data"])
    }

}
class all_roomsData {

    let all_roomsItems: [all_rooms]?

    init(_ json: JSON) {
        all_roomsItems = json["all_rooms"].arrayValue.map { all_rooms($0) }
    }

}
class all_rooms {

    let id: Int?
    let room_name: String?
    let image: String?
    let status: Int?
   

    init(_ json: JSON) {
        id = json["id"].intValue
        room_name = json["room_name"].stringValue
        image = json["image"].stringValue
        status = json["status"].intValue

    }

}
class DeviceListResponseModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let device_list: Device_list?

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        device_list = Device_list(json["data"])
    }

}
class Device_list {

    let device_listItems: [device_listData]?

    init(_ json: JSON) {
        device_listItems = json["device_list"].arrayValue.map { device_listData($0) }
    }

}
class device_listData {

    let id: Int?
    let device_id: String?
    let device_name: String?
   

    init(_ json: JSON) {
        id = json["id"].intValue
        device_id = json["device_id"].stringValue
        device_name = json["device_name"].stringValue

    }

}
