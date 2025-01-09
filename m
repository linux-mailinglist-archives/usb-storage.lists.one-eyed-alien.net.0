Return-Path: <usb-storage+bncBD4KDUPW5UNBBC5B725QMGQEMH65P4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id D12C4A0709D
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 10:02:04 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3a814406be9sf11367115ab.1
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 01:02:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736413323; cv=pass;
        d=google.com; s=arc-20240605;
        b=BCSR7krU/imWcAfKFBT/PJCeqdlurLZqxFVAjGy6cp5tBE7qLc7nl/9rhU2rS3UMAH
         KasBezkpTcRGKSSO7tbJeQjod7qVrpiQWT/Ngk+hQ7r9s9Fl16r5OTAekVXUUNyAWj5N
         Zf9TswC4fHYdjyKGS7YccBzjk4WCduSPQcrziFSW/CoQdOAaEuH2uMS9xymu0CBx9OJY
         B40Dsdng8q/e6Ex5VNXPOQ2udwqzmDux1C7bXi4b68LQj8WzXWrwpqnL3dFPViqniule
         H/SfTgGXsDLfNkhjJBW0QRaSfMOhupqjTY+PVkVgANjXps+36BmMwzA//q/8JjCpDQGu
         2GHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=bqO3P8yMQOZ6T9PR6jbI+BxxUpB5GCwpB2RuvViLN7E=;
        fh=k2xT5UWCN18a17WbqyCCU5PamXGLaRjk08kejpV6kBw=;
        b=U+ryygNVF0YxSW4QIQlj6FjW3iTC3b5XxXz/EqHP23/yHtPEYKbjLbQ7V8jP6oRqAc
         PgTOoWd9/SHmxii+/vJuPLlRBivc2VWVxhHjVhiwnZFVDRkSl94Zk00icbMfJnvrLwX2
         iuUfMwtt+1HwyYQtSq1EThlO+PKZ95oRE5njvRquLWPAVMtjmspRludXO8TWNZQ44S3T
         XV2+5fKLilxpQaOK7cLYpVClz7w29hzR/U7rzNhBKFb2r6/xXrDldSen/RxfRF2aoV2f
         j1Id1BG1pH6o+1Po1TxzLHNYXhNLKJ11PY5+F0iqv6kgSMNg0YvkOs7/bMWIYZS78zjN
         1dJQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=CZaMxwNk;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736413323; x=1737018123; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bqO3P8yMQOZ6T9PR6jbI+BxxUpB5GCwpB2RuvViLN7E=;
        b=DOd5heFQF+liE410IfKiGm+OYcdLuAKHQEvQ62pU5r2yKOw0xi2Ie4b5Uf1RvFpukx
         wnIN8zqMiytwi/Jk49QoLi6Qt1L4+St7hst4TM9sMXERivzacm7p60BfmXsG4W5nA5p+
         79JYtaaFMCRofUB+u98fIgrtA3ZWoWEhudE/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736413323; x=1737018123;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bqO3P8yMQOZ6T9PR6jbI+BxxUpB5GCwpB2RuvViLN7E=;
        b=XJBAS8G/OtGUE48OhMaobqSP4VFx3QLt4+J5efevA+2yIDNxk/OuGtnfW2xi7zyD0o
         yW+ImzdVZsAJ/W21IjF8NzDgDy5lWmF9l47ctDcCko6W+gGgcFXZsRg4bSH9ZogchpAZ
         QKrsIBK9OomnlOAXjggg5H/mnjakytr4AozsZA9P5FplzssjF0lqs2B+jlcEPF1f6mBv
         j+5hJSKYFHq44RTOsQqmsWclCn84xj4M0OSsUtDaCLJF2VZqQqmhupE2Up/nt2iRW3kE
         +GQ3RIW5TSEnpJWFB17agU4J6BV2DtoAh5RV+IgROqE2Xqilu1Ef8qeqjzpDB3vQI7pK
         wHdQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU2jVNaKNRS+KVpHy8/YKmNaG/mAvoiLS/edtQMEkZK43fKzozzoVCuFMRlGUvBu6sFtk3m7A==@lfdr.de
X-Gm-Message-State: AOJu0YwwMLbq6YAjJ6RAsDTd120qU4gJGV4qGlJVdKXPsWyAetlPZTDs
	t8JFN34ggltzx6iCRlvSg/TNk2A9yoGm2hwXYgy1diSAsSEOpweSXx8P/v633dk=
