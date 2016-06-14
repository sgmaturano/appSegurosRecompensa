//
//  CorporateMembershipAdditionalDataRepresentation.swift
//  SegurosRecompensa
//
//  Created by Jhon Cruz on 22/10/15.
//  Copyright © 2015 Grupo Medios. All rights reserved.
//

import Foundation

class CorporateMembershipAdditionalDataRepresentation: Mappable {
	
	var bancomer:BancomerCorporateMembershipAdditionalDataRepresentation?
	
	required init?(_ map: Map){
		
	}
	
	required init(bancomer:BancomerCorporateMembershipAdditionalDataRepresentation){
		self.bancomer = bancomer
	}

	func mapping(map: Map) {
		bancomer <- map["bancomer"]
	}
	
}