//
//  ColorResponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 26/02/21.
//

import Foundation
import SwiftyJSON

class ColorResponseModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let sensors_color_codeData: sensor_color_codeData?
    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        sensors_color_codeData = sensor_color_codeData(json["data"])
    }

}

class sensor_color_codeData {


    
    let sensor_color_codes:[sensor_color_codeList]?


    init(_ json: JSON) {
        sensor_color_codes = json["sensor_color_code"].arrayValue.map { sensor_color_codeList($0) }
        
        

    }


}
class sensor_color_codeList {

    let id: Int?
    let sensor_id: Int?
    let sensor_name: String?
    let color: String?
    let minimum: Int?
    let maximum: Int?
    let status: Int?

    init(_ json: JSON) {
        id = json["id"].intValue
        sensor_id = json["sensor_id"].intValue
        sensor_name = json["sensor_name"].stringValue
        color = json["color"].stringValue
        minimum = json["minimum"].intValue
        maximum = json["maximum"].intValue
        status = json["status"].intValue
    }

}

class LuxLineChartResponseModel
{

    let time: String?
    let measure_name: String?
    let device_id: String?
    let p_no: String?
    var measureValueString : String?
    var measureValue : String?

    init(_ json: JSON) {
        
        time = json["time"].stringValue
        measure_name = json["measure_name"].string
        device_id = json["device_id"].stringValue
        p_no = json["p_no"].stringValue
        measureValueString = json["measureValueString"].stringValue
        measureValue = json["measureValue"].stringValue

        
        
    }

}

class DeviceDataResponseModel
{

    var result : Result?
    
    init(_ json: JSON) {
        
        result = Result(json["result"])
    }

}
class Result
{

    var voc1 : Voc1?
    var temp1 : Temp1?
    var co2n : Co2n?
    var ch2on : Ch2on?
    var con : Con?

    var pm1n : Pm1n?
    var timenew : Timenew?
    var hum1 : Hum1?
    var pm10n : Pm10n?
    var lux1 : Lux1?
    var pm2_5n : Pm2_5n?
    var errn : Errn?
    var o3n : O3n?
    var rtcn : Rtcn?

    init(_ json: JSON) {
        
        voc1 = Voc1(json["voc1"])
        temp1 = Temp1(json["temp1"])
        co2n = Co2n(json["co2n"])
        pm1n = Pm1n(json["pm1n"])
        timenew = Timenew(json["timenew"])
        hum1 = Hum1(json["hum1"])
        pm10n = Pm10n(json["pm10n"])
        lux1 = Lux1(json["lux1"])
        pm2_5n = Pm2_5n(json["pm2_5n"])
        ch2on = Ch2on(json["ch2on"])
        con = Con(json["con"])
        errn = Errn(json["errn"])
        o3n = O3n(json["o3n"])
        rtcn = Rtcn(json["rtcn"])

    }

}
class Voc1 {

    let measureValueString1: String?
    let measureValue1: String?
    let deviceId1: String?
    let p_no1: String?
    var time1 : String?


    init(_ json: JSON) {
        measureValueString1 = json["measureValueString"].stringValue
        measureValue1 = json["measureValue"].string
        deviceId1 = json["deviceId"].stringValue
        p_no1 = json["p_no"].stringValue
        time1 = json["time"].stringValue

    }

}
class Rtcn {

    let measureValueString13: String?
    let measureValue13: String?
    let deviceId13: String?
    let p_no13: String?
    var time13 : String?


    init(_ json: JSON) {
        measureValueString13 = json["measureValueString"].stringValue
        measureValue13 = json["measureValue"].string
        deviceId13 = json["deviceId"].stringValue
        p_no13 = json["p_no"].stringValue
        time13 = json["time"].stringValue

    }

}
class O3n {

    let measureValueString12: String?
    let measureValue12: String?
    let deviceId12: String?
    let p_no12: String?
    var time12 : String?


    init(_ json: JSON) {
        measureValueString12 = json["measureValueString"].stringValue
        measureValue12 = json["measureValue"].string
        deviceId12 = json["deviceId"].stringValue
        p_no12 = json["p_no"].stringValue
        time12 = json["time"].stringValue

    }

}
class Errn {

    let measureValueString11: String?
    let measureValue11: String?
    let deviceId11: String?
    let p_no11: String?
    var time11 : String?


    init(_ json: JSON) {
        measureValueString11 = json["measureValueString"].stringValue
        measureValue11 = json["measureValue"].string
        deviceId11 = json["deviceId"].stringValue
        p_no11 = json["p_no"].stringValue
        time11 = json["time"].stringValue

    }

}
class Temp1 {
    
