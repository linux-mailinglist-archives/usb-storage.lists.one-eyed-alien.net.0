Return-Path: <usb-storage+bncBD4KDUPW5UNBBZGW6W5QMGQEP5OBKYY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 750C4A048BB
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 18:59:01 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3a7e0d5899bsf349341115ab.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 09:59:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736272740; cv=pass;
        d=google.com; s=arc-20240605;
        b=RYIgY/VTyRU0Qr6ggvbCvaCLZAnU+mjpsk1pqt21bl/SiUyoMkJGP0aYVuJ1YEBcuT
         AS2VIfP01Tg86fj9cR5gUtweyug9/fhHNxtvmrqDM6C9lXcLrGyqAMKJtIUy2qXIhCC1
         oD/lpDdTvAUxg81crpXZMWd1Lq5WKobcY1oPuOc0pohsLQZqEk0i5dgY0PrXponfc50J
         szNt7uXhWXlPJT2Xr8Jg4+A7meQUqijh5H2E/BKoTC7qdENayFoqy8sgk2WUhAHIiEPN
         xVtCRq+M+V7Gki9o/ZRbJ2wl4YMav+utJiy+fM1JhiS0YU5x7KSfgfH8yYIlsFJsmNcz
         hxBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=eOx7yJUTDOr87veWxxgUu9TjVblzwedw3uEZgbsfsQk=;
        fh=2hv/A95vN3G5tcCrF30cTk5jXE0nW+wYrrX/EOup/wk=;
        b=UOBWDI8fhjUXUipeONZGyLHA74Ul2mQaZ3DGo1V07uowDsqFivbd1LSFo8hnxekX2I
         nP8YN1/S1b5AUSOroJaNmbgcOf19il4LioGG533PHkv7ineJpXaQQLhV1opPdLeD8g81
         2BHVndPePmAk3S59JfzVr0Vi0jTB7U1RrfNVoPpml/d86079ymE/y8dZsLAtENmwnmct
         0q1sjuxWV0KsIwUL20xLSw3KmDZyMfU/jdo7P/lGYRC1dSYouSZD5QLlFnzW7Ytj+foD
         AaZTeOeX9o2XIl9oMIdDocHaU7RubEgwJhvOnp2jjiatW4UnCTwmJp80t48fXnjA5wXt
         V82A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=NgnFVqyJ;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736272740; x=1736877540; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eOx7yJUTDOr87veWxxgUu9TjVblzwedw3uEZgbsfsQk=;
        b=LUPp938w/M8nDVkKhoLcrtPQv/stOaYXAZh9rIwjNUnhZm0f9tMQkDJIBJfhXj6221
         07in7CifAjgn+Sm5AopghhdonosT6j7L/Jnj9Xbe6i51KHfB6XotPmHXWoEBG16olKVi
         1dG7QGE3ZuujwwSvqKJe5s72NinrB9Ws8jTVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272740; x=1736877540;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eOx7yJUTDOr87veWxxgUu9TjVblzwedw3uEZgbsfsQk=;
        b=etr7OuVxn14+MGEg7aHFXxZ//WEDJIqNHm3HpocSuDik7taOc6MXq9+jJ0uxy1LLob
         ji4jRPD25eo1wFQKPOtG+UviCEPpFHQhdZhSFTANT6bCzj0e0SRa/P/Uy0BgZ0bGtiaX
         zBkGP7qpn5XuAnbp5lo7PYTub3A/8JwOLXlemWdaU9UIb9zxIfCQzVusgWioofiIYU2k
         kRgWe9eUqPdsqDPf8qk+HnaeYrle3Nm6yX6h1yN8XK12MC0WyIHEoI5kDQlCYwFgLBLK
         i7eFEqCPyEsg4y2bunQ47ZiSE6/ZRqHgPZ9E9aPmagNYl81pk/ZO25YeNS/C+UzNqclt
         4IwQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUGqgHO0Ojbpl23jNcy5jdHeI5Jwr+eRAYVsAuuS2iTrLzY9Zx0PflK/KNaHS9OIUBEwqp1Cw==@lfdr.de
X-Gm-Message-State: AOJu0Ywaa7A97k6mKNCBWGFUwa3buKDNmD8QVsPfBUMA8qlNuu+GfXpO
	rxiG+y/J9mbjqsuj4/w+I0d59NoI8PwPenlT8h0qqqrHb2Mgzysm/4x4uTm2ImQ=
