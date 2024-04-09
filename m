Return-Path: <usb-storage+bncBAABBHFW2WYAMGQE5GEZ2FA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 4007589DE54
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:34 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-22e05764068sf4805242fac.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:34 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675613; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnLcu7MXROnSDUX9ZMA0GitSVaUv6g7a06DqDk9ErBhm3RPQtncEeupbv0TY4+z1Rn
         1IArRvkM7DBq1rhoevm78Bw/6WIy/tJpaAn4ilA0qIioU1GzY7YSili4AVcBPQ3rG2Bo
         RnujHmNNpiSaPHO4hburKRq9cgRz0pe7Nr9ItbP8ySVYQqniJumiNarUkd/jaFHYHO7k
         WE6hRVOEWEUQRWQ0VWkcQOLxSlcBmysNENL1ICMdNhBy7X/4bsX3unuF4p7hRJwLHMLw
         tZiUlbUp/jeCTfbNfgN1Iydx+t2TY3X6jEZZtSk1rlh7IUUDwK30tkaE0z8OeDaf1ioC
         S2Qw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=h8bkHTJDRJwGtqOEKqQfq1NlMNSvSTLlVX09QzVks5w=;
        fh=A/8nXAFl5U5dZHKJAam7ZtrgrN5D7NDDioQBiJPEZ8g=;
        b=sT6ejC1s+2vt1dkCkmaa7vZ3lpH+1Q0XpXq6V9xwvTQcYzkRaETYTaZ/taAZy/bzL0
         s+26cN6bDeeXIPaotMClOJwn5URLaXzPWfG+6SwLKaxjy6D0FoMs9v8SWMNC8bhREdM1
         XsqNxMkUf5jeIV/sqBgRGkkBlg/EB9J6v+1XklOYW03yJcm6U9ZKi/EUlBl3Q/nFsyyr
         wEK9gqyuqgk8bJpkkIk1i+AvxX9fEJrfD3W94tv9LAdd8mAGSEwcSXLFtFpjfkIDmoQ1
         gdAJjZsW4iFSL6URTRCVCzpEUyXxfvADQ9PgzADp6yQQtNQ9zjJ0zw/beXJ6Uc8knzZN
         Gnmw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=YZjWuSAo;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=LwoILs11;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675613; x=1713280413; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h8bkHTJDRJwGtqOEKqQfq1NlMNSvSTLlVX09QzVks5w=;
        b=jtAeaHjhBqcRCCouTWj3xlYA+0f2/6oacxmpTNse14cG0rcWOLOfa3yzigvryWOvMO
         Ht+34XGQjQyTaLumh/9+t2WXoMiGvjXCsF1G1IdXFsaT9ntdLh1GLXA4yWJZfJiV/GgE
         2ywnY923LBRPnUW7xz8SFDlRuZ5IJkrKoYUFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675613; x=1713280413;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h8bkHTJDRJwGtqOEKqQfq1NlMNSvSTLlVX09QzVks5w=;
        b=MfklICZPOOKKtU9vBQ6HV7WFBRFez/jhyB+bAiyIp4ufNFwJsKgZyHR5hSM0/T2ZUa
         Gf+K7sB3aEQ5YE1cLBLUXNDDB9oWBfW6QjfBiKi1a70XKO5m1g1o7PHLZKd4rBmyB1AN
         6kOvlnHV1Q2fJvM/4ordmE32xNBx7jnXFeUOigzGYjr75wDJLkPRm8RB3Ne2MvDmU9qO
         4i1I8WbFTvKAwJCATnfhXKW4pABwXz2HaTko3vJPJJT6cJEzrgpAr6N4mZ7vWexXlNCw
         Xm3BTX9JzSWCPT80IwfmQERTA7CC0AZsphY9rtnVOIN5kLSKiyPGNMIrjzY6moyC/GZT
         pFQg==
