Return-Path: <usb-storage+bncBDW5PLF2TMFBBQNX2WYAMGQEKMDBCNA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 014AD89DE7F
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:16:19 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-22a210cda85sf3362832fac.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:16:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675778; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfRpW5SExEeGXwj4Yh6SccMOx2E3k6Y3Xd57jicSR3V0auoNLTVCN9tooHTQ5DFBjW
         5/9WUJxq20RXlMroiWjpuaBARaB3OdCJnRpAUY6lExRPie1HTlMMLq5b0QmrrNcf7RNQ
         Om3a5sKoDEmP1vcmb82NW/DlsPXBxt01A4xYbDHNmR7E8VvcP2yaVGi+U0emtUUg365v
         8P/Hk780uRxFZei39GYaaAw5C2xULwRjXI3HWF2wuT0B1x8KtwlJlu4zRUsTmCzDybUV
         uPWDOUAB6Q+9S+/7ySmARRQNC3+Ym/hgaN6GX1Knd8UO+j12gbsZ6lnXQ0hiW2aHL7e9
         /P5A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=U3DR54jbtu4jeQR+/wrv6SZvUyYxqAaZhGZKAmZNsh4=;
        fh=k2SHnG6L4hBLTJIHvol0Qq38cWxLPISrJXZr/10SmHc=;
        b=K8e7UpXUp3HEq3PN9aJPj6XuzpC5vQoAFhzmHF1dy/GzLiNGv2l5mQ5Fo/OFEUtVNE
         3cEJNznhOwsLAD6Fi3OMAAHXZCLCXT9OpFjVSyn7bauSyWdYFag0piDDTF426ZUjnzHl
         K3RFA6Tzldncj8BFwrwlWww97k28l641MIPpS0FZAa7wMyLNCLSb6MB5U2mOFjmqFPWa
         3qQbfTKcYzUfR/Icp5mo0SlUC2pO2DLAVq24PbvDXna/HyzRzUHAqyJGZb7hRtHMs/Hr
         alnTJZPH+3sc2VkjNBmBkOxwjdqklra5GL9lypXpSIwlxBkfN7xcdOeK7clqEOdlo3qK
         mMqw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=RYK1fW+z;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=U+XYhIds;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675778; x=1713280578; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3DR54jbtu4jeQR+/wrv6SZvUyYxqAaZhGZKAmZNsh4=;
        b=lU5pZt7ZvXNuDR6xlQHDe5vip3CyfmYZ0GbZlqEIX0pr17auykgbNRKYzlRGRN/9MZ
         ySdo7zOVSps/KdV/u8KM1RnR93DepFMUxPCb1lBtYvIC2ExNLeQzy6FR6B324jxbCYyK
         FhtXczEhAWZf9C+uwOgpcqTElxLJpE+A8afyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675778; x=1713280578;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U3DR54jbtu4jeQR+/wrv6SZvUyYxqAaZhGZKAmZNsh4=;
        b=uNo5+U6wlt4CBP7OBkfZ1R3TujU39iqN/xCq8G2lPNfow2c6jL6ii+8ggNy6UUoF07
         x8tuJRD7udmh8ICibxSDOjXGJXg99CRluvhF3bP6PaQzU2QGfQ1PfEvR5XIT4TehzceD
         RMfvM/uYs6cqJJJQpT66u+cOfhmz2YBsSXKVjA89Ffntfgz/GOPUAhigchAXxiuoLevw
         JTerqFUsd7FrUUKHxl++YlEnKpN+iN0kmKFG5P6RP2JFNY00vKTSJYJAWrCp1cXfb8P9
         ixyUkd4zSOq7btXbF/q10wqNhMPkRggsm+Ct0qxunwuNYQV9Qb9lAKNpT+l3o/AcHRQj
         4/zA==
X-Forwarded-Encrypted: i=3; AJvYcCWxoPF8SaYB1V9zZAt1RMqJgAo4zhvITT2TqNNw3KtfEOz2u8dUSedpgPdPSUQRw/DXY2Qj19T9M27PRCNnQGemH9fgblig4jR+
X-Gm-Message-State: AOJu0Yxlf39tui/LXhSm3ruf0voRFahHLkJnXfXOUCrXXu/dEXrbQf7B
	1bUrxCF802qPZQhuSytalzZp/XTolN1ldyOKNAsu/Q80cNQeUqfI5eGMg29Q5yU=
