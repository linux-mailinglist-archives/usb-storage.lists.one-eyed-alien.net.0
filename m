Return-Path: <usb-storage+bncBDW5PLF2TMFBB5FX2WYAMGQEFRQQMXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9A189DE93
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:17:10 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-427b56e96a6sf74384861cf.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:17:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675829; cv=pass;
        d=google.com; s=arc-20160816;
        b=SopMTXIS33zkhvO3DFItAtL8gQEMDzs80eJoAFsIBxEBZscwoVF4MRvFa1/OjHiOZU
         lnLMayrTu24P9ORhgJNFkdWTEq8/LDTEJd7wli2XT3fLL/2EyYqHhnEDwInkcMwFgAnz
         0Yr/cB7anLR0eKymzym0rpZHE15/wTNCUJEPrA+YXklYIiAiUP93lV0wM1Bi2G7vjG+0
         9HEmmkWYo7vcnU0weO55G1870Cs8S28gh9MSLt6uPCJDfEZFdm2Ue2+K5u199MZbLGyW
         aztvFVhSd70ORDHaMZKIMUXRKdOaUzao9NU6CZFd9sbsszC223l8DsK5rONSuE23fyW9
         uyhw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=DL3gAv5pQiiMVc0SvesrYVHMx2gMxlu1YFrbbFqvMLg=;
        fh=siUYUg7YNrP7l4xOyy0qTn7oKRKtB6umeixWer9NSfU=;
        b=bPZU2YncbG3FNsz9mIzw8+PY5Iqts2sOi5Gy5kQHYaybfwsn+nsfm5QXIvMlVmjIu1
         VgkAcckHZ/4Guky3BmKK1WuuxUWXDvgsvIY5ZyUHzpRpPnlrD5quiQz0hQ+GYF0DLMUV
         0eAeQtdM1AwY8dzW6MWkbI+1unTy8OvQrL909lc77FPck9CvRfLIyiKDrKLKHOrHdK4C
         VkJi+GMjNjc5/1GfYzpbfj1HB7QgJjLCzfg6pAyHdSV52K4TPNETM159x6DJG8CoYhc4
         xcSF8rsGLCpKWGPxkl7IkosrYok3ijRHtTE1SACHIdJTrOqDRn787YZTxyep+UcQ8+Ec
         ameA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=AGh4cXH1;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=poq9OsU7;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675829; x=1713280629; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DL3gAv5pQiiMVc0SvesrYVHMx2gMxlu1YFrbbFqvMLg=;
        b=e55GmnrE3s3H2OqhDZJTuLhknoz+hTXEsQxMPLkCRXBIJDm3/sUY73esOT8ZJi/H0A
         Ow/wBVDqUTl5bAu56s/SwRaQbKeOwEr3Ap+7p6BmkuiKXp/52S9Tx2gOfDJyBBlhVXGy
         Fp23Wi92qTOAtWfbUnwYYj+6Gy4y1wmTbM3G4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675829; x=1713280629;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DL3gAv5pQiiMVc0SvesrYVHMx2gMxlu1YFrbbFqvMLg=;
        b=cGvnozfSKM89Jrb5nEgnUzixLlvH0JEM2rCh3mV68Q9CfXE4SJ1SP7s3dp/Dzk2qiR
         oThinWVqMiZ0s7FL/p3BoBb3CFruxhqsMI4t5+bFAhJi/HgL6yk9W8E6fEoHaLsJ7dYm
         typZBlybQKFdW7SZ3sM9lVz5SLpdQz9PihbQrRxeNnmlhY32rRZbUb46EmAXT4Fq8CAm
         wBu1JZgTsRJtg7s1Ctj7EQVwwIYdtAWzeZWp1Q+EfTMCuPU7i+7aFqc9nFJimSGfvryY
         u6XBBBajVsM5XVVIdlHk792aeLtmkWtQt0fxCqzkEdvTxVjLfDnXjkO7q6tzOlmrQsY/
         cPog==
