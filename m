Return-Path: <usb-storage+bncBD4KDUPW5UNBBZ6Z6W5QMGQEDLLYMDY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id DF676A048DD
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 19:05:28 +0100 (CET)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-e49f7374164sf35165387276.3
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 10:05:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736273128; cv=pass;
        d=google.com; s=arc-20240605;
        b=ay3VQue7ODUnHRw9DX3y6WPsZf27kzXsX45xOLkhWIP2csf41mO9kW451Oko9SeH0e
         umytdsRSduc7obl5QgC5TouotLVHyX4v5HmRa79MRFBUsjONS2KGjQ1PkGgHxD2pclTg
         1cggaWFOKv1fLm/4ILJ0LavhFa0GnXPtGO/OQAZAq0r167ZW4qvmgWp7LiKSUiwOpp05
         4mCWB0oxRe44aDv5tyrkpeSW+k95+3TIr8QvHS4sVpQtH72c/yTeHOC5DzAv3z6CzbEr
         /Jk+9l4/X06qGHWAvim3lyDqTXcDy73td5x1XLTlLmCd2EkjlTWXVSzBXNATu+RV4+V3
         PJDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:sender:dkim-signature;
        bh=fOpm5OtqrLV6Xnuw/eUoyDKI8zXXKG1qqqg/mPslZYU=;
        fh=vUYCKXZkXf5Gq16AnWIkjYrI/PhzltT81WiLtKSHidI=;
        b=Xf48eii9R0Vg5+nHJj831WS+FyPXnJ1CaJxa2dIhF+2AqlPSzqVHo/TApnq7H9vc7Q
         rPenDEGjFo0XgK2D1waauIWNdoVdGA9hilQoIMQBVv7cCOBwCKASAJ4+nkWXPnJ46ktx
         RFfBxk+K/9d16YPBsUjsFbaRdTkHeIBMilKaJJ8/FHz/g9JBxpaaSqkFo0N+0w4qg3kv
         BddISFIvQ1kWLwoVhBVGkfwoU+ux5dlJ0ye3AQ54yn1AInkL0TWlS13s6XTRoUdj+dZO
         8MKFXl/dbm3GXuVM1ifTTiQYTX0kbgNEFBjSblT+Ta++kguK/eWk5own/xTHbWMAHisS
         kF5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Ev85Fl4I;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736273128; x=1736877928; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-language:references:cc:to
         :from:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fOpm5OtqrLV6Xnuw/eUoyDKI8zXXKG1qqqg/mPslZYU=;
        b=VX3ul+IN3Wlg1oPny3WeI5jOKhgE/zS134MNRNkuz2O6qK4Z5yV6Ab5UHB1w2fpNAF
         OlBGMJjxEslCdRWpoS6sZbCVTH4ZcG0S9n+XTqYl81NUbNBJt9E/udFmSKZWX3tZaUXK
         7qyyN2Ronwj899ID8d/8NnKbEotWK6p3WorO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736273128; x=1736877928;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-language:references:cc:to:from:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fOpm5OtqrLV6Xnuw/eUoyDKI8zXXKG1qqqg/mPslZYU=;
        b=e5eJDjxlDNVYusZBaeLhMAv6GTmPcrHJO/E0kVmYliCG0Hw+V5G6tAvA/CdbP9mEoJ
         QNZ17uUidORXGNtJefcSOolkKfAPbND54UAcVtOb3Zo1d2SF6Ubfrl78NUPQ72DbYeO7
         C4nq7iIUj6HaT44oNnXATHwPDQ/rn6kZmeWeXE3pJw7pjy6J2BWdPXdw+OfGafgP4tRx
         8QKMHV+8r7Y5a1qyDmtcR3ix1PEBm3yIjPYlUEgzLPeXmygaZJ4Lmd5E85S6jRNUqS5I
         jFtXXPBlsCfn3InjaBwkXokF+ZLT5rk+Akn0bhQ384RjfYR2lkRTvDcQULTxVuzHM2eP
         XrLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWB1Zu8IEJO2hARXR0iShGhU6r9rbyn7GA/u2s12aiU5QjI+6sMRlIFOumVtYqc3p4z7jgxtQ==@lfdr.de
X-Gm-Message-State: AOJu0YxVqpo0ULvXoKHr5hKh8jCiC6uMrg717sjY2O+X4dZU+1Rsyz5R
	rHBrPUycMU6nj+Ex2N+H37ckOYTvri4xMF6LQME6cWcPYkcdDJSPUNS3TLcQCF4=
