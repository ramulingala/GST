/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.gst.infrastructure.sms.scheduler;

import java.util.Collection;
import java.util.Map;

import com.gst.infrastructure.campaigns.sms.domain.SmsCampaign;
import com.gst.infrastructure.sms.domain.SmsMessage;

/**
 * Scheduled Job service interface for SMS message
 **/
public interface SmsMessageScheduledJobService {

    /**
     * sends a batch of SMS messages to the SMS gateway
     **/
    public void sendMessagesToGateway();

    /**
     * sends triggered batch SMS messages to SMS gateway
     * @param smsDataMap
     */
    public void sendTriggeredMessages(Map<SmsCampaign, Collection<SmsMessage>> smsDataMap);

    /**
     * get delivery report from the SMS gateway
     **/
    public void getDeliveryReports();
}