//
//  SignInResponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 05/02/21.
//

import Foundation
import SwiftyJSON

class SignInResponseModel {
    
    let httpcode: Int?
    let status: String?
    let message: String?
    let signInData: SignInData?

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
//        signInData = json["data"].arrayValue.map { SignInData($0) }
        
        signInData = SignInData(json["data"])

        
    }
    
}
    class SignInData {


        
        let user_data: User_data?


        init(_ json: JSON) {
            
            user_data = User_data(json["user_data"])

        }

    
}
class User_data {

    let access_token: String?
    let name: String?
    let email: String?
    let deviceName: String?
    let deviceId: String?

    init(_ json: JSON) {
        access_token = json["access_token"].stringValue
        name = json["name"].stringValue
        email = json["email"].stringValue
        deviceName = json["device_name"].stringValue
        deviceId = json["device_id"].stringValue

    }

}
