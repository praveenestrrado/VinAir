//
//  SignInViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 12/01/21.
//

import UIKit

class SignInViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var lblVinAirSense: UILabel!
    @IBOutlet weak var lblWelcome: UILabel!
    var bSelectedDate :Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func ActionSignIn(_ sender: Any)
    {
       
        let next = self.storyboard?.instantiateViewController(withIdentifier: "SignInNewViewController") as! SignInNewViewController
        self.navigationController?.pushViewController(next, animated: false)
        
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//        self.navigationController?.pushViewController(next, animated: false)
        
    }
    
    @IBAction func ActionRegister(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
             let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
             let mask = CAShapeLayer()
             mask.path = path.cgPath
             self.layer.mask = mask
        }
}
extension UIStackView {

    func dropStackShadow(scale: Bool = true) {

        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 2
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func customize(backgroundColor: UIColor = .clear, radiusSize: CGFloat = 8) {
            let subView = UIView(frame: bounds)
            subView.backgroundColor = backgroundColor
            subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            insertSubview(subView, at: 0)

            subView.layer.cornerRadius = radiusSize
            subView.layer.masksToBounds = true
            subView.clipsToBounds = true
        }
}