X-Forwarded-Encrypted: i=3; AJvYcCWZ/PJTO+4m+NfKaoshoagO4gK3OZ6nCJgOnU1JC8bVZ250xcsqkxwJPKG4Ct62a1vcriAolaNE3uX83OrRX1h3fjSpIVT629tk
X-Gm-Message-State: AOJu0YyXIbsifqR4UmiaS8hasH8OkdL7a7pHzFrbsyL/kiFTSiPE/hvw
	nWfnneDo5tnC7eGSYpsehwNH3e7e2/N8ynpwB8fSp607xNKp1C60GQyUcSLvv20=
X-Google-Smtp-Source: AGHT+IELvaUqdg810kS86n/hf7n1mwEFr1JH4/geCUp7wEUZUTOpM1mX4aoOSxdVAIoPx07FRvFmbA==
X-Received: by 2002:a05:6870:a54e:b0:220:8cca:b632 with SMTP id p14-20020a056870a54e00b002208ccab632mr14501404oal.17.1712675612809;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:bb0f:b0:22f:2789:5396 with SMTP id
 nw15-20020a056870bb0f00b0022f27895396ls2688743oab.0.-pod-prod-02-us; Tue, 09
 Apr 2024 08:13:32 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXldSYdKxFSjTY2GmNdhu6qNOrydqgDrbe4RN0ox5WWyXn+r6fILbRcEpPF4lBm0/fEjhdqHiJ798cxW7xHsTI+2IWXdKKvheQwwcsx3AU+rAlWVsg=
X-Received: by 2002:a05:6808:190e:b0:3c4:ecf3:f8d6 with SMTP id bf14-20020a056808190e00b003c4ecf3f8d6mr39092oib.11.1712675612439;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
Received: by 2002:a05:6808:1514:b0:3c5:fff5:115f with SMTP id 5614622812f47-3c5fff51c90msb6e;
        Tue, 9 Apr 2024 08:10:12 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX2ohDZiqHoJcVJKaLR5SIPgRUbLmwSpAKhofjURSoVnyjYPxK8llA3I5o8Ih5T7ZokcwDx3/1Gk5Tq5f4FTNbc7xJh/qvP+3jYbsV/MFUYZkOMHp0=
X-Received: by 2002:a05:6a20:970e:b0:1a7:7f52:81c with SMTP id hr14-20020a056a20970e00b001a77f52081cmr84222pzc.45.1712675411435;
        Tue, 09 Apr 2024 08:10:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675411; cv=pass;
        d=google.com; s=arc-20160816;
        b=XP7UjepScSHpr75hnGLjqc5R7fnBZaBgtgOU2FmcAQCmwQiKNj1eUlhnFO4BTA7MyN
         Y4wy5B3fx5eyu8ige3+9l2o185MgUYMIFioh/6UVSobqMJrYdnN8B1QPJqfjOKC+JJMb
         HzqxdICsGLN3Zimddqy34aKZe1DRO1Ujjpv6jzcLUfeOAs7V1xlFp6j0TNCMrF73fS3C
         k+el4TX6bDgrOv9PIa/JoU5i5oQm3eH+3RTr52lkZEobdVH/Ane8U9Hjw3iw37hQECza
         C5yl4AoPkpiQQaVQMzPcHrmUUVqPACpkX1lcJ+OxwcSH6noQGrsmEGJW8tZks4/1vv3P
         wN6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=PHqbDmscRVDbYBPFBf9QtXpaHkd+DEal0a7oXtzy59nqgbLbVcJzbwIYgMmWbV7dDM
         9+gVH8FapyosYJkYUpKJQ0Xz5MXrP7Kyf3eCIKsJ2kg3nGymDm/PG4A2L+uObCrN306C
         4ZcXlM6LRxgSEr04nIv8C4aVSzswJsZFPfJumUSC8qIRIqlyjBuDnrh414Z/aqA3UpIP
         84VHeU00VJH+bQv8JrZmMIntVgXFXu0er4vgHwAOdFefGFLU0oKTamidf2H0/E3tpH0X
         h8TfGtQiYoOVuTtBtP6yweBvEJMKGGd+BiWw1pE2e1A2wgHhDV+YkkoduXiHMJQHV9i+
         Z+GA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=YZjWuSAo;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=LwoILs11;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com. [68.232.141.245])
        by mx.google.com with ESMTPS id a33-20020a631a21000000b005ce7efd2eb5si8501650pga.266.2024.04.09.08.10.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245 as permitted sender) client-ip=68.232.141.245;
