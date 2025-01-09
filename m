Return-Path: <usb-storage+bncBD4KDUPW5UNBBA7E725QMGQET2FSP6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 1941EA0748F
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 12:24:53 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-3cde3591dbfsf6664145ab.0
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 03:24:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736421892; cv=pass;
        d=google.com; s=arc-20240605;
        b=i3ayyqeUe9Rh3VNRMH5Y+k0RSb9fXX0L7kXS0d/urenOb6eXP+KJmZp7gEwXOgQQj9
         Z8pRjpZtaV0e+i4aJE1FbccTyD1sBnYwGX7kltQDQUIu6sm3j0ZyCtHrsrtfDkIj6p4D
         ZnYflz3Rf9kTz2C/0vvANmwT9plsLjzHD8B8oRa6nolYEw+ir+rY3KHIT6HW2BMx57kf
         Xj5m4JHdGvN5vcds9KqHinEfAtZHSScXZmACTJAH2ceOxO3huBraVbgutoLJwngQTYKl
         yUMlUWLbNhHccyMIyVoWwyGK8cI/QHajW4ztC9rhPvEGE/ssGVHrAUHmdZyb5huePKB8
         lEZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=glpasEou6HMNVKPCRGTch82IOAm+M29mAuuqyqL7p04=;
        fh=UlvkYZOmL8S8Qh3diUB5ASxYAZgTNX0xlegOx7K2I4I=;
        b=K7ZkzdKmSPUrJ06aJ0URsFZ7Ck8hMrOn/1f8yyEIBVfLXXb2pmwvN6OqC2YG65sHov
         o8U4GvRgyEIzEjueXMWUH937fWRwmp5qm+Vb3yWLUgTes6TQF65CEQYoH+dEQopiYHAC
         6E2xmUDts/QrHrEHtRRAkFHvSOZOLCsQ4nssgPJOdTv4W0KMk9r2V91erwAD+jSQa23Z
         XWhekzBnjqocxncX8H1Hp1YBiKDoA3ZtQ0KI6xUz+ox0ENH5e7FennkNkKTmesizlMtp
         JyeStrxZ18PfOcd8L5200/mfY91gfmqzvQIaM8v8ywGuDuKkgOia660jpEU0ljlfYMZ+
         0NRQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=YZWk4C2R;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736421892; x=1737026692; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=glpasEou6HMNVKPCRGTch82IOAm+M29mAuuqyqL7p04=;
        b=RpWfAAgcy+3fmASBB3kovEFdfVsUDecbbWqVsKm6XuW10JhqcCNWhM7twSpQ/9inTc
         q8lItO2CrLVNi83mATuig44u8pNkQ/06y8Z97XrF4aq1HoCckQ/djOMpIQr8iOkD++3E
         LnCMzvcFfu+geHnotz/zSDqpllkjdKpEnbSjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736421892; x=1737026692;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=glpasEou6HMNVKPCRGTch82IOAm+M29mAuuqyqL7p04=;
        b=AnLxEhIXUSm0k7+7Eh/DwcoG1opSUgbPM2X8VeKaMqP/z9XILbpmNaVKEUyPZ8xh9r
         /4g4FEOea1lh7hfVbvOXYHcCOAH4eY3gbaQACvfSYag5977O3yFiZ1W5m0l2ktfhLg6U
         2So3kYg+D1iiK4ZwIila3h/GlxoowQTpt9Uf0Io9oS1kFSeYHaEl9WFKhazrBp9elf0d
         539//KARLBF4VgwZ43gyj29F/YzB9W1UaSOr1ids740e+ijrJ56XVn+8JpqKhii71pd2
         VJ2w2VC9s5s6X8Jcro0si5CIdr/HJPT87iEzDQcxWCnPCf9M4L7/7Pf3XMuUrcuRt+8N
         +jmQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCURRG+qrbVwhWTr0mlBhPW+8rWAJVJR0JGeYk3gkadi+lNzyyo5SySuWOaEq7FksITNaZxRcw==@lfdr.de
X-Gm-Message-State: AOJu0YxuHlFfr7haDdsz3qYZ9FELL+UiF1snmevmj4507ST6jNQh4J5X
	8TPwam1J3/DsfOrKN6cyIsCzDTeWx8WbYMfHZlrnIPqfVqQuWkWFZmV/L3ea3X0=
X-Google-Smtp-Source: AGHT+IEgpmigg9bCmT6+Merym05MNe5qBTmFyDtA105yhu521ynCWDY0ULa7Zy8XLrN/Kn97Xy5Osg==
X-Received: by 2002:a05:6e02:13a6:b0:3cd:bcbf:1091 with SMTP id e9e14a558f8ab-3ce4b21610amr14714705ab.10.1736421891858;
        Thu, 09 Jan 2025 03:24:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:684:b0:3c9:9959:5767 with SMTP id
 e9e14a558f8ab-3ce475fbd0fls3538325ab.2.-pod-prod-00-us; Thu, 09 Jan 2025
 03:24:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUB0owizObBpLtYGLfYj5jIwNf82mIFF005prie024SHvn+dkuIoQD/3EDbAcX42JGnWzVZ5o+U/A7K9g==@lists.one-eyed-alien.net