X-Forwarded-Encrypted: i=3; AJvYcCUAsXmlC6d87j+4qTozW9mADZJUcR6W763VKSumiyIdHznZL6EAkE7n8GkKilAReQ00WWPLj/pYC3KV//u2plvSdGWxYwJLBD0C
X-Gm-Message-State: AOJu0YxTOjvP055qY7oLdR0tpheFED5iBH1ZUtzzqf/8iGTLFE5tp84K
	VGSG9/i8+wB5KNlpmJDVPSDwwHHDj7qE8/I+RQyFjg9HQJxUIuJKzvxwEMN7V4E=
X-Google-Smtp-Source: AGHT+IH5/urouW4n7ULoQrOw3NZabbInJvAC+J12TABD4IGDp5wMrLRKd1W3mz2Zc7v77pCH/8uJBw==
X-Received: by 2002:ac8:5b83:0:b0:432:bb20:a40b with SMTP id a3-20020ac85b83000000b00432bb20a40bmr13982917qta.62.1712675828790;
        Tue, 09 Apr 2024 08:17:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:47cd:0:b0:434:c012:9b95 with SMTP id d13-20020ac847cd000000b00434c0129b95ls1577274qtr.2.-pod-prod-09-us;
 Tue, 09 Apr 2024 08:17:08 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUmUUNpLCArQT2ZFGeESE0hVaPxwD6vrPPrkLj3GthMI0mOMMk1kGRLqzQhy4YviXsuJZSWR6u8XuVb5KDqVxJ+qDWM4wbsWUU6Q2rQ3mtSWkZzlJg=
X-Received: by 2002:a05:6122:1982:b0:4da:d617:520c with SMTP id bv2-20020a056122198200b004dad617520cmr131052vkb.13.1712675827902;
        Tue, 09 Apr 2024 08:17:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675827; cv=pass;
        d=google.com; s=arc-20160816;
        b=egJPBqTe3evNtIiTlUZaDAQHJ1CEf02aFxCrlrerxeRzfwF2o1ML9xh/1lpRm6nlie
         W0G4ZOJvvX2Jvwmg3W0xnR+dWeO4xk2DczQqsRwXL5Kcc8rxjFZHU7e6wcNfdkiYAeFF
         oS2UWtRo/iJlSBmJ5fjK5WChohPNtpJwRjSPTWYgr8JcCjrdsxzUYlDpLwb7jsZRGbep
         eJeHUOxTJk5SJGP+ndHaD9vqZNlh3pOmV510dGApQwdQPMmMz/psR27jh1SPKFsFT7ok
         XxgfQWnu3X+pOujmWydQkBX59Qv2uErec0uA3M9sG6xcyRGBszag1cTwUgpyPnewf0SD
         SdAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=u5eW9jWzxkeQtHNSnFEusu0jtyFEswMFYVVOm+zDjQY=;
        b=O0UC+FDmzPbZ3iDeoDImkCBCRezIHvfCETofO1+EIJWIj1V9/U+BAqI1FHHfvpLCNO
         zkNaqZ35n6qNAsTEWZemCCXr/6YKkTphmcCd8EN5hVC+88eSgHeK9M/5SjvX1iGx52lm
         piVdNxODHGNcFL+3alx/upLWJuAk9f8i0tXJky9JXro7wT4ePEScH918buSGt/PQHLYM
         L2pd09ZpGkGM4Fm5KwrhbiEkgsJK2dGloyrfXCbGgfuppurf/TbnLrZDlEdYg/SPyz3L
         S48F3gbFpsbKoM4PCSWMthL7KGcbEyBZVK2CnAgq83c/ajXjwbT1pqqMgWmS2oUxvZ5J
         aVhw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=AGh4cXH1;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=poq9OsU7;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id v18-20020ac5cdf2000000b004da97a8dddcsi1264797vkn.134.2024.04.09.08.17.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
