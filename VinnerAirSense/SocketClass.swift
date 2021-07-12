//
//  SocketClass.swift
//  VinnerAirSense
//
//  Created by MAC on 27/01/21.
//

import UIKit
import SocketIO

class SocketClass: NSObject, StreamDelegate {
    
    var inputStream : InputStream?
    var outputStream : OutputStream?
    
    
    func connect() {
       var readStream : Unmanaged<CFReadStream>?
       var writeStream : Unmanaged<CFWriteStream>?
       let host : CFString = NSString(string: "192.168.4.1")
        let port : UInt32 = UInt32("8888")!

       CFStreamCreatePairWithSocketToHost(kCFAllocatorDefault, host, port, &readStream, &writeStream)
           
       inputStream = readStream!.takeUnretainedValue()
       outputStream = writeStream!.takeUnretainedValue()
           
       inputStream!.delegate = self
       outputStream!.delegate = self
           
        inputStream!.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)
        outputStream!.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)
           
       inputStream!.open()
       outputStream!.open()
     }

    
    
//    static let shared = SocketClass()
//
//    var socket: SocketIOClient!
//
//    let manager = SocketManager.init(socketURL: URL(string: "http://localhost:8888")!, config: [.log(true), .compress])
//
//    private override init() {
//           socket = manager.defaultSocket
//       }
//
//    func connectSocket(completion: @escaping(Bool) -> () ) {
//           disconnectSocket()
//           socket.on(clientEvent: .connect) {[weak self] (data, ack) in
//               print("socket connected")
//               self?.socket.removeAllHandlers()
//               completion(true)
//           }
//           socket.connect()
//       }
//
//       func disconnectSocket() {
//           socket.removeAllHandlers()
//           socket.disconnect()
//           print("socket Disconnected")
//       }
//
//       func checkConnection() -> Bool {
//           if socket.manager?.status == .connected {
//               return true
//           }
//           return false
//
//       }
//
    
    
    
    
    
}
