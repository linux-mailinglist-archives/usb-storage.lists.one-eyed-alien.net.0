Return-Path: <usb-storage+bncBAABBG76Q2YAMGQEMFLTS3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id A107E88AD71
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:52 +0100 (CET)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-dccc49ef73esf6815839276.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:52 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711390491; cv=pass;
        d=google.com; s=arc-20160816;
        b=usBMLkPm3zD+3GI0TGE9INGCsspHOW4otV4DB+jglGwENmb5Rq6ZWdIjim/dLnjviT
         ahvDM817cR0kQGZ4uj9r0vflxTwlStP6qgiGTxjiSv/QTDDu3p65J7pyNFgwxPPPTKp3
         AQRlk78d8otjuS+PtcUKpjHkEIWBGPsbDl6oXDM+Mu0Bw/zdbTWiSXqvqeI8BL69jUoq
         9ZiJOWaRHe2X+UeZe7iQhk7amZV7g/n87q3XSzKZj/7Ko46QYcclBoJ1jq6bZpsqnO4a
         WH3C8A9VxSEdSkOVWp5zNZbYMQ55YXADSykobkd+/VY8ykLrH1yIQFCvfVtbC3zkoTcU
         7NRA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:dkim-signature;
        bh=1g+F+NyOjEtYF95++9XFbyZ0oYQ2SC/4i+1xNr7hbjc=;
        fh=7jCqhSIFranOB5EWwKQW5dRg8r+V52PAI2tsgLiRHjs=;
        b=HN11M6TjKDzRx9v5bPpgF01gNxponyFtjff2fYJ3z1QJl/djgMNpzazPVGc95qI75a
         ETSgrw7LgidbV3oZ1vy2gz2KTkYFB4hNosN/qmnNFisdYNQhEiUTejrrBjayArJwe2vT
         O0c2zldhmoWTJ9MjpXW2AIJX4O1RgNphSIAJFeKwGt/oCv/Si4JQFgQ3N4M9/JLaGWIB
         vssJOVLuJk8lfaoSpwq0xJCZhdgvWi+7L+VmTMLWCyoozlW+jbIPFLENx0sEv0FLJgqw
         Nx/GrxgLIFcKL//kmuRSXTQJ4SliTdslmai3LCC2YuVtL3nr9FYrw2ie8kTXFNO5pgaA
         fOAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=QplFjFgW;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=YItzt9jB;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390491; x=1711995291; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1g+F+NyOjEtYF95++9XFbyZ0oYQ2SC/4i+1xNr7hbjc=;
        b=LMUkR9bqwgc6MKVfU6WNUHUJP8B4YqkH3VXyvPnpaTp+sJBu+b7bbBiEYKYVMAAOSG
         suuZopREfY0a0o4QHhJUOS7cjMUu86ngGQp0D7GcwPA5GnwHA/HwONc6H7BGIRJfcx/d
         yePkuXwqllv+RntFDeNgkcbmyRm6Kjx08d1yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390491; x=1711995291;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1g+F+NyOjEtYF95++9XFbyZ0oYQ2SC/4i+1xNr7hbjc=;
        b=qxXwoFSpNeETd1Z1/ynQjr7Jz6h44CYNR3TpE9I13lfgFPsJYBs7+a2LpZ60X8dDtU
         UQystakKkI1Wfpot3a/OQJjH5kbou7qIElFMyBEBEY1fvdd/Gz031lGnq4i3zKzepIYl
         NQOV1xgNppcWzMBjiaZyiv+i2UO478FY/WpaVHlUI6OTxjYDfMKHbxHFh+fKKaorkNqv
         S+JFHzkpQmhRPuBFxcHG477Jys3KDu+cQNNbAIKH/VOW0b7mXiVzNF7DnYPy03FGFDsU
         jDonKl1cfBhfMba1wGT/oxBuJ/hv0w5ZU7/bQeYEEaAgYxfElgTmNqgMZOk4iTXAKVeX
         Csuw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCVmrI9mgYdqjJ9sZm6oByTxOA48+ADsKvHRNXT4cOVbcINTMpSMpokXFVI6JImFXFvsvt29Zy9e7R6nfLCb3g6A722P/5DRnzlB