X-Google-Smtp-Source: AGHT+IGha7bqcWp2HxYch62uAWw5TgoLNiNZA1z6/X70iCkIZtDc2Wqmnq2CrGW8Rti7Omu03v3w/Q==
X-Received: by 2002:a05:6871:6b81:b0:22e:b7d3:fbb3 with SMTP id zh1-20020a0568716b8100b0022eb7d3fbb3mr8910539oab.4.1712675777757;
        Tue, 09 Apr 2024 08:16:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:6489:b0:22e:ec66:ae1d with SMTP id
 cz9-20020a056870648900b0022eec66ae1dls2819110oab.0.-pod-prod-06-us; Tue, 09
 Apr 2024 08:16:17 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCV2AAl75mwJrJGA1I4gpxS2CHTqRBp3IZm//iPeQJ/9k+nWnmc3ZKf2iBvVsX1FwVu4HpqQZbyG6fEqiR0M4DUMENMQpH/XH+4YJNdKWGSvQcKYdys=
X-Received: by 2002:a05:6871:b25:b0:221:8726:7c0b with SMTP id fq37-20020a0568710b2500b0022187267c0bmr12088318oab.30.1712675776938;
        Tue, 09 Apr 2024 08:16:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675776; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1WRIMBwyOWIHtNlZSFoz9U8gO577GTDXoI+yO+V5RjcG7NpmkTOBUrWCiSALCicJW
         TJlmiJweLOklwyZIBjFzpqXXBtIoGjpHDmFU6Ik3XQTjVLGY1USmzEriblInW+f39hl3
         4iRI829Ul0FGoSPs63Jp+852BzyPipeBBMcjI6gj4oCHJHkwPvzvDITbQrKFbMYFiumL
         XzPk1E9Ru60yLFAqPOrXkyxVnEfEHdbaG1OuNkZ7nYqBxd8UnlttIxL6lsXD9n+ECouK
         8b3oPCfcAYDuWszCW2pC25R8nPifvxGrSNu7hbDz77AB+H8MpqYPZIug5B5TvyK8yIb5
         xLjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=u5eW9jWzxkeQtHNSnFEusu0jtyFEswMFYVVOm+zDjQY=;
        b=cl67p+2tDud/dcspk4tHRQ+JaD1VJXRMT4CvLI6uGF9iRJhIlY5VfgaDOnB6KGBhUq
         twfY9Awa0Q+oprqtTbyBgyIkwKQO3nlHsrvokq/An+VekfZtlWTcbAKTnr9WRhVqcSZO
         BhZFw+Nuhdt3213mSeltohQTte8vq3kj2c3OAdU/DHkzkRWNRVNXzvzPvAyY6Wz2mli2
         va3SQG76FBybMcF0UNg1Kyi5ez5hbObRiLd24x4TQUS37uq6618uvPrp2mXzinpbKWuK
         Td9OuxBhA+pXBJwG/wUlNbgpM501LtYYiwcb+Iqbj2uhK+Qgahndqj4XMXipDiVF5B0a
         56wQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=RYK1fW+z;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=U+XYhIds;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id e17-20020ac85dd1000000b00432de20772dsi10862044qtx.584.2024.04.09.08.16.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:16:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
