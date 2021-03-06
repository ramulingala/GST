package com.gst.organisation.outwardstaginginv.exception;

import com.gst.infrastructure.core.exception.AbstractPlatformResourceNotFoundException;

public class OutWardStagingInvNotFoundException extends AbstractPlatformResourceNotFoundException {

	private static final long serialVersionUID = 1L;

	/**
	 * @param OutWardStagingInvId
	 */
	public OutWardStagingInvNotFoundException(final Long outWardInvId) {
		super("error.msg.outwardinvid.not.found", "outWardInvId with this id"
				+ outWardInvId + "not exist", outWardInvId);

	}

}