    let measureValueString2: String?
    let measureValue2: String?
    let deviceId2: String?
    let p_no2: String?
    var time2 : String?


    init(_ json: JSON) {
        measureValueString2 = json["measureValueString"].stringValue
        measureValue2 = json["measureValue"].stringValue
        deviceId2 = json["deviceId"].stringValue
        p_no2 = json["p_no"].stringValue
        time2 = json["time"].stringValue

    }

}
    class Co2n {
        
        let measureValueString3: String?
        let measureValue3: String?
        let deviceId3: String?
        let p_no3: String?
        var time3 : String?


        init(_ json: JSON) {
            measureValueString3 = json["measureValueString"].stringValue
            measureValue3 = json["measureValue"].stringValue
            deviceId3 = json["deviceId"].stringValue
            p_no3 = json["p_no"].stringValue
            time3 = json["time"].stringValue

        }

    }
class Ch2on {
    
    let measureValueString31: String?
    let measureValue31: String?
    let deviceId31: String?
    let p_no31: String?
    var time31 : String?


    init(_ json: JSON) {
        measureValueString31 = json["measureValueString"].stringValue
        measureValue31 = json["measureValue"].stringValue
        deviceId31 = json["deviceId"].stringValue
        p_no31 = json["p_no"].stringValue
        time31 = json["time"].stringValue

    }

}
        class Pm1n {
            
            let measureValueString4: String?
            let measureValue4: String?
            let deviceId4: String?
            let p_no4: String?
            var time4 : String?


            init(_ json: JSON) {
                measureValueString4 = json["measureValueString"].stringValue
                measureValue4 = json["measureValue"].string
                deviceId4 = json["deviceId"].stringValue
                p_no4 = json["p_no"].stringValue
                time4 = json["time"].stringValue

            }

        }
class Timenew {
    
    let measureValueString5: String?
    let measureValue5: String?
    let deviceId5: String?
    let p_no5: String?
    var time5 : String?


    init(_ json: JSON) {
        measureValueString5 = json["measureValueString"].stringValue
        measureValue5 = json["measureValue"].stringValue
        deviceId5 = json["deviceId"].stringValue
        p_no5 = json["p_no"].stringValue
        time5 = json["time"].stringValue

    }

}
class Hum1 {
    
    let measureValueString6: String?
    let measureValue6: String?
    let deviceId6: String?
    let p_no6: String?
    var time6 : String?


    init(_ json: JSON) {
        measureValueString6 = json["measureValueString"].stringValue
        measureValue6 = json["measureValue"].stringValue
        deviceId6 = json["deviceId"].stringValue
        p_no6 = json["p_no"].stringValue
        time6 = json["time"].stringValue

    }

}
class Pm10n {
    
    let measureValueString7: String?
    let measureValue7: String?
    let deviceId7: String?
    let p_no7: String?
    var time7 : String?


    init(_ json: JSON) {
        measureValueString7 = json["measureValueString"].stringValue
        measureValue7 = json["measureValue"].stringValue
        deviceId7 = json["deviceId"].stringValue
        p_no7 = json["p_no"].stringValue
        time7 = json["time"].stringValue

    }

}
class Lux1 {
    
    let measureValueString8: String?
    let measureValue8: String?
    let deviceId8: String?
    let p_no8: String?
    var time8 : String?


    init(_ json: JSON) {
        measureValueString8 = json["measureValueString"].stringValue
        measureValue8 = json["measureValue"].stringValue
        deviceId8 = json["deviceId"].stringValue
        p_no8 = json["p_no"].stringValue
        time8 = json["time"].stringValue

    }

}
class Pm2_5n {
    
    let measureValueString9: String?
    let measureValue9: String?
    let deviceId9: String?
    let p_no9: String?
    var time9 : String?


    init(_ json: JSON) {
        measureValueString9 = json["measureValueString"].stringValue
        measureValue9 = json["measureValue"].stringValue
        deviceId9 = json["deviceId"].stringValue
        p_no9 = json["p_no"].stringValue
        time9 = json["time"].stringValue

    }

}
class Con {
    
    let measureValueString10: String?
    let measureValue10: String?
    let deviceId10: String?
    let p_no10: String?
    var time10 : String?


    init(_ json: JSON) {
        measureValueString10 = json["measureValueString"].stringValue
        measureValue10 = json["measureValue"].stringValue
        deviceId10 = json["deviceId"].stringValue
        p_no10 = json["p_no"].stringValue
        time10 = json["time"].stringValue

    }

}