X-Gm-Message-State: AOJu0Ywp6LvUroNHU/0rt+dy/1CrzYcnyfl6fdALb7qBx4xAmvCOyKvW
	JWleD389VRxpOWMxbO0msuumtYf6n60rsbtKSNkr+xMeMvoYPwrMll0epA4grZU=
X-Google-Smtp-Source: AGHT+IHwUrbmPvyyqtbcen0w3GUEAQmVhjRPff4saipaVF46750c4kfedcfJUWQ4oL617PokZtor/A==
X-Received: by 2002:a25:5f44:0:b0:dcc:7af5:97b4 with SMTP id h4-20020a255f44000000b00dcc7af597b4mr5064889ybm.12.1711390491449;
        Mon, 25 Mar 2024 11:14:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:dfc2:0:b0:dcc:4b24:c0e3 with SMTP id w185-20020a25dfc2000000b00dcc4b24c0e3ls1470423ybg.1.-pod-prod-07-us;
 Mon, 25 Mar 2024 11:14:51 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXpyNS4t4/emTCmgPkZNq0bpzs2Qw7gi0zI9QgFmZ0iVw5zb9Hv2L+HvuaFpvE+UEokrh5VHSem9bryVWCJmIg82YJyVNQm6IfvQibXGJdf+uMr85Y=
X-Received: by 2002:a05:6902:100a:b0:dc7:48ce:d17f with SMTP id w10-20020a056902100a00b00dc748ced17fmr2407246ybt.10.1711390490971;
        Mon, 25 Mar 2024 11:14:50 -0700 (PDT)
Received: by 2002:a05:690c:f83:b0:611:296f:7027 with SMTP id 00721157ae682-611296f7565ms7b3;
        Mon, 25 Mar 2024 02:29:29 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCV7mQGedln6l75ct/1biECM32eXNGEVKPJuAjMmger4JRmXjpfx446sLP1pJQH9ODEbaOVW9i1lpGTrCVU6kds4LXugpz+r0sdFHgT2gZ+5ccPl0tk=
