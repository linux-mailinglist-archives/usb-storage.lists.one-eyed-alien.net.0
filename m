Return-Path: <usb-storage+bncBD4KDUPW5UNBBC5C725QMGQEWJGDETI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 0121CA070B4
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 10:04:13 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3a81357cdc7sf15035285ab.1
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 01:04:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736413452; cv=pass;
        d=google.com; s=arc-20240605;
        b=f6Es0QYyMAUsxeSzy3lvx9v5txA9VmwCQ5787jjDuFYi2tMMG6ZE4/NDb0WNPdasG9
         ehjkQ7+GVa+2H4hlxcwtuoF6r0ULae2X650Uhhq1xaLN509FnLmHb7fxndi0IY4Hk1TF
         hytUIBapHgWHFlEk5A1QfuubfD5boTCUvxDTgujLwCEU7WMl2zHW1pUmrXMIS1SgJ4Ep
         A8mfhnGSzvCGW8HDiIdWvI6PU3JXT+UzLUGYdBSHG4jZszS/xkdbEmKN8e9A5rNx3GEV
         rcUWjeF68tv9k9zMO2WJ825RPDJrZVfAW5eENH3LG2IAP/1v4dbH02SLb17537lvvC4n
         Oilw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=hzyJgSFrc/ladIKH1cBG2sPHfGDqbqzOkQJEB/MD3mo=;
        fh=xVPY2FueXHULhHSr+35FIpENG1M73IZJYNIE+knL4JY=;
        b=ISb+IUOliydRWzYXUV2BlhGZViuelYbTqR4HvDO3+dTcfGSswS0bedZ49AA0JhhDNz
         Zk9E6bxHIE/f1GAfRApgYaTu67Ovubja5DfuTFBSof+HBeDJmDLiog0NVsiG4R0Ab67P
         q4XXOzNikZpBCcfTDIu877L9wvlbRIBVCj5V8WNw2RA7KT/6Gr52fMvqUUkVWtI2BrYb
         3vgr/pgrJ+b8ABOIeVE0HoGoFuIlXBNp2DrHfVoYOFkwW3qNQls+X/wAb8aXOU1iX27t
         zpJG4+eVI07f3gyBM23rrYl26FJ8BQTkmAzqigzaUyIlOZdrAv4TnHHry7FymQVrcLXX
         gQmw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=aJFhay3J;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736413452; x=1737018252; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hzyJgSFrc/ladIKH1cBG2sPHfGDqbqzOkQJEB/MD3mo=;
        b=lIiPAyr4fdQd+hxAC1TcMPj59TGzV+64HaDzMrPiB/fxhThxPRey63e7dryhpnVX25
         LjBMsGTiPexPmhbD5cwR/nge3Z64DB02FH6bp6IoFJZ7nqN5FMXgd3LgFw6ppzme+Aov
         Xh1mpo+y1XpuDaSy06GxArTSCC8LtLLeu7pU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736413452; x=1737018252;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hzyJgSFrc/ladIKH1cBG2sPHfGDqbqzOkQJEB/MD3mo=;
        b=UCp+PfA7+FCzTd7/A8IgUSMACh3514JuvyRnzwDtZ6QEJPE+emEQA89K4zBREY7x0N
         AwQO78eIuxzPVFuhizUiWKdv4aBOYGgAIrMUOK0X1JL4DTSGAzqbqJAc9+1kTECi64/u
         DNbnxcOPH+T82Tntd2+41BIp24DkPm6ihFv4m/zVsKDSlQCoxFvP1So5fMRk0XkEaKy3
         keesrOTUZg12MC5aaz8pQ1clbOCYj+sie0Qo6iEjTrYp3cefvkjroJZZ1VIr+9yQxEOJ
         Go1txEFERW+9AADhxcg+goPCPEhOQwFw9l5nBB5O3kdOS2+ypQiXdgmqZqt15Ulvk7R9
         9LxQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWjcwfspHZH5cnAUWnIhGfxFywLiTYKx7Go7IoJ1N4kb8fqGy+e7XbZ052lHBspyr/AN5LKjA==@lfdr.de
X-Gm-Message-State: AOJu0Ywqa0mbmtqwOK4zpJGP5NUJfyrd+dOZO7zpV9B4b28lFMd9Mci1
	ALQpSboubYjUM/HaCdLqibtum5FesBXkg55yYErA+8oMYrJS54NiQPWyl+XYHwM=
