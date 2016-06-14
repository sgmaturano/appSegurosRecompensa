//
//  BancomerPolicyNumber.swift
//  SegurosRecompensa
//
//  Created by Jhon Cruz on 22/10/15.
//  Copyright © 2015 Grupo Medios. All rights reserved.
//

import Foundation

class BancomerPolicyNumber: RegexRule {
	
	static let regex = "^[0-9]{3}[A-Z]{1}[A-Z0-9]{1}[0-9]{2}[A-Z0-9]{3}$"
	
	convenience init(message : String = "Póliza inválida"){
		self.init(regex: BancomerPolicyNumber.regex, message : message)
	}
	
}