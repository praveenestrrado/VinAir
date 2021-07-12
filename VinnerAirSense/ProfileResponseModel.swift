//
//  ProfileResponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 25/02/21.
//

import Foundation
import SwiftyJSON

class ProfileModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let profileData: Profile_Data?

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        profileData = Profile_Data(json["data"])
    }

}


class Profile_Data {


    
    let profile_data: Profile_data?
    let standards: [standardsData]?


    init(_ json: JSON) {
        
        profile_data = Profile_data(json["profile_data"])
        standards = json["standards"].arrayValue.map { standardsData($0) }

    }


}


class Profile_data {

    let name: String?
    let email: String?
    let country_id: Int?
    let country: String?
    let location: String?
    let type_id: Int?
    let type: String?
    let profile_pic: String?
    
    let standard_id: Int?
    let standard: String?
   

    init(_ json: JSON) {
        name = json["name"].stringValue
        email = json["email"].stringValue
        country_id = json["country_id"].intValue
        country = json["country"].stringValue
        location = json["location"].stringValue
        type_id = json["type_id"].intValue
        type = json["type"].stringValue
        profile_pic = json["profile_pic"].stringValue
       
        standard_id = json["standard_id"].intValue
        standard = json["standard"].stringValue

    }

}

class standardsData {

    let id: Int?
    let standard_name: String?
    

    init(_ json: JSON) {
        id = json["id"].intValue
        standard_name = json["standard_name"].stringValue
        
       

    }

}
