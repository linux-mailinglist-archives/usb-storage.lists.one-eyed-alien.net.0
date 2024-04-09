Return-Path: <usb-storage+bncBAABBHFW2WYAMGQE5GEZ2FA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BB289DE53
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:34 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5aa338a43c8sf1559294eaf.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675613; cv=pass;
        d=google.com; s=arc-20160816;
        b=dKELL4kueNhvgtZ3kQVXE9GMNBGngCwBym5/e/NQnwTQB5NpgeROFcd0lfE106+JUb
         VSO+rFvW2sAJPvgTHI/CXMp7kcwpZnnKVn7zZsRxcC/kpTwS6csDAWMr3OZd47KKREWW
         cjpTEnyQZPr37a/JqtkJ8Hc4nVh3zh6Wms32fi9L1ypxYN5QLTCgdGp/JrIY1ri1vgY0
         g+fGKptPDEdGbbZXWX2X6nbeiDiRnAFcOan238/fLZdgw7tBNOhV5dmMOB7gsDn7nJXy
         wLGw+souWDpBiq/m3M/Irkd80clVENm6mDkokmE0iUEwsN+lnUJdh5OLp7psyLCKqbdk
         Gniw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=6IuKXThR86Qv5EZIAM7d7zXEJw2mdTC8Unh9ODB+oA4=;
        fh=nXBnTdOqyQC2hQV1z8VluH6ERGanRyGZjp6niJzfYGQ=;
        b=bC0V2vPpJDXJbDqf+N8yjO1iif+LP4a8d9U97WMXBkZf3PaXWifp/iGn7NqJs1rSaB
         +a9mI44TjH5+GRqbIaJVxwRmgPBD75xIgY5dn8M9u965aAiGwbOhHurRDTO3TnCgej8Z
         ZijoPZ2HBrO7vXHYUrEf4T5TxgIfV5me3Gt0NDK+Na70pOanrZFehMi0CGOygG5vft9g
         Is1IUxpizkbXh706Wk7YnwtM0rcAZw2PpLIjJ7ulK1J2VujGawJiXy7hqY3jobcksslm
         paPrWuAkO5ftklDOmKCbQMe5Xs1RvuAJesJ0jCMn8B7cXsUBVLI3968IoOTl6vIcJpwh
         Y38Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=EGpchq8M;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=NqtbJQ6a;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
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
        bh=6IuKXThR86Qv5EZIAM7d7zXEJw2mdTC8Unh9ODB+oA4=;
        b=e5bpRxhjoWl1e6YLVXimL5zqrCjoCW8WAQMXZp7i8LawlTeP6wtIfzn7N1ifc0stCk
         MhZwlcWgTyX8u9uEAmBvOJs4IXtmWd8CiOtXAIWbWuFwidf42seH+NJEeqHkZz7BTf6p
         2BrdRSO0eOsRJHQr5WuNgXdN7MMI1a3tPy+5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675613; x=1713280413;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6IuKXThR86Qv5EZIAM7d7zXEJw2mdTC8Unh9ODB+oA4=;
        b=T7zRvMyWLOcYlxPKzP9Cb2XKQIyIVUaEJcGYmOHkNYrimbp/Y5BwQzKcs3Jk40rMQ7
         P2hMTqmxt05mNHwAczlq6DMgbMDaOacM4MJai8ixfd290YxEgwIDL66LFY5K9Qlk6Jzs
         jqDsfaLD1mCD4qlaAzpZxyZLYMQ/M2DT6Dohq+LrruFn7uBY1NKgA9o9FjBEg5YslL6U
         1CX3xTOqRqQtIJ9j5BfiYd4xD+lJf745xAf73jfy9CyoZO4ePfCidbr8owGCF+woYDdd
         65xiV3aqOREowSSII1R7sudT/kP2wZdnMuECR4Lhg/qwDCh1aa7jX4qq6tkB+9t3VcBW
         dzVw==
X-Forwarded-Encrypted: i=3; AJvYcCXFog5LW578wf63jmi+JpYoZlUrqIP6K1fN5ZEIt1anrUGTYhr+aCv3YB7SOyd0+gZshbbLqg9VvUY9loSoWOzG4m1MWJtkve0j
X-Gm-Message-State: AOJu0YyYD+esvI1cSpdDCmIbZdsb9KIejYxgaweaX5GNgBCpcMEjPScZ
	wh1YrLJXUrPBW6fdBaqVFTpHmED0C3I94Qh4A2OF78x3c4wr3rtxwD/U68JDkUk=
