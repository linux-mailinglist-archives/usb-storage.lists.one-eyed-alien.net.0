Return-Path: <usb-storage+bncBD4KDUPW5UNBB55S7G5QMGQEFA3OOIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id E18BCA058CA
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:54:48 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-3a81684bac0sf334092845ab.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:54:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736333688; cv=pass;
        d=google.com; s=arc-20240605;
        b=SbE5c80qZccSSjqTvQSBJK8/2G8EZrfjgpe9oaZujU74bkivhxqMATF2wSan5c6a+X
         k+KZCn9k7IvGWEX+WoI13rqT5pkcSXpV/tniw7LbqT27ZT+djy63xk7bwW5vu6Hqiqv6
         R06SwTLZYCkITCow5DFiMJbEGtmrz6+tBO5u8GbFX2PfUK4CgXPm5UxfjZmdrYuaQOJf
         211QbYJ5uryj4sTebyaZXZQgL7w1s5tiK1ISTHa9Rm/wDZJtObSn6aY3xqzIkQ9lSRo2
         6CpK5UKr0Qnwuj01RF0daRY1scHFyflbtaGWWvLAZ2BLxoQF7yhOi2lLcv/TjY28x7S5
         HuBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=nHt1YBRDimVcyKYEp4xVC1WRH4rOA2pvoMT1PViHr/k=;
        fh=znI4RLiGoUmAKV5iXCImCY1y7uhoQSZoXj8NkFxxYh0=;
        b=XJhI5OD6i9UlX+a0Gar+Zdk7qtJgSC63IRwqdr4c8zm18QztTxnPqzvlPFoWgaidef
         E0m8SweJu4UweSZqrh7uEaGc2aH9lZE7p9AKEomE2iqWJgVg9mk4crGcpQfNz1flH6Ig
         k9jErIIF5pFVz5FNITmkWpNU0Py1BMjkZz2NXUGD+O2jzJgFK2GkzM0RGFxeGXASJCUf
         cknNmc7KKC4/y4/y7tk/Ak1bRPpgN+tSs2lQpK3VZTA1R4SeSfepdB5demreNiDU/GLZ
         2dfbauv4Piyk0uMbb0DXqd3RmUOmC8BnObc+PrC3i8jxkDp6fn8NmS34gt6UkVolNyIC
         Pa7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=M5uiYDHV;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736333688; x=1736938488; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nHt1YBRDimVcyKYEp4xVC1WRH4rOA2pvoMT1PViHr/k=;
        b=Va6DfLwjO4JuundOGVhmvp/YWUyBmz5YLeNGZMQJYSwXyQTTz2Q46Ej9TpVVyTbl/w
         wFQQNACpJaJWaBFNELIGI1+DdxkVzFMsKMb/TTcj8nWw8ovL1JGps4uqh9KCcdisQ5SK
         AdvOXinv8t7ModcJOVzXzJpewGES5+kxB0GEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736333688; x=1736938488;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nHt1YBRDimVcyKYEp4xVC1WRH4rOA2pvoMT1PViHr/k=;
        b=MhpPBLKGNg1G3ppmB0/FBptB1iv3Q7xoG3bKXgQqvkE/pP+DeDU4o7K1k2vnall7Wf
         2u2Mp/eMexQHBEyy6bvaq0B3CUa/uhcWj+5geZTNzl/YqCSC68EbT7Azgcd4ZFPiYzr2
         suMSDTqeo/ZQH1DZ9XiQmvuNnEzMkGcVfe++V2R+A1d3t6c3yOGebr2iPOkZuyEoYub8
         wcM4+jwybGHwSPyH5y+Ak6jAU20ZNQxMsqQK/QdQ9SDeJAgX38bQphmSbvyfy3oj7NrJ
         55cqoBMu110Y7d0WdV9SOusHFVNf15Uadtrvni2aaLPSD/uW2nz25y0vBxH7xmEoJKyZ
         mEag==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX4B/khrt0RktlxGwNWuBHqCW3MWA9DplStLqc76mcZmUsSokjFk6ISIQh8Sj/tk8VoxY4ACw==@lfdr.de
X-Gm-Message-State: AOJu0Yy/FEUJLd+SXB3wwXWvhTMLCkPi3FsRbQDTKyH6kyM1ZBIBQEyO
	WoczCFVnU+cfELFmsgLvumvHBrY+5wx0qokT1AEgy16jOMJ73742brlHgIiN6LA=
