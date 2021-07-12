//
//  AddDeviceViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 14/01/21.
//

import UIKit
import SocketIO
import Alamofire
import SwiftyJSON

class AddDeviceViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var viewStack: UIView!

    var signOutResponse: signOutResponseModel?
    var signOutData: SignOutData?
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewHome: UIView!
    let sharedData = SharedDefault()
    @IBOutlet weak var txtAddDevicename: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.\\;e
        
        self.viewStack.dropShadow()

        viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
        viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)

        self.viewStack.layer.cornerRadius = 10.0
        
    }
    
    func Logout(){
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()

        postDict = [
            "access_token":self.sharedData.getAccessToken()
        ]
        
        print("PostData: ",postDict)
        let loginURL = Constants.baseURL+Constants.logOutURL
        print("loginURL",loginURL)
        
        AF.request(loginURL, method: .post, parameters: postDict, encoding: URLEncoding.default, headers: nil).responseJSON { (data) in
            print("Response:***:",data.description)
            
            switch (data.result) {
            case .failure(let error) :
                self.view.activityStopAnimating()
                
                if error._code == NSURLErrorTimedOut {
                    self.showToast(message: "Request timed out! Please try again!")
                }
                else if error._code == 4 {
                    self.showToast(message: "Internal server error! Please try again!")
                }
                else if error._code == -1003 {
                    self.showToast(message: "Server error! Please contact support!")
                }
            case .success :
                do {
                    let response = JSON(data.data!)
                    self.signOutResponse = signOutResponseModel(response)
                    let statusCode = Int((self.signOutResponse?.httpcode)!)
                    self.signOutData = self.signOutResponse?.signOutData

                    if statusCode == 200{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0)
                        {
                            
                            self.showToast(message: (self.signOutData?.msg)!)

                            self.sharedData.setAccessToken(token: "")
                            let next = self.storyboard?.instantiateViewController(withIdentifier: "SignInNewViewController") as! SignInNewViewController
                            self.navigationController?.pushViewController(next, animated: false)

                        }
                    }
                    if statusCode == 400
                    {
                        self.showToast(message: (self.signOutResponse?.message)!)
                    }
                    self.view.activityStopAnimating()
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }
    
    
   
    @IBAction func ActionHome(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    
    @IBAction func ActionProfile(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    @IBAction func ActionLogOut(_ sender: Any) {
        
        
        let alert = UIAlertController(title: Constants.appName, message: Constants.logoutMSG, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { _ in
            //Yes Action
            
            self.Logout()
           
        }))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
            print("NO")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func ActionRegister(_ sender: Any)
    {
        
        if self.txtAddDevicename.text!.count > 0
        {
            let next = self.storyboard?.instantiateViewController(withIdentifier: "ChooseRoomViewController") as! ChooseRoomViewController
            next.sDeviceName = self.txtAddDevicename.text
            self.navigationController?.pushViewController(next, animated: false)
        }
        else
        {
            self.showToast(message: "Device name is missing")
        }
       
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func ActionBack(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
}
