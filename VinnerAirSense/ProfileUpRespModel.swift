//
//  ProfileUpRespModel.swift
//  VinnerAirSense
//
//  Created by MAC on 01/03/21.
//

import Foundation
import SwiftyJSON

class ProfileUpRespModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let profileUpData: ProfileUpData?

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        profileUpData = ProfileUpData(json["data"])
    }

}
class ProfileUpData {

    let redirect: String?

    init(_ json: JSON) {
        redirect = json["redirect"].stringValue
    }

}
class AddRoomResponseModel {

    let httpcode: Int?
    let status: String?
    let message: String?
   

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
    }

}