X-Google-Smtp-Source: AGHT+IENZ24LDLjfwawDKI5fhpd71R38jmhVhg3enE+JibVnGdI3/BG2urMOXlzKdm5PONr2lbNOuw==
X-Received: by 2002:a05:6e02:1c41:b0:3a9:e2f3:8dc4 with SMTP id e9e14a558f8ab-3ce3a8f289emr20621795ab.20.1736333687792;
        Wed, 08 Jan 2025 02:54:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1685:b0:3c6:b0be:2080 with SMTP id
 e9e14a558f8ab-3c6b0be25c4ls1347295ab.0.-pod-prod-08-us; Wed, 08 Jan 2025
 02:54:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVKRqdfIGuQIpNUyvMJsPJuvN3cPkaRrcjJw1LlLwuF4ZC0AsZpln/+Kda3K2oHQ3elgfNfskU/DKQnmw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:338a:b0:3a7:87f2:b013 with SMTP id e9e14a558f8ab-3ce3a86b28emr22100605ab.4.1736333686956;
        Wed, 08 Jan 2025 02:54:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736333686; cv=none;
        d=google.com; s=arc-20240605;
        b=dwDEYnsjn5IVuIWgU2XgmaEjdrXS/vg4iLuo1fgVEPn7lYbZThPecNviDLVYJVq9FP
         eKfMlAouhz7LFfU1wshZa0JddovkFwWv1NJc/H7WquxREr3IHEERmh1XVTTM4iHq8NFx
         u/tDcch0Zbjsm5tgqvHkxnJV/CWfDvf4XXvXvvBPul1pnyPK0dAG9jIAkfHgLrFtjPG7
         lfuGUXX/SUDL3YIifqcGTVHsB1Z21vCniXSVQdRg37CI9/JwrJ7Kk4S1JnBAnxNbPwr9
         1mZBHVfJ2R1lGqBxZOgdJifnnTJjV3Hr9KpO7czWl9lSEKhK1l/6YvM86kHHAOBvqb5b
         zB+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=5hG07b68UgfFh1mkQipWBlv55l2zeHeSTf1bLkQkuos=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=fmQ9UiPU4OgBMdmUpzJuhm+c0ZnX7cUI242VAKYcwi5jXtt4zB1xAMSIS6Ukw8L9O4
         62XEz+NpX+4bv+p54Bnuh4TnzcU+lZ6h+15bjBW6/rM6gVN1oDciFK13UcD/X7F4f3uT
         7dgsb0Fv5B60KDx8DDUyfRgvTRo0TBYZ3BBwrJ4r/pmV4uVVhWA2QkxzSL717h50OxC4
         TAQDtxaNGejHDh2Y+N2p1WdGL+5/89N5eoR8C6TfLdqWsU++ZVJTqkoKJQH/I62ZazcW
         ASyQUhyA2Aunw3MbDYae4IGsCTF1ZDPVcEjKlk2vW57gA+p+GX6U9I2Pt/vI3T0sTRGy
         JXaA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=M5uiYDHV;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4e68bf6e47fsi20652138173.15.2025.01.08.02.54.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2025 02:54:46 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507NwcRG023766;
	Wed, 8 Jan 2025 10:54:41 GMT
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441edj2f98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 10:54:41 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5089NLGU013648;
	Wed, 8 Jan 2025 10:54:40 GMT
Received: from smtprelay04.dal12v.mail.ibm.com ([172.16.1.6])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygany9se-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 10:54:40 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay04.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 508AsdSd19071504
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 8 Jan 2025 10:54:39 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F2C555805F;
	Wed,  8 Jan 2025 10:54:38 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E932658043;
	Wed,  8 Jan 2025 10:54:35 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Wed,  8 Jan 2025 10:54:35 +0000 (GMT)
Message-ID: <2413a086-db69-4e55-a3eb-6f5850628132@linux.ibm.com>
Date: Wed, 8 Jan 2025 16:24:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-4-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250108092520.1325324-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 4g16UznjjYa-fYLp2nneAuxFsf-shWbg
X-Proofpoint-ORIG-GUID: 4g16UznjjYa-fYLp2nneAuxFsf-shWbg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501080085
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=M5uiYDHV;       spf=pass (google.com:
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



On 1/8/25 2:55 PM, Christoph Hellwig wrote:
> When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
> might have to disable poll queues.  Currently it does so by adjusting
> the BLK_FEAT_POLL, which is a bit against the intent of features that
> describe hardware / driver capabilities, but more importantly causes
> nasty lock order problems with the broadly held freeze when updating the
> number of hardware queues and the limits lock.  Fix this by leaving
> BLK_FEAT_POLL alone, and instead check for the number of poll queues in
> the bio submission and poll handlers.  While this adds extra work to the
> fast path, the variables are in cache lines used by these operations
> anyway, so it should be cheap enough.
> 
> Fixes: 8023e144f9d6 ("block: move the poll flag to queue_limits")
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me:

Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2413a086-db69-4e55-a3eb-6f5850628132%40linux.ibm.com.