X-Received: by 2002:a25:24b:0:b0:dd1:48e9:2144 with SMTP id 72-20020a25024b000000b00dd148e92144mr4746255ybc.57.1711358969250;
        Mon, 25 Mar 2024 02:29:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711358969; cv=pass;
        d=google.com; s=arc-20160816;
        b=HhrzZT7PrxphWHkS1GwPLsYfs3+MO+Er+vDhhJLe6uGuUNm71qcJ/61GBXXFIJbBom
         LIt8NO24tPYQQxRMyS11abIQ8fErdxhVkp08Q9gL80DBD5Pt6PfzZbB272G+NYdp/OgA
         8RoKwQulvNctKv4YQpC0/xenbDkQe0aCO+SHS+FwK9xn0KTbLz0j1wZ0c6uQcL2IsfHc
         k/m/Iwd34gHkBC6WC+79ijsRyE39JjUuo94DZSgbb1PuJHVl/jmqPGrzDOPPMFi4fw2/
         DOWNSXKKWVngbmXISiJI20tYKl2Zh1YAiZwCaoC+CfnW3tYGyGxQ6WBUPdbEMHqvTXaZ
         Ridg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=Hx/C1Zegb0+T9phhOwLELzKCTyIZF2k+thwCFtbRIrc=;
        fh=qzNRNGvGDUykVC6j2/B4suc0ASzZpUEXc57dytsAsvs=;
        b=s6iTX3xH83tIa8C1FKqjNGy4jh2qWoJXut0R6WyhIjnPFKeni5PW63oBFAGm775XqC
         TTstt6MCT4HJGiPjMr03SdmwfLWzmpbaEEaQlLz+4VsIZ5H+OnJkzrlaENEMPqpBzrdN
         nyGKq4R1e2odeNiV3HtQ1/DekumNZ7ry1k+bD8YBFji4rI6pJxohxCxgbWxv5NoB7OpB
         gCirux7SVtFx8XY9rmoFjEy6W6DS9idSWbMMaJzIWvw5f11g3zozuZJTxc/dj/51Z/Fq
         omUSVbgCVT5gL1yl7qQhsetjz1pB4eQWQDvcB8FLSgdlzr36d0o+taigPf4ui7uYB0Fo
         ykZA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=QplFjFgW;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=YItzt9jB;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id x67-20020a254a46000000b00dcc43315ff5si1211914yba.178.2024.03.25.02.29.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 02:29:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42P8qXP5027657;
	Mon, 25 Mar 2024 09:28:55 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x1q4dta0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 25 Mar 2024 09:28:55 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42P9OsbQ033151;
	Mon, 25 Mar 2024 09:28:54 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nhbg88m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 25 Mar 2024 09:28:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zb6NpU+hkeRCmUwnehJffJIwOhFX1Q1JlSPYVn/KhsG2x2yKAajlF9MeCACCR9f0xYNlztIyVyhgdIEjja78auWKMf/8rkQuhdL8strM+pfR2Mdy73WM1VNkwVGCjgF9zkBEHqkSig+SNhZsYWmneVwG9vZ1yLZht8/XAROaEX0aLiXc7wxOmDUQATQxwnJcS8lKnW4Vbm8lclt1C4wsO+N/zxlzpg4kDREOZsNqy/j9wGAdJI5ca6a1XmehCyKeYIqLAF3+/AqjcXi5LF2hwGpttTTLMS7NfdNoc8Rx0kNBGrdo4yHXWuRq3gYhAVx6h2zI9uCFqZCAKJjr9qzOnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hx/C1Zegb0+T9phhOwLELzKCTyIZF2k+thwCFtbRIrc=;
 b=dis16m1ugufIJ0dthl82MbvlpeuVWEm9FNeG0p4XkUnD3x0e06/Fcbil92bWsIsM8PuUCCO3TLPI3+9n+VanRQ5c9jSap024JRZ0f+Ie5SxtR/yaU7/CcTg4Ka1kVp5y0CS6/Yd22IjczdZh2sGV1qO/Q9HQKe+lFWbgn1p1y/dnlGob9vNcGnpSDbVCcnKPBG2jNv1+9Bzo5ZGfwAF6oJ26o1pr7Bc2A4+MxUXP5eI6fukdskriA0zXiZNispqsuRQjcCgPGslvuZxv6pH9GO54NLO75nLf+JjOLxGw2ncq3f+cLTBQppZiVuK9IQuGOVANSJuxKG27gr1/JTKxZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CH2PR10MB4312.namprd10.prod.outlook.com (2603:10b6:610:7b::9)
 by BLAPR10MB5041.namprd10.prod.outlook.com (2603:10b6:208:30e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.31; Mon, 25 Mar
 2024 09:28:52 +0000
Received: from CH2PR10MB4312.namprd10.prod.outlook.com
 ([fe80::3dc4:7751:97e:42a1]) by CH2PR10MB4312.namprd10.prod.outlook.com
 ([fe80::3dc4:7751:97e:42a1%6]) with mapi id 15.20.7409.031; Mon, 25 Mar 2024
 09:28:52 +0000
Message-ID: <515ae87e-745c-42b8-8e1d-2697bf343c01@oracle.com>
Date: Mon, 25 Mar 2024 09:28:28 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/23] block: don't reject too large
 max_user_setors in blk_validate_limits
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Takashi Sakamoto <o-takashi@sakamocchi.jp>,
        Sathya Prakash <sathya.prakash@broadcom.com>,
        Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
        Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
        "Juergen E. Fischer" <fischer@norbit.de>,
        Xiang Chen <chenxiang66@hisilicon.com>,
        HighPoint Linux Team <linux@highpoint-tech.com>,
        Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie <michael.christie@oracle.com>,
        Jason Yan
 <yanaijie@huawei.com>,
        Kashyap Desai <kashyap.desai@broadcom.com>,
        Sumit Saxena <sumit.saxena@broadcom.com>,
        Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
        Chandrakanth patil <chandrakanth.patil@broadcom.com>,
        Jack Wang <jinpu.wang@cloud.ionos.com>,
        Nilesh Javali <njavali@marvell.com>,
        GR-QLogic-Storage-Upstream@marvell.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
        linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
        MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
        mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
        linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-2-hch@lst.de>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20240324235448.2039074-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: AM0PR06CA0086.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::27) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR10MB4312:EE_|BLAPR10MB5041:EE_