X-Google-Smtp-Source: AGHT+IFNu+8pgiX9V3p1IqYEk+90JPWU5Q3CKBzhYQCHJR4dD2Dl2bc69pRMf0A7Ff5RoVvYQYDyjA==
X-Received: by 2002:a05:6e02:1c44:b0:3a4:eca2:95f1 with SMTP id e9e14a558f8ab-3ce3a9b541emr54763155ab.6.1736413323316;
        Thu, 09 Jan 2025 01:02:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:d08b:0:b0:3a9:cf3c:6a49 with SMTP id e9e14a558f8ab-3ce475dfbd3ls4207045ab.1.-pod-prod-05-us;
 Thu, 09 Jan 2025 01:02:02 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUmWBeaNR0VjMcSI0reHAF6U/Ka5TbaDub+14NK0kSrx6tENm02Y/6sD2jhZ3c+1oOMf9vjI5R653bqiA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:1f02:b0:3a7:955e:1cc5 with SMTP id e9e14a558f8ab-3ce3a9a4288mr53125655ab.1.1736413322508;
        Thu, 09 Jan 2025 01:02:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736413322; cv=none;
        d=google.com; s=arc-20240605;
        b=a9h73w5zqQMfllq9K1GTHlxcMj3BWvhJnfItCcGA+FCVXSOi7h9Qb7GWXMBxOgD6Oq
         QHXvXkpN7H2tYO3vbN3GAvuWN48QNmkdnk+07K2o4eZr0TM4HyAHfC9+oQHkyFXABQvj
         It7mieJodM6YvGaVC+w1MtuUgqrrY1IeDKNAJtMSYX/BLKr7EKwpZ7PEhqsXxav3rFW7
         s0gusprJEBOD0P0vCOMxDWUtGWuy5lUfpUP9keerSncmbJm4ys9Uj8iaPcvf2VqhDlNE
         DS4OKE8+ZdJjHYwE7+6l2z1lbwVxVOIUw5uS385GRjUF3ai7GhJ9Do4a8B19SQGHd9gm
         e6/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=Mt7svNWjnS+/9gpPmbijyojfhnqpHdDHs3IaA1MReO0=;
        fh=JcTRum9t0ZI17fMSO8Piq5mdunIaND7RKWuNvd6BEto=;
        b=Kz8m0UzygKjAyzZ2z7ENUP7wFyCozCe78dUKAl6l1Yv/lsNeuY99VQRorUB8OqsdW0
         mgbw9xxEIqLOSIalh3txfGnGdc31LXG0M0b0ihlP6e5TLqU+a5iUJ365ZXJig5VhKyrT
         gXfMDcElScKIZUV1l/N2WM4GkWrawb8uBdak8vWQEJEj3KIVP+Uzk0xMrU8REKdpnq28
         /hmM+7q2BNe32PGtnI/bz3U1SAQqWoqskk9OsVBv/Gjxn8cYN7D3wOzCMyYCIV3AXeni
         0xHgKr8J24efzWJWsyi0I5cJcwEaZvJHj3Lt9fSlhbessvf5flN/miqzEUC4af2rCdPX
         y7Lw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=CZaMxwNk;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4ea1b61331csi407493173.51.2025.01.09.01.02.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 01:02:02 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5093qUlO005304;
	Thu, 9 Jan 2025 09:01:56 GMT
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4426xc96eu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 09:01:56 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50988l41008970;
	Thu, 9 Jan 2025 09:01:55 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yfq04fq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 09:01:55 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 50991sM012780244
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 09:01:55 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D48F058058;
	Thu,  9 Jan 2025 09:01:54 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 16E905805B;
	Thu,  9 Jan 2025 09:01:51 +0000 (GMT)
Received: from [9.171.90.198] (unknown [9.171.90.198])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  9 Jan 2025 09:01:50 +0000 (GMT)
Message-ID: <69605291-315f-423f-aa7b-ea26b50c1065@linux.ibm.com>
Date: Thu, 9 Jan 2025 14:31:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/11] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250109055810.1402918-1-hch@lst.de>
 <20250109055810.1402918-5-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250109055810.1402918-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 4OaTNShCEKjwsjjhv6lQJ1E2nKmW2JMx
X-Proofpoint-ORIG-GUID: 4OaTNShCEKjwsjjhv6lQJ1E2nKmW2JMx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501090074
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=CZaMxwNk;       spf=pass (google.com:
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
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Looks good to me, also with this new change in v3, I re-tested use case: 
When a driver announces the support of polled I/O during initialization
and later resizing the queue so that there's no poll queue left. Both 
these cases works fine. So:

Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/69605291-315f-423f-aa7b-ea26b50c1065%40linux.ibm.com.
