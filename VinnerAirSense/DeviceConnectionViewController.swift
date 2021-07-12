//
//  DeviceConnectionViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 29/01/21.
//

import UIKit
import Alamofire
import SwiftyJSON
class DeviceConnectionViewController: UIViewController, StreamDelegate {

    
    @IBOutlet weak var lbl3: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    
    var inputStream : InputStream?
    var outputStream : OutputStream?
    
    var sRoomID : Int?
    var sDeviceName : String?
    var sDeviceId : String?

    @IBOutlet weak var viewStack: UIView!
    let sharedData = SharedDefault()
    var signOutResponse: signOutResponseModel?
    var signOutData: SignOutData?
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewHome: UIView!
    
    @IBOutlet weak var lblStatus: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.viewStack.dropShadow()
        viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
        viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)
        self.viewStack.layer.cornerRadius = 10.0

        
    }
    func connect(host: String, port: String) {
        var readStream : Unmanaged<CFReadStream>?
        var writeStream : Unmanaged<CFWriteStream>?
        let host : CFString = NSString(string: host)
        guard let port : UInt32 = UInt32(port) else {
            print("Unknown Port - Please contact the developer")
            return
        }

//        Stream.getStreamsToHost(withName: "192.168.4.1", port: 8888, inputStream: &inputStream, outputStream: &outputStream)
        CFStreamCreatePairWithSocketToHost(kCFAllocatorDefault, host, port, &readStream, &writeStream)

//        CFStreamCreatePairWithSocketToHost(nil, host, port, &readStream, &writeStream)

        
        
        inputStream = readStream!.takeUnretainedValue()
        outputStream = writeStream!.takeUnretainedValue()

        inputStream!.delegate = self
        outputStream!.delegate = self

        inputStream!.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)
        outputStream!.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)

        inputStream!.open()
        outputStream!.open()
      }

 
    

    func stream(_ aStream: Stream, handle eventCode: Stream.Event) {
        switch eventCode {
        case .openCompleted:
            print("Open Completed \(String(describing: aStream.streamError?.localizedDescription))")
//            self.lblStatus.text = "Open Completed \(String(describing: aStream.streamError?.localizedDescription))"
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0)
            {
                let next = self.storyboard?.instantiateViewController(withIdentifier: "SetSSIDViewController") as! SetSSIDViewController
                next.sRoomID = self.sRoomID
                next.sDeviceName = self.sDeviceName
                next.sDeviceId = self.sDeviceId
                self.navigationController?.pushViewController(next, animated: false)
            }
        case .errorOccurred:
            print("Error Occured - \(String(describing: aStream.streamError?.localizedDescription))")
//            self.lblStatus.text = "Error Occured \(String(describing: aStream.streamError?.localizedDescription))"

        case .hasBytesAvailable:
            print("Has Bytes Available \(String(describing: aStream.streamError?.localizedDescription))")
//            self.lblStatus.text = "Has Bytes Available \(String(describing: aStream.streamError?.localizedDescription))"

        case .hasSpaceAvailable:
            print("Has Space Available \(String(describing: aStream.streamError?.localizedDescription))")
//            self.lblStatus.text = "Has Space Available \(String(describing: aStream.streamError?.localizedDescription))"
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0)
            {
                let next = self.storyboard?.instantiateViewController(withIdentifier: "SetSSIDViewController") as! SetSSIDViewController
                next.sRoomID = self.sRoomID
                next.sDeviceName = self.sDeviceName
                next.sDeviceId = self.sDeviceId
                self.navigationController?.pushViewController(next, animated: false)
            }

        case .endEncountered:
            print("End Encountered \(String(describing: aStream.streamError?.localizedDescription))")
//            self.lblStatus.text = "End Encountered \(String(describing: aStream.streamError?.localizedDescription))"

        default:
            break
        }
    }

 
    
    @IBAction func ActionBack(_ sender: Any)
    {
        
//
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "SetSSIDViewController") as! SetSSIDViewController
//        next.sRoomID = self.sRoomID
//        next.sDeviceName = self.sDeviceName
//        next.sDeviceId = self.sDeviceId
//        self.navigationController?.pushViewController(next, animated: false)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func ActionButtonConnect(_ sender: Any)
    {
        

        TCPClient.sharedInstance.connect(host: "192.168.4.1", port: "8888")
        self.connect(host: "192.168.4.1", port: "8888")

     
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "SetSSIDViewController") as! SetSSIDViewController
//        next.sRoomID = self.sRoomID
//        next.sDeviceName = self.sDeviceName
//        self.navigationController?.pushViewController(next, animated: false)

        
    }
    
//    @IBAction func ActionSkipDashBoard(_ sender: Any)
//    {
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//        self.navigationController?.pushViewController(next, animated: false)
//    }
//    
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
