//
//  IRCCapabilities.swift
//  GamingStreamsTVApp
//
//  Created by Olivier Boucher on 2015-10-17.
//  Copyright © 2015 Rivus Media Inc. All rights reserved.
//

import Foundation

class IRCCapabilities {
    private var capabilities : [String]
    
    init(){
        capabilities = [String]()
    }
    
    init(capabilities : [String]){
        self.capabilities = capabilities
    }
    
    func addCapabilities(capabilities : [String]) {
        self.capabilities.appendContentsOf(capabilities)
    }
    
    func getIRCCommandString() -> String? {
        if capabilities.count > 0 {
            var cmd = "CAP REQ : "
        
            for cap in capabilities {
                cmd += cap
            }
        
            return cmd
        }
        return nil
    }
}