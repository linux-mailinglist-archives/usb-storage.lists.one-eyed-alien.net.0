Return-Path: <usb-storage+bncBDW5PLF2TMFBBON42WYAMGQEQLMCNXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 8642189DEF9
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:26:51 +0200 (CEST)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-3c5f996d4e0sf1140016b6e.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:26:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712676410; cv=pass;
        d=google.com; s=arc-20160816;
        b=M49/iugOZgP9ON7eW7kNjjfNvMmS1wRNOl5EHj2ssqMTsoksdIq1pxPvSRy4jRGaFP
         Ut+t/9A5qirAaA4gzYz/Gf8AoVGpYI9dy6Yb2/X9/HlvB7pjKEr8rb7lnXTenLGxe+eA
         r+Spn1FGYn+e57JMCkHLN+57WyPPvvuiCOjKjI4F2ruErPRMqygC01P/TIwHfVvAoxUm
         XDY44uTLygtBSO+fS6b9Z6kIATnerWtmoAkBlIbSlpzm7iyxlDSFfzizJtqlbHHpxZLf
         yntRHlZFTs3jfnvFdLw6ToLCJWIFqgDZb73ousHV/nEyWt0NAdJTOhk+nKMBJz0PUjMc
         eSJA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=7OGAvMkr3ci+LwjYQPyEOHwfdbLXnYtpdSZUgZ34rYA=;
        fh=g19AxG44dLTZ+t0g5QNk5J3xcHn25Q2ak6N7MoJizxk=;
        b=N2qKRyJ2ygv2oxwEnR08I5OPPjr+I3wFA2sjtNF3heHaCO0juSjqgG+WDrrPhzZQfe
         IDNkeZQL7Qhzj1/wHPf9x4qvsTj85Y0ZlzAMix0p4m3OiqYhTSSCYrpEW2Pj/Hp9VfrB
         4T+8+b5csNUP9OqXT/5Qh/Xbvj/rnyuxh1n4pHu/ZetFqJ9UG3Tl27PoiEJiof9pNPUM
         PrI5aKQFgHLzujCaqePNVfMtJ9YYIPpPIogdlbnChXraRqFRw6kjWciDKAf0+GAIxcNu
         szgm8q2YgGbFpiLSuy/aNNmTMLaK7LCoQw6RPHkEjcBLJhj+xxWHi7e/o0qMFgoKXTRh
         fOUA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Kub7QQa9;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=QxetAKDi;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712676410; x=1713281210; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7OGAvMkr3ci+LwjYQPyEOHwfdbLXnYtpdSZUgZ34rYA=;
        b=c96rdVDkfqMUimXrd1kupSzAt3Ub0Yn610ai5EMbSq5teJYQuPAE8SLQPZJvNK7aL2
         3kQ+HU6JZg8ldj/lra42h0GFPx8HSL6emrDpOdOwO5eEnY4nv2ryOUo8qudT2txenW42
         3W8Gqx2E7b2Gk/bQcqL+J4kx/eB7TTU9usA3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712676410; x=1713281210;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7OGAvMkr3ci+LwjYQPyEOHwfdbLXnYtpdSZUgZ34rYA=;
        b=N3hWdcKkjA2ptahtZtbnxFp3Y0YHZwEVTObaUTSpCp5eUb66eMO7C4NpQEN3y/xscd
         506cH0CGEfffD5mRqRlfjmU1ARmsTunMBG2KlRTnL6KlrguI0Umh8LZtfDtGs6knG4tM
         Znno4Pb25JDOcpNW398MzfmnC2bAgk2lssbX3O8kTGTc0HLfAyVtA2dYx4+f01LHeiGS
         3Xovb0pJkJ3X2qU4/CQjagrNTjmxkC8W7/Bprhghor8nPXlWIGak56HVO2IHHCKlU3lY
         rgzqdy3MQtXSlXYRSBBvKYwGpgpTUf4Dc0PuGUL5F81q9O0K7bvq6KSIeCYK6b9RWkmX
         yoiA==
