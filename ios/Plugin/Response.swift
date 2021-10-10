//
//  Response.swift
//  Plugin
//
//  Created by Nooc on 2021/10/9.
//  Copyright © 2021 Max Lynch. All rights reserved.
//

import Foundation
import Capacitor

let call = CAPPluginCall();

struct ResponseInfo {
    let code: String
    let success: Bool
    let message: String
}

let RESPONSE_INFOS = [
    ResponseInfo(code: "9000", success: true, message: "Payment succeeded"),
    ResponseInfo(code: "8000", success: false, message: "The order is processing"),
    ResponseInfo(code: "6004", success: false, message: "Pay result unknown"),
    ResponseInfo(code: "6002", success: false, message: "Network unavailable"),
    ResponseInfo(code: "6001", success: false, message: "User canceled"),
    ResponseInfo(code: "5000", success: false, message: "Request repeated"),
    ResponseInfo(code: "4000", success: false, message: "Pay failed")
]

public func respondAlipay(_ code: String) {
    guard let resultInfo = RESPONSE_INFOS.first(where: { info in info.code == code }) else {
        call.reject("Unknown error")
        return
    }
    
    if resultInfo.success {
        let result = [
            "code": resultInfo.code,
            "message": resultInfo.message
        ]
        
        call.resolve(result)
    } else {
        call.reject(resultInfo.message, resultInfo.code)
    }
    
}
