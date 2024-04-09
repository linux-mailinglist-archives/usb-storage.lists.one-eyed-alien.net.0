Return-Path: <usb-storage+bncBDW5PLF2TMFBBSNZ2WYAMGQENYHIM3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 5589689DEC3
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:20:42 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4348cf784dasf25647871cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:20:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712676041; cv=pass;
        d=google.com; s=arc-20160816;
        b=wIEy1W2mB0yU9mDpEeI7tPgC4yE3XBb+6qvG6IV9KQfSgHAjMQ65vreO8Q0g+JytWU
         D6qm9ApDnlw0v069I7VNf3JCSZqEL4DWsYtedEFQxs7aJ2HcwJtcbdFNBF5N+uuta0qa
         8ugTmBjGFuptproZdn9gWoEiEopnQCaEHb4bWJ44rVSVNLh5Ze6roQB+wedj0Kw1NIP5
         66n58ppKpwNApw6E5JffhyXh9pY/LfBxER5XYCMk8f2pgXTA2yL0xG7NZrpHugTlaGn/
         roXuqvhMomQXSmBRl2YcEg1np9rgEKXAR58x8b+/bYDxorTRmQK27Jit27sB+ib34sUI
         9y3w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=9+iiLgolNHoP7Q5LHMTKcrs8uiG9Lv2V8pizVfPl9mE=;
        fh=0Z63a+gBP0DiQl4gk3wK0+SF8Ih9P2a6VsGMe/EhT54=;
        b=fZgSPIY6Z0rO3kUyn/BVFDM+dqIpiUWykc83FDRqaimdy++vHvhQMujDySmTOKXbxY
         MLV92jf4SnVpe6j7ogIqtx+Em2FX4h64y5lT92jgyRF883Ml50N3t/Cg4GUnKiAKe0Z6
         rnuQ159kRNi0gIXMVxNgcyEXwOfz8h156EpCYiW03yMzsc7PZJX3Lg4L+JCFms6QEhTX
         xCdztEJsOB9NhbL2uosDErF+VgiKu52CGUrU5yS7o80rEYdFB2Kv9YFOQBxJ6wk1lz7V
         sBA6SxKjBVF9FpnDVcnLh1gwfQYKjvaxHW9BUT8Rb75H7jV9xd3igUg/q8daBJkBvPuR
         SBUw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=pSGjKqK7;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=MwC0hqf6;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712676041; x=1713280841; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+iiLgolNHoP7Q5LHMTKcrs8uiG9Lv2V8pizVfPl9mE=;
        b=fh1cPX8HMPmoAUW/XZBq2WqfBa84GQDJSLnDVZ61nH60jOoQJkzaULV6Ax2Zf46FoL
         9ZZv1fOHYjSiXq6em3WF3NY7dJn9oQ901FeCnHupac2YintPrdk75Z9w1bN6ovTER00X
         BHknRLXV3jV5FTHC27NLssCkT6GxikX0cUWm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712676041; x=1713280841;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9+iiLgolNHoP7Q5LHMTKcrs8uiG9Lv2V8pizVfPl9mE=;
        b=rfYs89qc2zSiHarM8zlncDU2NYN9JaewHc/OaUgFef7/QKmBZ92rSZttv6ToJzksE4
         PsOzJAREFJbdJIrCr57aCyUzB1wZz+MMaigXPdp5mxehRxAsVNKeXwhku4xH1brQE2ub
         DnLBcQWxt8N+8kGgg0yKJbM3yGOegXioHbEkbsOZsCKzdGlXZFcYkhD2SLRLiK2FcLCz
         OtBCIm+IKpGtdXNYaBBGRaLhiM3leKRXFOoPyD25iL6vcYWchlR4rh4lW/l5tlIbXdY+
         BP8ytV3r+m0WX4BL8Tjk0EM0nggNxN7yTfI6WSWLo0PbN9kP4uhloZmHicrO0ERnacD6
         V0cQ==