X-Forwarded-Encrypted: i=3; AJvYcCUl0ZODoHhaRfTZw2i+SMY7JfEKBSrzAvZ4IDT/NbWR9stMnaxZoNbJ2UzHgUij+dMb5CxBXspq4pSNB0s7QcS0wUXcHNyUxzoY
X-Gm-Message-State: AOJu0Yx3GEgMNkr44l1DzSaAoOUbKe8kUesX7O0gsQ/G1WTHFsaJEtOS
	690XJRcSz4zdbve3M3R0lCOrxzpJmN9I8Illep4Z+L+5CEApQZXNJpKVu01hims=
X-Google-Smtp-Source: AGHT+IEdfQYMDiOLiUFI7XVXOHwWGaC+qirMoph+v+ySK8tdOepjkvH607O9bLdwlYyuQBsnRL/KPg==
X-Received: by 2002:aca:190b:0:b0:3c5:fb36:845a with SMTP id l11-20020aca190b000000b003c5fb36845amr3515404oii.9.1712676410028;
        Tue, 09 Apr 2024 08:26:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1902:b0:434:cc93:4a99 with SMTP id
 w2-20020a05622a190200b00434cc934a99ls1893035qtc.2.-pod-prod-04-us; Tue, 09
 Apr 2024 08:26:49 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW/lcWna4BvTE9TUpGqYqwPz7DI+7KtUoWAzWbGbgmkE3GsEEqYNUQ1GWDCxJruzWoXNEeTtgu59q/quZLOK6avXkJz4TrI1k33hi2FwUMEvozIwPY=
X-Received: by 2002:a05:622a:13c7:b0:432:f367:ecc6 with SMTP id p7-20020a05622a13c700b00432f367ecc6mr14814532qtk.26.1712676409247;
        Tue, 09 Apr 2024 08:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712676409; cv=pass;
        d=google.com; s=arc-20160816;
        b=KpbonWV3KlaeqawAE8zgMA/4fX2b6X/JY6Hgxrd5RBdG77z7+Gv2vFXExDicAcpQPa
         BOiba2uWWYFdutyM6gGk4QpfinbprG73LTlW2xIi4HIz5CV6+75diQvNzFGGaQkgzZwU
         y0rC7UUD0iFo1cTptB9HaYEQHsK2KynIIzlQ9QkGRmoMx7cH0UycJJVvW5sNzOCrb/k5
         zKqzKBjE6+1mzcw/cJOWRWIGwq+MRNX9c1NAg9Qiu8sZQBpjmQGwpoxO7WzE51zUxt5n
         TdR8UkBD5BvoimuAE5ycBxqBelbHmmpYVHBodu7qquuIAjClPenPZIW1CgK0UpLsQfOp
         q0yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=wY4p9gZB1rC3vQL3Y8scB16Vxp4T8Bs/D6/ptvMzIGaT8tTJhKD/T/2Z2a2VjCMHfU
         Z5YlNSQzuGIrgpjcby947GfdEpSxS5OKhwXHpeJMjIE6g9pXR802fWO9AtxMdtRBLFjN
         23gTtTGmgUn9HdcIRLKM1YudgnZMLKbXwVgcgmnk7UstFg3OMpBSxmItR1tgx38tLFov
         B+ZI4bT22rFE1NiV8TWgOePgXz1HX+D794ykeaBZkMbRwbRX6j05EWXzLoxSWyGCx7km
         UkQp6r3uA4mxolndTYu4uup0FOh6D1hY8ImxzD5DjBi7NKooRYa2CaVBWb1Z0hWe6V7J
         7nTQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Kub7QQa9;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=QxetAKDi;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id q2-20020a05622a030200b00432cac9f0e2si11015797qtw.42.2024.04.09.08.26.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:26:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
