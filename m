Return-Path: <usb-storage+bncBD4KDUPW5UNBBLPF6O5QMGQEZHTI7BQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F23AA03AF4
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 10:23:58 +0100 (CET)
Received: by mail-yb1-xb48.google.com with SMTP id 3f1490d57ef6-e535f2c8f7esf34266761276.3
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 01:23:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736241837; cv=pass;
        d=google.com; s=arc-20240605;
        b=FngGviuUN8MA5vhMHsabb7kmfQikrplUJ8fc1g/TF9LrfWFufUfZ3Gi3XSz5m79196
         dMAlUw6xhP5yWRRllWp8pnEbhRY+gIvX7u5JWujvI+TTTiraJQeHDiDx4fD6gvyWMqpP
         +TpYEqvJn41wKD/x2wXwoe9XmfwEEw0qqZyDFFDMQxR29MQDL1K3SZR8hMZZOwNLr3Oc
         yeCHqxws0FPpI47XBDZZJq8JOE6mCWUENseqSQe4Hq7sM17REaD3jaNqqscR1ArnhKnF
         3fDZRh7daUPomtakq7043AYnYftzGKBWZ5MnU/CHkxU9bK1BfVrzkv2PSFRCh1YD6DES
         Aszg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=TJM4dztjEX+xI0DW87mDp4dOXU5U3izurzGEiuT4wKU=;
        fh=u3wsZ44mNflqYooS3t1RqW5z3Vq0f2TuckwIrXAn/bE=;
        b=CWdYbU9/X5yvzIaUo6H1qcBaVOc1lIePTXJHZd2WqBAQD3zvJCx56VF9sIQDrisHZp
         TtY9fnHGxKs2TuukR1X8+aNXtIJTydmPxx1aGlQWul01aU9g9A0KkZAx+Fm6TfQYcmls
         XXrjRwcpSmkd5e3sx7CDjBWBd+MBLBUX7KnNeQxL7wtDzZjMIq4VfixJrMoLeqvXOSBS
         8JQV97xKz32wZDtHEoS2cnGCgr47ueAnZP0TRs9eSFZ38Fo5DGJRRiXVCtNZPI/6+XQt
         8ZkZ57FJUxm5nLrua2upXbOm/V5MSfZ9JGEaqS80MtmGxH4phl7LqeR6hiAq5JguMsYF
         GvPw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="tEB/gtlz";
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736241837; x=1736846637; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TJM4dztjEX+xI0DW87mDp4dOXU5U3izurzGEiuT4wKU=;
        b=cwa27dsK3vYxfi7pTOW7JAocRZXo3fF+N5RoGXJBXkdkUn65K8UlW4UUI41cprlray
         pAgM/1qh8Ttmzr2uMR2ybcGC+gBdy3Ilsjk7CWcZ7BTe8BtmRZtlywwY1nA3oJHBlUfg
         fw7TagQgUN83s5CIiZbOnyrnveMhIWOszeXnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736241837; x=1736846637;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TJM4dztjEX+xI0DW87mDp4dOXU5U3izurzGEiuT4wKU=;
        b=X3twqVcSO94kwlPpSSTk1pUfLzs4srWA9WAIj+P/bbSAwwLfrwcAGgOFKrkDLYAgbm
         Mz1jvffHrujSef0wPiwgHV8FfFK/I6lEwEFm2qJsOYf0byS9CAw0lupRvJdMX/ljrgWF
         PSyq0bNdtvIp+8iXMRmFcxWNH0X30xy6dVAv4RMSAZ0aATen38ij3ly0kVmOVWn92lGF
         iszEwdwZIYkFfUE7G2b3xieJcy5w47nvV2gkFj5gX1DZz0Bdm7HnUYyh5Z2tCaJKuOMk
         ZD1+vfBvwG5r3Pt7CfMOo7VWHRk2B3XqlKK174wduB88oBWPKFEFNsKY1LOPjtt5HUH5
         DcQw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCURytXMi/Lh2KtPC4rjLEJYWtuCreqhr3FRLbjOX+r026ZsdyW7aCMDFimlzraqyuXjnO6Huw==@lfdr.de
X-Gm-Message-State: AOJu0YxOyAPPbygUqYDa8Wbdu8wjCJOUqYP9hbctqB6iZn+mFhsHV1Yj
	dVyOzmywIup4rGcpiJ68YyN/2d3WIPtWYVjCNdSxYzFvapLfG7mb9Jv/4CqPOQk=
