Return-Path: <usb-storage+bncBD4KDUPW5UNBB5FC6O5QMGQEF7ID2HI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id C23A0A0384D
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 08:02:13 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-e549dac2eccsf7670090276.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 23:02:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736233332; cv=pass;
        d=google.com; s=arc-20240605;
        b=TTLqU6sJa0hP2ln9bLyt/vOh6IjwCUoH6NG9+Zzi97K4rlZeA+G31edrD1WbEd90nQ
         lt+dOYjrNySViULfnWpJrmR+HAMioWElFZ9cZU5Uv6ADW5jv6b3MJ0ydp4vAe6e3zxPx
         rvAG0e+oONdydRNJAPt+7/3vnBixP1+hpaLlZmyGLx0kbc1aqKDX/WP/g6lnK7GwlJpL
         aVocIePUyXeayft7GnmTezLHetTynZJSJmAAt32/+p8oAhDrQeOUK0Ht52RJfUGOtlNC
         RPymfMWNXK7x0GFDAspKodVenKzm1VI4vAg4MgkZtvt8goinvcXpvmXlts/ZzDGqBP7Z
         k2kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=PlvJlPiYWzmmdBfp6yTedvc0Sah9R/iiC26ubKuwOKo=;
        fh=D/2zhVM3es3vTMNTbyS7BOjJ7u3D1vrDCdxJWQoSOQU=;
        b=NvY4nsHudILs6xPDWF80fbvkwe/VGz1wf/XjRBECNXbRbbFfaY9Cm2PsypEZ6x9OlX
         Cvfn/F4luI/NvDx+FMuy4zvFu8qIpRwKGZF+wa9Vx8Vb/Tyqoet1msNDPPQFkttycoo4
         dDmq85XMCa+uGcz4oGxUodIuykwVulXUOXR8Kx73h/kcq6uig6Dk+bOtjiwwhfIrWDDj
         HRMFp4tGFBfI67A8HE2kWO46BEhPKLhcy2xuk3klsHQRY38kYvnPLXgLA/UOsSYPi/sF
         aOZ3Sg3YiCjPo24WUuLIR2gJHX/BrPH4tIs/GQl5w369axKwPWJJfxdNvqVF9uD0Fyrd
         eRhQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=RTOhc78x;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736233332; x=1736838132; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PlvJlPiYWzmmdBfp6yTedvc0Sah9R/iiC26ubKuwOKo=;
        b=KQvlMRR2Qhi5hYfOyOLuWJJzcfe7aMtKzVoixau/AHKuqe/gEGPnbDArizb+9dIiRd
         QMcMS5sHa8m9yLHB0NTGNhFAYHfdEdGBFFVlCYfqf3FNS4Rz/LAuCj3oZBas8JP6jROy
         BdObwA74BhZU8QVjD003m/Zg7mqzkraU5swNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736233332; x=1736838132;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PlvJlPiYWzmmdBfp6yTedvc0Sah9R/iiC26ubKuwOKo=;
        b=RTNxKbaAbWX/n2CGMTsjqy14g/dQflgsZQGD0IusAVwebmVov1gtv+eWfxTol5K7yT
         8DuXrZqLnw+cBKA6/Emst2P7gCZ60LhwskRHdjneeQbFC3XjxHzn7Kz9I/NcBgNEyy9K
         uVd9r7MLVTCzcBpNZKDuIUFq8J3ZFS2eIjAovfPrpuK0HCL7/gKaJjnqL9yY+WiOHyLM
         JMyWznnyn34Yg94lkuL1u21yVJVkNfWocTv/3sf/NJFwZ2oRfPiqWahg5fzyPyyQOsJD
         k4/4N9ZPB8GhrPvG8yrYYEc7tQD2iVGmFmyei5oi4TCLoaWaT17SpouIbW0wBkTY6ms/
         DnuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWU5SBTCHi56JyrH8t0gWiSdvYRi5AFS7DCxBKxKv8nbUKozZsNTUy+cI3LhhiO4NZKksXuIQ==@lfdr.de
X-Gm-Message-State: AOJu0YxAC8bgRU9C1sxDkjAVVRoG3pAmVdFh9uGDKnkJP10DWyeOeukS
	OVxXTNMuXAwEdYJpYk44dfBOoFIGD687onEhExbvr+AaBb6Go7pyQXDzReuhfT0=
X-Google-Smtp-Source: AGHT+IETxP3ui0irQPsFl8pqoSyTvFN/aJ1DG4IQ6yrEeNouLAWAKmRU/+2AiF+GiSwNxRObWksA4Q==
X-Received: by 2002:a05:6902:1502:b0:e46:9ab4:51aa with SMTP id 3f1490d57ef6-e538c3d1175mr36129739276.43.1736233332697;
        Mon, 06 Jan 2025 23:02:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:6043:0:b0:e49:5c91:fedf with SMTP id 3f1490d57ef6-e54c938d24dls1122413276.1.-pod-prod-07-us;
 Mon, 06 Jan 2025 23:02:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUZfOYO7F63pWn+/P4D1QpISoxjE5Y7rtWCnWeH7oG4enQA0xKq9b7jFeDBKVJKOQx7Iyp8T0o0PGSmuw==@lists.one-eyed-alien.net