X-Google-Smtp-Source: AGHT+IHYz9TRi6EGwHYg5sTGJ7g8d/+TkYTn96mRx+DGHRdOog86+xI4hYJAuBwIdTSM5/C8OgMDcg==
X-Received: by 2002:a05:6820:1b11:b0:5aa:48cc:ed37 with SMTP id bv17-20020a0568201b1100b005aa48cced37mr144514oob.8.1712675612892;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:ac4d:0:b0:5a9:f656:f134 with SMTP id q13-20020a4aac4d000000b005a9f656f134ls4119763oon.2.-pod-prod-07-us;
 Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXv6c3l3tV+uNFwZJ8T68c6IrcOaqytmsQyXNZjNH6765194pK1NwkDdYbBtF8Zsfd6HHlnjXhoSxFyfRlIQWItQwib8OI1lG5gwIGEIJQhPQjr534=
X-Received: by 2002:a05:6820:1c8b:b0:5aa:2a47:ed71 with SMTP id ct11-20020a0568201c8b00b005aa2a47ed71mr6593oob.1.1712675612429;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
Received: by 2002:a05:6808:210f:b0:3c5:ec15:3656 with SMTP id 5614622812f47-3c5ec1538e1msb6e;
        Tue, 9 Apr 2024 08:11:03 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVMf+r2zDcETTWdDAYNRB1EBn6i2UXkvjt5rTUoRq8/Y0kYN5X8/WNhHXHvr/9e9UwHUuTD5XOKDxoQ+jvJGU6p8FaY7YMbOcNg9leZqeT/Erw0Ff4=
X-Received: by 2002:a05:6e02:1a01:b0:368:9ba9:fcb5 with SMTP id s1-20020a056e021a0100b003689ba9fcb5mr159601ild.4.1712675463232;
        Tue, 09 Apr 2024 08:11:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675463; cv=pass;
        d=google.com; s=arc-20160816;
        b=xBEnBGYh2tkpA5lk5nOPl1TvU+bljJBNyzatMrB+dZIjuq/X7G/vcYCgHp3TfhmF/e
         borU1j5zDHSXZz9d4CNDZNFWejKqKe7a+LorUqRXqmWFBJTUOfWynoJASz+FYhzGsJto
         okCbgd/7nYVKF5l+SiBvXJmScIZS4sdzHPPufGhhaP2phFN74qVYeY6Qvqj3kmncaAPz
         QpHrSJ5hQzwpTglFM/E/NShfwsd8KLD2Vy0eL+E8A8xRLUDLAH8QXezGc+PIy2ZHtpkH
         L05fVWKa0z2mhV0OY55kOfVGCIjs7csWLWKZGwm+2tldkOjbv/KJGOK32+nGSoo8ffOI
         xDZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=j5BDusElGkPc+nIMgLCQi1C2UpXpdljya4r1lOJXiGbdu9SGplNKaa6og61yGsVa1L
         8aGRcAoei2fm7oUdp4mG0hUJaUWAFbiiT2imaSmSTmJtEI/BUw5ALne0OfAGOaqm/JRY
         z58tymtGFR3CueOG/ZNVwbmPg3wb717NU9MJ+Tcj3hUCw9KrxSMjR8pNmR4xe4e6+UrN
         1f7OwL3TzgjuQHcuhSrW2nRZlcebx1H8rQJtkfYVAkN+GHxNO61EKEa9yxg5+F10yZTB
         6g/QSkXFY/EdUZWT6meY4RlDx5HCubQxufMperKdzKVGAoZkjyH8ZbLSkSdxzTjID02e
         pCQQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=EGpchq8M;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=NqtbJQ6a;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com. [216.71.153.144])
        by mx.google.com with ESMTPS id s9-20020a632c09000000b005e438e94d35si8630122pgs.2.2024.04.09.08.11.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.144 as permitted sender) client-ip=216.71.153.144;
