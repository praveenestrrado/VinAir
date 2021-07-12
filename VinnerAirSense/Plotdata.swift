

import Foundation
struct PlotData : Codable {
	let time : String?
	let measure_name : String?
	let device_id : String?
	let p_no : String?
	let measureValueString : String?
	let measureValue : String?

	enum CodingKeys: String, CodingKey {

		case time = "time"
		case measure_name = "measure_name"
		case device_id = "device_id"
		case p_no = "p_no"
		case measureValueString = "measureValueString"
		case measureValue = "measureValue"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		time = try values.decodeIfPresent(String.self, forKey: .time)
		measure_name = try values.decodeIfPresent(String.self, forKey: .measure_name)
		device_id = try values.decodeIfPresent(String.self, forKey: .device_id)
		p_no = try values.decodeIfPresent(String.self, forKey: .p_no)
		measureValueString = try values.decodeIfPresent(String.self, forKey: .measureValueString)
		measureValue = try values.decodeIfPresent(String.self, forKey: .measureValue)
	}

}
