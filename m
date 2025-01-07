Return-Path: <usb-storage+bncBD4KDUPW5UNBBGOY6W5QMGQE7RIBLQQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 28374A048D6
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 19:02:03 +0100 (CET)
Received: by mail-io1-xd48.google.com with SMTP id ca18e2360f4ac-844d54c3e62sf139554939f.2
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 10:02:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736272921; cv=pass;
        d=google.com; s=arc-20240605;
        b=impHciBTjQh/Ql7piFoPaR7vVbEqURYuRmOXtugiEa6ygHgok7kVNAqX5BsVvcCpjs
         Y/CHrtHG7/84FqQvUmrcyy+ZA1JYYb34CnDWw57WcGLADulXjX/v4BChyFu+RkKgETTz
         ZF3nQU0vnqtNVOm6z/cbUCqgxQWaphQ7uWS8E+kyCGh3mv0rlbOX/334E/MPKV6yxW+x
         7rHp1IMJXI0sP6a0mvXdPHDklsV+MkozA6JqaFt6h2jffF79Id9QigBrKosU2h6ScZll
         KQynWHoTizxctnnZ34gFSZ8V6m+tnNab9wUMjqssduVSKEPeFVpzo+0DNoV1BpfMUMfS
         lkgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=vBHT3z4U+HD3QLiVlBHv0cPU6yXUkk6c3YBf0eqnlJQ=;
        fh=fOV+X7SX4qCaT0k+ciztSdIvEii110vQ7y385S+CxWE=;
        b=knfx+3IJmYEj04LsQbwQ8GVSb2ccsNAvILauE9XDa9Ny21H0YFxODyF5SGvhNbcqni
         stUcmb6A1sxa3Hqk2gQi+Floq45YL9yogi1LeCndYO1LvBVfsIeYU//UAgVwaN9ErXd/
         dqK55LVhh3hE45uDd8YYqlQTOIlhYh4v/THIWhQT/38ESbpa569Kh1/pRBQV5qMsZld/
         o5C0o87bFOlhQTuXU6dKfwqrp1Xr33B2ELNXDFwZzOt098BPk8s1Xn4Nm1aWEfD6uTUZ
         N8FLozZMJBaO921MKtoFewyt4gWJwYYcI56XcVZ6K+Tyt/dxRFvVx10HTL8Q10TWauvJ
         SUBg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=S2EYkqwx;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736272921; x=1736877721; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vBHT3z4U+HD3QLiVlBHv0cPU6yXUkk6c3YBf0eqnlJQ=;
        b=lTPcX55Acadp1tE1meJ/x5kiq4LYIL9CbT99kQ8OAciuxnpsJaCLWalL82mE7vwZ6b
         RAPIcSRorSILTJiEraTF8khyPtZsVY+9e6fvXNC/94+7js6F3x7ziqt1a8G+VFB/2iSA
         EjwyG1YTR03YKVj99RNg36iOO/LDhZrMiSbjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272921; x=1736877721;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vBHT3z4U+HD3QLiVlBHv0cPU6yXUkk6c3YBf0eqnlJQ=;
        b=kGiazr8Z8uimbBgnKAmlJzgxUOqoioz4l8JJ65Ib5kwPwfx19hBX2J6n7BvMLkm+9a
         2v6UWWkN9fxdOojsMfJsNWoPawqLbo7tAhbGy8zn5u1BV897IZB5f67OTtMlChp3N8Zu
         bTyYz7+N95yhmKdM5xRB4NIeCFgDIvKzw4cYjbTgd/xIvu+iJ3nX4KC7pVZyEDx19qq8
         PsaQh/diU82MTTJSOUkdT64MPdjRmGv62rt3mQfr4gZ450vpGB2EyWm+KuCNGVeSJ2FS
         GSwwtVfISHEh5fgzGVH7YhibZtcQCojBt5gsKc+veFtKTIXFg5VvPh7hMSjaeaX6Rars
         a7jw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWdWKVbmBIgLfAALN9u1PERgiyFyiQODRIQKL2O/HSwIOA8QjSrhUEF4USNtWYXcefobJ1eKA==@lfdr.de
X-Gm-Message-State: AOJu0YwRr1096aGL/rmOYuRoXJELhb+mT/EeyW6pPlIFxJJnbej3T240
	rgPy4rvHwkHrlHrBsqZ33GQhu8xAC+ELiQS718KdpQlzf0oJqDFZhKxKVeNQNW8=
