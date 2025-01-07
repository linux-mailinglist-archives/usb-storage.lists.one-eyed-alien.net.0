Return-Path: <usb-storage+bncBD4KDUPW5UNBBQ6W6W5QMGQEUEUQV5I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id C8689A048B7
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 18:58:28 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-3a9cd0b54c1sf141651175ab.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 09:58:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736272707; cv=pass;
        d=google.com; s=arc-20240605;
        b=V0a38xjpwPWu8hX0h0Zf+z13LgpD611CvqhH9FY5x2m4/MkpNaDotk1O4c2z3tbK/d
         7+d9HEPCN6I7dX+ebv0JAYd+HwL7JTDuzmdnZeo5Q4EA4YorIlp8uW5iMU6CvAeP9yLO
         y5kIuU5NkKzhGQvsl7xMXaBo5GKltp/a53miPmpr3k43qX2LKaW9XYeRKyjWhXHZI3hT
         Q9E1ckFHi3W7AwPzOy8Qxpgi64BKkHX2+hqfgQEPpv7HBdxX0+JEsL4dBVYk3LJLvdjw
         PHTbhTIMdRIFQg1NWyMZ7UgQ2OkbVraAj+tL7NAav4TsXI1aV1Qrmtvnn4XPb7WY3so2
         fw0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=qNRzCquI2606mSGv1KJBQZCYuRFmhPNyHC5jXnniNh8=;
        fh=BwRCk6g2n1nim+GAmUsSG8FB/sQ/1SlC4YAr/AhHVBI=;
        b=OgdRJjYqwXdM41CYM7G37A7se12leOdH4xQFPJZt61DRJFUNRfbhl1TWCwx+4pdA5C
         yPMWZJTc/xRJKHpxETdjkgoYlD/sJp0g9ubULonhmglTqlgUx71XO3C93gZmJ2fNbq/W
         pTrlMi2ViKrUR+Bp/g+Bv/uaQja2FbUEKrQl0p8ENqyDI0gux+3OEQ/pQ7HYx00QWQuI
         pACC9j1ALYseHkl3PhLF8veKVjW04LmAJ9094rgBPh/wDBRZe4o006OUU/JjgNF9wc4C
         6xh3B2HZ8se2FKMlb8ZY6UmdvWdZybC82trgJhcQEQXJvHx9VQch/teYKFF/6ek97Beu
         Ph4w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=XTXK1PDW;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736272707; x=1736877507; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qNRzCquI2606mSGv1KJBQZCYuRFmhPNyHC5jXnniNh8=;
        b=I9ozkhp530GZ6X0VC2ulcd7AIbUaDUwqD3DZk/zvdlfQqwvwkKno2INo6WFtFruTHk
         Rf58Rvv45xfO4cx71lnr+wKL3oAiikl8fF6iCMIFTJZv0MBoEdQb+beJoWeykDCjjHlY
         WF3BAUQd7pkEfDYqYiRi5zbQ2+g1krfy3dyZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272707; x=1736877507;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qNRzCquI2606mSGv1KJBQZCYuRFmhPNyHC5jXnniNh8=;
        b=MGQo2htQK+D4goOGcnAf9xBszG9yzjMsWzPbHOo3+hOOkVCHRSlCLUI88U4npd7Ewp
         NmR3E2NN9lCOMWh0gSv7qmg/8S33eCmbult+U6rUEzs7BM7ccTogP9ch08Dunm1PlfQV
         JLuQj9YQgM7q8bkvpBjmqtOr8dSyAOzQcCi2tngzbmoZ6p6LXxQWbjrVwSHn6zmQ0era
         P0087Ks9tp9SxeHJYbdGp9A6GvdA6vIoRM4f6hPieUlDA3evJyfFOcWc2NBf9GNKuIHV
         Oy1Y6Y2Vu0NW1pvVvPXkihkixCC/nUF9kEMdGm9hCsxt4w8rtF2CuEV1Tg3xzn4M0bQQ
         CfAQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWAv2iPrfnaLFXCE5JDcF2txXvUlW+fCGcFx8bVB0y8CT2WDCBrLQ+tTqP7XMro09IXAZGrCg==@lfdr.de
X-Gm-Message-State: AOJu0YyYrq8s/7HDoXofwaNXCmM9tWg1P7TLmkmkUIg6y95Opnyxn49z
	5Uo94vU5IruJKTeBwzWPDvrHpImg3ROvhrCmYvYf42s9Vj1PGlfj2DxZAr9t/TE=
