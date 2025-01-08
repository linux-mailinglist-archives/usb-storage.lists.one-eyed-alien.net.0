Return-Path: <usb-storage+bncBD4KDUPW5UNBBO5U7G5QMGQEN3BY6XY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE49A058DD
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:58:05 +0100 (CET)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-e5382ab0b41sf14895266276.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:58:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736333884; cv=pass;
        d=google.com; s=arc-20240605;
        b=cfnHMuZcVyu0Yer2ofPtlPEX2eMLAyjEM9DVXOhZGab8ZZYw8cUCHEkywpVWqxzmcW
         p1zMmLLpB/0Nd9y9w4HpMUHxDUpefV1uYOPUtLY3WPxv3QP3PiAI9uvb0mam2TsLkovi
         KOnlInw2b+nlAQXSTZRWedNV0OeEG3u211Ulxm5KbU6/7ztkwHeMTNNcELaRwYfupseZ
         4yC9biV07oyZ/kDyw00QpUondpq62x6la0EoQwvVFWCqHIs/g2d9dPQl1BTLnxSPo/zU
         OJFkslAnaQgPu2YSE4jYxIZ3Pz2wx+tFcmWjBv5EQNdFGnz6MQV232ewxDrVVUtIhkVX
         IXTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=SbO2ecUkRvSl8dMMhyrJMxFAkpsoSIZXAaJzOh4XNcM=;
        fh=9jSauXjmKVfJrmf8X4krlmE7OzTMG8G41T+F/GMX7vY=;
        b=iZoUcObi5giHR6dNK7Vf3UhW3WK7UWHUIe3MYDAT6US7Q3z4d6M0NL8olljRySzfOB
         UOAXLT1d2026xAZCgTG81EVS6dWd1Y9l1zR0PjIivzV3u+sjTk6GVDnnw17xIImGFCd4
         OREeCoHqi+F4XY4C1POzaBwSIExEQrgWd6XH1xUWavx/32aPyZ7kr/JRHPtkKbg9B539
         K1kT3W2Ao27ui0mUL45YGcBT1zVCJSfhtAI5fLMi5T6jWciMd/h2d4tYgOcglSRt8cxL
         ij22oav33auudGrCLfALA8Cz7ZKmLRz73kdnc8JrxgpwZSlZcpqy6QKrK9KLXMRzgxzp
         fKvA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=BzlkOVGx;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736333884; x=1736938684; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SbO2ecUkRvSl8dMMhyrJMxFAkpsoSIZXAaJzOh4XNcM=;
        b=h9a3nu1SF25DHyH74XQfdPAupEWOzio2jwTYMMUJGSHVHI3WPF1no9YOF83OnTaur8
         S1BlzWDh17HmCeisjQAWOFOd+TU5xt0s6gXa2mv/y7jNJrjbc8qN+z3Zbm3ybxwJrYf9
         jGr1JlOjLrVbYp8jJ783PUb9Q6rabK0FhdyWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736333884; x=1736938684;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SbO2ecUkRvSl8dMMhyrJMxFAkpsoSIZXAaJzOh4XNcM=;
        b=sD51Cre/9ysMYtF6VwgZERJJEZhKNw2eKNvF0IbGsU0BagNIP3YL0QTjbB0lG5goHk
         MaQeoJS0YcAN9HwKntC/XpIwEHgFsubs2AQ9JZaYTnjam3yaVSp7K6JNZSNb4rwPHryq
         x/44heY1WlfWCZKm3Xq4IqM6d4tepOmWGw1Jb/4HdLmxABcnTQKttljr+A8Ek275R8FT
         T+6yw/yOhZ0VMY+F4D5Izes5sC/nds8MCaJyAAu7PQacOgr0xRUfWeAm4jj2X69DOqHw
         dQRBl2/MN/bkL6pbRNon/WB4MNAo3uRFuUVWveNWjzbXF19yOHIWqOeP0oEtcGlBY6BO
         Lc5Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXM0O/O7Tx1p6AK/EVkHdm3x4zO7AQB8fq3I80DuH/gwQ+qLh6SoUo/bC3w59+LegWYOjwKgQ==@lfdr.de
X-Gm-Message-State: AOJu0Yx+SjUpxsZVMgK6EwG2SvH3pZPZLgFBnNrQVOuFP+hk2JsPYeqf
	FAKacwetH6NNX8PHZKNEUXClza+/EKvkNQPls5PJlDcggRlKIaBzNufUbY+Tov4=