X-CSE-ConnectionGUID: wu/AmVbqRdC6BYVLTZqpZw==
X-CSE-MsgGUID: FnspKhO2REaiVqkC3bsBSA==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13601660"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:16:12 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RGWc28lcYtyErDg+OUtCzggeV7r6LmEmD4bdchwA+Pf+AraYN1mc31zLs+HqG6N4vgZNu2+vTXSQmgwnHBDi9+BnjmcA5dc4/1UKEzdTQZxNQWv77lWfK6p6ooIQ7U1e2LUokJzTdSxvTjPxWhxoAsMWPBMKk4xLYdUEVs1z6xIdI25sG11YLMI4NpjUBqvkuj6GFT9MqLg3KPvuJqaqBmYQbZkbzusfTQ2Rfr+Ix+6C8+PNYgAZTo4FmrhZNLMbMf+UEWE5tlanekVOKIovnD00s5Hh7DrN3kjoYbc+WKQ+JVGeJiRl4SbtSwDkVwnfOCjWOZGnnFwdbjhHnrfjnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=BsvlzrYjwkW3bccHKupvZvUpkp4e0tKkOLL7sv7hOZQUf/7gy1ZD8TQ2jcjdIySij5lz9nGEoNcvnOSlIaQP9gwdAHQTLtU5HQFhJ/wL8qUWhxzV4g1nsArRJcZxf6lW2SPS8baoBBUh4TQAh3HeGiKZ9vENlGyg6utJ6XnZoGyVfYA8mkforuIJzHLKJctEcXIhAQivqsz5/6OvygmIiLpQd+alOIbYX5YfJlX7nERIRkQbN3Y09JfwX8zeGnmn8CbLx4jO11T19voqQC26T0RyHgMld0C0/B356Pen3JrpjxNp/t1eNV+4dRfDFU2Xyp1P0oSSeVjXUtwIOiI0Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by BY5PR04MB6375.namprd04.prod.outlook.com (2603:10b6:a03:1e6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 15:16:10 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:16:10 +0000
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
Subject: [usb-storage] Re: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Thread-Topic: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Thread-Index: AQHaiovZL/iD4SNeW06jEmzpoAlOg7FgDJuA
Date: Tue, 9 Apr 2024 15:16:10 +0000
Message-ID: <c8cc86f5-062a-4a5b-9983-66f01d1dbd09@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-12-hch@lst.de>
In-Reply-To: <20240409143748.980206-12-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|BY5PR04MB6375:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tJAXLUeJ8cMau3YPkF4VCS8DDnQL9bQgyBGdy95Jkx/0vKz4Aizxl1XoCEKsnpu6XpU37HN+Etxpy2LnR5GHrcQ1uSLDtxUKYYFbgnFvpPp4twSdKCMBa6NwUrwN54Ha/AFQEM3lWEuPkCWD2ckaB39qkXO+hQSRckrxghgUi2TFqBuvJjLb4sCjFbXQsPh2pFqIklDWV7lTJCCLfsqs+y1r/2KCWFS4I3sP3Ljw6M+XvAxwAOiJW24z9to3kcHf1IOkeubUq6mBatTb54zKgzlgGsbOOq+T3sqaoTv0luey8i3Wr2vXhBzuhD4T8adGpgHs5xe5SPxS9RK5OLNvZKLPJcsK7IYehcCfG8DNDZ2rXZkMnPiOmA3CYTq6rifHbaRZWJCYbxZMscUykJemtEmUd3aBcKY0l8/D4vV9YgBLKV+rAhvlRwfVRlUlVwhZwg28tAqp8XewVGnsGYdfBm3UFLb1QdoM+asWy3MSyFAEG3TBeR3ttoCNDbPM1Lo71nbHzo86fR3eVwW2I6F3K5pyACxONRY4i5h9Vn0zS4/fy+QFBxTa9/gT9x4MUVaycDIMl/FzyWEHIhPREYJIGu/E3nOMKVlBlPJI+o0I5RGOjXoORKzUNUOddoUQIZRQuQ8uZYqbB5Up7ARVcrdSylANQd0y5CKVkFOztmJ/wls=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0ljWmhLZ1dEN3dubGRkMW1MNGFvT2xycnZ2aWFheUJ2dU1qMGRHbHNQb0dn?=
 =?utf-8?B?WWQ5akxBNTJHdHBac0Qza2c1ajk3dkxHTEp3ZkpnbThuTGF0dUlpWjVOZFRN?=
 =?utf-8?B?bU1CcmhuMDhDM25KcS8xNHFSTkNNYU1OdkF2L04yNVFoL0VKRStSeDE0OUla?=
 =?utf-8?B?alV4YWh1Y3BnR0NMdDU1ZkJMak9waHBLa2lydHBRY1IwRDltOVIvbk5GaDgw?=
 =?utf-8?B?M0N4V3RGRktodUV6RUY1ajRSWGlOVUtVREpYc3FQZ3UxNjg1ank3RVkwMW9C?=
 =?utf-8?B?d3VNckZLT2s4MkgvUGVXL0V5Sng5MmE1dFhCVlRoRkNPZW5pTnpmTzJ6YjhJ?=
 =?utf-8?B?NEtQakh1eDdaL0pzYzhhdllFcDV0QW0rdU9NaGFrMndrN1YyUWRXZGtPMGg4?=
 =?utf-8?B?REg1OGtLWTF1N0dhNUlaMGp0emVva1RpRzllRVE5ZEFIVkovMElHNVB1R1E1?=
 =?utf-8?B?UndNTDJZWE50anM0NmI4em1xdEhLcjRLVUpZc0RLYVlGbTRUR1IzanhmSk5J?=
 =?utf-8?B?TjNHbWtFZ2wvMjljR2ZZdUplUVYyUUFiU01yQlFlWUZoVWtDL0lybTlqUGhn?=
 =?utf-8?B?QUFYWlFjT3RLak1LaUhiaTZKNzBhTE1lZks2S0kwT256VmhOQm1FaGxnNTBq?=
 =?utf-8?B?OE5VZUt2Z2pPNTJxcnFPdkJ1aTFhdFNGVitFMmpoWVFzQnNGdjIwMWc5UWRB?=
 =?utf-8?B?cXZiMFBuTURhMWNIN1pmcnJja0owemdqM005aHRVL0NUYUVLWU9aUlpjVVlV?=
 =?utf-8?B?emk4YVFzL24rbWVsVFRuYWE5MGVZdFNjSUM1K3pqcGF2ZDZqWjI5MjdEK2cy?=
 =?utf-8?B?TWFEYmowVTFCZGlvc1N4UjY3SnNSaVVZZC9HRXRmc254S2pzaXZkLzRTVnEy?=
 =?utf-8?B?NWxaeloySFVwN3lINFRFbmhFd3lhdnZ1L2dqOEhlM1lramtGRVg5TiswV1Nu?=
 =?utf-8?B?bUlEUndBaklpUGw0Q2p6SFZFbzdSNUhLaExocitxVHNQNS9nYjZ3c0xyVDBV?=
 =?utf-8?B?VU1uUkYrak5CTUpTdEdVUmZOdVBaV0dObEkwMVFwRmwxdWo5OU9tOHpvbzJZ?=
 =?utf-8?B?bnpUL3hobWhmTjJWUUdqeVZkZWdFZmpZRDA3YVd1WU5rRCs2dkFoS3dMMWl4?=
 =?utf-8?B?RDYrYVJvc0JaQ2pXLzZIUFdqVk56ZXh5NGtkbFY2VUdSWDZVSTQrbXNjak5N?=
 =?utf-8?B?Yi90b24vNDlKRWFNQkk3TXBUTmhjSWQyMkxWazNpczcxK3pmVTBoZGZSclNk?=
 =?utf-8?B?SmNUVWdsZmNCeExpQWpZeDBnM0M3Rkg2TFJsU3diZzBITjZyMThwT1dZdGtO?=
 =?utf-8?B?V0pZRmhMdEJpbFk4czVDVVpOcDVaVlJwSnhyMkdWblQ1c3kxMUo1VnBQNXZI?=
 =?utf-8?B?ek1ueVdWbUtuY0JEUWV6TVF3S0lxLzh4QjZnYUpNV1REYytCK1MvNDNjdVNq?=
 =?utf-8?B?TDN4SVpMTDd3ak4vWmpRMzdEbDBMR1VsZ1RzVCtSMENOSkRNYzRIbUlHaHps?=
 =?utf-8?B?NDRDcmtwR2tMbFFtWnJMdXBBWDk0R3pOK1B2WVBTaksvUVJEa1ZQck9CbHNv?=
 =?utf-8?B?WCtnTlRaVG9JL2FFL3BRVTBmdElxaU0zc3hsUE9CZkZNVVJib3AyaUdYbWZR?=
 =?utf-8?B?UEJ0d1RXeTEzei9uNFpqL1FqN3RacDZEd011Qzd3YzI4SUxuZUFxblRoN3Zx?=
 =?utf-8?B?WkVTK3ZYZm9oM3M5ZVZKU3M1aG1FV3ZNc0VIQmtTaGxzMEZDWTlBQm9MS2tE?=
 =?utf-8?B?SURqRDc3WEh3TWlETWgweTdaYkpzYnFJakprYitZTmpXT2tYbEFhbk5JRmpi?=
 =?utf-8?B?cDZSdWpBWWNpbmhHYk5FZ3QxRi9ra3hUc1NhZE4yaFI2WkpVRkxob3JWZ2x2?=
 =?utf-8?B?bXlQTXhRZG4rTW44d0RVRlh2a3dqWTErUkpDemlWcXlNdjM0cHUralVqeHZw?=
 =?utf-8?B?MWFYaHRadmpIVzN5Y3ViMHdqd3A3TmhyR090MzhzVW9CTEN6MVFmRlRGS3J1?=
 =?utf-8?B?ZGtpMk14dEo2YTl4bUc5WUxIeTArUG5nZ3N5T3JDZE8yd2ZKZ0NZREtlZW9K?=
 =?utf-8?B?anFadFo1YXEvS0hIV2trWEtHdGVCejJPcGxVYkIrbjlPMHNXWm9lWG9saTM1?=
 =?utf-8?B?Tm5SRCtDOEpnb2xNWXd4djhKY2NDT1pXU3hQNmZxajMzSWJqRWwrZGsxZS9U?=
 =?utf-8?B?dGQrMXEyaGpoc0FvR0xRdFROT3NSS2ZXNUNuQVBDN1dIalJranI2S0UyRVZr?=
 =?utf-8?B?Mk02aW02Wmdvam5BRG1IOXl6d3hBPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5066833A619EDC49B275267E54070427@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: dvnTDGcegYfIOuN4V0ZxLSoGk3hioZ3Z3nCueyZVBM25x/NnwRV+W51HVYg9hpdDxQJ87ukkViIKWDgHdTuHHlhzBSRTJHplnnEJ6sk2EdqEAupXDW/Xk6WSUkF5qkg3YMYwyp/9+XOCc6mZZHCfK2RTvcL5zvEVCdmcMjXu0b1DwysAu7S9Nbasrk26+pyv6IFC7ptGcz8fQDqCyRJmCh8Uwq1mFJusNZBFi1SzvyRxsUQQV/ybZLklWy9p6NC2GxzslZc9+du9w8vCXORNUOUNWf6SOCewHeNUV40jfNTjoNnqH3nXcV8tCgrmhv1TYwF8SXhR8I1C/8HbTAV/GfL5qEZ2E/91uRcYQmXBsN0e0gFGlXoGx6n975cTPRjosxLiYMhtFdrKNOV83gLNog6Mwr1b6rvyqfyuKAOAO3SraO+MSdEsrMsFbq7Db+MsrKbnKmwr8ktgRGjCVVnVeEPtoT66s+49U7xZ0zBmhVtQL4QBLeqEDk+96s5LGW6KFQiVVKaXYB9W/z9YCs8L9DQvaMox1zBVOdAtcemsJFCjhBZ3N0s6kKtVaa4aSaoVrl53+i3fLtFOH2cyGYLHUIfxX9zk3PHqnPsZTgd/0yDaJ5ydkgm/y9nigxM8EAWz
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40e36f40-4e48-46ad-eb85-08dc58a7fcac
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:16:10.1573
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DQIF7QcIDrOD1c0BMXwF6+1aZDK0/BEi1ZD2w8q/jbMDLcFO/rGkNN5BABqRyCpRHIfk+r4Y+8peOBzxD4uEmNEahHj1FGuZ/q+IFPyBCLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6375
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=RYK1fW+z;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=U+XYhIds;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c8cc86f5-062a-4a5b-9983-66f01d1dbd09%40wdc.com.
