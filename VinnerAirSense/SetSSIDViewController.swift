//
//  SetSSIDViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 14/01/21.
//

import UIKit
import NetworkExtension
import SwiftyJSON
import Alamofire


class SetSSIDViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet var btnContinue: UIButton!
    @IBOutlet weak var imgSSID: UIImageView!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtSSID: UITextField!
    @IBOutlet weak var lblConnection: UILabel!
    var inputStream : InputStream?
    var outputStream : OutputStream?
    @IBOutlet weak var txtClientMessage: UITextView!
    let readStream: CFReadStream? = nil
    let writeStream: CFWriteStream? = nil
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewHome: UIView!
    
    var sRoomID : Int?
    var sDeviceName : String?
    var sDeviceId : String?

    @IBOutlet weak var viewStack: UIView!
    let sharedData = SharedDefault()
    var signOutResponse: signOutResponseModel?
    var signOutData: SignOutData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TCPClient.sharedInstance.delegate = self

        viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
        viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)
        self.viewStack.dropShadow()
        self.viewStack.layer.cornerRadius = 10.0

    
        // Do any additional setup after loading the view.
    }
    func disconnect() {
         inputStream?.close()
         outputStream?.close()

        inputStream?.remove(from: RunLoop.current, forMode: RunLoop.Mode.default)
        outputStream?.remove(from: RunLoop.current, forMode: RunLoop.Mode.default)

         inputStream = nil
         outputStream = nil
    }
    
    @IBAction func ACtionContinue(_ sender: Any)
    {
        
        if self.btnContinue.titleLabel?.text == "Go To Dashboard"
        {
            
            if Reachability.isConnectedToNetwork()
            {
//                self.showToast(message:"Add device API calling.....")

                self.AddDeviceName()

            }
            else
            {
                self.showToast(message:"Please check internet connection")
            }
            
            
        }
        else
        {
            
            if txtSSID.text?.count == 0
            {
                self.showToast(message: "Enter SSID")
            }
            else if txtPassword.text?.count == 0
            {
//                self.showToast(message: "Enter Password")
                
                TCPClient.sharedInstance.send(message: "<SAPN,\(txtSSID.text ?? "RPTS"),>")
                self.lblConnection.text = " Sending : <SAPN,\(txtSSID.text ?? "RPTS"),\(txtPassword.text ?? "")>"

            }
            else
            {
            TCPClient.sharedInstance.send(message: "<SAPN,\(txtSSID.text ?? "RPTS"),\(txtPassword.text ?? "24052007")>")

            self.lblConnection.text = " Sending : <SAPN,\(txtSSID.text ?? "RPTS"),\(txtPassword.text ?? "24052007")>"
            }
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
   
//
    
    
    
    @IBAction func ACtionPlus(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "AddDeviceViewController") as! AddDeviceViewController
        self.navigationController?.pushViewController(next, animated: false)
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
    
    
    
}
extension SetSSIDViewController: TCPClientDelegate {
    
    func didUpdateOnClientMessage(message: String) {
        let status = "\(String(describing: txtClientMessage.text)) \(message)"
        
        txtClientMessage.text = status

        if status.count > 0
        {
            self.showToast(message: "Device connected successfully")
            self.disconnect()
            self.btnContinue.setTitle("Go To Dashboard", for: .normal)
        }
        
        else
        {
            self.showToast(message: "The device not connected properly. Please try again.")

        }

       
        
    }
  
    
    
    
    func AddDeviceName(){
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()

        postDict = [
            "access_token":self.sharedData.getAccessToken(),
            "room_id":String(self.sRoomID!),
            "device_name":self.sDeviceName!,
            "device_id":self.sDeviceId!

        ]
        
        print("PostData: ",postDict)
        let loginURL = Constants.baseURL+Constants.addDeviceURL
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
//                    self.signOutData = self.signOutResponse?.signOutData

                    if statusCode == 200{
                        
                            
                            self.showToast(message: (self.signOutResponse?.message)!)
                            self.sharedData.setDefoultDeviceName(token: self.sDeviceName!)
                            self.sharedData.setDefoultDeviceID(token: self.sDeviceId!)
                            let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                            next.sDeviceId = self.sDeviceId
                            self.navigationController?.pushViewController(next, animated: false)


                    }
                    else
                    {
                        self.showToast(message: "Failed to add the device details")
                    }
                    self.view.activityStopAnimating()
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                    self.showToast(message: "Error occured when add the device details")

                }
            }
        }
    }
}

