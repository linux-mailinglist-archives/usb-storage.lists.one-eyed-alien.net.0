Return-Path: <usb-storage+bncBD4KDUPW5UNBBVWX6W5QMGQESVJYJLY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E72EA048CF
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 19:00:55 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e54d9b54500sf2002341276.3
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 10:00:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736272854; cv=pass;
        d=google.com; s=arc-20240605;
        b=dP1q/4FGbyLKddDnMWBfQrrOULwymi7B47GRqHfsadermDGAldaBhAPU/wrR5OCITA
         A2JWocbTfzgqp99qpsEqiZqFwSk9+A2yqV7WuQy5Z2pzT99ThrAsQQfDiligIOX260yV
         MdfeYps84HPSSIXIOJzK1MT4GAkZ7Ki/J0ncs46vuMj382HmOhH37x5M1FTftsH7lQ4X
         lHkd/O8ELMmjP8twGwtFuRsqlGIesOxArBVG6OdGinrheWGseKT2EvfZUipkBisl9sF7
         89SAyWTH2Fo+DgGfVLpo4u95YuGbYRky1KL8KXlVF0VffZgMAd0de/cwnX6leZet+rI4
         UVbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=oHNTKUAkRu9/Be7i9Wrf7oIr6dQmnBxELeCLfVffKzE=;
        fh=xwXRARsTPzr5ZGZQGzGkg+2FFF7BV4GxC6wux5Dfol0=;
        b=NUk5O4Zt7NYoiEDUQKuQLKDlZ9+yMlgKKZnAIaBacoZwdvy0xT36lkpddjxOvXSifm
         h3ei9x6ljvJds2klptI+KGdVO1B/wrF2xFH98Y34ntUkn/BdlI3Q6DKps7+53iCQIYNl
         S7T0Q4am8KZGHnuJUJuzoSaaN1SlrLgBio3FOHdY6l5Ur7VqCX8tIvYZBPcB19fgQ29/
         v046az/MUcDRa0ROHyrTthiUq0x/Y6NjcZEsiMGOd7DqJ16hILCqi4lo1MGJIfAbMJT6
         U0WZfdlPusv7Fg1kHJW2aIhSXcsmRrsj8ipCJneLjfbVmcN1+fCgzoyaNW1qyNNz/KNy
         zTtQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="tnP2b/a6";
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736272854; x=1736877654; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oHNTKUAkRu9/Be7i9Wrf7oIr6dQmnBxELeCLfVffKzE=;
        b=av3P9nGvfxoxlIptnluZqwKVd4+gfe+YZqrSIj+X/+ONVULL8IXQhsscQbD6Xjl3r+
         P7obhuXr8IE7HOEaV+qACSQGlCiVxWb3rkmqdhlZDbAHKS+9sLRaetV00VK30RHOSKnY
         kfwF1ccT5dwggYNryoqrMaDsDIpWrXCdz9TeY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272854; x=1736877654;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oHNTKUAkRu9/Be7i9Wrf7oIr6dQmnBxELeCLfVffKzE=;
        b=art3sP6VFWfpdSruZrVFct9Q0nAQ3k4LWcdThuM/fZpKAcjxmXzbOFH8GKDQrmKxUs
         R2hAi0uegOL+BIarI4PiOLE1ACYz+7SPu+4JeeHi5oNaRZXFuWqM3bapexC5uqsMWJQB
         Ps76f3K08Cf/u9pixTSYs6pZhYO+I3SagxyMzmtzew7vnF8uyVBKS7fwGqbfRaxPDk1h
         7uYXPeE6jvT0OkRiaDJN3CEX142M6uKm4crVBAjbIodQ22DI42MRYJtQGsr10xXs0zpP
         KhUNeuLPm/cX9yTrRd3jVY42pW2YrG75sXnmPnRNPe/YMkJ6UMRuxKmbsV1w1dKGm7yA
         uV3Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWOwQ4oQu7yLAl+X0giKSrdZOF3grm3xh0oJEm0O0nfZtviqITxR9akQdywySosKovjNltpNg==@lfdr.de
X-Gm-Message-State: AOJu0YwGUq5sJtQ14eXYcE1fBkoQkK0VvD4GvpYWB44XZgXGwFxeCqVe
	8uavCvugwSODilpQtYKcHFyN1uzCTc5Jc38iX23XjuwKnUCb5RSTY21LbT0AE6c=