X-Forwarded-Encrypted: i=3; AJvYcCW+VPz30EIjcCroD3nv7VbVn05tGjPRYPytyXI/+Hc9KkOtA4s3dpot77HOUJhnJJ0+/DU1tG48AgOqF/GZeZf5zCXYdSFQVxfk
X-Gm-Message-State: AOJu0YxZ28Jgl+7HZykRlQQaAdFXKR19ERPEEjmNcfwQwh9TgRsKVMgM
	IYUNp6eF4rIxGkTkTikUyJlGzjbrmy7OR+pbfhZa1nYE+9BDjCDkp9LAK+8m3dI=
X-Google-Smtp-Source: AGHT+IGxDAV/jm3sOZ3mNjRTolQBv+nL5ymO9zLAVXIEi883wnpwV0KNpVZ8pzb2yH9N/1rod0o6oQ==
X-Received: by 2002:a05:622a:1111:b0:434:ec3d:d7fb with SMTP id e17-20020a05622a111100b00434ec3dd7fbmr1253502qty.67.1712676041314;
        Tue, 09 Apr 2024 08:20:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1213:b0:432:d61d:385a with SMTP id
 y19-20020a05622a121300b00432d61d385als556779qtx.2.-pod-prod-01-us; Tue, 09
 Apr 2024 08:20:40 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWuXIZzIIRPM6cGcZ0dcA4xr1ekTriBdBJW1FjkFwVDW5pnG7Put7AAoHKdWBdu+HpmzRTnbt7HMzdPpQK7BqYJ9dW8G2AQ+U0QM+jXt1helCVSSW8=
X-Received: by 2002:a05:622a:189d:b0:434:f881:3587 with SMTP id v29-20020a05622a189d00b00434f8813587mr292474qtc.64.1712676040547;
        Tue, 09 Apr 2024 08:20:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712676040; cv=pass;
        d=google.com; s=arc-20160816;
        b=FZ5NAzf1s9HF1UoSAKjNuE7QjGZeTKznjuQDjPPXPoFdW/rm8ebRNo0vv3QBicOWf1
         3CAXpCs7Z95lCQpM0RK5ASGJgzNvFJLAV9lCQpKZwnwycvrG81Z43162uKECXT9iI4Uu
         OQMhtIVouyENBLZ+4KzukYm1V6dMDvijHRaucTls40MUK+E40NyIExUum1ujsD+QzD43
         DWzPyO910ceHBDNnOLtoenr4b07lLLEnfNMJKFQQWwDmzAmnc/NYQQbJgNA6kZeSHhsR
         A9ksXeEZ2NXAjcX9OQd84+TAYNM5IGizvW+OYAT+NPPNZQYKaMpGucblHtVXXkViu9ph
         lyAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=o+sQeCG+iX/hM+b3eGnNQG6u1/LZd/mWDs5xGJgCLj8gJKFprnORy0rhQa1fcpzqsX
         rueSL0XpE1ZQLo7mLkmwufp56WrNZgoMmKLfARpqiPjt/jMzvMhh5Z2tGe1Yv8FOWtu6
         2E2zNxs6TXdGTH2/XzENWeNLKtUzhh6VHR0rYEU0qCyiklcwwOv9kgS+UKRZYH0OkL+s
         3RAzcugXi6/96+BGhoFXkOpn9569ABBWmXI5AWpuifTNhrCFK/yhUxFXVEfvrRT7REKb
         KCADrv+3DyOt1UGnSfzqzl7m7WEkA5N4Zk3vml4uF9TExZz7Rnz1VIGvpOuig+1BMBlG
         JuaA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=pSGjKqK7;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=MwC0hqf6;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id c19-20020ac87d93000000b004347d76dadasi6726260qtd.37.2024.04.09.08.20.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:20:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
