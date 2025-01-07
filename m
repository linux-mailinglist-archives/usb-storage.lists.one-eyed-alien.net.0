Return-Path: <usb-storage+bncBD4KDUPW5UNBBHOT6O5QMGQEKY7Q6OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 16810A03A0C
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 09:45:20 +0100 (CET)
Received: by mail-io1-xd45.google.com with SMTP id ca18e2360f4ac-844d68dbe60sf100143439f.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 00:45:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736239518; cv=pass;
        d=google.com; s=arc-20240605;
        b=d1fhNt+ixyEh1LHPtBNRZ4/o4ik+NfRb8ve1AO+Gv/TpaDe/x+/L8tOuDx2aYiJQcS
         N0nCs3/cYvpNA01S6/6Kr5N7hebEqr48HjiIT38dYuH8kE6Kl94odAN9IUytcQQqEKQI
         CzEKkzbNNvmKt+dUw/sJpBDRP+vtdf8SkCZz9OLQhHDDWl3f9eGx2iySk58sZJpnHCRa
         5DosothuZgsp7venKzDDORkkz4HNHI4R8wktSF5zVQIj6+ypzvE4o30iIHBgAfZcta9+
         seC86KwSuA1iEgARb80bceZKeQi5UOGoQD1CKt5/YHXMDVDjN76kk4nbDoeOUFunrFKJ
         VDxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=TLU9gK+hH/pX3TB+J+TgEZKcvBCbOVkwgS091ENz5PU=;
        fh=L/YvH4R34j/5TBvRBwx6f2bm+GCGYNh1yCtysyZwq2I=;
        b=Pr8omX6WjGRBOQDrvXPr3I+eXW+gmjZOG7/KX9dEGhWTXkAQEreffladJHvtJkhf2l
         GoGcNdapPgTK3Jx+VdJixzdOaAKOqtqZ7ZMKD1iwr7cDOut6fAc960mB0znE7TpYXrUV
         3ppDekKAcBMU/sbM4NQCUi0Lv9zExjV8VOy12sxGx3GUId0D7fdNjac3TBA0ap7zb2PC
         nkyirHEcLeqpZHO+/T/u9Sq7cifXJEiVEjsiSh8A1F8iTNZ/xpXSxX2nhsgnpF468Kqw
         qIGOsJlOKbRGEWP4H4wT7fAHILQx11D4+ha6cVaWY+xcQtuSR3yg6BImm3ruGpKODbGV
         HI2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=HV9jqXTD;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736239518; x=1736844318; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TLU9gK+hH/pX3TB+J+TgEZKcvBCbOVkwgS091ENz5PU=;
        b=UNNZqiPlxrmAbHsQnzPkGe+AMfjjKa6YtG/akzo7JKYw6MQrWVzE7Wf3CwaQqD47fn
         gWezUFLSNOIxmTcZTB7oT0iV7vFFRFx+58PW7E5UlnxFvNxb5ZJlqLteaHtS3yLzBDWH
         U0W1kL2TMjK82ay2u8Zdky7InBvKAr3aGds28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736239518; x=1736844318;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TLU9gK+hH/pX3TB+J+TgEZKcvBCbOVkwgS091ENz5PU=;
        b=iZry05589gZGyng9pUwSiYkU/nbC65Ok77FYjTIQHa1e2CJ+CUukkN0QDQpZwcWddn
         LbbmFJTgvAxf4Lf+ctk99slKbTb9wiRG8mv2YuKSXkFvvYLNxuTssqCQJRv77+icBhei
         RxVe+7fviIdhrDtnSYo1Ej0kIDIy0WIwBOnIDVioQzxCDn10Ok7S+Q/H9wxtMnpuxPNg
         2Hy4g0O7Tp9knhCjn/sWl66eCECbWu+ISd5W+ydAlmLbe1AwGi87oLuQDXplE1/kgznP
         qqC3OKq9go7sZ3Nlnd5OlJ7W6lH3RiKXg41E/6oS4p4sVqOT23Po7RicOnhhPUBfkC6i
         Poyw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXH00S2jh05KPFpDTLy3vT7dZ3YIaTSQXq0cEnibLk8fRsME7G32+PjPWt2kI4UOC1nHnos1Q==@lfdr.de
X-Gm-Message-State: AOJu0Yz3C8bznZPz7rV/0Asd3gSLJZXljhx/wPZRwjRKGcejBA13npwB
	5Rnug3g+yTzDo0g0zQNcgd5N5kqGAHygatQWHrZAP2MH8QOysyXfCgF7zp4tKS0=