X-Google-Smtp-Source: AGHT+IEkI2mwAw9RKMghdyFfC93TQ9T2EF1UkmG/+hD5qmxKu5u28btPqZt3zWrxwik8QimXyTGhbw==
X-Received: by 2002:a25:a226:0:b0:e38:a637:7824 with SMTP id 3f1490d57ef6-e538cb7d5acmr39749661276.16.1736272854205;
        Tue, 07 Jan 2025 10:00:54 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d04f:0:b0:e3c:88b9:4957 with SMTP id 3f1490d57ef6-e5376056031ls165811276.2.-pod-prod-09-us;
 Tue, 07 Jan 2025 10:00:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWZitUmFL2b8IhqaSX3SIIFhZ5k3rtxI1a+KJPQ0Qt7XqGh2r075vkbT4+ZZT8PDu69XNHa5I0oevl8Xg==@lists.one-eyed-alien.net
X-Received: by 2002:a25:2b04:0:b0:e54:853b:41b3 with SMTP id 3f1490d57ef6-e54853b43cemr8710351276.46.1736272852823;
        Tue, 07 Jan 2025 10:00:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736272852; cv=none;
        d=google.com; s=arc-20240605;
        b=YroqM9DIPMd6QBGSPeKU1JjSklvoRE2osKDC2wVmmyn3WLvYnSoaUpB/g6V6aUehiv
         0y1IyAbeX1Ws7928aUZ0eHbk5ACpTQiBsdDUI/o55M0O9wB49Y7lk7xWRPV/kN1/ICmJ
         TSlUNrts64NOVBmiP+xk1EcHOvtQaAAwiENrXi6d1tWPm0pRWnypnVp5Y+ebfVy0TJ3q
         /p8tfnKtiyKvmXTXG3HuNyV//zkwi2FzmB9oquLwHTK/76HPofz3vQ4bHvcvCmorkgTV
         Gay6visJzgkdjN0cTdzOHsRjtEFNaY/kBT1CI79GQeBpqCpBT+kpx6YvaoSSM/uKw3ej
         Mu5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=WV+TLZuDtrq0vN0L2SGNhb5nPcib4hM5tam8yfuu2ms=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=DOH2i0jrLioXRZ+SVa4LXQqnz2erBsUFcIzlvbTvTNpsqTZ2OaYa3zuv9+Isxzbbsy
         00lHMDGpYlFQcaPj9Ta0cDISdWduxhHO+oV8RKVd3P1QTcxHnzdRIbefqDUi7m1jvAj7
         xxcT2hFUzNzbrfZKdenMuoCbr286F+HW5UTnStsMrrG6h4ZKVP1U4K6q2GwrSD0jqU8T
         0jPsn2Gu5BpzBzb4Ac9GmWRGT24ZylEaBaXP3SEkieJQ6bEpYwDCf79rP2/1XThfS95B
         kQJLJPJjc6RODNHKMhpagPIx33kD8XhgWWxIHWbTL3BhL8x/ko/OC6YQ84GW24u91BT+
         qUmg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="tnP2b/a6";
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e537d176231si22076231276.354.2025.01.07.10.00.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 10:00:52 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507Hg8IW017717;
	Tue, 7 Jan 2025 18:00:46 GMT
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4410f3ap9b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:00:46 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507HoPei027976;
	Tue, 7 Jan 2025 18:00:45 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yhhk3jd1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:00:45 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507I0iJk12976888
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 18:00:45 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A1D6558063;
	Tue,  7 Jan 2025 18:00:44 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3A1FF58056;
	Tue,  7 Jan 2025 18:00:40 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 18:00:39 +0000 (GMT)
Message-ID: <e1d91ecd-b046-4d9d-b51f-5589154b649b@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:30:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 6/8] nvme: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-7-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: mNGNzfo3_ChCw14FlH2UEPvYC-7YNPSi
X-Proofpoint-ORIG-GUID: mNGNzfo3_ChCw14FlH2UEPvYC-7YNPSi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=528
 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070149
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="tnP2b/a6";       spf=pass
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

Looks good to me.
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e1d91ecd-b046-4d9d-b51f-5589154b649b%40linux.ibm.com.