X-MS-Office365-Filtering-Correlation-Id: 223a0081-2c75-4889-fc0c-08dc4cadf4dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zwxvBmdkfk1UdpwMA1/eh37HecbyQLLBkC4F934imKAXfUQblJ0Kd5o4oI7UQ0ALHpnxSaCCcWyiL6zr85TvvYgbSNpPz3hV1jng+51Y/nIfTfYIiO1bvE55G606bMpWJdXtNtv/yRCqZaQRyGquM9hFlpBVi9vsLocoskRusZTzfZicXTr7LL30d4G9Uwm/wpMGc4BdD9sVqXUg8U50hgH5cKZegRZh1rHI1o0tOxuuf/9AOyfD+3Tkz4GkjfJ6CCuzo1uZYkb2wzl1s+ZvIbl+RJdOnczAaASx6Gg7Di/RrdPNNMGhMFd3oaVuqQtHpgN3WTlytr2ROy0gOpFZtjjo1gbQVnFzdF3mLzVNz7nEaN1V1JVB+GMC79DoJjr1lbrxuouffrGUGT0VN+Fq4+8N95Xvh0y3wadmghxDlcs2qjFUsKxhm8b91qIKDO5ucTQAfMZyCIp10pzzyUVkCf4SVklJiKhMj39z/uiW6ViE55CrBG/bNXOguAky2zu/StPtjU4r9M5U9+X7BKyPlWSV3bSp8ujcsl02omwVczd9XPrhBmH5qWUb0dWagHB5orTuohidCruWR98YYgzd3+E31VKNhAYN4veVqNIzRf18MeCZKlmhBtnG4NJCd+SjJtS9lDqEzt9C8xXai7e3wgj4uX9+06Ihx6cgRgu0brE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR10MB4312.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(366007)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFRHOExVbXZjNWRLTzgwZ2NvQUdKdkRKMmhGcU52VnlOSmpVOGlYaCtQWnpB?=
 =?utf-8?B?b2srR1dVWWttdGgxa2FYNEkwMkFtL2RUb0lEdzFFaWJjRzBUSjZaK21QZS9S?=
 =?utf-8?B?UzB4TWhtU3V2RDh0TTJMai9ra3krQ2tzYkM3U0FGYUFkQkNWS2s1VXRoT2VS?=
 =?utf-8?B?aTA4NFdWczV1L0NpQTlrakNDRmtoY2wrcXRZZzRGcS9IOXFRc3FSa01DbkZy?=
 =?utf-8?B?d2dEUXI0ZzYwbzREUE5wRW94WTZnaHh6dXQ4N1ZVdzcraThjNnFxNmd3b3J2?=
 =?utf-8?B?aW9abldtVk40MGVlNmtrY1pxQ2dMSVJtaXNIWmg2c1BZZVRZWVBUdE0yTzll?=
 =?utf-8?B?Mlo4MnA5MHVxTXJFNFhKbjNqZFJVR0ZJcVc3S2NHZ2M2TGJHWEtBb09scFZ6?=
 =?utf-8?B?eXp3WFFHR3FudlJtNTk3MUlBN3BDc2VoUVh4MUNKNWdzTzI1VjkvM1Zxdkov?=
 =?utf-8?B?a0pyWUFML2IwaHJVdGNxU0NZMkRlanNoQzZPTzl3dXRydnV5aXRIVFkxOE9h?=
 =?utf-8?B?NXNqTzlvZ25oakpHK253K1MvK2Z1VzRpSk9NZm92czlzVHQ3UC9QbUJOeWtp?=
 =?utf-8?B?Uml5c1p4bG1YNVJJc2dZV2FuQU5hVUFXaVdkYVMzNWs1STVKYk5TdUxPNE56?=
 =?utf-8?B?Znlrc3JrTDc2RXgxQWVrNDJNeFRlL2pUb0MvVDkxWVpNRHFUaStQZE9STWhE?=
 =?utf-8?B?QzBNR3dLQml3NHd5TE5tNWQrRldNd2NUcHdZbXlUWHE2WWdRU2UvaFBxMGtN?=
 =?utf-8?B?LzhwTGxXZE5Xais3T3U4Z3VLT1ZNeUtlMlNDMFFpZy9KUExPTzJOT2lPT1Rz?=
 =?utf-8?B?OVlpSVJjQ1hCV3B5NlF2WGFFM0xoV3pJVW15VEdvRjN0RlRTMVZpSllCK21y?=
 =?utf-8?B?Q3NIWUZCZEErcE5nblVsQW9aZ3p1V1puRWN5ZDBxUEdzZTRlU2N5TjRvSXFw?=
 =?utf-8?B?WjlpeU9wSDR1bGhlMzJNR09xWEowcW5KaitMdmp6aEI3bFNTc3c4dlU2Yzhn?=
 =?utf-8?B?Mlg4ZjN0WFVRUlpkSlBNeXJQQUtLOEVoaGp1aVVpb2RoQkFIZ2lXSEVzUE9h?=
 =?utf-8?B?TlNDMHQ5d0VBYktqQWJCcUNnaW93NjVjQm0vOTZlSzZMTWJZYjhYdUdEaGNX?=
 =?utf-8?B?UXN4cllIT1I1WUxwVUR6TmRrd2lPcTRaNFdJQ3d6UUxSN0M2TzNqZ3h4SjRy?=
 =?utf-8?B?R2lsdEltcXM1UXdwOG9SZWtJVlVyVGhHSmszNHNLZXBXdVk4NFpRQnVtbmRO?=
 =?utf-8?B?Y21hSEtjVW9nN1cyL1QrdWt2SXptS212d3V2YmNKRFluQ3ZDRE9nbjhtNGc5?=
 =?utf-8?B?ZGs4S3c3bUJYTXVkdURlWEY5UnprOFZiUHNxRlk0TDZDZ0RBYk9JTnIvZjZU?=
 =?utf-8?B?SVpYRVJ5US96Y0ZZcGNWdEVBVEpYNU1KQkVLS1gyU2dHYmQ5clRIU3RiQ3pQ?=
 =?utf-8?B?VG15U1lyQkUrU3dyNmhZQUZyZlhqSFV5N3FTZEd2TDhncllkL1J2K1dxUys3?=
 =?utf-8?B?MExLQnBONFUxT0dyZkFmRkI5QlhwRUVkL3lzN25UUS9TeG14N1JkNngveHY1?=
 =?utf-8?B?T3hYWE5FT3lUbnAra3F1QzRTQWZZRGFlVlpHNlNiWTNlaXBFak9xYitZdmUz?=
 =?utf-8?B?ZG1JbnJ6R1UxaXNMM1ZSdXdtM2U5dCtRaTM1NkNVbTNNRUNCQmZ6cUNqajE1?=
 =?utf-8?B?ZWNPa3JFSFJpa2NjWlh4UWhFZzRIdkUyclhmWG01SkgvWXBLS1paWDRzbURj?=
 =?utf-8?B?bHA2dENQSmtUQ1ZoMVhDNWYrT2p4NXFwWGo3YXZMMGJXekNHWFFTb2pGczc5?=
 =?utf-8?B?MVhVd0h1MFEzeG83N0wwWWprc3lkbkxJVTVlUVAwbllkWTJxTVlESXVvR3Rw?=
 =?utf-8?B?N1hlaGJUQXR4NG9xSnF0NlFJdFU5WWtVanRzZFBOV1QwRUZYVG4zU2JhMW1S?=
 =?utf-8?B?ZnJ2WWJmUjdDdFpxZ05WN3B2MGdhYVBoVldUNjRwdlRUTEphbVJreGFZVXg0?=
 =?utf-8?B?d3NqNkE2eWZRUVQ1MmdjSEtaS3lndHdLMEtYNjJvZ21JYUVBUVBEWExKeHBL?=
 =?utf-8?B?Ky8wQkNCRGZFL0wwZWVobjlnS2tvZDY5QjRON3FVQlBkaXVsVkxtdmtBODZN?=
 =?utf-8?Q?51AHUqdw6ZdrlG7YGRL98+2np?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: v8WUGr4rnc5QNx00megueM8IqedRgqD6nqMfnhSfSzIQvmHc/mehvnpVWjBD/+jlrKfppdOVuFFS4+9Fi3j4xNQJ2Mrd0WbYt6DONBLMlOR43rBL3UCQgvaWI02OSUor0+qWFqi2maX+nk8TWj/CWAAZtcojumHiJMcHdJoUUy7buM3yHM9Y/LQhiThpcOK376jmAikSQZHJisPYqTL1bMfTnJg/jPwGccyf4fbmnrhFgYT+zVLtcvU9FfoLOQOUlx+CKxkuVSBhK52JVMPOxdmzFOIq8Ue6mpxO8uwMRXPnUSBLxQch2VReo9t4iRz9aEeuX1TTiaRicqQrmCQ4f08n71iucw8OIpnRYpus4xcOU6N8oxnjHJVi4S3414y1v3oTL0eOu9mQ4w30wuvm5bJrl09sRRsVMMKJ7Mmm3g02H1OkiyMbAeheATHOUh5b144QKU0bJtlNdhyAGHfwlwDtxOktXSAkWeInUsiPS1+jD+q8qfxBZ70Te1LUJEoC1Dzz3DYwNHrRA+cQTh7x1OXXqXVdg5gDqTZpedgYSmNoeBT57OIQSGTpC1lelKaME4nOQ8fk5SyS38UWjeW00kv0XpqhfMpHRZajPGg+Xz0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 223a0081-2c75-4889-fc0c-08dc4cadf4dc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 09:28:51.9816
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eNEIrXQBvjjCJMEoF1+YXMRgZ9Fd2FeNWpYWxqgAHT6rqkRxvNFqnI2rqTMEf4lFIijmcNb2UFWq+UoO/O5MLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5041
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-25_06,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2403210000
 definitions=main-2403250051