X-Google-Smtp-Source: AGHT+IEsy82DB64HFQJW1+YwvZQdJqO7mDrnUdaLCOsx+/zsMYXd3L/hT01A7DjLKrC+cK5alFjlXA==
X-Received: by 2002:a25:26d3:0:b0:e54:9c1e:6ff6 with SMTP id 3f1490d57ef6-e549c1e7328mr7809200276.31.1736273127488;
        Tue, 07 Jan 2025 10:05:27 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:6043:0:b0:e49:5c91:fedf with SMTP id 3f1490d57ef6-e54c938d24els218969276.1.-pod-prod-07-us;
 Tue, 07 Jan 2025 10:05:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXgw3H3aOjpaCO+EOGszR92IC9KkOMRxC4S3M7ROQ6KxakTz8icrzVvyztDH3EvJR9cQHOgXBxP9hSTPA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:18ca:b0:e4c:66ab:ed3a with SMTP id 3f1490d57ef6-e538c206ee9mr37996016276.2.1736273126610;
        Tue, 07 Jan 2025 10:05:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736273126; cv=none;
        d=google.com; s=arc-20240605;
        b=ASFj8TFXTtF90ZoLMDrM+MtbevoHCXgZykJnGF+p7t6oUMFp42VGFqOaCcXulQ6uNg
         2Lhvr9ixQrAZzJaIG4BXlxmneKlScS/8VO7QITTlcat0ZSRLisYR9KCCC1DnFdvc9FoQ
         8QxIeuukU8rk2jRcYzypTh5FKMnKfWgA6BbTH78xBtfONYX3iZM9bEOhKGNPXAspiKGJ
         DJWJLswQtUkPplL4h1KdcoaVAjGppRGXMdfqieWo09tBCIuSd+BwRA6JKaDhGZsP70YD
         QMYEfmXSWhdH7DW6ynV2bEYTMdGTivQTbS9NpRB/THLcxkE6uIcLHVn565e4vceWIx6f
         B0VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=Tixua4/8Yt4K/L4Isd6EPPDe8vWlwzBHW/TvX++YAOc=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=MZW+LNEotnJLqH06CjptyeRZ0SNyvD6x/Sd71dV7kcLRkOrJcOnOVeY5NHYuho0IhL
         3EILbRkT7VAzUGnqrVbYrfSrHZIjrHgEvKW2wYAjEkwed2p5LZ8k3wLbTtFcktJFtTx4
         NsNsM0+G9rAl1ySUdAYeAkOb2f0lr6eGZLxZje5Oqz7J43bOi9K/V83UWB1L7BR4sSDS
         s5iK35ADpBZirCAwq9tZTxcnaBOVa1/QXH7rCZBTN+zadda4b6aI8hcLK32N2xSYAgTp
         zg+CXPJOuQlocEPAMFrRi0mYO+FZKM0Su/2zqrpTXBYCb9TxTgCLdoF2SDCPBtm6Abja
         os7Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Ev85Fl4I;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e537d13b70dsi22669437276.213.2025.01.07.10.05.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 10:05:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507I4Ban018493;
	Tue, 7 Jan 2025 18:05:20 GMT
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440s0accw3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:05:19 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507HR8vJ027938;
	Tue, 7 Jan 2025 18:05:19 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yhhk3k95-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:05:19 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507I5HP023986906
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 18:05:18 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 268E458052;
	Tue,  7 Jan 2025 18:05:18 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B8C3258062;
	Tue,  7 Jan 2025 18:05:14 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 18:05:14 +0000 (GMT)
Message-ID: <1230ea6b-172d-41ae-9c11-402ae7503227@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:35:12 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 1/8] block: fix docs for freezing of queue
 limits updates
From: Nilay Shroff <nilay@linux.ibm.com>
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-2-hch@lst.de>
 <668698f6-98d9-4e23-9ea9-ce78bafe64a5@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <668698f6-98d9-4e23-9ea9-ce78bafe64a5@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: jbKDqevyCgUeJ6YQW_pDfbACbntzIcE7
X-Proofpoint-ORIG-GUID: jbKDqevyCgUeJ6YQW_pDfbACbntzIcE7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 phishscore=0 mlxlogscore=944 lowpriorityscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070149
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Ev85Fl4I;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender)
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

On 1/7/25 12:31 PM, Nilay Shroff wrote:
> 
> 
> On 1/7/25 12:00 PM, Christoph Hellwig wrote:
>> queue_limits_commit_update is the function that needs to operate on a
>> frozen queue, not queue_limits_start_update.  Update the kerneldoc
>> comments to reflect that.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> ---
>>  block/blk-settings.c   | 3 ++-
>>  include/linux/blkdev.h | 3 +--
>>  2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/block/blk-settings.c b/block/blk-settings.c
>> index 8f09e33f41f6..b6b8c580d018 100644
>> --- a/block/blk-settings.c
>> +++ b/block/blk-settings.c
>> @@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
>>   * @lim:	limits to apply
>>   *
>>   * Apply the limits in @lim that were obtained from queue_limits_start_update()
>> - * and updated by the caller to @q.
>> + * and updated by the caller to @q.  The caller must have frozen the queue or
>> + * ensure that there are outstanding I/Os by other means.
> 
> Maybe typo: "ensure that there are *NO* outstanding I/Os by other means"

Other than typo, everything else looks good. Once the above typo is fixed, please feel free to add:

Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1230ea6b-172d-41ae-9c11-402ae7503227%40linux.ibm.com.
