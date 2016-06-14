//
//  CorporateMembershipInputRepresentation.swift
//  SegurosRecompensa
//
//  Created by Jhon Cruz on 22/10/15.
//  Copyright © 2015 Grupo Medios. All rights reserved.
//

import Foundation

class CorporateMembershipInputRepresentation: Mappable {
	
	var name:String?
	var email: String?
	var corporate:String?
	var additionalData:CorporateMembershipAdditionalDataRepresentation?
	
	required init?(_ map: Map){
		
	}
	
	required init(name:String, email:String, policy:String, mobile:String){
		self.name = name
		self.email = email
		let bancomer = BancomerCorporateMembershipAdditionalDataRepresentation(policy:policy, mobile: mobile)
		self.additionalData = CorporateMembershipAdditionalDataRepresentation(bancomer: bancomer)
		self.corporate = CommonConstants.DESCLUB_CORPORATE
	}
	
	func mapping(map: Map) {
		name <- map["name"]
		email <- map["email"]
		corporate <- map["corporate"]
		additionalData <- map["additionalData"]
	}
	
}