X-Google-Smtp-Source: AGHT+IE4aZCuP+IUPAY8klu5xBFCjyPvWQnKy7y6JQWPfI1WrSRVG6LN7Hi6UjEEn0pjMuSguOXDkQ==
X-Received: by 2002:a05:6e02:194c:b0:3a7:7ec0:a3dc with SMTP id e9e14a558f8ab-3ce3a88a2femr1163555ab.14.1736272921654;
        Tue, 07 Jan 2025 10:02:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1582:b0:3a9:c962:f958 with SMTP id
 e9e14a558f8ab-3c026115c05ls15506315ab.1.-pod-prod-01-us; Tue, 07 Jan 2025
 10:02:00 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUIdB7VpnYh+9qqmC6PNm2zIGglsrcPfAaopk9lPVvhqGzrm9ljEEdKZsRNc7gdEPsBnejOxk6bXJ8zUA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:1488:b0:3a7:a2c6:e6d1 with SMTP id e9e14a558f8ab-3ce3a93a83emr793105ab.16.1736272920793;
        Tue, 07 Jan 2025 10:02:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736272920; cv=none;
        d=google.com; s=arc-20240605;
        b=MaJy1SsMddDaXnF7CqdHGQeyLTCLZmtkQ8g8RXqr0JHalZVMMWRDM0bpGeAXDS4xzt
         lAEJjYvoOeW68mE/FKORi5IzDS21XWKXlH0LmfIbXuAMIK6BYmYI/FDPesY6dvFUM43u
         IANIYcQOpQi4+uQ6fAVUi/NEkU8jM2cE6vnTpnN11PsdaS8+BGHzVDItodhphCoykPzY
         Zf9WNXK/tBKxpXd7TaDB0SEooBkqDugPEm1GPzCXG4FKj+sdbvlvJ0WXJ0nKkCGyPUU5
         cfXWmONUttERgIgPrlkJIFIXT0sBpyFEnNKVm5dbDajUod3x/OSxSvT5XdAQ88iDOIRL
         6+WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=WV+TLZuDtrq0vN0L2SGNhb5nPcib4hM5tam8yfuu2ms=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=fPaffRjwqMwx2ULfSnrr6UKTUqn877KW3jDIs6rnDDZNEEG5cPXXlmxaKv27SuCkp7
         jL9569TOkv4UapbiVo2eTKbbCbskXzMk9pa4IGjGb5e6+Wdy9lqTbxpZhNie6UA5FLaE
         i4Cv6yAkwFKTBPnrnjHMjvxmhCw5aQyClLOoRfT5SZz7kClnlkTY6Hr/WwlCfSuHqf+5
         3+P6lkV2GPr3kqHwO2C1Tmi+qOmCTjYhYS1OEMFTA7xmVD2h51yQK8feTt6xGxCKLWY5
         WPjzoVS+574bTAkWp8OYw9G2m6EAuUhlr2wsFwO/EuXypRncagZWgKLFpxE5jdHluzvK
         aVnw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=S2EYkqwx;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4e68c23cf2fsi23536059173.175.2025.01.07.10.02.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 10:02:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507CcGJ3022197;
	Tue, 7 Jan 2025 18:01:56 GMT
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440sahmgws-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:01:56 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507H06UW013571;
	Tue, 7 Jan 2025 18:01:55 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yganur2v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:01:55 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507I1spI31523424
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 18:01:54 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 55E1E58056;
	Tue,  7 Jan 2025 18:01:54 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 88C3F58052;
	Tue,  7 Jan 2025 18:01:51 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 18:01:51 +0000 (GMT)
Message-ID: <f78a6a82-27f9-45b2-91a9-0ebac2fc06d9@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:31:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 8/8] usb-storage:fix queue freeze vs limits
 lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-9-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-9-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 2EY8dbR70v3t7uGmYqbyCiAkb9NHESTC
X-Proofpoint-ORIG-GUID: 2EY8dbR70v3t7uGmYqbyCiAkb9NHESTC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 adultscore=0 mlxlogscore=462 impostorscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070146
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=S2EYkqwx;       spf=pass (google.com:
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f78a6a82-27f9-45b2-91a9-0ebac2fc06d9%40linux.ibm.com.