X-CSE-ConnectionGUID: 1UdBTteIQYeGOL21jiwwIw==
X-CSE-MsgGUID: Q9NHJitBRQGlckDWGpvR9A==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13602634"
Received: from mail-bn8nam12lp2168.outbound.protection.outlook.com (HELO NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.168])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:17:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Feo2qdaUShYgkCncLGQv9seeOiPomTFLsLVSse2ZyiJg+1MrfHhayHID5wfhem/jjlixFLfq70GsbmxUl+b/ngiHdL90P6bdsqAj+XZPeK4dDcIkpv9ZhzxUqVhNb0WUEZoURLlSKlzQAODnDxgz8UPOJ0ssImgMt34aOxdxU6PG+vaL5obwMUJjRnMAn7RDG4MWDI7FkoeDpXjkomHWlsOr4FuHBWnLZzmo6gKyG6GgNfBZN6dSWV3TzvSBqWq6f3Lq+EivXI5lCZS6++59UAeofWEKxWxxoB2xyOa0ltJzBFg1X4WReUQrCs0fsOUgi7wW6p0Yz8/pfyHb/Jo/gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=G1QZJKKFRuxIrp6D9z89GfCrHwyS2XQkHpacVyVMGxLoq2w0wdGRrskX6JAkdrDgTGXt6TXtTdSrEHaKE/9qRoNAVF98k0fBPoNG+XIIK+/9qbBx2A5jhjHWfujvt3u4HLE1nzzqoiweqVlflUBi+T2DZ8+vvmSogzLf7u5u4t3W66QottOKAsh2BprlAm1mhXDIS/8v7wcVlj4qW4vl1T3bIovO6IiYzXnLzPj1FtqiySzXHubB2LWsO3+LuZ5gAaCjCHDUKpW8GgOsydb4flgQR46wDbADNR0ALBHGfFmxEUzdBEJkKHcZOTf+Q9o5XvYs39t7cj2EZwxqt3cuuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by MN2PR04MB6687.namprd04.prod.outlook.com (2603:10b6:208:1e2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.53; Tue, 9 Apr
 2024 15:16:59 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:16:59 +0000
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
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 12/23] mpt3sas: switch to using ->device_configure
Thread-Topic: [PATCH 12/23] mpt3sas: switch to using ->device_configure
Thread-Index: AQHaiovsrLjo0KkLnkyUHqlHwWPr+7FgDNaA
Date: Tue, 9 Apr 2024 15:16:59 +0000
Message-ID: <efa5f8cd-80a8-4534-abe4-0ad193e285df@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-13-hch@lst.de>
In-Reply-To: <20240409143748.980206-13-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|MN2PR04MB6687:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V9sy6wb/iM5rIGnKr2IkiliPEpSJqqVHCfItILxMTMqdbsdOWOqVfdwApFbzxoU/Mn73kLQCBtPoo68uOQXXFIKw+mOifVdrHFmmbhV5BARhzcMqTc7a6zmNL9LURLgwuA0AcDpsSX+AVoFSAvq6CwEx+ARB+W1Z7TwnFPNfV2V0ZFP/SvxTkXl2iKvHpwM3ubGI+x63H9HQDlBQ98xhVZXc1KmQx8Ofxf1aaAcmfYrgZFQLjdgj8AC25XKCfbe9O11hpyVJKc8y8taiQKeoAsJVtOulVQRz31aDSzgCkepB7XPJ+CaECeR8IR4efHPGZ382fjAqWJXGPIO/OvDB+fGVqXvPeRqfNNK3Sd6bm1K0PiXiDknuP85mcO9ms96mlZa3jBfVY/rvi0sqZOWPsSyVlbg12b8OMUfjOQi/619doRlezSoo4DuT33qggjkoygkHRqUYy1ldt1MdHLTjw1IuEGoMIeYWv/quJvr+bJdjeSTd9PXSDP29kv3DIhuI/soBSvgc72gWPhljghSPsAkyb+txNe83eVjjpXwlro2jJ3cp6Id2lJZwZ93I7gso/1Oflbjmmq4x7aCq8IDOynihuutqMlE+PZ+X2xsmcoQlmxaLBauKk3sWDg1B92dKqA5AGt4XRvYF75T8E8epZgpykHr683krwb+rPHR8hgc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(366007)(1800799015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkRwTkxxb0t6M3dPQmt6ckdNR0s1VWkxVGFUOVdUK1N4V1lhL2FsUUxtT3Jq?=
 =?utf-8?B?eml3d2UxWDZrTko2UEtyZGVITUlRdk5yOEZaYnNRQ1FldE1RZUVBQzZCNHFU?=
 =?utf-8?B?WWo1bitibW90TjNiamNrUldCTng1WE1VMXNyc3RSc0NVRzlsZHliQXdCMG1y?=
 =?utf-8?B?eHpSR3hCYzRQTlFaWjBISFZiVm9YRHE2OHFXZlYyWmxJTU5VOE1DRWhnOEc4?=
 =?utf-8?B?TDBtQzdlaFgzVzNGckRPU1djemNGZzBYaW55ZDNFRk90S1JXaTF4WmpNVnd4?=
 =?utf-8?B?eE0yRHhxTFNFakFtNG00VXhwSXYwWWd5M2FGdlZ1c2VQUmJGa3MyWHc2YnNQ?=
 =?utf-8?B?M2xXOWtPaUJaVVJDU0Iyb1J3UGFSeFdRZDBkajdObEwxYzhVOEFTSlBOeC9t?=
 =?utf-8?B?N1NyMVh6ME0vUDdYMzNuNmdCajV0TC85Ni9TbXI1NEduckhYSTh0VHpCa29I?=
 =?utf-8?B?UUl1bDRBb3hpSEwySWdPQ0UrNlVXZ285cXBLYmNDUTBCalVMeVoyTG41SjRr?=
 =?utf-8?B?UVJoZDdoR2J3R1l5VkhXRlNpUkIvWHBhZ3RhcExRQlVjQVo4WW1BQkZFQ091?=
 =?utf-8?B?eG41TGJVdUZxeVFVckRUSmNjMHJ2UHI5VFdzbUhQUkpkUWxGNVpsbUx3TE41?=
 =?utf-8?B?WkhWOWtiMyt4cE9jTURQLy96RXdNckVuNWF2KytTNmQxSExPSmNCNG1rTFc1?=
 =?utf-8?B?dXM4THQraTlueUdyeU1MZWpDWmllVldiZ1JYYjdHQVdpU0hiRkdXYnNIR2lY?=
 =?utf-8?B?TWJKdW5WTlJxUmcvYW1GbVNUdHd6cGtHS1hLYTZvUVE2RStPTVFyMkgyUnRr?=
 =?utf-8?B?NGU3S2tLY1M4MUpOSE1FVDVxaWxrTFhnc3piVE9HRy9YYVFRSkxFeHBEVWF4?=
 =?utf-8?B?cUJLODRKUW1XZHR3OFRwdlpsWklyZEJ2NlZ0TUtmSlNjeGVkbklMd2dFTmdi?=
 =?utf-8?B?RTBkSWxJRlJFenBFenVGNDFHU1A3QWRPcUtJNndLTzlrQ24rM2w4cTVjVmQ3?=
 =?utf-8?B?OTZTNWN4WGtLVlZOSHVsZFRNRWhuemV6blBuZDB0QmJXZFRFeWhZeFVJREpL?=
 =?utf-8?B?UGpUUDI3dzBLZ1BHY1NFekZMNmRoSnVZWHQ2SUFoYnBvcW15NlUvRUlGUVIx?=
 =?utf-8?B?YXhyVklLYUk1YmNiTmFQa1FFYWpJMHU2UFE0eFpBQTBQYTE2czJkR2pVR0Fj?=
 =?utf-8?B?SDdnVnFiQUE0NzAwRG9wRW9qZFkyaTBjRzJ3MURrT0E1MUF4T0kvdHNwR3Va?=
 =?utf-8?B?Vk9hSDh6T1g4SkFWZlU1SjJGMFp3dHBWbmtmamhPSE42VHJXM0JQa0F4WVUv?=
 =?utf-8?B?TTZ1UEhuZFJib1lzKzR4bjloMHAraU5WYkJEcU5QYXBYRWNibjhUay81VGZY?=
 =?utf-8?B?L2cwblNtdEtEb1F6V1h4LzZUM051WUh2dElrR1ZOU3FKcXQzZ1JxbzVURndu?=
 =?utf-8?B?M0RSbmt2N3kva1ZIRS9mZ0RVVDRDUHo4cVJhN1kyd1R1bDVpYVBLNUlpMEF3?=
 =?utf-8?B?Q1F1NjFQUkJqeTkxTkdHOGdXSkNJRitDSm5HRkNFSURMeUlBUUl5NUxBKysx?=
 =?utf-8?B?WnB1N05BeVFHYU9tbHJyWndzZ0FMVTNyNjNVSGphZzBTVmludks2WVhRYXRu?=
 =?utf-8?B?eVFrK1hyVWxMZGJhMDdrVk9BM2p3RHAwZ083RlQ5VW9CMm5EQTlqaWtnemR3?=
 =?utf-8?B?U2h2Y2NFRjROMnZvZnZMY2tpenU1alRuZ1pjellTSlJXNDZsc1RKUm5oK0ww?=
 =?utf-8?B?NjBuRFlJUmt3TktHZlZDaGtaZjRYckFNNTdtL3NvdHQrZHkyZjh5TXNDemx1?=
 =?utf-8?B?T1VrZUp2NVhnQVdJNTllajA5YVp2T29mZHFLSmpXMVdVTEMwWlFpYi9kNDU0?=
 =?utf-8?B?R3A2MVpkaWFhQkpsMTlWQ00rc3NKZTFUNGF6d214d2w4VmV0OWRTbG4zRlYw?=
 =?utf-8?B?cGZGSGd2bGRteWd0UkZTSCszQVZGK21NbVBFMVZzOXVlQW9VVURDc2YzZEsy?=
 =?utf-8?B?ZnJENUwxSjdxZnowNEhpZUxObU9ZOGg2cnh0VUo3eUVST3o2RDJ5clZTZUE3?=
 =?utf-8?B?d3BmYTBYQkQ3RTJSL2cyeE0wNVNudkkyUlQzRC9sM1ozR3c3UXU1M0xhdTBu?=
 =?utf-8?B?RWp2czBKbmZoZXdWanRLL2VPSnM4ekFLcVBSMlB5TXFpSXBUaG5JR2s3cVpV?=
 =?utf-8?B?NUozbmhxZmtqRVBhQ0pQdlNVUXpTNWJCSTB4bE9CSUc0SnBIdTRKTm9jMnFw?=
 =?utf-8?B?TkZPQjdEZmNYVWhzdWQwaE1RWTd3PT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <CEF33BDDD4587448AD04148DCDC39C64@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ZiEqjoryyNy8cpXqgFSnmciNqY3v0ow0dhgOJbidh5tuUnNyxuQEdkW9KDDUTP4PajOFx0K+Jlnkex00mytq6Zig9ka+igRNDxTrv+KrJhaRplty7qPNBeZpKJw0CWQN6EFYQCjS4tkt2yj2e0ALlBgzHgkq9rVpt9xrm2Ly5k+hE/CJz1hpGNrJdutHGepX7DQbHqB09kBnglCsT1mI8ScOJj372AywBaCfLi9O6Ay/6tg0lpi+JtB0QCqBHYlSFpiQzcawhq2sAp9UlQGsiOvn2yOy+j6N7IGk7xgMTxFX/Q5kntD3wGRL4tCTrYm+CKy/+oQT118wZWLuaXTImKGO04qAE71bvaKH4qIYFy39H9xnlycmGYCs12ttM9lhg/fI8KvTuj1MJx+ByMdjorAn3+dK4vwodPiSbKVMpJgwnb42XfSmparYRq5icK1a4GO4ZNrp0u1PQUGZHC55fL7c3OKrBQ/Mnyt0fHecyVkMXAKTZW9wiq7t+w0ccMWaEiPGth3mdsTFnVJx6K+TTSeETwJCx53DQNwzxYBJTdiMG/83d2MIyRgUFw0DInSAYej62tztUaXwy+EEOmXeIgYTrHA/EVFMJ6ARzs8ld7RRCgnfzmhC9jEg0RcNmJxL
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd9be547-456d-493e-855b-08dc58a81a27
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:16:59.6152
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JhS9De56tX2za1yhFsDRrkzlDrtoubB5+r45DJnEkfI5cezLj/q5G4nqp8e6Z86LQjEQ0vDZ0ONXrh1xFuH/bDQ+rmXI6Q1mUF1XTfHBaSw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6687
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=AGh4cXH1;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=poq9OsU7;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/efa5f8cd-80a8-4534-abe4-0ad193e285df%40wdc.com.