X-CSE-ConnectionGUID: qhGl+E97QZqvln77lJyspw==
X-CSE-MsgGUID: 1p0YmFD5SZ60GXvzVQ8CYA==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13602981"
Received: from mail-mw2nam12lp2041.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.41])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:20:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oeKQnDVBFskwBntcrm67CKFoguVtzlOBwW1Dw3mlwVl6CK78+B5O9uj1eXojmyzJ+TKt9/BVR9J2KMAztr0Eg+87UKqijULq/u2XO/l3cTicdZfHyvVdbMhsW0kdZoHGvtWhs0Xa0QBd/tmjH2gC04KNPR2ge/JZ4wc67Mgp0xJOgI38MVbzbKS06deETc3Yv3NErR80F30AE30TmsA/coo4xznE5VGUBEFBs96OAbSktIsDdQtPWYu5HvqxKczZR+5M39TKjR/mmvHXk7c0BUPE5CdjicGsKB8z++DEuHHChJf0JqVdTiiRWbcyDaI2KYeFwG0MarHclPqqV5rKsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=dPx7jSaj6KSl2l/dfZXoeAfI83DoGGpCmjGusFAni19LPoe4PmlKPDpr9fhmYFsvZJgA9CZwGmCASgfpMrxEBf5jt/jjmdwkbcQmJBjr5Z0Q8EKl2eXDotBfnhRHNbEY8YJOgtPp6ELyvtu1w39F/P0n37g3VTrPR8rORrdcvU9PCOWfu1LD2GIrOW0ss7ZKhq7mk+LfMopgt0qABwjKAwXFCdAIuYNqgw3ec4IAtMQKIGupjRDY9PCxo0cTRwwAFLOiBEvUoxnP9L+Ll8YQneOucIVg32xTjHHAXeiycrqgB6KXe042yOk5WZ/Y8S0hsBZTN25TyPL/helH//Y/pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by DM8PR04MB8103.namprd04.prod.outlook.com (2603:10b6:8:2::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.46; Tue, 9 Apr 2024 15:20:33 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:20:33 +0000
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
Subject: [usb-storage] Re: [PATCH 17/23] usb-storage: switch to using ->device_configure
Thread-Topic: [PATCH 17/23] usb-storage: switch to using ->device_configure
Thread-Index: AQHaiowAhJKdm+ihHECoHvcbzmn+zLFgDdQA
Date: Tue, 9 Apr 2024 15:20:33 +0000
Message-ID: <7d597579-a4cc-410b-a410-552e2bdd91d2@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-18-hch@lst.de>
In-Reply-To: <20240409143748.980206-18-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|DM8PR04MB8103:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NcC8vMefa6npiIWAMjJS+EojB2KtqxMvycOprzNaE6P2a4g1l+2/AZ/on5ALeinRcHCcov0Ytkc7G6C6PAlnqBn3h20PSQ6jvYn27NjefrCPBGgDlywxF1Q5DCSaNtOoLl6APM1DZBmS2/QQgIS7tfdskyzO+Fl/0cm2QTIK83iK3YL+JeA8fHCR2H7Yg7KQNYiPx3dxqfF1cLo7j/n6taJ91jr4+CVgXOY61l//g7Vjsh2eWkE1emexvayNjNgYkXPZ3bObhxbzG5GKA8XW4KjKvL14fuJrQnwhjeh8B0NlDZmsJers9zKmAKahHZs5L4QjVjKxJq5ShoMtfwry9QamKBa7UVZIHb3do1kK9hJ/62wW+ZDsHWk/R1mkWqRbbGhiUFkWom5b45YOC6tqgDcxDRrfzXAHQIKa7IxeSHJJPTtsSzYpTMYGS0syEGLMMbXgSUeqcPTnHbp4CnAFlEehSDIVzidjMeZjBOPfBTk3A7krtcHFLeunspTe/Aip5kpCmeqduGHQ2wFFAHxlheD/FN/AxN5GcmBLtVmSueBAUm/Cuy93KhNiHtLhlM46iDsmzQP+5pcDR6wzCYkF9CtUBFIYgrkdsFpIvTwVBPaP1TCMt9tG0xT5XcGboyAAByHTIpOOw1mtRytDI2H4ow+16fsl9//l4eUfL9S5Ais=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eG1hVFBLSmRjWXVpcElLclFuaUtrMmdzUmgrQ05HekJRRkJ3QlVkYWdRaG03?=
 =?utf-8?B?ZnlxTWpaV1F3clQ2dTJZY3N5MXc1ZGVRTEFTcXkraSs3Q0JLdnRqVlBpRGox?=
 =?utf-8?B?UFluWk5Ob1RyaDJoRUpPK09Rays4VTN3VkdtUStBTlpYOTIvejhnV3hZa0ht?=
 =?utf-8?B?QWpBd1dyK2w0N2FiOEVPeWY5aEtDbHczK1hQUHZBL2wyV3VZZTlTMlcrMExr?=
 =?utf-8?B?ZVp3RzV3M1Bnay9zenR1UEFsSUx6S1hvdjVhS3dVTkhhRTZoTStuNmQrTWJX?=
 =?utf-8?B?cjFTWE4wWEhQMG41YVJldVZFQktBVUlkazY4cHhWVExUMTNIQjMyajBsaHNv?=
 =?utf-8?B?c0xiOEphUnZpZHZ5Q0RJQTdNWXZRZWtRVTZrOXRweFhJdkJqN0xmRXFYY3Z4?=
 =?utf-8?B?MTlidGdBelJYbHBhU1h6NWk4VTVsL2t3WlU1eit1UUhlSituMlZ3KzZHbkVM?=
 =?utf-8?B?K2lRSG83TVozTFNwVlpjc1M4RDN6YVNDNE1obTcwWVRBRjl0a0pxZzUwQmJN?=
 =?utf-8?B?SVlNd2NIK3krRGszanY4dERudWZJaENFV1JYZDEwQlpCY0h5VFBXNVdEM3dL?=
 =?utf-8?B?YzE4eXE0Q29JSkJPR2pZK0J6bm1wUkx1UUdLSUxGNW9KSGE2dzRMb0cybThn?=
 =?utf-8?B?cFE4TU1nalg4c29XZjV0RzBYRjJ5SHNadHVmNXBCTGZkQVFXY2gyTjVackVE?=
 =?utf-8?B?R2N5WGpTNTVxTSt3MWxBcHMvQjM2TTR0b0U1anlhOC9xUTdjQUVyWG5kbW50?=
 =?utf-8?B?WjA3dllBcjdEdDdZOWExNnZTU1ZibW9BMDNBdUlCV2VBMFZqblVqc1BPdTc3?=
 =?utf-8?B?blJNaHh3aHdwbGh0SDBnMG5qc2JDdk9NaVdOMXZnSW82M0lJdXFUVzYrNjNH?=
 =?utf-8?B?aE9XeEUwcFNjTUh1SWRybFlrRVltUFV0YzFRRVJPVVlBaUxMeVRwVmhYRmlL?=
 =?utf-8?B?SW5TdjF1c2xuTlhBYjA2ZnovM2NqVmxPNS91MXFHNVdxM2pSNStqK200SkpL?=
 =?utf-8?B?T2NIM0VOaXFsZCtjaXlTT0s4UUY3cFU3Q3FZd2x2VkMreEZUdXVzWVVQTENK?=
 =?utf-8?B?VitJZ0xQMlJ4cDlhTW15dWEvWFZITW5jb252NGpNQVdQdm8weUxVK0x5elZN?=
 =?utf-8?B?aGErK0xoR2JrY2VERnZrNHNiaEhoR1dHV0dmNDJ4RjJEa1h5SkcrbFF4UG8y?=
 =?utf-8?B?czlVTjZqQlp2RzJTV0J3NFpGRTdDY2NmVnR2TTdaZGRUYVVpRENTWVBRbk04?=
 =?utf-8?B?Z3dGSEFxdmhkd2c3bWVrNmVvTjBaL2htNGZOWExPTWdVMmlnWmNMT2NYUHdR?=
 =?utf-8?B?Ty96Z3F6dDhQUGtBOEVLTDhLeFpoTE5kTExWODJzUHNQM05RdmF4a3Zpc0Jw?=
 =?utf-8?B?QnRiMGFUUUJsVVpzSXUwL3lYRnlLNFJpNnhMT3BvcXZsRlZ3b0ZzakdyM1FN?=
 =?utf-8?B?c3J0NVQvN01meENla2o3LzhYbmF4VUNETWhSVXZaVnlqTjNKYW5qeTQ2REQ3?=
 =?utf-8?B?cFhjNWNyVmtEWUs3TTdvSXd2cXlzRGxkRDRjQVhJeTdESkttNFJFTWdtYUdu?=
 =?utf-8?B?dXN2STM2NE0yQXB2SzUycEhiZVl6TTcwNlBoZ2tFNXFrRkpCb2NNWDh2WWtS?=
 =?utf-8?B?b0JuRnRuNlpvNmcxc2M4SXU4Tnk2ZEowRWd0ckxVTzhUcVdGUmF6NnUwS29q?=
 =?utf-8?B?ZUxDQVFkcEE0K3YyK2tzbllrUVQrS2NvVzJuUzZjZ0hnV0R1cFdYWlYzWlBu?=
 =?utf-8?B?NjVYOGdyQ0Z0UjNFUUdnNEJRaWQrY3Y3dkh1dk45bWJqSU9peGFIVCtIekJm?=
 =?utf-8?B?Y0dTTnlVQS90RkF0QWc0Y0o1L3kyMEc3Vktzc0ZXQ2tYSTQ2QVVHRUdSZENp?=
 =?utf-8?B?Q08rdDNGY0JFZXBFWXhmMjlqT21ua25VQnFBRGdTS0VxKzQzaTZIeGJKQlpi?=
 =?utf-8?B?WDZFT0cxanhpQ3pqS0dPenlyQ045RWRGYWx1b295UlI0ZGU2QTZZOEtjR1lN?=
 =?utf-8?B?VzVuTEdSZU1nUXJaeDBLZTBnUEdONUNINWhmMy9tQlJPYUhCbzBuVWNYKzJO?=
 =?utf-8?B?RklCK0ZHbFFZNWNHbEpaZDlValVjR2U4OVUweUtJcUU0VHVyZFQ0dEJjdXJY?=
 =?utf-8?B?dVZ0dkoxRlp3YjlRenVKeDJiUVhXYlBQV3lUaFNHQVJ4NGhocEtocW9IOUFN?=
 =?utf-8?B?aVFDeVB5VDZ6RnFHcXgxRFk0UjhyZHgzZ3hsQkVRVE50T2hFMFBWRGlyMVIx?=
 =?utf-8?B?SUxGSkdwMnh5eU8xWVFoWHRvREJRPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A222019B584F954A9E98E9AB31181B28@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: iWnxDtVM0tf12llU/R+iSEn4V3WqLefe/W696Kmr8n5PvsS07agQEMbQeu+yU5rI7lm8f6pLB0i38UfIORnUa1g/grXzKVKNcrI6ABh9WNxcV2E154gj3c3tl91E6CVd1vB6ykHAdzQL6S0I23D2wRX3zjvCLJOWva6FHmYgFUsvxMCzNdKixTiUaXeswMZ8s5t8GY3Vt8SMGxdkY/RquoHx3Ldk6VeG5wVsSIlhvPXBo/OakeWTqNgEKk5IQWBj2vUKa+jKPl3+P49Jpz+bvISuU/aF63i7a+Ap7LDKhe69YRojHg+9W3LHxAzJECAr8up2LKBEFb3JQHdcbgePs0/BqpffYIE04DZ92Gcc4Znvhgrnd/Vj+tcB6KLFF8abv0GCzQ84gpg4pSZoxcYTk08Bc5LD7Ha/mEWerBHLG2ZBQk6qu0SnFujQKuLGHCS8m6e27zQrpaWIm2iJAID6V0gE5csmUwac/pYqeaCWiU/Xq/0PtggqkCIb8fsZBVmqLBxYvY0v8Ifpxj4oLh2IUe+/4eQHIRlUTlAqkYBaWl7v1wPbaIfJqXTF/iPbi6o+Vgfs8oP16tDFnZ5Xx0Wqv8auX/MO7qMSfCmRZ99X7qgiNsNSoTWMa3sEwIUg4OlX
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e272805f-8b38-4ec3-e7f6-08dc58a89998
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:20:33.4390
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4WKeteo4Ia0glHPrmbpbYmyot5u8ynT74+g4cqguY5n647kww6PsMcvKPqER/yhCUTb2fOqjay2KZybfAvvYAbw5MYsRbFq852Uto3VB5us=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR04MB8103
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=pSGjKqK7;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=MwC0hqf6;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7d597579-a4cc-410b-a410-552e2bdd91d2%40wdc.com.