X-Google-Smtp-Source: AGHT+IEHa6F9XCb74hd7NtTNey1MVGmxY7GXFhgpfDkJZB0D72jmrjwvnEBUXuwnuno8ILF59zosLA==
X-Received: by 2002:a92:1905:0:b0:3a7:820c:180a with SMTP id e9e14a558f8ab-3ce3a8bb656mr836665ab.19.1736272707270;
        Tue, 07 Jan 2025 09:58:27 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1a42:b0:3a8:1477:b10a with SMTP id
 e9e14a558f8ab-3cdf6a5a528ls2766345ab.0.-pod-prod-06-us; Tue, 07 Jan 2025
 09:58:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWXivPm2zLPYeuriqTGk29zV6dgB3/LRkvWb32H0Yr8gCFJ33OCFqmoEgOWRMxA2aBRk67CbZq0ls8Ktw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:1f89:b0:3a7:8cdd:c0d2 with SMTP id e9e14a558f8ab-3ce3a7a9681mr1264605ab.0.1736272706477;
        Tue, 07 Jan 2025 09:58:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736272706; cv=none;
        d=google.com; s=arc-20240605;
        b=bxQ1KwORsRuyASJ5bfg96Ao8U4NMfKoeOvpEcJoiN8kJmygJaXix3W5/ya7bKx0IDj
         //u0PnSJ3PybnJQSC70KKnZaRHzQVmNCOk2n0b97iShmpzDMVlObhL1gqmUBGkxodMv1
         5ICf1Rsj9Rq97q0lTh9jHfHLAnh6UFuognX5dsOOcs9+1Jc9P5LALIO5tl+GJj6zp58F
         pGtA7mkCMjpVxihDYNb0lht4FQtWMrGEmsOc/Rks9FAmuJ3Ssjq0GU6F/pbgkRiOEnsK
         GqCtfrHRmwymkSuYaZPSl2nqDB2lQHP3z8Gj4QNO8kvftr0QED0vVgVEq6dNk1XldMgO
         nbnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=WV+TLZuDtrq0vN0L2SGNhb5nPcib4hM5tam8yfuu2ms=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=BB4ackQFy5LgquTd3/DaEZ6/md+cNCeCZIe9lTk6Zf3alvn+g1ydLwAJ4t6ZO/X+fg
         PznzG/jodNehGn2Vxs34jNSgw8zqL9AqXrkzuvHAll0COaJSEotp2OeM9AWPPJQ6idI3
         nnQd5xVd3IixjIsc59ebb6PYatBclMHxF7yeE1RHZPlDeIjfOyaT4bfAub8gtuY1NJHR
         VhW/wwA2g6xwhUmdd/yCcBnTA2hVLqQaev4sHNXcPO/+e8GgavCJsvRaLmeD4z/+6zRv
         OFDTplZ+rEhvXWfaUO61vQOqtaJ8xyKMjwUiq+mIAFJeIi/lnNUYE7WT65a1Jw7V04nB
         DbDg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=XTXK1PDW;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3ce3a5eccbdsi818925ab.24.2025.01.07.09.58.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 09:58:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507ElJTT027462;
	Tue, 7 Jan 2025 17:58:21 GMT
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440vrjbqs1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:58:21 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507HF41Q015903;
	Tue, 7 Jan 2025 17:58:20 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygtkumpp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:58:20 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507HwJn222217344
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 17:58:19 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 943AF58052;
	Tue,  7 Jan 2025 17:58:19 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A443C5805E;
	Tue,  7 Jan 2025 17:58:16 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 17:58:16 +0000 (GMT)
Message-ID: <9875e768-1506-4ed1-8d02-3cf6e86d0c8d@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:28:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 2/8] block: add a queue_limits_commit_update_frozen
 helper
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-3-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 2jFm_4JPVrYZ5aZE8bzYB-U78GoWq2e2
X-Proofpoint-ORIG-GUID: 2jFm_4JPVrYZ5aZE8bzYB-U78GoWq2e2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=714 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070146
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=XTXK1PDW;       spf=pass (google.com:
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

Looks good to me.
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9875e768-1506-4ed1-8d02-3cf6e86d0c8d%40linux.ibm.com.