X-CSE-ConnectionGUID: 87gtMWmPRwii6dBvmhFLeg==
X-CSE-MsgGUID: Q2b7m57YSvab4lb/zsLyCg==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13847895"
Received: from mail-bn8nam04lp2041.outbound.protection.outlook.com (HELO NAM04-BN8-obe.outbound.protection.outlook.com) ([104.47.74.41])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:10:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=anzAVAul+tH8lipuJalt5tyXLugU0FOp6wkz3EDxRJlo77Qh3wAeseNWVg7XUXcdoTX5Di4SYyLzlm84mb4kgcz0sE0ieFje9AdzXPznEPsaPbvjA2zYuFAniiDEvMbn903gh7A6Lq+pXRHV5Co9APN0FGRSTz9eA4lbK4LdV7eGqll+F8kruEQqxNvKGwI/PIwe/aQQeZ2U8pdoEECbDVPOlbpx4JDI6aFZF9ZIz1ajkH3FppHYZJB29Mrk9miOBam94c+CMKCfoCs6kkmPirOULwtASPAZoiZBMW3LO1503IiXG1SWSS9esdAzNVkIoiDFWG0t6m1k6IS0TbYP0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=Hy3EWnGwRaKzD6sHZDyaei/FkifHIg1zwwQ2xeMM469hDutbYJ8VDWXvkZ7IdbPyCnMT9oTqv0YSBQUrb4ix8PnGufVGX959Y1oYe5E6dnUbGK4Dmv6AeOB7TsYcGaEJAWZI/I6bXPzoeubQuyYSX418CpUuD0m4LiQndLvvf4molIGampsrQC4SP10MA2iv86vwb0kXOrC61JYQwZA/Gmo3JzKWhKcMPOGCYUkValxQDK+FQoljZaTlJi4Z4g2oqnHTUq49/vxrYn5G0s864UCMaOr8neiqT08xvlhMWdZQSvL/WF6Gr1SJut+jtWTcUn5Vq3LG20FKpLqQJlSdVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CH2PR04MB6760.namprd04.prod.outlook.com (2603:10b6:610:91::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.54; Tue, 9 Apr
 2024 15:10:02 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:10:02 +0000
From: "'Johannes Thumshirn' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, "Martin K.
 Petersen" <martin.petersen@oracle.com>
CC: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>, Sathya Prakash
	<sathya.prakash@broadcom.com>, Sreekanth Reddy
	<sreekanth.reddy@broadcom.com>, Suganath Prabu Subramani
	<suganath-prabu.subramani@broadcom.com>, "Juergen E. Fischer"
	<fischer@norbit.de>, Xiang Chen <chenxiang66@hisilicon.com>, HighPoint Linux
 Team <linux@highpoint-tech.com>, Tyrel Datwyler <tyreld@linux.ibm.com>, Brian
 King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>, John Garry
	<john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>, Kashyap Desai
	<kashyap.desai@broadcom.com>, Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>, Chandrakanth patil
	<chandrakanth.patil@broadcom.com>, Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>, "GR-QLogic-Storage-Upstream@marvell.com"
	<GR-QLogic-Storage-Upstream@marvell.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Alim Akhtar <alim.akhtar@samsung.com>, Avri
 Altman <Avri.Altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>, Alan Stern
	<stern@rowland.harvard.edu>, "linux-block@vger.kernel.org"
	<linux-block@vger.kernel.org>, "linux-ide@vger.kernel.org"
	<linux-ide@vger.kernel.org>, "linux1394-devel@lists.sourceforge.net"
	<linux1394-devel@lists.sourceforge.net>, "MPT-FusionLinux.pdl@broadcom.com"
	<MPT-FusionLinux.pdl@broadcom.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "megaraidlinux.pdl@broadcom.com"
	<megaraidlinux.pdl@broadcom.com>, "mpi3mr-linuxdrv.pdl@broadcom.com"
	<mpi3mr-linuxdrv.pdl@broadcom.com>, "linux-samsung-soc@vger.kernel.org"
	<linux-samsung-soc@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Thread-Topic: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Thread-Index: AQHaiou9hixgiqnxDUWiKCglhteZTLFgCuYA
Date: Tue, 9 Apr 2024 15:10:02 +0000
Message-ID: <cef8b379-bbd6-4e9b-b83e-625b20bb0b83@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-7-hch@lst.de>
In-Reply-To: <20240409143748.980206-7-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|CH2PR04MB6760:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fsWNNjNZYna+9QvUJaKqpV3yMgzSATZSwfhwG4q+5AqvS3Ol/OlzfaGd/+M8oUsYJEYpb6PKU9OKQUg/F2kN5Qc74HZacfcuBCtoc7aUtyfTV0ZQtxuUYkOwTmQB08HFl6e26GAHrZl9qftWXhzCQQ8zu6JtGw1q1LB5ve63AtM+6Vy9DXzBTtLYkonrfTwet5hj1DAlRnCZGMWh6bywUvtQggP6J52DRwZ1EbzYUo1pxeqqKoAJ4bglHE1D5gqKNpf/AH1rg9DnUMzWTchGLXjCGoZoY9NqWvMCcxTKe565mKtHpqVQ/2Zm624+roSUm01YaU6e2WSw5+gMZv/hxJvpL7cYe85wYGTVLFDk2Hu8BNepAkZVyq32DLVZgPgr6scyrBAD5KHjZx3mhhj9HP72FE3EfdDg0DOoWREM3LzCxBI/yBTqZYUcsWXPBc6HO7vYElbtllyNvNuK5NPMAwTeVLgAjHdS9vwdtBlnfsKhE8aFSFRRUpGvtoIMjBZcwMi/RMzhjG3shTrlU7H1+hUrAANVElCHpcR524FLoQU9CK09uwnmNzUSt9bw+6YzHqNSw/uyY8Wu3Y1y28+QCcVf+8hnbkLGwq7rjmzkh/nqEISZvsLyopaTo8sCLlWJilMgtdX244+2TIaE1rm0cPPCm+z7CZLgEwk2PtM9YF0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UGRFN3RnY3cvT3VlTHpKMnFDUjB3NVJacmI3ZHZFcG9ld1NrWWpkOFREY2VG?=
 =?utf-8?B?NXMrcitSanFqQ1hLTGVKcFhsd3hIOVhreUVaMURJQmF4eUtPcjc4Qjl4L0gv?=
 =?utf-8?B?cHpVZnlFZlk4ZU05WUFVK0ZpSytrTzBBWFBxbmo4QmRQVDd4VGhyRDk0NG9z?=
 =?utf-8?B?eHVYMy8wUG1zTnVRVmlGRzc5Z1E4SStIdEJaa1FYbERWRUtxcndjSXRWQ3lm?=
 =?utf-8?B?NlJzeS9Sd00zSFBYbkd5UTJXMXN3ZEIreHJwdVM3Q2RqeWtnWWxmSkhkWmlx?=
 =?utf-8?B?ZVJaVFRWUGlwRjVvTEp2OGV5RHNtSHBDakVJTHdaT0ZBam1OZDhPWTV4UkI3?=
 =?utf-8?B?ZFF4TXFnckRTUnNEcDdvdFdnR0lzZnJmNlNobVo5bEFxdGdpR21TY1BvcHRa?=
 =?utf-8?B?SEVINnhieEVBZTVSQWE2U05yZis1YU96MUtHb0piNzVscXBPeWtYd2VpT01Z?=
 =?utf-8?B?QU5yVC9HbkU0VmhobWluUHUzWDRWSVBBSzNaZ0ZXZms3eHhSOTYzQWJzY1dx?=
 =?utf-8?B?VVVBSEdUUUlvOStyL1ZnRENXZnZ4MEVJQm1VNThnS01ZNTNZRE9GM3FMNDA4?=
 =?utf-8?B?d2YvOWxTTXJTZnlHaHoyelRCRm5HNTZNRE16cHVEOGRFYnQ2dlplUFd2ZzFF?=
 =?utf-8?B?K0VBdDBVQVRYWVU4UE5Ta2FaR1d0Tkx6S0pNVWlCYVA1bGZoQWlzWHN0c1ZG?=
 =?utf-8?B?a3dXY2tLTWtsU3pOaG9wMnVaVk9FZkJTeDJ5OWZ4VG5ZN3cvbVNrS3BvOWxh?=
 =?utf-8?B?aGtLSDJJcWt4STFIVDZpN2xyWktjTFRNRmVONi9KaUF4YnRIeHd6bXd4b2R3?=
 =?utf-8?B?dFpaZ3BnS3l5QXEyYmdUT1JlZXo5TVhwOTdISFlOSE52UkFWeEJWNkFjUkF1?=
 =?utf-8?B?emRnUE1udWtmVTVPOEZSNHBjZ0VYTWlvRzRqcnhZckVSWi9abGkvK2tTSjBN?=
 =?utf-8?B?bkpQK01ieTdjV2pHMFVQb002aTY1WU14eVE4a2k1VXF4RFBuYWtscHNMSWZY?=
 =?utf-8?B?aUlRWUVnamR3a1RodkFKa0k5Z1NKa0FZdGVhSE5OQlFBTTgwMHRCcGpRbTNC?=
 =?utf-8?B?Q1ZvdFA5RWNGWTMrdTAvOEgwTjYreXJYVzg1MjlhODFRYUJyL3k0RWg2QlFL?=
 =?utf-8?B?dC9qZnRad1JSZlQ0YXQyODY2aithMll2RXl2WDMxZDNRL3NCd0lnL0R6c3JG?=
 =?utf-8?B?cjNMUWNxaTRITmVkT3BHYWVhb1NrK2hXVDduRi9BVk5Dc1JVTmI5WW51U2JO?=
 =?utf-8?B?UGlvU0l3QXd5T3QvZXNYRFZKTXEvazNGYmFuY1d2YVlvNGNHb1VRMi9scnZM?=
 =?utf-8?B?UGp3N29LVzMrQy9HN3BEclNsaERRblhWd2dTZDFlaTM0MlhRV1Y1UHFhZkVK?=
 =?utf-8?B?VUxXV0U4aEc2UDU1NVE2c0FFUExxZFpHZWNhd292eXBvM0ZLWFQ1Y20wdmt6?=
 =?utf-8?B?V0NLRzY0VnRNaGdVYmlSQkNkRGFkUlVpcEt6cGtONXp0Z3BtbGVQRFBsMFdB?=
 =?utf-8?B?THlLbWlYc2V4Ym9SNXg3Q0dJQzJ5SXdEQVd0TzRKUWN2L0xRck93UFQwNFB5?=
 =?utf-8?B?MGgxdGJBaFJHaVN5L2FmbE02djkwY3ZrYjdhYjd1NWNiY0JWRmNxSzBiNUpR?=
 =?utf-8?B?czNINm9XWTE4UWIvRWVDYTRHUHpOUmZDTUUwdFRRZGNSc0NwdjhiTTMwWEtk?=
 =?utf-8?B?T3FvZEJMd3loK3NZaEFmb0hKcmpndTNKaHJ4KzhDRXhUN0pUOGlVQmpCR0tL?=
 =?utf-8?B?d0w2d095RGZaeDVOVzdCOWh1K0t0dzFVdThmUXRnaVArSmxCMTFacGdXSG56?=
 =?utf-8?B?Q2oxSVNseEY5eTM0OHJvUVVlZmN5eW9rTVZuR3cvMUU3NmtnK1NuRUtLWnJr?=
 =?utf-8?B?NnVWWm1xSGhmZWVMbm9RV0o2MU9RYU9wK3hoc2ttNXBJSEp5M3hrajlPUUo1?=
 =?utf-8?B?WTdqa0Irc0pMdW9SYnpRbHNMUk5Bc3FCSUhrNEdEcjBsSENYQUszSEFJK3B5?=
 =?utf-8?B?NXphTkdLQ3RKV0hza256cnhUZi9DalgzTEFlQjFjbDdTOFp2RDdlYzY0NU14?=
 =?utf-8?B?QkwwWlpSWkp2MVppT1U2NThXY0VsT0t3QXhxQmdwckdpdy9YUnZjOVhJWmNF?=
 =?utf-8?B?cHJVbnFvVE9RWmVQMlk2NDR2OXlmOG9zWU53TjJkTXlrczBOMFBnWE90czdL?=
 =?utf-8?B?RTJpcEtTaUduSm02QVJwRTg4RVZRTjk4WFFhS1YyYlVtVkphSVl0bEc5RHpq?=
 =?utf-8?B?UnlHNHF0MHdTVzlSUHF3THBzV2NRPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <571DD9E5884E214283D8C1E88EBAF7EF@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wb8F/k6AbZ6hWZj6baoi3/R7YmJbPUXBm/QyTh/Bvhqj+n1IqOqmli+WdKvdo0H70HMsd0+b3itby67AEngwNX+B9o3UfxiNHFJhJz3b40GIKF1+qDJMTgHIdHvC5qfM258qGo1/egp4WMfcQ1cb98fOAs62mmUKCyVGGo/kRDlXrXVZIibTSCeG9xrl9SnT2s3ZgPVfvTRwq/BJSBihXvQ4Em0wDZrmMaE1SR7IF0WNfteb68BbcjvxFh2fBfWhC3IaaWki4jxp1ZRC7FwPCbUe6jJw/EZv2L+BsY2CrBXrLw9IUreQEaRLGSQlteH0B9EYP7hUmQwMMw6obti3LwLd0iQaTNFLXDnwxuWH14KPlmY+W2SibWb87ZjC/IpoJf/BumufpNPESa1yWfdUOyhUcSjLGSXDWVAGenPUNLFMzZecU4AUIdD0FnibuNqBwRaQi7LUoNvReDzpbUsryLWPi/qRgdVOUMrbtfOIhvdsu3LNBPYZenJ6EbbgAqkRE2qKhFKL9LYO0DbxAoEs+2wPXPfu3MpMZkVq9TK2V6YMz6vT1ZnAnwq7vYFQRPxs2KEFMo4iiMzdi1pC1kg5kSVaC52+umoVG4G4S8AdhkpJpUaZ8TVs/1iX75CPaorO
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07fa555f-9d3a-4be2-51c7-08dc58a72189
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:10:02.5116
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQZuLpWORdD+ZVDHF2F9XBcCk21PySu+MhSjAw+5WwuvzRXJDOFxxI5ig2LkINATMcTkLdFur1z6l30kCYPuPaUK5j188x3ZUKh7U2s6qXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6760
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=YZjWuSAo;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=LwoILs11;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245
 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
X-Original-From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Reply-To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
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

Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cef8b379-bbd6-4e9b-b83e-625b20bb0b83%40wdc.com.