X-Received: by 2002:a92:1901:0:b0:3ce:3618:962 with SMTP id e9e14a558f8ab-3ce475fbcd2mr16923105ab.7.1736421890886;
        Thu, 09 Jan 2025 03:24:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736421890; cv=none;
        d=google.com; s=arc-20240605;
        b=RTDXH+nG4prfP/ODWB4Gsd5FAAuf5VHWx7V6wyARByNJaCgN/aJExqYf3JJQAKeHHd
         HSYPxI2JXV/URtp5QyYmej7JUdtzk7cO5wwXWqahTDbstODUiOvFohZRsZveu5kQP/lS
         ow2Z/e+jyyRWDRkI7XRJJpKsDBKqEtUG7tqJWFycEdSG4WjjrCq5Z4MXkAeZ9BxkRBFC
         m412vOY7g+XwJSWSI0B5nqSge/8Hb1cZ0QAjAixwElr4m3AMUijanzbjJcdA3zZ2xNTa
         UBND0Qzm4H1aS97q1fjAV9emAu9RfiZgJ5FGwBUZvY8Ib8ja1t2V/ag1eX00M5HcKwTp
         wmbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=Y7iVEcWO5At8egsQ1XIfYQNkwCODsRYagLwt487qBFk=;
        fh=IA+GNYboneGlv8G+aMRpiOInMPxH5YcoKFoVs2Hcb3g=;
        b=ehDAyFBOSnek6Mc/bzfzilBN8z6fF72jY28+YlJSMT02Hjd/lltBnuXdC5QL7W1+hm
         lEStZgascSV+sSamZD8oh5RD6aHrPM2U9I8ZT3pxJWfdOT5/nPmr4Sztb4w4TwPU+zxz
         4we4h09TWztooVAg5LBYRpqofQXdueoVZso78yyNv6IKWGSMcLrDtWuiZxqK+kpILG3W
         bgUODPSgnanqxizS4pmWt0vyGVjROcTnSOJSElwRa+5FXukVfh6TGKAVSz8fSbZlsFDm
         fFAYOB1Mxvjx9pU8dreLaC1XW7uTwSJGcu4VkPMT67KfNXz8qD27gNx+GZx+KygAELrw
         NYXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=YZWk4C2R;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4ea1b61331csi493428173.51.2025.01.09.03.24.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 03:24:50 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5093qwa3005688;
	Thu, 9 Jan 2025 11:24:46 GMT
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4426xc9sxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 11:24:45 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5097jukl008851;
	Thu, 9 Jan 2025 11:24:44 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yfq04ybm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 11:24:44 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 509BOhM418154092
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 11:24:43 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7DF3358058;
	Thu,  9 Jan 2025 11:24:43 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D33B858059;
	Thu,  9 Jan 2025 11:24:39 +0000 (GMT)
Received: from [9.171.90.198] (unknown [9.171.90.198])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  9 Jan 2025 11:24:39 +0000 (GMT)
Message-ID: <279f282c-1fc3-4771-8460-c1a980fb0517@linux.ibm.com>
Date: Thu, 9 Jan 2025 16:54:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 1/8] block: fix docs for freezing of queue
 limits updates
To: John Garry <john.g.garry@oracle.com>, Christoph Hellwig <hch@lst.de>,
        Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-2-hch@lst.de>
 <33386009-9d1b-4a7f-96a5-a2f0ed2fb075@oracle.com>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <33386009-9d1b-4a7f-96a5-a2f0ed2fb075@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: HJ1uIGvels0GVoFE-W6QTYp62ZTRBanU
X-Proofpoint-ORIG-GUID: HJ1uIGvels0GVoFE-W6QTYp62ZTRBanU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxlogscore=916 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501090087
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=YZWk4C2R;       spf=pass (google.com:
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



On 1/9/25 4:49 PM, John Garry wrote:
> On 07/01/2025 06:30, Christoph Hellwig wrote:
>> queue_limits_commit_update is the function that needs to operate on a
>> frozen queue, not queue_limits_start_update.=C2=A0 Update the kerneldoc
>> comments to reflect that.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> ---
>> =C2=A0 block/blk-settings.c=C2=A0=C2=A0 | 3 ++-
>> =C2=A0 include/linux/blkdev.h | 3 +--
>> =C2=A0 2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/block/blk-settings.c b/block/blk-settings.c
>> index 8f09e33f41f6..b6b8c580d018 100644
>> --- a/block/blk-settings.c
>> +++ b/block/blk-settings.c
>> @@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
>> =C2=A0=C2=A0 * @lim:=C2=A0=C2=A0=C2=A0 limits to apply
>> =C2=A0=C2=A0 *
>> =C2=A0=C2=A0 * Apply the limits in @lim that were obtained from queue_li=
mits_start_update()
>> - * and updated by the caller to @q.
>> + * and updated by the caller to @q.=C2=A0 The caller must have frozen t=
he queue or
>> + * ensure that there are outstanding I/Os by other means.
>=20
> is that a typo - /s/outstanding/ no outstanding/ ?
It's already fixed in v3 here: https://lore.kernel.org/all/20250109055810.1=
402918-2-hch@lst.de/

Thanks,
--Nilay

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/279f282c-1fc3-4771-8460-c1a980fb0517%40linux.ib=
m.com.
