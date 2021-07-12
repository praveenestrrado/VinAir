//
//  HomePopUpTableViewCell.swift
//  VinnerAirSense
//
//  Created by MAC on 01/04/21.
//

import UIKit

class HomePopUpTableViewCell: UITableViewCell {

    @IBOutlet var btnSelection: UIButton!
    @IBOutlet var txtDropDown: UITextField!
    @IBOutlet var imgDropDown: UIImageView!
    @IBOutlet var viewDropDown: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
