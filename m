Return-Path: <usb-storage+bncBD4KDUPW5UNBBQFF725QMGQEKQCSHBI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 336F5A07108
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 10:11:38 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-3a81570ea43sf6453035ab.0
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 01:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736413888; cv=pass;
        d=google.com; s=arc-20240605;
        b=TtRPGFsZXTY7cbGxduvXWECfjvngjGvP3rZ7dzl6rUNkfrPEN9jLixLkBzqOeKcPsu
         n/MjshOP8EgIdTaXu5by3Ocgr3ZwKk8yzykCi61b4j4O09bw4fJr07evh6m72QpDYMql
         qxmLuix4eGRxxssx+QExjApkcC3U839LqmdyZqzQoj4ODJJ9bNTMHtJz7ynIx7fMn3xc
         UprPjtdRM5qbcYtHYVTmeoEnVw43N+uLt77J1gPYWyYihjnAwxvOmIICs8VCa+Fcziir
         QQLVX0VHmCgG2NqY6CefiplfaepEJAU0M3jS1LF/F9LkqiggdOIQeUYC980mNqBsCWTH
         YekQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=1nr4dcMM/bxANZMzXgz1ZkJGuGhVuzNFQPMxWCDcouA=;
        fh=vSMdBCDrLV/28IwwJKW2JtPfrjK8tNa3pxMztYnHgLc=;
        b=TLgqjPool8jKFzg0rh7wY6qwXnl7U+/bOqVGywgLavfapUtqbO38PX/BIiCGlTU1LK
         T2AcrXzh14zYbAnlFNZidOIWfrWN0Kc1QjX8DPwHcatOQd6BOJ1StJIjqpIM5tV1n64Z
         erO7U8vY4jVtQ2tqUvQIgCft2MIrR/wav+9tuLRCyE60nGugtl7WcpqsSjz9qTdI3b3k
         2Aiq4PnvS6e4EEvy7uZBaO1wW5wYjliSrcakymcl/CrSEgS1y6JbwBemnO2KsKWv7YbC
         +ph2QGwatb0bzHaMXmCWhWUPx7z+MZlcN06IUWp/wmfH/8c/CVs/ZMXMyojsSS0KY9yI
         QQbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=ib2HN9zc;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736413888; x=1737018688; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1nr4dcMM/bxANZMzXgz1ZkJGuGhVuzNFQPMxWCDcouA=;
        b=MFtGCgV+oZQ74yc6T+yny/FgKk5zPwgVwf5iIqUk2JX8bWuOpWyJl5fTd/DhL9Knv6
         mXTWzGL24L8Kohm66meBZnSt5jYEmvb/RdjKitjPxqqN6eDuLqlzRoMzDu5Q1qmrF7tM
         sUQ0jz6Enzx1xD7aO6xTiIHSk4iitsNAJPAic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736413888; x=1737018688;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1nr4dcMM/bxANZMzXgz1ZkJGuGhVuzNFQPMxWCDcouA=;
        b=DgHt81uspRCYrlkGpPQJytcVMCy94M9jb+crvkAsbZ8PUk6fXCM/u8qBUrQcPmHK63
         sbeuzMC9uoHf0K/w1LxT7/08smYnLgySLu5+sgO3r+jLDI1byWBlB20A6N/W8BZAS+MH
         9ysjTNbc2sMhfaeYYhfRucohtYpI3aLK01gkOElV22skc8M+sC2jXsE5IsRElBnEzqXZ
         vlcUneko4LaNw9R8WMfT7gRJJ0Tdm3VyxoYhn81ieiFMwpRV9PNAEv4IfmoVjbqVef1s
         HEnz796eHElw6bu49z3ZD8UGApAmkjgfkeh7CMEXFXl+v4IjwtKNi3sw9FOrJ9s1V9No
         lbMQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW14XN1H7jxcqYVVus4T4K46AR35aHAxUH/6VhnzvfxFAv0UVXxia+Scw9Ib7pVwd6pI0shig==@lfdr.de
X-Gm-Message-State: AOJu0YzxG0bASLaI68je1flB5i8XC82fsrjNM/SKSAewN5gl3cerBILt
	naqC33nk/Ra8JCSoFJTGLPI/RYXo2QRC/dQqzbB5hzFAwgQ6gRvHVwNJCsvrfgs=