X-CSE-ConnectionGUID: RMVK7MDTQnuMz97ViuNVeQ==
X-CSE-MsgGUID: 6G+kv5nMRguir7/3/tgkdA==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="14283804"
Received: from mail-bn8nam11lp2173.outbound.protection.outlook.com (HELO NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.173])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:10:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HwVKKvytgc9XmuThSwalDqCSoZFehA5F57LV5PXvgZXSvnhrKnDfFCtx6/insI0l5gK8lT9JzrhhxtQWu1XBanATALrYhJKG4BGEXbwpILkw9BiE9xfhULEWOsV7mFOILC4kOc9IpAWjvf5Dv1buyVRsIG6HpWtqry96L3s7PGl6qnKSm88A6SIjxo7Ao+7WT3IaIeOTg9LFjgczBYUnxD6CgqTR4VMcauNLxjQ7I3tJUlnBLHv6SQIys1q3wSfXrc/brlb01TzosuIz1jXu5mc8XOv3TpMOOOoJ8ZWWj9j+op71X5yI5K4FI1vf5vjVEn3TH9diUr/estoZ/bgQQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=m6TF2ZZ49eoo9gCW1TXxgUonshdYD53TVcDg7y0XY3TJhNOKTVjnjgic0Z/wxleLsyhlH7s+gQkjATKKcCjAWag1DK5Fi+FEndZamNk1uSHwYES18qrJYgmgMW6foIfue0mDSU6qUF6uLJnKMOXbgbs2Qf4ZLr1T2jsE6rDDFHuEvN1cc2kWXbGFvSQBirtWlqnC4wLYAiOegEIKlzdjaPWZoE+GDCLdRfOoqikope32Ao9jL8LlwYynSSdHvBUZPk54GvH4CWkR8Fr85Ms/Qa9Q3rvHW08u0P7iV49CPc2phDIGmoMRrgAnGyzjQ1dQlsRSNOWFxQDUPKjmPSoqHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CH2PR04MB6760.namprd04.prod.outlook.com (2603:10b6:610:91::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.54; Tue, 9 Apr
 2024 15:10:52 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:10:52 +0000
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
Subject: [usb-storage] Re: [PATCH 07/23] scsi: add a dma_alignment field to
 the host and host template
Thread-Topic: [PATCH 07/23] scsi: add a dma_alignment field to the host and
 host template
Thread-Index: AQHaiovAPJdGlWFvDkCKjeMUQhIPyrFgCyEA
Date: Tue, 9 Apr 2024 15:10:52 +0000
Message-ID: <ef2c4e22-5650-4ac6-94fe-dbf213bfa4ab@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-8-hch@lst.de>
In-Reply-To: <20240409143748.980206-8-hch@lst.de>
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
x-microsoft-antispam-message-info: 6Lkh6HSfUKa1cOLMZpbZ+rL5jX+FzehOuix6mDtj8qHiJq15gDUrgJJfX4sHS1cCao3/SAeJTxpKmTHmROvLURjm0/AZVzmJcOJ0hJPHzaZww9WPXsM61fnI84J23nprGBxSkBXsuP626uw0kJqLCA6b/abUkuhM/lODhkCs9gUPv6blhpmRJpZOaB1/oOqDBaHiBCkXAljc2t5IqR7ofTSOU/iIN85m7l1R41537s/ZpvCo/PMxQ8aYxsI+sXs/1RXZ++txBaDBUmuA0XjKFLUjPsNqiynQrDDDFh8/zTwjOJG2Swky2pn9GhlDJGf4/j09xFypuLvYPtyHdlNRQJZMF88lrK6hu8hszPmHIbE3gjrj2YTn2j0EdNOcO7RGZFZeNwxiXcmVAa2Xsm3ORI37+gy2OCCl0UFN+MmSXUYL2K/hQDNAcOHKG+IIh+tD4WqJberfsv+yqsD/GKm7ig25jT7ZdHNEgBF5kORxUuPKHaC+wfFGM/Lei7WXuyZwfocdXxFHOz2yHohv+wkCRimtDUuhIh8iRaTRDkWTHOiYNE5LrfU7kUcLKeYC19zEWf2O9nh+eoDyR1A6cvy6KosCAX1c4/5eQGdrS+5ulRqHkqVwJ+L3uaxh8VTemlK28JmB93rpMQhkcrZ0kp54QS2xtn6uyS/EVYgqK+ZLf68=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZFNaUjNYTXBxSWxMN3E3MTh3c2pvaitGbU5uS0VjMkcvN2R3NW5mUUhZeTlZ?=
 =?utf-8?B?NXlQYVU2Z2lFdjBsTytPdHVYQWFDYTA2b0svRUo1VUgyNW9qY0VNVW5SeCs1?=
 =?utf-8?B?UnlrSVlxOVMyOFZlK2hjV1d5RmVadXJkdytTRmxwcDNYTENndS82VmYyeCtL?=
 =?utf-8?B?d3d3K2oyRHhMV3IwcjN6WStQa3ByT1pFdTM0aDJLSEd0bUtTZCt3WVdRRE1X?=
 =?utf-8?B?d2d6OHVGakxYNXUvMm1xNU5UeWovbUMzK0dyQmF6VGx1aUIrcFJVditjV0d1?=
 =?utf-8?B?YjQ3MFZSSVRoUlJZOHE2TkNiUWN1NnJIWEJFMjBML0FRTzRnR2Z1cm1PUTNu?=
 =?utf-8?B?dTlTaUwzRnJ1cUVxNm8xZndZV2t1YjI4L25tQmY4aHVNdFEvWU9hbDJRbHF5?=
 =?utf-8?B?a0dBNGRSR2ZLbjVydSs1S2c2czNLbzFmQmY3blZMSUhzTC9ra0lKV3hVajRv?=
 =?utf-8?B?QnR2Y3BkcUhMSjk2UC8raGxvTktQTWtXNkFSR2d2ZHZqekF5M0VjQUo3TGdQ?=
 =?utf-8?B?blF4eGJxQVcraEVORUxYc09oTDVUd1VTTTBzRCtJVXpZS1JzQjd4cWZPNS9O?=
 =?utf-8?B?MkdNMWxiaSt2OEVwNjJPNzJIeDgwcTcrb3N4Mkp2RTNON1lVdmIzWXlCZlhR?=
 =?utf-8?B?M2l6Qzlib1owNUJmWVl3VVRWc05YM1dKWU9VMlMwZEVYdkJXaExOVUZJTCtT?=
 =?utf-8?B?cXpIR2lyODUwT3E5NDVhQ3BBaUt4VE1La0N3THkzNnpmNmE4NXlXT2o1cWhr?=
 =?utf-8?B?TmVQRjZGc2svZk5YWCtXbnZpM3dmV2NQa2lya3FsYzZXMVkxQnluTjlPOXhl?=
 =?utf-8?B?VHk2YnQ4S3NyTGlxZ2ZGa1RYV1JVMUt1cTdKSGtWMUJWUG5VTmdaU2pDOEpl?=
 =?utf-8?B?OFBGNlhjbGJtR2J0N3orY3d5STJmNCt4akpLZDdmYlBRTnhQUEFxbEJCQS9u?=
 =?utf-8?B?ZU5kMWIvUUNUZFB3NGJYNFRkNHcyVjdrN2FTVzlsSE9wUFkyK1JRclpXUzdB?=
 =?utf-8?B?aXhnNmsvcnhpZGJ2UWdrRjF0YTZoR1psUmVxQk01ZmJLVFdhYndWUVBRRk5H?=
 =?utf-8?B?dFR6SXpyOHRqaFl1ejNkMUtIK25PSVJ0TEFFNEhNcGkrK0ZDamsxbmlhTE1q?=
 =?utf-8?B?RExQc3BxVVV1b0tZUkhoRUJIVDZ4UDZ0QVlXdWhoQXZ4a0cyYTZNTng3T25a?=
 =?utf-8?B?TUlBRUhldkxmWnV1d2JVNS9QZS8vN1hJTkM2MU9MbTBDR2tLVmV0YUxQblR6?=
 =?utf-8?B?TEdtNXFodnZWTTJRUFJSUkNBVW13SzZWSmZUQTVzQnVkOUU1QTJsdVNDNXI1?=
 =?utf-8?B?ZEJoclJtSHFWMmlHZW5SdHFDb1dQaFBMampzUDBxWEovUzJhL3hZeUJ6VjVi?=
 =?utf-8?B?ZjEyVngvcVdlNlZyaHB2MFBsOGI2cWdQTUpPcE90cEIyd2ZORTh4M0VUWXVl?=
 =?utf-8?B?WTlHTTNsVmloZzNlUmVpVHF2MmhGQUZ5VXNVM2xBWEUvenEzSVVmUzAvN2p6?=
 =?utf-8?B?RTVNeUdRcHFPU29tdExFTTIxNlpiRWpCaXhpN1VFNWFQUXp5K2hYNjhVaTlO?=
 =?utf-8?B?U25Tek4xN1ZLQWlwTjVPcDRSQUU1OUtsT1NTdUY2U2EwalRaeTBSYUtrTVMx?=
 =?utf-8?B?OUR1T21wZSt2VXVLY2l5eUw1K09rVU1YVHl1REdzSlBkMExCL05UUFBJQkhB?=
 =?utf-8?B?eXVyOEFFaHkvZkVGc01wdTNhTTkrOVVIQ2xrNzBaSnZscHdBeUJVVGJQWWcy?=
 =?utf-8?B?TjRpMGNLRm1HOGtKRnUwVkQ2MndEZE9SVmlLc0w1KzB6WStWV0JoVU0xektz?=
 =?utf-8?B?UmowckxGUU1YcVN2RHYzNWtQWWhWcjBkZ1hJdFVjcSszMzU0a08yeU5nNDQ1?=
 =?utf-8?B?bFpDVXVVb0pObDZGamUyOFh3a2lldWhMblBCTE1UUVVrOGZnN3k3K3d2eUlj?=
 =?utf-8?B?amg4Ty94UjVHc0VIcTVDbjZhcTRYb0toVTdBQWhOeml3Q2hHaTI2UDl3NlJa?=
 =?utf-8?B?aTNkcUxsMFZmeVhnajlUZzJjak5CVlRSWjdYejVROVNTWUFTQ09NS1dINVk5?=
 =?utf-8?B?aktjKytvVEVobXNmbWgwVG5uL2E3ZmExNlVSd1A3QVQvWWVIQzB2MWU3cXd1?=
 =?utf-8?B?aGhDVS9DUy9GTis2dHdJaWFXR2trN2w0OWxBeWFLc3pUc1RCcVQrbXFmY3VG?=
 =?utf-8?B?SmF0Q0dTTDdCVEZRWC9raWlSeWhIY0tnUU5vdWdRU0I0anY3aE9EOUpUcDY3?=
 =?utf-8?B?QlRpMVo5L3BTRHBqL0JzZitOQmtBPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <B034ECF22EAEE044B631B62C8FF4DBB2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 4Znr9NZooQ9MwFsDLr7xF/2TWsBWdKX2Rmu/UIjd5fcH2UamgUct2+mnAJPaq5VcbjoNOwPxXz10OMXycj14myooz9SAzRhbd6L0NLCjbF0Crtdz34SMpr2DU87SQuyboyebX5Fa150f+K0+ipRfxlHd/ivUyDkHbGSUHgxeGnui9UhZkIuSNhfPI7xyrdClNcH+gjEXRgMHmzIliDFuqQ+mz8WRnlOdIpKEcmqocs7UUvEgY8X/B3+0tWQ0s0VkVulvLZL4h99lg+m6HN7vKaxtVyX8xr0S8Vqf7dNXhmd28PgIBADdYc4LqPpJSUHonNt5FCCECBK/vCQ6I2NtOp2wdi17pJK8jjibPnV2UZpLS1sDPFhVAh8tuVkze/9UvOJHOGzK250E/We+9JbTun4OMl2R4UNBUN1ej7rTlXFDFk8+dD7R4p1KuzTlhcl3gBq0aMtH/WWWvuIH44DLJCp0K9OoTA0t8lDDvemz/SReQeWvZxojgTwFCptWl+VfRyKMimCS1SaxI6DzoDFRcL4KMn/O8t+FAkf6Teq/+wmQn2GWhh+3LQXEDa4raJCj3KSyo5LQ5azeduUnUVsV6YtTxrFj+avRJiSxRcLwzTdlSYg9+hdPPTK/mr6/XLWC
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 318b2e00-b3b5-4d6d-210b-08dc58a73f5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:10:52.5026
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9r9NFFcppLQ8elTDLmLTm+VeJ5Yc5HdX5q3uI12liv81BQwswtvlW5absxJgCQo2c7VUR6OlRTJQKdyizAoqBFkTKbJo2PZ7ku9dxoQJjVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6760
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=EGpchq8M;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=NqtbJQ6a;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.144
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ef2c4e22-5650-4ac6-94fe-dbf213bfa4ab%40wdc.com.