X-Received: by 2002:a25:21d7:0:b0:e30:cc34:af1a with SMTP id 3f1490d57ef6-e538c39739amr34694336276.35.1736233331868;
        Mon, 06 Jan 2025 23:02:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736233331; cv=none;
        d=google.com; s=arc-20240605;
        b=HV8yErigMWw+g0meoziB+/gOcwD1S1LZ4OdeGfdHaYiVs5FKJMnct/anZhWQcEXbZE
         RBgEUwtb0Ij+wy+0A+BUrMckEYYAqDWD+1fiyjV+Ze0LUVAat1BdWmCOjmODQQ6VB8LT
         hhjzFRpSOgh8AN68cRkamp2mdlexGZhmlkkG3qrpK0DclTmwSbo68KpQ6xy0YuEMhhlD
         914PPdxr9QzJ82JY8YN2PeMq4OTYxT++uZQc768dutVtMATkptDRRqoivwPfGR2b+S3g
         5BsVVoEmGdcINKf35LL8YuTqf1EZAy5f7IBoivN+mXVA0vHx/ZcHuxqblEM22hT32cAT
         XS2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=iDpzfoPchipFD7MbgtJksJ+hOvAk54MTZjHHogr6pis=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=OKGkfuMJyjGCJ9E04vIiqkcYt95Y8aryI6LJ077NYAKYCoOyl1k9pSVhTrqwjzyv5a
         6uQuf0pboEbe/GcMQOcnsgPtAhtg4fjlkwclpwYATH0hrgislCO29WAyjMkddgnlQI8t
         estlsfBKzVUebXIhzvtRRYNUB/7caPGC5imwVjIGSzza1DbnW1CcmogdCbZk6LcI38rW
         D6Wgr+uVtEppPVo+zVEB0sfTKN0HBfVBdDZ9+jPdGdAohpjjvePkm3MLOAfWdn3YY+ib
         z4WI8V2V64VtpweRIiNAfU6dnZRqUI2YrGamKEGTQVDCA4WMU/+l71dMjD5P3LglbQHM
         NuBg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=RTOhc78x;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e537d1acc3esi20572807276.593.2025.01.06.23.02.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 23:02:11 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507593Mv002225;
	Tue, 7 Jan 2025 07:02:05 GMT
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440gn53je6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 07:02:05 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5075Ic7b027938;
	Tue, 7 Jan 2025 07:02:04 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yhhk132y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 07:02:04 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507723Ko44237136
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 07:02:03 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7879D58056;
	Tue,  7 Jan 2025 07:02:03 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5487E58052;
	Tue,  7 Jan 2025 07:02:00 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 07:02:00 +0000 (GMT)
Message-ID: <668698f6-98d9-4e23-9ea9-ce78bafe64a5@linux.ibm.com>
Date: Tue, 7 Jan 2025 12:31:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 1/8] block: fix docs for freezing of queue
 limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-2-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: pkJ2b0c5YF9oHYd8-ypYLNMBlxg7CFnd
X-Proofpoint-GUID: pkJ2b0c5YF9oHYd8-ypYLNMBlxg7CFnd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 priorityscore=1501 phishscore=0 suspectscore=0 impostorscore=0
 mlxlogscore=823 spamscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070056
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=RTOhc78x;       spf=pass (google.com:
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



On 1/7/25 12:00 PM, Christoph Hellwig wrote:
> queue_limits_commit_update is the function that needs to operate on a
> frozen queue, not queue_limits_start_update.  Update the kerneldoc
> comments to reflect that.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  block/blk-settings.c   | 3 ++-
>  include/linux/blkdev.h | 3 +--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/block/blk-settings.c b/block/blk-settings.c
> index 8f09e33f41f6..b6b8c580d018 100644
> --- a/block/blk-settings.c
> +++ b/block/blk-settings.c
> @@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
>   * @lim:	limits to apply
>   *
>   * Apply the limits in @lim that were obtained from queue_limits_start_update()
> - * and updated by the caller to @q.
> + * and updated by the caller to @q.  The caller must have frozen the queue or
> + * ensure that there are outstanding I/Os by other means.

Maybe typo: "ensure that there are *NO* outstanding I/Os by other means"

>   *
>   * Returns 0 if successful, else a negative error code.
>   */
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index 5d40af2ef971..e781d4e6f92d 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -944,8 +944,7 @@ static inline unsigned int blk_boundary_sectors_left(sector_t offset,
>   * the caller can modify.  The caller must call queue_limits_commit_update()
>   * to finish the update.
>   *
> - * Context: process context.  The caller must have frozen the queue or ensured
> - * that there is outstanding I/O by other means.
> + * Context: process context.
>   */
>  static inline struct queue_limits
>  queue_limits_start_update(struct request_queue *q)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/668698f6-98d9-4e23-9ea9-ce78bafe64a5%40linux.ibm.com.