X-Google-Smtp-Source: AGHT+IE2xZMFD81nk1Bz9OAMZADmBjQt2W0BsQsFD2H/YE4oGtDDs0QsCNAlAmFRKGVARH/YPJ9iiA==
X-Received: by 2002:a05:6902:138d:b0:e49:5f2d:e744 with SMTP id 3f1490d57ef6-e538c1ff2d5mr37766551276.7.1736241837590;
        Tue, 07 Jan 2025 01:23:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:a1a3:0:b0:e48:8566:cdf0 with SMTP id 3f1490d57ef6-e548058dae4ls264900276.1.-pod-prod-02-us;
 Tue, 07 Jan 2025 01:23:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWitS/cerkBiemwS7LpsPB+TkK5GHNT+6oB33XBTIfapGy8Dh8XTRWPDGupYQ0L+vo21YWUndKU1OKANg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:2e0c:b0:e53:5eca:de59 with SMTP id 3f1490d57ef6-e538c2328a7mr46942223276.13.1736241836581;
        Tue, 07 Jan 2025 01:23:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736241836; cv=none;
        d=google.com; s=arc-20240605;
        b=DQUsy/Q601EfhWUBbid+eIC1oxFTonpXLkgsjJS34LRVYO0seN5LICFZFyj3bpHaCI
         U5L/mks7wY9mscg/UKeESZyIIoSU7CiHXYWM73Ktga6bs/s1knsTlqCKt4cYhcRK9pQD
         I5x6ffCWe6vsc9+uKg7gxP+9ct69WpsS/yJqDv+JmQWE+W1WeaXz2Ulz+e9re/KtKRBf
         PKTEA77De34Uuh+4DG898C6OZ0+hRAGpF9oTfIy/VVr3Se39RBC56fBX2Aq40T2xh6Fu
         1M0fLtBJEqelZzYdQrY9RWT8+5WPGWxK7hblKDl8dtTc7Hsn1ZIvkkEDlU9sRiZnUzqg
         Ci9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=hU44U59ZPnTsKkBvwI3DzhStrcSw/HP28RyLvQxokUQ=;
        fh=t8kSgzmsOCPzOgDM4DP8dMU3CD3uxeQFaZeaP/9WqE8=;
        b=Yx59RCobJZSWEb585jpTzyOlqNHmrUhgu3+ek2/04wLk9UpI1PGB70p5+Yr/DFrv5V
         A+IfGTiX5szxCiYc7tVejBh+mq6BkPbpATBBvj8qsWrAAYbPhuKXmVOAMq7s9WjAJ12W
         KjrOrpnvte3dMmvHQ9a3rLN5YOJvYXgzpE3aIzNBuoTA5anT9vFcF2WkkeTeUOfFKZ20
         eE72kbB3CMYPRYMarNu1ZB1JZFCL6rreRIfElMb9pt+mroHLQUUPdN1H9HrLG6J9EOd9
         L28DU0mr6b4SIF4RaAOBCjwMxexuwMc+tMsrTkbiy1mA/18Hy5ZFufs99XjEv7Pksz+O
         zLnA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="tEB/gtlz";
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e537d1a4787si21455184276.570.2025.01.07.01.23.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 01:23:56 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50785iX5017803;
	Tue, 7 Jan 2025 09:23:52 GMT
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4410f38a8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 09:23:51 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50758vfh016144;
	Tue, 7 Jan 2025 09:23:51 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([172.16.1.7])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygtksng7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 09:23:50 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5079Nosw31326774
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 09:23:50 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4639E5806D;
	Tue,  7 Jan 2025 09:23:50 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4FE3C58056;
	Tue,  7 Jan 2025 09:23:47 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 09:23:47 +0000 (GMT)
Message-ID: <90ae40c5-b695-4e17-8293-6a61648ed24a@linux.ibm.com>
Date: Tue, 7 Jan 2025 14:53:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 3/8] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-4-hch@lst.de>
 <220cdd33-527f-405d-90af-2abaace36645@linux.ibm.com>
 <20250107082145.GA15960@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107082145.GA15960@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: eE9AB5kCacSOQMekbbKXzC7-ClDhEip8
X-Proofpoint-ORIG-GUID: eE9AB5kCacSOQMekbbKXzC7-ClDhEip8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=842
 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070070
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="tEB/gtlz";       spf=pass
 (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass
 (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
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



On 1/7/25 1:51 PM, Christoph Hellwig wrote:
> On Tue, Jan 07, 2025 at 12:27:35PM +0530, Nilay Shroff wrote:
>> As discussed in another thread with Damien, shouldn't we need to 
>> move bdev_can_poll() to header file?
> 
> Well, if it was needed I would have done it, otherwise the code wouldn't
> compile, would it?
> 
I think, there won't be compile error because if we look at the show function
for "io_poll" attribute under sysfs, then I see it evaluates the queue limits 
feature flag BLK_FEAT_POLL and returns the value.

>> We also need to use this 
>> function while reading sysfs attribute "io-poll", no?  
> 
> This now reports polling support when the driver declared it but
> later resized the number of queues to have no queues left.  Which I
> think is a fine tradeoff if you do that.
> 
When I applied you patch on my system and access io_poll attribute
of one of my nvme disk, I see it returns 1, though I didn't configure 
poll queue for the disk. With this patch, as we're now always setting 
BLK_FEAT_POLL (under blk_mq_alloc_queue()) it return 1. So when I haven't
configured poll queue for NVMe driver, shouldn't it return 0 when I access 
/sys/block/nvmeXnY/queue/io_poll ?  

Thanks,
--Nilay

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/90ae40c5-b695-4e17-8293-6a61648ed24a%40linux.ibm.com.
