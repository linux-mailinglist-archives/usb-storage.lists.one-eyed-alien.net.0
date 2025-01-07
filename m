Return-Path: <usb-storage+bncBD4KDUPW5UNBBGFF6O5QMGQEF6VXKGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id A28C9A03860
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 08:07:05 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3a817be161bsf148755745ab.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 23:07:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736233624; cv=pass;
        d=google.com; s=arc-20240605;
        b=A3rWR0v/Mj4p7Kg/TmYikaltqWDTJLu9NuzMNBjKRF0UpSwox0CP7InTM2Y4woLENu
         X1h1wAvQCdjbt8zRBoMhHZoRt2q6lYCUagRFtPpNznyBRAH9zaMmmMNjouEkJiV5sTyY
         pCcvulrGHP8Vybh02yNI2ochOPUkJ0zDgmjbgUxnV21sPpQMLkCL0TKdLVC3knlAgfSz
         jLSk810lnWGYvGak3SP9YsYoQkvKduL0OuUtNB/4eYfnSF6M3wZswTbHNLZ1o6Q/1mlA
         JDY01aYasBVfybO47AIZd8MM6F1iKkhnn770km/LmuBNt4vvUaK2Y7NJj+DXBt6YXnUt
         eH3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=EgYi1nmqj9tb/fgwRtZTibZx/5UxcRt0jbhsX1Jk4Vo=;
        fh=pHm1v/8bJYb3N0RlI4aj7yanAyB1Bw40paGAfUQxCvA=;
        b=iv2GwdRbNmgEE+PBKchSsayjtU4XZ7hG+FhTaFANtKK01L0ep+TlrIkiqOoQApgJ9B
         SsblRgZlF6JdSw/MD7Btptw10Q5Qq9lgxKbICnlI1f++1/w63F4B83yyZFRcfCwRiF55
         0nMn8sNG3lCMZjN2pZi4Cz5aC3ied0xxmtdwgdQHM7fTgYsO6HJRf/PJr4DtpmBGXU9T
         S+iNupikEAiZp+4Iy+PjjdhYZkb3hsbMiPMtzL7MA/L4CkYdCCo8y+kCj3WFEE9IKPTp
         HBdzHTMkuqXxKY43x858YVIU4UyxlJdO4JXISZB2AgaDocbDodG72osYMxrp612Wlz4N
         /uqw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=dr8hnk+j;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736233624; x=1736838424; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EgYi1nmqj9tb/fgwRtZTibZx/5UxcRt0jbhsX1Jk4Vo=;
        b=PLm8tYXQ/z8p0bKWCPwD0Z58zNISijhjij6QBR160cs2b5eLCZ5MtTGNrLw25+GhqC
         pucWmlxqTJ/WB0i3Y873bBa2aiowA6Xg1n8ntXqK8Ol00y7HR4ulBy5su7I0iyu9taC1
         ByBcTtHuGWhmMVcg5Hx+GxMMThqfReC2xaA9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736233624; x=1736838424;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EgYi1nmqj9tb/fgwRtZTibZx/5UxcRt0jbhsX1Jk4Vo=;
        b=EMnipwDQzd3OeTR6C33eO7/hWvh7L1zvCKRFGv4VSU2eq+phOdKmaMYspFLZSwZ2ez
         jTWnQGD1kNUiHGpt/lWLpEynKOA+NePHSfzN8n947ocBTvQ701NDyGtA7akK4JJSOBzM
         GLRwEi5CmaOFYhyll9aEYv8IegMMSg7mUDKSzT4Mb/k+8nW1VTxYmDRaKhQQxkaAdJ8H
         /nxSgHA6425rYY+9btcybnQoqk9jdc5hO0Gnm8igPKBY7Egwwdw+QPXMr1UJuJnoxKCK
         M65yJJVt44Q4qtZm9P5sO1BgBPSlvVLB9C2x5aYqn/1JQrNWqDYS4Ql2YJSzrzPLBNpz
         H0UA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXyxmJshrT6atjDyZw9h68ir4gGMfTaHuI+eg1P5/ffo0MkCKfsOZsBLG+Vq+5m0HpMik6lew==@lfdr.de
X-Gm-Message-State: AOJu0YxlxtiD9R8vCBGb9gYC+qkwD+YPIws6WbnAlxq8J/Fi0Iz0zyO0
	AzjGiLPJeIATwo9hsejV2yrZVGMLxlXYtNOwTohc0nbu9l25HMMfZTsb1aWxHYQ=
X-Google-Smtp-Source: AGHT+IGVJGuBBnDWPnNGiEB2ZN9qAtbvWM7FCyl6c0nJ3eOU7+GDGUPkZmgsRVvrKe3litcufzt+kg==
X-Received: by 2002:a92:de07:0:b0:3ce:3517:b831 with SMTP id e9e14a558f8ab-3ce3517b8abmr3477705ab.8.1736233624235;
        Mon, 06 Jan 2025 23:07:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1582:b0:3a7:cebb:5bd7 with SMTP id
 e9e14a558f8ab-3c025e38654ls14291285ab.1.-pod-prod-00-us; Mon, 06 Jan 2025
 23:07:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXY/HfUUP4dGrWwZNlHUBqTPSXaJT7+iFz13ftFqbuE04MfmtwSpFvRcRFYiJ5PX2PAtRnqCVg/OCOhIg==@lists.one-eyed-alien.net