X-Google-Smtp-Source: AGHT+IHz8lXF0HaHnrHDGprBmnBU0ohEUqFEULzsYecljzLDKcUlso5EjQHd5u0eQ2ZE2MYE+1h/Qw==
X-Received: by 2002:a05:6e02:1f09:b0:3a7:e0c0:5f27 with SMTP id e9e14a558f8ab-3ce3a86a220mr1274445ab.2.1736272740340;
        Tue, 07 Jan 2025 09:59:00 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:16c5:b0:3c0:3b9f:2f5c with SMTP id
 e9e14a558f8ab-3c03b9f3277ls15216805ab.0.-pod-prod-01-us; Tue, 07 Jan 2025
 09:58:59 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVJPFosZBShK76+fVqGI51AJCpfVvDPBGX9xOSDo0wurAegVZQ4R/XKtKrixC4Cq0be2DUIcg/qLrzsPg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:b44:b0:3a7:15aa:3fcc with SMTP id e9e14a558f8ab-3ce3a86a440mr1550385ab.1.1736272739535;
        Tue, 07 Jan 2025 09:58:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736272739; cv=none;
        d=google.com; s=arc-20240605;
        b=e4t1wXsqTb4Zn657+u26wRRa7KYSMF173MYqV5SnGgz5v5eOtGBkWNVzvG7Si0MNsh
         9rrB65FkPhHjHh+bqKUHixD/Ed0irecZ/Ck0MQ11pZs1IEl3CnJFAD+zpYdHLLvA0wzk
         RU3KEdsRKSmKBtCzz4aTgfL2IJ3jue9hiMA2W/9d0lS5vjKL8/syYZeGMW6j7i85t/pv
         srGhJo8ar/C5fIBWxYIYYWCm412oM17iVZ88hWBIFy5xKQ76w/MEwn2d9UKxTmbbZX1m
         MA25/7g6B7xouvOx0JLsl16epQFOUhyWebojB8H7+XKYyc7GloIv/Jdr8D1aogg2XIVv
         Kktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=WV+TLZuDtrq0vN0L2SGNhb5nPcib4hM5tam8yfuu2ms=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=djHq6lqhdhrYO//Ky+vF0/I6s2IR3VgNJNzvG/Ung//Txx/B+Mf29+7KHm2kcV36BY
         ctozFEAsOnWE2F7XNGi+4yLQRn/voGwnpSqnyUXVKYMq+BOZPtNy5OToZYi4mJnNHhKs
         3KwyuFDAg51rv6AWmM9jqu3IJS+/YwCGk7OU3MZr7xgqgYxf3yut0veG6wABEz8PnP4p
         5EFA2pMGqNEpHhtEUz4bmaEY25rO1aFBaKAPIFgLJxbb2w63GFscWPnejq/UXtfFttPn
         mLub4Lyo0qFvxdbB+1mscQ8cZ8ZdDrMBz5d5ERCl+ZnMtEgJ2WRX0afqM+GoxGLiMKj8
         K4sg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=NgnFVqyJ;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3cdb984dd48si51275465ab.174.2025.01.07.09.58.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 09:58:59 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507DSGGY024534;
	Tue, 7 Jan 2025 17:58:55 GMT
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440sahmgd1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:58:55 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507HhFMG027963;
	Tue, 7 Jan 2025 17:58:54 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yhhk3j11-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:58:54 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507Hwr4B52429192
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 17:58:53 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3A32A5805A;
	Tue,  7 Jan 2025 17:58:53 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 59EE758052;
	Tue,  7 Jan 2025 17:58:49 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 17:58:48 +0000 (GMT)
Message-ID: <7e96c6a4-e316-4d04-8157-cb88123908a0@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:28:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-5-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: wX_9nt6yB-wRBGeMJU90ZLGm49RytjDQ
X-Proofpoint-ORIG-GUID: wX_9nt6yB-wRBGeMJU90ZLGm49RytjDQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 adultscore=0 mlxlogscore=704 impostorscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070146
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=NgnFVqyJ;       spf=pass (google.com:
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7e96c6a4-e316-4d04-8157-cb88123908a0%40linux.ibm.com.