X-Google-Smtp-Source: AGHT+IGLwRRPPLFX9bUhy8JnnzZFLtnW9t83+AoYigxODk3Yirm/YGIWBNmRm3oTO4SJudPj2mMW9w==
X-Received: by 2002:a92:cd8c:0:b0:3a7:7124:bd2b with SMTP id e9e14a558f8ab-3ce3aa5afadmr41013675ab.15.1736413888530;
        Thu, 09 Jan 2025 01:11:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:c26f:0:b0:3c8:b119:42ae with SMTP id e9e14a558f8ab-3ce473e91fels4572615ab.0.-pod-prod-09-us;
 Thu, 09 Jan 2025 01:11:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX6kDb5i/RWUpXajZjS21p23ft8HrqgKBAZC4HajbEgOWh6b9dqCcgeE6xAQMJEaL1G+1+uPQVpTscXJQ==@lists.one-eyed-alien.net
X-Received: by 2002:a92:cda3:0:b0:3cd:d02b:d1f3 with SMTP id e9e14a558f8ab-3ce3aa5af2fmr35160175ab.17.1736413887766;
        Thu, 09 Jan 2025 01:11:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736413887; cv=none;
        d=google.com; s=arc-20240605;
        b=hx8T6BMJd6A/LH7ajGXVWrqS0gydM5VH03RGmORCqdqwRIbtkwTx0XIuvp8oKt57B1
         QGgPnxhGKxlYay4L++9bpnh5GX1mYYwtaP4XFuWDE0QvF++xYxYl/+Yi0V0sEk5yiW1E
         pnCx1uMELzaBtp7bQsLBo1raCjR9U7SXQ3+KnOZIe/jnoFWeYdETPC6mmCNWJSRJhSHW
         vJceX7+5u5dpeSEBJP7xZjy3W+l0T8tsTonNpi4wUnEHY3QvyoLBlX4O/V45OAig7R8Y
         NEFS8ZoWmofLee9Kk4LavEtB7fvK9JwezK+4Gt1qv6fNvIeqenywtzxaW71phUkdUiYL
         +kyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=fWDrNgXr2+5/tTHTTTWdIBrhC/f2oWLiWWPFVObpjT0=;
        fh=JcTRum9t0ZI17fMSO8Piq5mdunIaND7RKWuNvd6BEto=;
        b=eQnNvens6ojXmY2tTTDTc69Tqx2LFxRtPO2ObH1M5UDgrB0XobF54rVLYVzNQjLyIt
         GoI4EUZIRCzYertYy2u2SJ6v1oEiHmyfS405xBGuFV4XAomqQRAivlYT5mVRfCuO7lYm
         FmDorr/msaQCEAV7KJooUGwGfoWHzKUZpjbBzfVFQF3khi+HKiZb1SiLHsdS05/KRsDK
         IJwMBPc7Mr7SWkEsvHaCW+CyK0zrDhDt96kZ/rh8Wa2nkVJ3MMx8Ej1kbGTlk1JVLqhh
         4JO/0D4I83ZPHbGKBiK1i+xfyWdjwpu9oS3zQ4GivsIj4n1k8K2SSH+NNnhdTHcEqPS5
         /r+g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=ib2HN9zc;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3ce4b02a8a9si4795085ab.142.2025.01.09.01.11.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 01:11:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5093qfso005381;
	Thu, 9 Jan 2025 09:11:23 GMT
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4426xc97s4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 09:11:22 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5095wNPO026195;
	Thu, 9 Jan 2025 09:11:21 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yj12c316-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 09:11:21 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5099BLvU47448342
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 09:11:21 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1E9E158058;
	Thu,  9 Jan 2025 09:11:21 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A8FBA58059;
	Thu,  9 Jan 2025 09:11:17 +0000 (GMT)
Received: from [9.171.90.198] (unknown [9.171.90.198])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  9 Jan 2025 09:11:17 +0000 (GMT)
Message-ID: <8dc9749a-4cce-4147-bd26-5fe61eee0567@linux.ibm.com>
Date: Thu, 9 Jan 2025 14:41:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 10/11] loop: refactor queue limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250109055810.1402918-1-hch@lst.de>
 <20250109055810.1402918-11-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250109055810.1402918-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: uDxwUd2KbAVsvSlIR4Q5Puk9stf5a1bm
X-Proofpoint-ORIG-GUID: uDxwUd2KbAVsvSlIR4Q5Puk9stf5a1bm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxlogscore=805 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501090074
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=ib2HN9zc;       spf=pass (google.com:
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



On 1/9/25 11:27 AM, Christoph Hellwig wrote:
> Replace loop_reconfigure_limits with a slightly less encompassing
> loop_update_limits that expects the aller to acquire and commit the
> queue limits to prepare for sorting out the freeze vs limits lock
> ordering.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Ming Lei <ming.lei@redhat.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Maybe a typo: s/aller/caller/g, otherwise looks good to me:

Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8dc9749a-4cce-4147-bd26-5fe61eee0567%40linux.ibm.com.
