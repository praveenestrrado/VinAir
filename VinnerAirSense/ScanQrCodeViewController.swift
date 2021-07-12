//
//  ScanQrCodeViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 14/01/21.
//

import UIKit
import Alamofire
import SwiftyJSON
import AVFoundation
import MobileCoreServices
class ScanQrCodeViewController: UIViewController ,AVCaptureMetadataOutputObjectsDelegate{
    
    
    @IBOutlet var lblDeviceId: UILabel!
    @IBOutlet var viewScanQRCode: UIView!
    @IBOutlet weak var viewStack: UIView!
    let sharedData = SharedDefault()
    var signOutResponse: signOutResponseModel?
    var signOutData: SignOutData?
    var sRoomID : Int?
    var sDeviceName : String?
    var iSelectedRoomID: Int?
    var strTitle:String = String()
    var captureSession:AVCaptureSession?
    var videoPreviewLayer:AVCaptureVideoPreviewLayer?
    var qrCodeFrameView:UIView?
    let supportedCodeTypes = [AVMetadataObject.ObjectType.qr]
    let maskLayer = CAShapeLayer()

    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewHome: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.viewStack.dropShadow()
        viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
        viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)
        self.viewStack.layer.cornerRadius = 10.0

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        maskLayer.path = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 5, height: 5)).cgPath
        
        let borderLayer = CAShapeLayer()
        borderLayer.frame = self.view.bounds
        //borderLayer.path = maskLayer.CGPath
        maskLayer.path = UIBezierPath(roundedRect: viewScanQRCode.bounds, byRoundingCorners: [.topLeft,.topRight, .bottomLeft, .bottomRight], cornerRadii: CGSize(width: 10.0, height: 10.0)).cgPath
        borderLayer.mask = maskLayer
        borderLayer.lineWidth = 5.0
        borderLayer.strokeColor = UIColor.white.cgColor
        borderLayer.strokeColor = UIColor.clear.cgColor
        viewScanQRCode.layer.addSublayer(borderLayer)
       
       self.StartQrCodeScan()


    }
    
    func StartQrCodeScan(){
        guard let captureDevice = AVCaptureDevice.default(for: AVMediaType.video) else {return}
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession?.addOutput(captureMetadataOutput)
            
            captureMetadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = supportedCodeTypes
            
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
            videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
            //videoPreviewLayer?.frame = view.layer.bounds
            videoPreviewLayer?.frame = viewScanQRCode.layer.bounds
            
            viewScanQRCode.layer.addSublayer(videoPreviewLayer!)
            
            captureSession?.startRunning()
            
            qrCodeFrameView = UIView()
            
            if let qrCodeFrameView = qrCodeFrameView {
                qrCodeFrameView.layer.borderColor = UIColor.green.cgColor
                qrCodeFrameView.layer.borderWidth = 2
                //self.view.addSubview(qrCodeFrameView)
                //self.view.bringSubviewToFront(qrCodeFrameView)
                
                //viewQR.addSubview(qrCodeFrameView)
                viewScanQRCode.bringSubviewToFront(qrCodeFrameView)
            }
            
            captureSession?.startRunning()
            
        } catch {
            // If any error occurs, simply print it out and don't continue any more.
            print(error)
            return
        }
    }
    
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection){
        
        captureSession!.stopRunning()
        
         if let metadataObject = metadataObjects.first {
         guard let readableObject = metadataObject as? AVMetadataMachineReadableCodeObject else { return }
         guard let stringValue = readableObject.stringValue else { return }
         AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            
            UserDefaults.standard.setValue(stringValue, forKey: "ScannedDeviceId")
            
            self.lblDeviceId.text = stringValue
            
            
            
         }
         
         dismiss(animated: true)
         
        
       
    }
    
    
    @IBAction func ActionScanQrCode1(_ sender: Any) {
    }
    @IBAction func ActionScanQrCode(_ sender: Any)
    {
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "SetSSIDViewController") as! SetSSIDViewController
//        self.navigationController?.pushViewController(next, animated: false)
        
        
        
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "ScanQRViewController") as! ScanQRViewController
//        self.navigationController?.pushViewController(next, animated: false)
        
        self.lblDeviceId.text = "uyiuiu"
        
        if self.lblDeviceId.text!.count > 0
        {
            let next = self.storyboard?.instantiateViewController(withIdentifier: "DeviceConnectionViewController") as! DeviceConnectionViewController
            next.sRoomID = self.sRoomID
            next.sDeviceName = self.sDeviceName
            next.sDeviceId = self.lblDeviceId.text
            self.navigationController?.pushViewController(next, animated: false)

        }
       else
        {
            self.showToast(message: "Device id is missing")
        }
        
        
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
