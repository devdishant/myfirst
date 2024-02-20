//
//  CheckInputPlugin.swift
//  
//
//  Created by DishantPatel on 18/02/24.
//

import Foundation

@objc(CheckInputPlugin)
class CheckInputPlugin : CDVPlugin {
    // MARK: Properties
    var pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
    
    @objc(displayInput:)func displayInput(_ command: CDVInvokedUrlCommand) {
        
        let msg = (command.arguments[0] as? NSObject)?.value(forKey: "param1") as? String

        if let reslut = msg, !reslut.isEmpty {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Welcome to cordova \(reslut)")
        } else {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: "Please enter value in textfield")
        }
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
    }
    
}
