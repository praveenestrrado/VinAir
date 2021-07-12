//
//  ChooseRoomViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 14/01/21.
//

import UIKit
import MobileCoreServices
import Alamofire
import SwiftyJSON
import SDWebImage

class ChooseRoomViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    @IBOutlet var viewCustomRoom: UIView!
    @IBOutlet weak var viewStack: UIView!

    @IBOutlet weak var tblRoom: UITableView!
    var arrayImage = ["livingImg","MasterImage","KitchenImage","KidsImage"]
    var arraylabel = ["Living Room","Master Room","Kitchen","Kids Room"]
    var roomResponseModel : RoomResponseModel?
    var roomItems = [all_rooms]()
    let sharedData = SharedDefault()
    var signOutResponse: signOutResponseModel?
    var signOutData: SignOutData?
    
    var iSelectedRoomID: Int?
    
    var sDeviceName: String?

    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewHome: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
           viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
           viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)
        self.viewStack.dropShadow()
        self.viewStack.layer.cornerRadius = 10.0

        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.GetRoomDetails()
        self.iSelectedRoomID = 0
    }
    @IBAction func ActionNext(_ sender: Any)
    {
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "ScanQrCodeViewController") as! ScanQrCodeViewController
//        self.navigationController?.pushViewController(next, animated: false)
        
        if self.iSelectedRoomID! > 0
        {
//            let next = self.storyboard?.instantiateViewController(withIdentifier: "DeviceConnectionViewController") as! DeviceConnectionViewController
          
            
            let next = self.storyboard?.instantiateViewController(withIdentifier: "ScanQrCodeViewController") as! ScanQrCodeViewController
            next.sRoomID = self.iSelectedRoomID
            next.sDeviceName = self.sDeviceName
            self.navigationController?.pushViewController(next, animated: false)
        }
        else
        {
            self.showToast(message: "Please select one room")
        }
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            var height:CGFloat = CGFloat()
        if UIDevice.current.userInterfaceIdiom == .pad
        {
            height = 225

        }
        else
        {
            height = 100

        }
            return height
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if tableView == tblRoom {
            let settingsTCell = tblRoom.dequeueReusableCell(withIdentifier: "ChooseRoomTableViewCell", for: indexPath) as! ChooseRoomTableViewCell

            settingsTCell.selectionStyle = .none
            settingsTCell.lblDescription.text = self.roomItems[indexPath.row].room_name!
            settingsTCell.imgCell.layer.cornerRadius = 5.0
            settingsTCell.imgCell.sd_setImage(with: URL(string: self.roomItems[indexPath.row].image!), placeholderImage: UIImage(named: ""))
            
            cell = settingsTCell
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        self.iSelectedRoomID = self.roomItems[indexPath.row].id
        
        print(self.iSelectedRoomID)
        
//        let next1 = self.storyboard?.instantiateViewController(withIdentifier: "ScanQrCodeViewController") as! ScanQrCodeViewController
//
//
//                self.navigationController?.pushViewController(next1, animated: false)
        
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "ScanQrCodeViewController") as! ScanQrCodeViewController
        next.sRoomID = self.iSelectedRoomID
        next.sDeviceName = self.sDeviceName
        self.navigationController?.pushViewController(next, animated: false)
      
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return  1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.roomItems.count
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
    
    func GetRoomDetails()
    {
        
       
        self.view.activityStartAnimating()
        
        let loginURL = Constants.baseURL+Constants.roomURL
        print("loginURL",loginURL)
        
        AF.request(loginURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (data) in
            print("Response getCartList :***:",data.description)
            
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
                    self.roomResponseModel = RoomResponseModel(response)
                    let statusCode = Int((self.roomResponseModel?.httpcode)!)
                    if statusCode == 200{
                            
                           
                            self.roomItems = (self.roomResponseModel?.aall_roomsData?.all_roomsItems)!
                       
                        
                        if self.roomItems.count > 0
                        {
                            self.tblRoom.reloadData()
                        }
                            
                        self.view.activityStopAnimating()

                            
                        
                    }
                    if statusCode == 400
                    {
                        self.showToast(message: (self.roomResponseModel?.message)!)
                        self.view.activityStopAnimating()
                    }
                    
                }
                catch let err
                {
                    self.view.activityStopAnimating()
                    print("Error::",err.localizedDescription)
                }
            }
        }
        
    }
    
    
    
    @IBAction func ActionCustomRoom(_ sender: Any) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "AddCustomRoomViewController") as! AddCustomRoomViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    
    
    
    
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
