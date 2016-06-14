//
//  BancomerCorporateMembershipAdditionalDataRepresentation.swift
//  SegurosRecompensa
//
//  Created by Jhon Cruz on 22/10/15.
//  Copyright © 2015 Grupo Medios. All rights reserved.
//

import Foundation

class BancomerCorporateMembershipAdditionalDataRepresentation: Mappable {
	
	var policy:String?
	var mobile:String?
	
	required init?(_ map: Map){
		
	}
	
	required init(policy:String, mobile:String){
		self.policy = policy
		self.mobile = mobile
	}
	
	func mapping(map: Map) {
		policy <- map["policy"]
		mobile <- map["mobile"]
	}
}