X-Received: by 2002:a5e:dc05:0:b0:84a:7a0d:cc67 with SMTP id ca18e2360f4ac-84cd2e83b29mr154969739f.8.1736233623294;
        Mon, 06 Jan 2025 23:07:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736233623; cv=none;
        d=google.com; s=arc-20240605;
        b=NnxLFP021O3Qkmljn+NmWG2UeB3S1e+9MhUJ9cUviAfjKxYZD4XI3Ipn7TiFftQgPB
         sleYSqBD21BsOVKRd37dK8LRU/WoMcwHBlpVPTYBWbUKyEIeApxE8cg4dAYt9Erfiomt
         U1lSCkHNTSxKz0PfBI+H9lpb2RiCWJ6P0s4Tl/ei1JgPWV3bagPpg20aCcyy4pan7B4T
         c1G20sNVXqIfX4JONUxMtjFXA4vasEQjwCTEM68UWm6o8qxeySQNoMvPQ8dO+h2gukPI
         TNgpwHdxqBfyp9ScKxz/hkkfytKBBIKHzm6a3n32nszGw46GekfkEYl2qBg2sauUvFKM
         vZzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=inaSEMpTVKk1ST+3srG8V1U/0h9KEiFBTVU1i7Qk0gU=;
        fh=5/xUkkGiTFjTmc2HK85AQBoWPUmulwo9cPRWbjDPwX0=;
        b=ljCT8gDuZgPU6BExFbzKnquLR6QdLVbr3hFp02Goxily/tY2lJKKRDou1bFK1fQ3Wl
         YwejsXO74zzzMryJ0sYOqcgZjfmu9ZCfnaZOY3rbB6bxAhldqCEAbvtnVVPPSSMBfQOL
         OpWmeeHWo9acUWmrcr7+q8Bi/vwayJCzGO2FBW/YTeoE2B+5ilaeXJCfTg7o+409ehkb
         tnGYMi2wTjjRu0F/84mtne4SQeMB75ZXHargAoaxV+tFvy7W3pWbLogaqT1MGbtYO47D
         GIsfVz3RxVgWBbASN5nDGfS3Y3z/OBt8UvBi31WHet6c/qyl1ozeOiMT0lO+OonUUev6
         MMZQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=dr8hnk+j;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4e68c1ac13asi19299850173.94.2025.01.06.23.07.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 23:07:03 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5073s5ae013495;
	Tue, 7 Jan 2025 07:06:57 GMT
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440vrc8q1s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 07:06:56 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5073RCiW008851;
	Tue, 7 Jan 2025 07:06:55 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([172.16.1.7])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yfpyse6h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 07:06:55 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 50776sHI32768646
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 07:06:54 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 900C258064;
	Tue,  7 Jan 2025 07:06:54 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 191ED58063;
	Tue,  7 Jan 2025 07:06:51 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 07:06:50 +0000 (GMT)
Message-ID: <bb8ea315-cf16-4fd1-9680-bbc390ac1756@linux.ibm.com>
Date: Tue, 7 Jan 2025 12:36:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        virtualization@lists.linux.dev, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-6-hch@lst.de>
 <4addcb5e-fc88-4a86-a464-cc25d8674267@linux.ibm.com>
 <20250106110532.GA22062@lst.de>
 <3fb212e4-8fff-45fc-9cff-f5b5eaff4231@linux.ibm.com>
 <20250106152708.GA27431@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250106152708.GA27431@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fjpHHO44d6r9IEMzw536FE7K15i-7J20
X-Proofpoint-ORIG-GUID: fjpHHO44d6r9IEMzw536FE7K15i-7J20
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=305 spamscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070056
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=dr8hnk+j;       spf=pass (google.com:
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



On 1/6/25 8:57 PM, Christoph Hellwig wrote:
> On Mon, Jan 06, 2025 at 05:36:52PM +0530, Nilay Shroff wrote:
>> Oh yes, I saw that you moved blk_mq_can_poll() to blk-mq.h and 
>> made it inline so thought why bdev_can_poll() can't be made inline?
> 
> It can be, but why would you want it to?  What do you gain from forcing
> the compiler to inline it, when sane compilers with a sane inlining
> threshold will do that anyway.
Hmm, ok, I was thinking just in case we want to force compiler. What if
in case compiler doesn't inline it? However, if we're moving this function
to a header then it would be made inline, anyways.
> 
>> BTW, bdev_can_poll() is  called from IO fastpath and so making it inline 
>> may slightly improve performance. 
>> On another note, I do see that blk_mq_can_poll() is now only called 
>> from bdev_can_poll(). So you may want to merge these two functions 
>> in a single call and make that inline.
> 
> I'd rather keep generic block layer logic separate from blk-mq logic.
> We tend to do a few direct calls into blk-mq from the core code to
> avoid the indirect call overhead, but we should still keep the code
> as separate as possible to keep it somewhat modular.
> 
Okay, make sense.

Thanks,
--Nilay

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bb8ea315-cf16-4fd1-9680-bbc390ac1756%40linux.ibm.com.