X-Google-Smtp-Source: AGHT+IG504yqV35y3viHTI2BNaayb4HQqIomXx+JDWfx1pYGSh3wVcynbBXK2fyvdVQiM5OhluKqjw==
X-Received: by 2002:a05:6e02:16c8:b0:3a7:c5b1:a526 with SMTP id e9e14a558f8ab-3c2d62f8d51mr158545295ab.7.1736239517943;
        Tue, 07 Jan 2025 00:45:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:c563:0:b0:3c8:b23f:3dfc with SMTP id e9e14a558f8ab-3c8b23f3f82ls28532745ab.0.-pod-prod-00-us;
 Tue, 07 Jan 2025 00:45:17 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVGf6MoolOGCwAh+c1mF5mX2/sChctIn9Diay9O98Od5koNoZHWbK/eVJQd5tBgVSURqHocGnehAisvtA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:3a83:b0:82a:a4e7:5539 with SMTP id ca18e2360f4ac-84cd2d863c8mr181754539f.2.1736239517160;
        Tue, 07 Jan 2025 00:45:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736239517; cv=none;
        d=google.com; s=arc-20240605;
        b=K9VnjHwghE9O4oRcLMWbITvUm+IY006y2ijp0rnbK+L2VUFYI06TR4n08Be/Ybr2MK
         RYuUqGqfwjgjCCK8aPddPpTWvsGOjmezt/fRn8SF4NbigM82nGy7zWDI0+PJxDLMy2MY
         ePZvBT6f3w/YwgJMPsONndhFskhym/RtHQMfmR8PdQBIAoAq0IHIy96EqTHxu8KgOQqe
         C237qMA0jXc99AZI3X+jPwpQ0JdoF+5LYisOGYNOO+OEaMtuN2f6WuS0e5JhtkjJ5Eft
         vCegnM+MeLtOkLDjixF6MpwAdy56h1pW+rp9ZCDTYBDfZ7MnXiHjtWKRpPF1QdxqkRKA
         W82g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=An/7YwPguZdZtal5mzGdVsZ80ntnWORr30SjufRrII0=;
        fh=t8kSgzmsOCPzOgDM4DP8dMU3CD3uxeQFaZeaP/9WqE8=;
        b=WZGgcOnOOaAtut7riMhzKcSJo2/Yj959e6pT74Aj64zjBHb/9zaimMbjH3wfQVDyG0
         grZU8/YWub1lXgqu1TsI29gLOSSz1zDv+yF919qguM5VXvgHvp5CXFiAKY/YWgceg4ti
         ZUdvJz0+fMfBYUqybIfsH4e8RbfjXGZS9DwWik1mVNZ/8aHDHUID4YTT3ryTqoz5a6tq
         BPGW7sNAJjAbwloAptiPTEIiSIeytl+oj04tiSSP2A9tem2fVoVwjj9EcpUKg1+zH40c
         //KcOK3SZisJj8b5r3w6wI4vCdOcgqx3Ba7UqSDZQjjAZzqI+xRnmn1L2frfoOgGMAJW
         kG2g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=HV9jqXTD;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id ca18e2360f4ac-8498d8a7991si1911441039f.92.2025.01.07.00.45.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 00:45:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 506NxA3J024138;
	Tue, 7 Jan 2025 08:45:11 GMT
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440sahhucs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 08:45:11 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50768hx9026171;
	Tue, 7 Jan 2025 08:45:10 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yj121bdf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 08:45:10 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5078jAkh16777844
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 08:45:10 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 29F7F5805A;
	Tue,  7 Jan 2025 08:45:10 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 147D758052;
	Tue,  7 Jan 2025 08:45:07 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 08:45:06 +0000 (GMT)
Message-ID: <263963d9-ac40-4f87-b38a-edb4202d294c@linux.ibm.com>
Date: Tue, 7 Jan 2025 14:15:05 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 6/8] nvme: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-7-hch@lst.de>
 <96c48ba0-3db5-4504-a456-e57440aa1b56@linux.ibm.com>
 <20250107082224.GB15960@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107082224.GB15960@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: M2dqWYWIBMLItYkJibPc5ndXAo2l1a2P
X-Proofpoint-ORIG-GUID: M2dqWYWIBMLItYkJibPc5ndXAo2l1a2P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 adultscore=0 mlxlogscore=536 impostorscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070070
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=HV9jqXTD;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>



On 1/7/25 1:52 PM, Christoph Hellwig wrote:
> On Tue, Jan 07, 2025 at 12:28:29PM +0530, Nilay Shroff wrote:
>>> -	blk_mq_freeze_queue(ns->disk->queue);
>>>  	lim = queue_limits_start_update(ns->disk->queue);
>>>  	nvme_set_ctrl_limits(ns->ctrl, &lim);
>>> +
>>> +	blk_mq_freeze_queue(ns->disk->queue);
>>>  	ret = queue_limits_commit_update(ns->disk->queue, &lim);
>>>  	set_disk_ro(ns->disk, nvme_ns_is_readonly(ns, info));
>>>  	blk_mq_unfreeze_queue(ns->disk->queue);
>>
>> I think we should freeze queue before nvme_set_ctrl_limits(). 
> 
> Why?
>
The nvme_set_ctrl_limits() sets certain queue limits which are 
also used during IO processing. For instance, ->max_segment_size
is used while submitting bio.
Also, if we look at the code before your patch, nvme_set_ctrl_limits()
is called when the queue is freezed.

Thanks,
--Nilay

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/263963d9-ac40-4f87-b38a-edb4202d294c%40linux.ibm.com.