X-Google-Smtp-Source: AGHT+IGuXD05bPmPmGAsrPgUs4I7Rmg3OINiUybgUZTPTy5X5UczaiWchT/LaKn4FbmIsAoGt9W+tg==
X-Received: by 2002:a05:6e02:148a:b0:3a9:cde3:2ecc with SMTP id e9e14a558f8ab-3ce4757643cmr17939615ab.6.1736413451799;
        Thu, 09 Jan 2025 01:04:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:7f12:0:b0:3a7:cebb:5bd7 with SMTP id e9e14a558f8ab-3ce475dca93ls2859015ab.1.-pod-prod-00-us;
 Thu, 09 Jan 2025 01:04:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUtIyTzgU6tDXinojHjhlBNiiUWj3HlpnzelPJsabR9/SuyBFGj02cLNsmB3C+J0dk6A1LY/LzMWkXqBw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:20c4:b0:3a8:13d5:bd2c with SMTP id e9e14a558f8ab-3ce474ed04emr22091815ab.2.1736413450992;
        Thu, 09 Jan 2025 01:04:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736413450; cv=none;
        d=google.com; s=arc-20240605;
        b=OLcho/kwAhjcxEdqvl0C3dpDBlGZRm+C5yNLeacS+iCMnQ3JBofYzr3yAf4zKCd8ig
         JnFsgL3Cc0mQ7+8y033nH6LYmXizlTn0t7e8F0QOosaPdKDDG21mGtUUW0cscH6VEtNt
         LWRZpiPxXJHAGRPW5ifTh/tzNRLyaenuI9X2egRqUirp5hkssGwToq9hZyu0aiPwLpyY
         +1VnP+bTkB+9nOZS5cumvryBaGFVMwlBCBA01Es/YBWNZIMIc1BNmnvBLWaa92TDRaB7
         BOUUz6c3gM1Rn1Z8CWNV9y5/8c+a3ZlvFkaIfprEnIN17epQ5r+EOotlAX1yq8EdYYhY
         LSag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=l/LNgdJ3X41kyHYEfqchK/B/OMLKba7Bna5ZeeYJCcc=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=KIDT30oGuxM0TB6H9KiHHfBMVZilFLUrqodj/2YwafA5cPzeOmjnRCQuXrJ3c7ZB34
         M2DtYFH4FhN2q7sMiUIxCmgu7otzUHQQLKnIta7RBtGm01CDbKjrTaRa30GNP/x8yqT/
         Dd++LfofeqVKgChmlCbQDfF8Ryvrswrinr6bfxe7g1/i+fYmDQ+cOSVp1X/rw8UfUMla
         0bItEPgcBTGUxnds44/WegNExBWjaSshWlSHi4jOvGaxsX4Hvn0HRByESLe8sAGRbFp4
         aRJJt53lIhThaWf6WhfbzYo97EDiuYY2vpvTNg7Eam5xY4KFoVQ9r1d0/GnlceyonllJ
         FRsA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=aJFhay3J;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4ea1b77c05bsi451585173.152.2025.01.09.01.04.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 01:04:10 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5093qUu9005305;
	Thu, 9 Jan 2025 09:04:05 GMT
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4426xc96su-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 09:04:05 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5098CpGM008869;
	Thu, 9 Jan 2025 09:04:04 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yfq04g13-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 09:04:04 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 509943kb31654642
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 09:04:03 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C53E95805D;
	Thu,  9 Jan 2025 09:04:03 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9EB3D58058;
	Thu,  9 Jan 2025 09:04:00 +0000 (GMT)
Received: from [9.171.90.198] (unknown [9.171.90.198])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  9 Jan 2025 09:04:00 +0000 (GMT)
Message-ID: <c35b5ece-e346-43a7-8e6b-8c8abdba6f50@linux.ibm.com>
Date: Thu, 9 Jan 2025 14:33:59 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/11] block: check BLK_FEAT_POLL under q_usage_count
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250109055810.1402918-1-hch@lst.de>
 <20250109055810.1402918-4-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250109055810.1402918-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: K5lR1t4kQGyPizKm16dwYsbsFGZOWOe8
X-Proofpoint-ORIG-GUID: K5lR1t4kQGyPizKm16dwYsbsFGZOWOe8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxlogscore=723 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501090074
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=aJFhay3J;       spf=pass (google.com:
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
> Otherwise feature reconfiguration can race with I/O submission.
> 
> Also drop the bio_clear_polled in the error path, as the flag does not
> matter for instant error completions, it is a left over from when we
> allowed polled I/O to proceed unpolled in this case.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me:

Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c35b5ece-e346-43a7-8e6b-8c8abdba6f50%40linux.ibm.com.
