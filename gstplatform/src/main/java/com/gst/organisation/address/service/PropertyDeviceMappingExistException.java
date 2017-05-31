package com.gst.organisation.address.service;

import com.gst.infrastructure.core.exception.AbstractPlatformDomainRuleException;


public class PropertyDeviceMappingExistException extends AbstractPlatformDomainRuleException {

 
	private static final long serialVersionUID = 1L;

    public PropertyDeviceMappingExistException() {
        super("error.msg.property.code.device.mapping.exist", " property Code and device mapping is mapping exist", "");
    }

	
}