X-CSE-ConnectionGUID: 2GRR3LUsSF6cvSH/hSUdJQ==
X-CSE-MsgGUID: XN4sKuyoTQKi/sI3h8/qmQ==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13603591"
Received: from mail-dm6nam12lp2168.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.168])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:26:45 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gQAMmpQxf/YToSBDu0aqgeKai04O8dmyCvp2dgU3NQcGo43k50PCixLN63/YJQqepH9CT7r+wVMkHRLZIHm0wyuFUKqOpyGHpGcTaMkOc7WBwDLJ9z3L4EErxCVeDwYcahcyFztf1+YvSJQcD8cwn7Ogc7sP2DtRYXRIXvL5X1Cv341z/w6Ig3EEA8mq8tCqnrCMt2gooBXX2+4KUFpL1Z1PZ8/5fUtWjWWMJeFlYFHmggHolpSLx2FwewxrUDPttlavlvKVC7TktJs6IF+3LDk1qhld3pKp7Qkl31+sDnSWNQS+H1qEGpVxRqgHYK8A9pHP0mMHTtuaQ8AT+dy3Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=VWx2VURh7A01Wp6Gm21/jhKP4VTBw8e67JHiDebyrYiid3vitKH+mgsSa4fVE7p0qedNhEHgvmX/oSzSEM5CFu9IDn7dRMZNYdHiF2LXQHuRM7I9sfQZS0c0pQGqnM9dBJCDFvCvA7D0q44eV5/+KYN9W1qd1MDoyOVHXtVDgqOBaTHRrwPM4f0yM/svCrXbkBAigvXwLyBvCAKC2LoclF78DOEPCYpWYHysbV23npZVDSEuUKO8sJY9439nFuTH1cD/6pArLFj6xh3T1/TsXmiOJgl7B06zkNA5GhnAaOZY7FYrihLyQP7UoVmai2jUy5S7PL/ZK0fAzcvT1Od5RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by DM6PR04MB6732.namprd04.prod.outlook.com (2603:10b6:5:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.55; Tue, 9 Apr 2024 15:26:42 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:26:42 +0000
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
Subject: [usb-storage] Re: [PATCH 22/23] uas: switch to using
 ->device_configure to configure queue limits
Thread-Topic: [PATCH 22/23] uas: switch to using ->device_configure to
 configure queue limits
Thread-Index: AQHaiowjVLaEl6Cla0G91VkxeGHzFrFgD4yA
Date: Tue, 9 Apr 2024 15:26:41 +0000
Message-ID: <a57d49e6-689a-487b-bffb-1b8664b1e5b2@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-23-hch@lst.de>
In-Reply-To: <20240409143748.980206-23-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|DM6PR04MB6732:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tNzUNIQVJiwsVk8/H0CNfMenKjldjjRTOZPiz6vb1gYNnDfyY05TiLygzvxITI6aLn/oqSXWA0l2jzQXkFYjhBt8JYKb+ynf6vkPkMFMePcWnxWs7i7zgko+vsfCmuovx4J9OnmycsOwSFgHcF8sIR5aGI8+h4rcwAGKJKKGBGiY3987u4vM3eJWtzvkfvVq12U01JjHpyTX/cle1TVh+hjtj3n4EfmowgjHMjF1a4ZpzfOSXugBcb0sbFgwm3otv2l6voOCzfm5aYsuzTP4o3r1s17ofBdTwcB2Z/YDnNIQTwk9E6CwDRPtEQDpnuefBiVYxB6oKIOKT2ppRxdssc5wBWWykAR70XlVlnYJPON8cY5gMYjlo0J+AUmK3FT2LPSblDIonU5O5UK0/yoZuvtQS3xXHKmJcSoHIgYVbrgd/mmnVX382PKliBGGl9C/xFPRRxbCbfxlXioRX6z1Q5MibdK4AYkoZ2aSThu4iK9ZUzZcMKOwwUMi92+BUbmGi8TEFTLEkjtdo+r6WX+SmIg2J4/v6+OrhX3uXso+miCJcMATQhxstV6mer4OgSNjk333qEua3b3DG5MlcyvWyZPmuVUv7ljmCEg0XO0MK77WRl8I+SAm62EjiQLMUQDZfiLR8Xtmcl64ebJQyQOV003Q+zCR1gji3x9DZ2b8ZB0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(376005)(366007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVV5MWFITC83ellqK3hXKzRERVRBK2ZZeFFYTTJSYWJOL1ZSbVhXWE1kUVZP?=
 =?utf-8?B?SkVwZ3pGUXJHWEczVE5tcFRPc2t5RFN1V28yVmRGN2ZCUityQ0k0K1BpMG96?=
 =?utf-8?B?eXg0OStnNXRLdTBBVHQ4MUlYaFpGT0hLZERnVTVudjQwMmpxUkdRNjhCMlpq?=
 =?utf-8?B?M090Um9salRmaERVbFJOL1R6R0VzU0xYQXF0aC84VU5ReTc2czNqS1BDemVK?=
 =?utf-8?B?bE94T3VJd3Y4VFRoQ3lPRWZXRzEwNHNmckxGR1FLODh1TWdhUWFEeEF4ZnZW?=
 =?utf-8?B?TkNINFJSb0gzNFFSU0lOaEM1dnVhY1RwTFpTLzJ0RDY5QjZGbFFrbHhQc2Q2?=
 =?utf-8?B?Z243aHZmeXh1MlUyaG1xN1FyOWJuQlM4dDVlQUJ1WjltOTA0aW8zZmQrMWxV?=
 =?utf-8?B?dnBGTHkwVVp2Y01TMmgrUjFMUWV0TTRsWHA5L3RUeUtyUGp4anVsdXFqK3Rm?=
 =?utf-8?B?SlYwY3VYT0xEOHU1Tm1uQzZIMklUYURBMVJuTkhXMlJKMitCcGd6V2QwOGpX?=
 =?utf-8?B?bGM1WjdiTDBxcitnU3IycVUzQzJOU1dwTEJJOUt3cTBWNTZ3dlA1OG9LSDRk?=
 =?utf-8?B?NTd4QzlqQmxDZWFLdElSN3FONlRZVlZEWWhvdlFCRzZQcU5ZM1lVdkxmZlRu?=
 =?utf-8?B?eGY4SWt0RjZKQXdBKzBsaWNRNWszVUxoaTBLL0ttb2NkVmQ4a0lQR2FwTitI?=
 =?utf-8?B?MGRqNGRDdEdvZk5UTHo1YTJuSU1NaXdZTXh6cmp2T3M2amUwOXBWZmZxU2lF?=
 =?utf-8?B?dHdYWnFqenN5VFlDaUFEWCtId1ZQS0tKRmVUSytqS29jNm9WOHRmMGp2cS9H?=
 =?utf-8?B?YkthRFBsd2d2Sk9PTUFFZUdHNVR5b2dOREduWXJuR25TdWdBdUVEUEd2aU01?=
 =?utf-8?B?TUtQaUJ1RlFRa2I4ZWFQT0JkbTVKb1V5M2RzSHVkbnhFaDdpa2liTzZSdFBR?=
 =?utf-8?B?UDNHRDk2bm81NURkLzlLT2VEUTFXWWpjaS8xemExY0hMRTg5dlZEQjlvRUQr?=
 =?utf-8?B?MUdPUGpaUFdSTEV6ZXFhY2RhY2ZQRDRiNTllZ2loOXBqUU5jejlLWWNOQzkx?=
 =?utf-8?B?NkVXSXh2K2NBUlVDSFJUSjNpVEk4VEJIT3lzdVU5MnZ6bjJsVFVsSWJJSjcz?=
 =?utf-8?B?WnJUWitlYzZGSkZsMGYxNnovY3NaTjJibE9lUEozYTNOR3BCbHNFTnNzUGta?=
 =?utf-8?B?dVBUR0daNUJnU3pVUHA1c1BtOTVHNnFmNU1Wck5adnZ6amFtNmFYSlhtcitM?=
 =?utf-8?B?QkNqSWV2a0FHNU9QYWN0K3BRY0tjMzdZRVlWRURUUkNEMEdIa2NnSFpFM21U?=
 =?utf-8?B?cDlaQ3cxVFN4MlMrc3hXQ0gwcklFZklDZXBBQVJFRnRRSzYvdkhnSHl3bm5p?=
 =?utf-8?B?bHd3Z2JtanNiR0IrMTJhWGlRalB2Ly9YWmRtYzJwOEg3T01ndDYrSTMwYUNJ?=
 =?utf-8?B?czZEL0ZvMVdKZ3JiVHZCSldWNzNhMCtnejRmS1JBaEVoM0x4alVTUHNhZmRi?=
 =?utf-8?B?RkNtRXJlWnNmbis1Q04weDVnK3llWFkyMmk5RTFhNXRMS3VGeHpaOEp2d25t?=
 =?utf-8?B?dHJjS2l4bTJaWEpHUlFCb1N6TERVdTJrK1hQZHMxMUI0cVBTMXFUak41ZUo2?=
 =?utf-8?B?eWwyc2RjaThBMUxlL2ZvS3ZGRWFEbU02aGwxTDROeGpCdjNOZjFtL3htdll3?=
 =?utf-8?B?b0l5L2N2cHhKRWFBTGI0aGhFYWtxK3RXV3BHMnRoM25CNXJuajFOUDNoYndO?=
 =?utf-8?B?WkJMd1MxOTdtdEZrcTlHaW5QZDBmaGVZcFRERUJwNERDWWRLbDFjYmlSWDg4?=
 =?utf-8?B?aktuYWd1bVk4SW1DMDdNSzBWY0lWWStZMU5ZbFc0SGtlQjUzM3dHdE50UGVI?=
 =?utf-8?B?T0NMMU1CZ1llRTlDQzZoeVRQdDAvenBPYkNWakNVY1pxVGxkeFQ4a09RbXgr?=
 =?utf-8?B?ejNzSGFBMlV6b1g5VjRoOTBxZS9Ka2VFQnBoZks2RGFzZlQvc2pXV3JXbkNy?=
 =?utf-8?B?RHZiNXN6eGp6Z0VoMmc2UlczQ3I4TnI3NlQvK3Qza1NVNSt5dnc1S3RsWThU?=
 =?utf-8?B?eTZZalVCOUtEbTZtUGt2TW1EUEJYUXVVc2NVZGxMUmZrZHdQdmkxOXl6R0V1?=
 =?utf-8?B?WGJZNTZhR01ET1V4aTJzcCtWeG8wOHc5V2lvK2lvT09ZZzNYM09hTU8vMXZU?=
 =?utf-8?B?bnJSNGYxYjNCcTB5M0lDZkJvUHl3THRESkJ6VlprN2ErNm51b1NPYnZ2L2tn?=
 =?utf-8?B?NjVqbDJxV2I3dm8xVXVEaXBLLzd3PT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <499F7CA859FC5D40A97B3D7CBB06BF18@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: RSMDaKiHXTKUaBVghtP0JH2KlWeGKpKTsV2g9Q5wnc4nXlOquBb6lxl79zH+v3PZdyhzmzGL0v0DsOCrtH/nzwDkK6/hkxUNcjVYm/uKAJzVukPsYQoxQ0v0ME500jjhRGwISHVG9SxHHiY7g3NYVL/mlvTpEHldt7jnXF7OLxIyjzzEUF+2A/zNFBrM0sDcR1QrIw8Lc/IRNIWLlm0W9MTCkiAMds/4MEDzCj4FQ4lqf2TGLUtjc2hzLqL59aztJCIFv/EfMOw3IlTrUPU5I8uv44H9jK0TQLgFbgRHczCxv7zijI4DuRwzMRJwNs9Qf0FI86e8+0AXqnw6wbwowbKsmfIAUnEJd3runoP9xUd7fEylu7LH7FBbfiQ9VN6DHvYCEeap/wwFB+uDaXx3bPW8JvDI1zDETLGDvDjd2X099nVm4sPg3C7IsWYd6TfZ+M1t1XVe/If8pRiSZ9BbLcAxRfB+846xp86vsE4/dAlhjzlOtHRPPi0FD1OjavN02YotevB8VDkW4bohQI0pueaZeG97BW66GOX2INyid1ELvNU2Lm/9chZrEWl4wfQuEGvPLlo1O/Ci8enRgCuw5Wc90Q5Lclu3scPlTQvpjdXP7aB+R1taPhtq7JWidBrs
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7820de18-3beb-4819-ded7-08dc58a97546
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:26:41.9520
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XfT7pUUapXmoknR/TuU7YaQ7sOqDGEMwTdba5A00i0jBL/Yfq+RT+mHKK6WVRH/7LzgFehgkKBxT37PbOogvEpiNFradVfBcTrqWC56TeDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6732
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=Kub7QQa9;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=QxetAKDi;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45
 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
X-Original-From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Reply-To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
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

Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a57d49e6-689a-487b-bffb-1b8664b1e5b2%40wdc.com.
