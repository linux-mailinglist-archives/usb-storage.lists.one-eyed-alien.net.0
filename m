Return-Path: <usb-storage+bncBD4KDUPW5UNBB7NT7G5QMGQEIPP54HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB12A058D1
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:57:02 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-3a7e0d5899bsf363772085ab.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:57:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736333821; cv=pass;
        d=google.com; s=arc-20240605;
        b=MlR7fqID6CaZq+eVe5PpLuEuc1erqXahhoi0yA8zbJYXHUvys4n45LEPiRD7gLQgCq
         Txhh9ojugL7Mkkhy873VnA4A/lrwg8fK2INvJ6U+qPVvOQ8RF4B8+kkA6rDNVKBerQed
         5c+MZ11sDZ9CZw4eVgbR/VTydihqgtYwHsZKyFKmLnZ45Ph+KYDlT3khihvmhu9hRG3x
         qKe5eKXjmmqg+vhbjyAYGVYgHgCNQmjTQCiC8z4s9XN5Ml5cW0VeUjLIM4vaLW8gPtdU
         eAYuYO/KN7qZln6t27MLRsjsrkdDbWQa59UAhdHNiibdeQBUc/YcQ1abu4IB1dyGqm2d
         Q3Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=MfiEBuFFpjNNREVs3r5V3dpbvHAbcNmL7h9sQ0r60rY=;
        fh=1+39bjinU87pWxb9K28QvksdH83KQG8RUulFSu81vQY=;
        b=HbgJGs076HMjb3Cj6f9SOPARGq4MF1Q2makAmUZA2oYrEnDDSV0uyphcrSb6EBaGt/
         zr8ysdBSMUCOntxA+6G7gJpbkncfL2ZPf3yS4KuA3084t5tFmDzk7putGk88sEKq2eK8
         SqOOl1DdO7/oe4ERcQtWMFy+eSVd4IWj8hjDzFnjqrvEVrL+1b5pMV/SPKowPB4lUYz8
         Jx9GbWxOPWWgrSZH2HDbwJZdSQh4VztWmyce9PH13PBLvIAcqFYCfEswVHLYmfgy7aPc
         /6xTSFLFqXAcdy6KCm/nHx55bjpGUJKd0jqlPmf0dWL4EoKKNIEd1Tm2qzBT4rtJNZJL
         TxEw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WbKbzw8k;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736333821; x=1736938621; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MfiEBuFFpjNNREVs3r5V3dpbvHAbcNmL7h9sQ0r60rY=;
        b=QZuwzlxLwQXyR4rUbqXfm0lMkaZK+FpaG6uEuOUAdy4SfJ+2MJeargK76onvK1uzNs
         HMidMvXXzVyBvJTvzHQZ0ie7x/rbLizRT64eLd8pDz6UDaxmCwEJ+myTebHENftmhqlD
         UpwgLnZo09EmpWacwEx9K6e+cn6Bnvw/rRiEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736333821; x=1736938621;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MfiEBuFFpjNNREVs3r5V3dpbvHAbcNmL7h9sQ0r60rY=;
        b=n+aIhj4n3I99mV3t39u3P8jcZTE3pwBwmcaN+GCEUiHyxTYhtYGUOTFjtbat6VMzVJ
         l14mfDn+xFlILNp6oK+bnzq89VCq5bJ+R1g54fA1qoWsVplMF6MMySJUVAss0qVUY97j
         tktp4jmmtMzRHGsqctZT/byXtYCGTGvg//Rm+29oIRsDMoWp2AChnk5IYule7kRPZH9J
         A7jzGKespTaB/3nSTHFqG+xKU9sM3hb1UiBTb/CS2I701i1WVQa/67Yvr8hlzNMtrHFY
         vb65Ho3vogBb5dS1uUrSQgamy5g39zQLb5hg/mGpmCatDKgq56Mb52c6d0+opNYe6Erm
         ILLQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXQ75fjNqJSNa3vU0dfeSBI+r+CUwupRGVl6c3kzitpC2du9B0lXxHkKghaSMpVIqEP7eoneA==@lfdr.de
X-Gm-Message-State: AOJu0Yy+/oW03ynidQsVcyesMRDkZjSlNdAseBiYeb3VNRWHwDV6R2dy
	LxyRos5expDGwvQ0MlCvhsopVsj9uNAFGSWxqnYX1M3ykUOgDdMPOwQK4pK2VIM=