X-Google-Smtp-Source: AGHT+IFK79hKXRxEr7r8cMS9NHYKgXrnxCeUtq8xjPrIg/2BzRWPf4QztHLDYBACUtRiTuZvDMFwmQ==
X-Received: by 2002:a05:6902:2191:b0:e4e:acc1:7b37 with SMTP id 3f1490d57ef6-e54ee1849b0mr1665230276.29.1736333883835;
        Wed, 08 Jan 2025 02:58:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:aa69:0:b0:e48:25c2:a5d7 with SMTP id 3f1490d57ef6-e5411996a9als362540276.0.-pod-prod-06-us;
 Wed, 08 Jan 2025 02:58:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUo7xLeugvbkQ9niuPU58UBWiMRCmBtNUM52MTEY2nZqf6QHfYo3Uf7WALy4BU0b4ggCGWUIZIX1Iq/yw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:1245:b0:e54:dad6:711b with SMTP id 3f1490d57ef6-e54ee15f128mr1601261276.19.1736333882674;
        Wed, 08 Jan 2025 02:58:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736333882; cv=none;
        d=google.com; s=arc-20240605;
        b=E+ZOM6+Arx0igirnvEdc1vHDLQiKYzcd2mTVs2/JCcWAC4fcPOnCpwP6Jb0K95DlVs
         djVr9hn/wCLF5Btwp80PWieBNDf0qpgxvzvPUHfcj2QZ0A151n3ztqugUTXe+nchk0cA
         kprcm5WKJGp6o/fuo28PGMcDrvFoW3G46kEP48h5HVmviHAEaPlz+k8x4vuICVSL6r5r
         s0xIB8eMvzVhmHuV4XC13SZ2RgPNPMofiGErvJB7ScJ26z9BJWOFU0nZ/3pnaT5O4GLL
         izmmMGRBiSmhJ5ud5whoxemugiVJp2ijo6VNw28l8Oh5FJ6n9IxVPheATXMyQKs69qbU
         m31A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=qzEdvdaNe/NaMS8/dlTwh4LN3q7PPGH2drrrm0YbKwM=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=H95aygN5ppDMVpTRzeygg99z+9BU6o1htMjniLnbeE8y2dR692MLGhW8/1KCT+gdg7
         irohRjllQOoNLgmk04E8UoESEEZtehC/KMBElXfqd5GPVRXJau19WMBVTdo/30HSiB6v
         bJ6c4AokTucHVHi7IFg0lm6pttVdcOkVxAI8G4zLdojc5UaU/AvjOWppxzY1m901popp
         bELOstMnD2vxrEBPHlU887Yzg0aPdMf/mDMdAS209YgwIEIZeX6QC00meH2A/jcOE1Uq
         OznumRYZvFMHjjBcwuXf47+8cZHsnVdRGSRIOuRLlNe6gZXFCY+VRGKlJyOwoTXPyu7G
         JazA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=BzlkOVGx;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e543ece2fcbsi11288844276.14.2025.01.08.02.58.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2025 02:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5087eDN9007055;
	Wed, 8 Jan 2025 10:57:58 GMT
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4415r54wfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 10:57:57 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5088YQAe008870;
	Wed, 8 Jan 2025 10:57:57 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yfpyyfaj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 10:57:57 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 508AvuXO32375394
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 8 Jan 2025 10:57:56 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1A7425805D;
	Wed,  8 Jan 2025 10:57:56 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4B7A758059;
	Wed,  8 Jan 2025 10:57:53 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Wed,  8 Jan 2025 10:57:52 +0000 (GMT)
Message-ID: <7a867d10-923e-4c9b-ab34-9d084474d499@linux.ibm.com>
Date: Wed, 8 Jan 2025 16:27:51 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 10/10] loop: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-11-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250108092520.1325324-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: s-XVh3kn9Vi8c2_S9D4wxUMbkILVJPtf
X-Proofpoint-GUID: s-XVh3kn9Vi8c2_S9D4wxUMbkILVJPtf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=620
 suspectscore=0 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0
 impostorscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501080082
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=BzlkOVGx;       spf=pass (google.com:
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



On 1/8/25 2:55 PM, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock using the
> queue_limits_commit_update_frozen helper and document the callers that
> do not freeze the queue at all.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me:

Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7a867d10-923e-4c9b-ab34-9d084474d499%40linux.ibm.com.
