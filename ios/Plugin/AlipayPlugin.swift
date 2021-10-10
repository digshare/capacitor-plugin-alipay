import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AlipayPlugin)
public class AlipayPlugin: CAPPlugin {
    private let implementation = Alipay()
    
    @objc func request(_ call: CAPPluginCall) {
        let orderInfo = call.getString("orderInfo") ?? ""
        
        AlipaySDK.defaultService()?.payOrder(orderInfo, fromScheme: "alipay", callback: { (resultDic) in
            print(resultDic as Any)
            if let result = resultDic as NSDictionary? {
                let resultStatus = result.value(forKey: "resultStatus") as! String
                respondAlipay(resultStatus)
            }
        })
    }
}