X-Proofpoint-ORIG-GUID: fILqErsKxVwLgKOgV2tarigl7JlrnW98
X-Proofpoint-GUID: fILqErsKxVwLgKOgV2tarigl7JlrnW98
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=QplFjFgW;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=YItzt9jB;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On 24/03/2024 23:54, Christoph Hellwig wrote:

/s/max_user_setors/max_user_sectors/

> We already cap down the actual max_sectors to the max of the hardware
> and user limit, so don't reject the configuration.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: John Garry <john.g.garry@oracle.com>

> ---
>   block/blk-settings.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/block/blk-settings.c b/block/blk-settings.c
> index 3c7d8d638ab59d..cdbaef159c4bc3 100644
> --- a/block/blk-settings.c
> +++ b/block/blk-settings.c
> @@ -146,8 +146,7 @@ static int blk_validate_limits(struct queue_limits *lim)
>   	max_hw_sectors = min_not_zero(lim->max_hw_sectors,
>   				lim->max_dev_sectors);
>   	if (lim->max_user_sectors) {
> -		if (lim->max_user_sectors > max_hw_sectors ||
> -		    lim->max_user_sectors < PAGE_SIZE / SECTOR_SIZE)
> +		if (lim->max_user_sectors < PAGE_SIZE / SECTOR_SIZE)
>   			return -EINVAL;
>   		lim->max_sectors = min(max_hw_sectors, lim->max_user_sectors);
>   	} else {

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/515ae87e-745c-42b8-8e1d-2697bf343c01%40oracle.com.
