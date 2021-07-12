//
//  HomeRoomResponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 02/03/21.
//

import Foundation
import ObjectMapper
import SwiftyJSON

class HomeRoomResponseModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let dashboardata: dashboardListData?
    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        
        dashboardata = dashboardListData(json["data"])

            }

}

class dashboardListData
{
    
    let dashboardata: [dashboardData]?

    
    init(_ json: JSON) {
        
        dashboardata = json["dashboard"].arrayValue.map { dashboardData($0) }

    }
    
}






class dashboardData {

    let room_id: Int?
    let room_name: String?
    let room_image: String?

    
    let deviceListData:[devicesList]?


    init(_ json: JSON) {
        
        room_id = json["room_id"].intValue
        room_name = json["room_name"].stringValue
        room_image = json["room_image"].stringValue

        deviceListData = json["devices"].arrayValue.map { devicesList($0) }
        
        

    }


}
class devicesList {

    let id: Int?
    let device_name: String?
    let standard: String?
    let sensors:[sensorsList]?


    init(_ json: JSON) {
        id = json["id"].intValue
        device_name = json["device_name"].stringValue
        standard = json["standard"].stringValue

        sensors = json["sensors"].arrayValue.map { sensorsList($0) }

    }

}
class sensorsList {

    let id: Int?
    let sensor_name: String?
    let color_ranges:[color_rangesList]?


    init(_ json: JSON) {
        id = json["id"].intValue

        sensor_name = json["sensor_name"].stringValue
        color_ranges = json["color_ranges"].arrayValue.map { color_rangesList($0) }

    }

}
class color_rangesList {

    let color: String?
    let color_code: String?
    let min_val: String?
    let max_val:String?
    let range_label:String?
    let remark:String?


    init(_ json: JSON) {
        color = json["color"].stringValue
        color_code = json["color_code"].stringValue
        min_val = json["min_val"].stringValue
        max_val = json["max_val"].stringValue
        range_label = json["range_label"].stringValue
        remark = json["remark"].stringValue

        
    }

}
