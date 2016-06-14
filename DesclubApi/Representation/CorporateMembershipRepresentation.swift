//
//  CorporateMembershipRepresentation.swift
//  DesclubiOS
//
//  Created by Jhon Cruz on 14/09/15.
//  Copyright (c) 2015 Grupo Medios. All rights reserved.
//

import Foundation

class CorporateMembershipRepresentation: Mappable {
	
	var _id: String?
	var name:String?
	var email: String?
	var membershipNumber: String?
	var alreadyUsed: Bool?
	var corporate:CorporateRepresentation?
	var additionalData:CorporateMembershipAdditionalDataRepresentation?
	var validThru:NSDate?
	var created:NSDate?
	
	required init?(_ map: Map){
		
	}
	
	func mapping(map: Map) {
		_id <- map["_id"]
		name <- map["name"]
		email <- map["email"]
		membershipNumber <- map["membershipNumber"]
		alreadyUsed <- map["alreadyUsed"]
		corporate <- map["corporate"]
		additionalData <- map["additionalData"]
		validThru <- (map["validThru"], ISO8601DateTransform())
		created <- (map["created"], ISO8601DateTransform())
	}
	
}