X-Google-Smtp-Source: AGHT+IFoznVyL+w+pzW/EBfXwcOGDcDoYj1nF2EXDo0DXztC4ALpddJjeOJ5P6GdmKOYtNvBIWz5gg==
X-Received: by 2002:a05:6e02:1529:b0:3a7:7d26:4ce4 with SMTP id e9e14a558f8ab-3ce3a87a6a8mr17903845ab.9.1736333821500;
        Wed, 08 Jan 2025 02:57:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:16c5:b0:3c0:3b9f:2f5c with SMTP id
 e9e14a558f8ab-3c03b9f3277ls19847445ab.0.-pod-prod-01-us; Wed, 08 Jan 2025
 02:57:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW2NdodYzwH/voAGhNZl1DVzxMLs9IVWmYFw59DsUq7BX1FEOdSdowHCDLNp/NUvmuGQPIKcOuj6riCCQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:4c06:b0:841:950b:386d with SMTP id ca18e2360f4ac-84ce0036c1cmr276266739f.3.1736333820842;
        Wed, 08 Jan 2025 02:57:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736333820; cv=none;
        d=google.com; s=arc-20240605;
        b=g8q9rLFKcyyPeUBhBi0zmNIxeuOQlQNRT8huAPLWTIGQSLYoVShTsG4t9Q5MHxo04k
         hV1M1hJRPRRbY1CUcVdMo82f+lfjlS7W5UOeYxLpleESLDXATf4+5K+e2D1bkvG0LIPK
         eKngzxvE1cPWaUz11HQ3vQpI2a6qJncuYPcM97V/IwSyb7bL7LtoOTzzmiwYKh+F9rNo
         bXCxmHxVyVRHJPGK36yV8Nyt/uoyZP9N6C61FoStlhBIxnqUlPBf1B3Y1LJUNORccS4p
         cwnEAq8212SxR+wi31mttAgxltfKw4yk+ZAMbHGs7K9D4cXmA7IKGbekJDaJz1KLHPS2
         WQhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=R8gG714XgLnBsd4qVfsWpG27tmknVXw3lB6sGoZMKds=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=hWJrWlVVnzHz+jye8i0rX90CIAqpOTsaIU8RkSQPqbAUnQrGFB8GKrZuN9/64ofqYx
         x8lFUVBTYcdCP9tzlDC6w8pApeNHIr9zZoZ+P+YRXyExHh/LABdzJirojrx+V5QtSXoI
         tgnS1QUdCii+wMI3AqXX5tJtayMIRaodImWhQt4GXfQiW24XKoXvbgv8w1PNz6E6R8Mo
         7mGjraJOLqhQt2Bl46covrOSPrtzTkamFlJDXcQ7vWZAADz5cArzsSJxcL606kPuRaZl
         +YazCOaCYUAVeoMgGYx0V3ykQcc2ofLzFVx0Heej+Vf9c4tkD79xGJL1vl07UiiuZIgl
         I1KQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WbKbzw8k;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id ca18e2360f4ac-8498d824fcbsi1987267739f.57.2025.01.08.02.57.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2025 02:57:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5083rHMl007005;
	Wed, 8 Jan 2025 10:56:56 GMT
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441hupss69-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 10:56:56 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5089ALDa013645;
	Wed, 8 Jan 2025 10:56:55 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygany9y9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 10:56:55 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 508AusXR6554354
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 8 Jan 2025 10:56:54 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F1DE758043;
	Wed,  8 Jan 2025 10:56:54 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0000858053;
	Wed,  8 Jan 2025 10:56:51 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Wed,  8 Jan 2025 10:56:51 +0000 (GMT)
Message-ID: <17172fda-7a31-4392-a2f3-2babb81d0100@linux.ibm.com>
Date: Wed, 8 Jan 2025 16:26:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 09/10] loop: refactor queue limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-10-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250108092520.1325324-10-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: lGhuSiRXskbWIaHFliShr1O62v9f7JnB
X-Proofpoint-GUID: lGhuSiRXskbWIaHFliShr1O62v9f7JnB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 clxscore=1015 mlxscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0 mlxlogscore=732
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080085
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=WbKbzw8k;       spf=pass (google.com:
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
> Replace loop_reconfigure_limits with a slightly less encompassing
> loop_update_limits that expects the aller to acquire and commit the
> queue limits to prepare for sorting out the freeze vs limits lock
> ordering.

Looks good to me:

Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/17172fda-7a31-4392-a2f3-2babb81d0100%40linux.ibm.com.
