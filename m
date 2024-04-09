Return-Path: <usb-storage+bncBDW5PLF2TMFBB7V72WYAMGQEHJ6CFIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 312CE89DF3C
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:34:24 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-69b31b7df0dsf6064306d6.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:34:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712676863; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieUhCtVH5LoZWeGPZqVHUGKjtGktp84RlKXaqRMkjeb9LEseUhGXZ4waCqUSj09K1c
         y6YFhCBrhaObc7Kx8WO8PfyGkV+sH+dLJGZx8ahm/kIZmS8IRFdjutEmQtN+Wc2BJg/a
         q5ue95ialuyxEEMv6bVHT+Tl1cUp+HgYos2w5Kk9ITmhuhOIG60II2GS/FWzCjC1Z7ej
         NNTkk5p+xtH4eDMvZ24VvtlZvPNFJdSgIPDWd4JjDodU6Xu366k8MYdegSPy881+6knP
         4DZfS5pRUY3jWHREDeYHPYgeZFPB9kjKwyLBJLLvuoG2H5/rgsMr9kh3dXM/Kz+Z3aaT
         Jpug==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=Jkvv+EuwybGryNbwtVP2BE3D7AyfX4W5Jt/aUllwJHE=;
        fh=a1a2wbWv5fLZFv2Lhq5mr/SbS6vRf9RhAs9Fwj3DvV0=;
        b=M2aefVxotFshTi7/4S8r/COmY4cOxVHKCX14FZDT+sTTC7SHRWeeLFLQ9Oi3fJgw+r
         tBE+2ko3wLYJpG3Hec5LiiESrfoJayWmjvLQfqMWbyT20dzTIlxu47d05mqcYwyZFMuY
         WV1UdWzvYy8RAto7CBmOeH+eArNEbxbDQBFBJnV/0IYsWbKRADD9qpU885nb2JvMYad6
         gj2zqrWAgX5UoB4Ucyl1eputDhmFOAnsLHPXx60O/CuxGmg5a4xRI0fHG3PZ+6WxO4T5
         5bzIa7exvBwbJXqAll40F+cB2q6nlqm818YCKpKUXgJCjoRKqumLI58g3QZApvY8ASI2
         matg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=p5eoBY1w;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=ZB2PUudT;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712676863; x=1713281663; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jkvv+EuwybGryNbwtVP2BE3D7AyfX4W5Jt/aUllwJHE=;
        b=jGjCDGEwASdMY5xQmoa6BsA7rA9KQGtrCcCuuOeID7EkAzFN8JX5CnJ33gPXcLFA4F
         tFDiBWxppSyuUwzrktdEiPcF5X01GgB+mPb/exNpQzNlzmj9ZRfV5RWcnQjB1Whg5+oV
         HffGzetqdhsRLvnOPF14L0z4FY5CzCXM0n3ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712676863; x=1713281663;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jkvv+EuwybGryNbwtVP2BE3D7AyfX4W5Jt/aUllwJHE=;
        b=u+zX8a5Gy4jvvHXeANpLtIvCZpw4uhx+2k1cFEfizgXKmyWsUn81e72jy7CvIXsDQc
         gTTEo3/s9jDTyeJ4Ne0+sFxRzjCwFU+KdnPGTPNdl2gNrbOBbjal38DNN2jY+MatJMWj
         RVXbLqj25B46vcHJsf8GwcPzifui/wyhUbJWdPtwdr4jhmEDjh+hILBOUrH0HMAbWg24
         +DpfNdDDKq3hgj8NDL7HBYm1hH4f47WUJlQMqYzx3GTgjL6Ch85aWdkfkhXtEt2mtv2u
         Mz79T/VU01NksuGPq5C7Lu7UyNB6qBdCwuTKvfv+X77yh0o2r4vbPE2GiwQwga65oAvl
         Vz9g==
X-Forwarded-Encrypted: i=3; AJvYcCU4AVDZB0EXChYrEGlzL+Fs490cpXLKva1lRB6vjttAA7r7Kn8BLKs/HLMt42Q5KMp1zS2KMhesckfh1OgMh2gugdNW61Ry305S
X-Gm-Message-State: AOJu0Yyw/neIu6OR852qj89A9QxYyLWN1l4USAU31CbzqsWAhkmU8p3N
	dK9ouABWxODv9DdHeFEtDi6/ahqgIvx/KK7sFlaBYveHMJOas/Z/VfwDjJOuZQk=
X-Google-Smtp-Source: AGHT+IHjPrU8yp0CMvQ1fQef2ExVjyJRUdWczm2WTRHUpeWLPmjzgRZLkahJK7VVPq1JDmc/ldFFBQ==
X-Received: by 2002:a05:6214:f63:b0:699:2221:6a1c with SMTP id iy3-20020a0562140f6300b0069922216a1cmr15351528qvb.58.1712676862981;
        Tue, 09 Apr 2024 08:34:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:3019:b0:696:9190:cd48 with SMTP id
 ke25-20020a056214301900b006969190cd48ls2089675qvb.1.-pod-prod-07-us; Tue, 09
 Apr 2024 08:34:22 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWP5UYAJmBaYHHkl6NnZC29PKZ0lzi3LFjgr+2xhQqqLWdkXS8Vkc1u33OKetdHaIH3cPXjsMAsqCCk4+NptfH1Vk9UgrEssSV/Iyj/leRYM0BJRac=
X-Received: by 2002:a05:6214:1c8b:b0:699:f24:d70c with SMTP id ib11-20020a0562141c8b00b006990f24d70cmr13070703qvb.62.1712676862090;
        Tue, 09 Apr 2024 08:34:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712676862; cv=pass;
        d=google.com; s=arc-20160816;
        b=w+YkU9qoXR+vp9O7zy2IqSg+axdb93FIP7uBEZJ/J1lrc3X/8vt3LaX6BvPxX/PAkF
         QBGWML8zGI5EfbBWtQ89qzSMvmRFREHRzN7LqqzKC4YzgXwp0PGw1InDuaxx+fj4cuO4
         y4g6MHBPd2zOC0SlU0qXXuaVnHBjy6Ba7o5Ubbw8jOrDFVYDSzGW9gUev8wUJLvCvAXU
         scsTJZWe/+nZeVBS7FLYAqRKV1OkdkyjDmGG/v9cZdns6ts17QIwRLPZeYOmIv/hVHmj
         oIuwZh32fo0vuuMiDvC77JbXZwIJKRbaKn1PxUo0XnP0cQ8LzNqtypu2MUkHoi550XQW
         5Nkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=5PrsjNOkWCAA7lY8QhuHsQKhAWALeR9iAjCMAPLzSeQ=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=RF8rKhSqyCRZjRAAEwEAcejREioMVlAMgOYAwJzKqo+B8itmGjC+VNC+dHuczOwgtA
         t55z0uOBbKbnpPXfeR+tA+S5cAEPZDmR0jkcfYP1kbWH87sVCa+xB4ReTZMbjF3i1flv
         cSdvdBzdCZH9iMZz9g2kRWN6Na+6W9IOXfUndOGeuTWx7mhonpjAt8bKCn2va7KHgEag
         tjRcbDWFRoaVhS5lWVVvGcW6AQilHm9VeGF4JMQmHndDQLjKHGT++5BbP5sN5qLpZgm6
         ec2F/xmp66DxPRzrSQH4mDuZcBMAbtWsyfSbYxjF1ZiTX8Ba2Vhc9k9FfFnvDxnmUtIi
         40xg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=p5eoBY1w;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=ZB2PUudT;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com. [216.71.154.42])
        by mx.google.com with ESMTPS id w6-20020a0cc246000000b0069b10f143aesi6499099qvh.412.2024.04.09.08.34.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:34:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42 as permitted sender) client-ip=216.71.154.42;
X-CSE-ConnectionGUID: WLXNzbsuTv2zgFGY9mLtPA==
X-CSE-MsgGUID: nIhsGmVcT4OCms5JGsauGw==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13079432"
Received: from mail-bn8nam04lp2040.outbound.protection.outlook.com (HELO NAM04-BN8-obe.outbound.protection.outlook.com) ([104.47.74.40])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:34:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nE9sIR+GTueVCTBhpylaaC6t6wb8uPt/wRArsDcDJnrRfhTI6f8TCXYFV4ZNE8W+Ngpclqt1GlViDt4D2bI9ulEG8PlVc5OkNmShxmgdFDL6SWdnwnOdfz82Gk/sggBzGfi/1g/x472o32Eckd+JjQGRI0zPLXTibI8P3MQQgmzP2YntMXEwmfdcjIhVWDijbatL7EJ58j4XmiiethU/pSr+YmgD6+aLhLMN+0fl8cYKerOIG58irqIvichkdUP4Rj9CgkX0j/xDlOaSMlI7ItUWKLJUugAZdNJdXfndClLmAeBvBtxITyB87QtICKNKm/lbZtQ1TVbC6MWMs2sRGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5PrsjNOkWCAA7lY8QhuHsQKhAWALeR9iAjCMAPLzSeQ=;
 b=D3mqt0ra3wsyioln5Rq98t9QIl4xUwF6I64mqI1vAVb7NPnYetctvEjEiDDZ0B/ht2Q1ZU269EIsgpv4jh+qwOtQKmRRHVgIMv0NhtDeFvETfZKx/1SV6J7dfaWqa57Ae8sd3KEDbcG9d0KsUhuGNxqY0+bU6F7ncVFN+MQvIj2lVD5pqpVAk/xqH2EKKP8XamTXanj+QZluGz5iZr8mTCz5MC44EF2bTNLv/1inH08CsZcT/ygm4OxWXYWA6aCCsRPp1KpVjkXAM50SbFLYP6scAg0VfJjYv3Zl/eiDqtwUxsOVLt2j4JZE1rtSzwiO+JV+xzlE54fCiDMfshOkAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by SA0PR04MB7417.namprd04.prod.outlook.com (2603:10b6:806:ee::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.54; Tue, 9 Apr
 2024 15:34:14 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:34:13 +0000
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
Subject: [usb-storage] Re: [PATCH 21/23] mpi3mr: switch to using ->device_configure
Thread-Topic: [PATCH 21/23] mpi3mr: switch to using ->device_configure
Thread-Index: AQHaiowbkQDc0j/+qUSj1t4oMOP0UrFgEaeA
Date: Tue, 9 Apr 2024 15:34:13 +0000
Message-ID: <1e41a8df-2046-45cf-8ab7-caa5839d1718@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-22-hch@lst.de>
In-Reply-To: <20240409143748.980206-22-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|SA0PR04MB7417:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uuDs1e3W+WanIx9flAYB6LidTFpnKzKyzAhjgSu8eSS1OW/HvuoIq9plbCGgepOzmv6qp2sUatTSRCRDgD+lbiul+T7zOjkeEXCaDRl8RlpdVbJbuXpcmD35EQr94RjWasAcRs3i7jlm7Rno0tOG3NLPdnutgwjqVhEZTDY3HC6Hi7FcFRRcxycSCR3Ae4sDmrvZaUcW3XDz/S5lUw7pGmMXQmaywud/hETlsLg4jHVT7ttwd4p1ZWluj5xy7gV1xNP6xD/sH9FgPLvYVZeiX+3OTLmGmGmjtv6DH3Up8w+bebdAnc9oMlZY6HgCRVh2Ekk2Df/1uPb/xNe5E8TtFTFsxtjK+z4LnpJYUkzKFDKFDmORzqSPEsqfC69jhbhG6gc7bbnKLre9TFGtPOt/jXCLufaUAbzLsvjQv5iNe9zwXjo6kVY1EyCWmJMdJp2WhpbDESf1Xy1Oli4Nj6Sgi4GslcTbvPqF/YK8L54uF6fr4MGSa+2ovbc513+P7yGrKNq/o9RIu2Higz8zHkNlJbxHkmg16x2jJevtI0KExTHgjql9MD17/Ws402/nDD/tUBSiH9j0zw2bLj/u4v4WVnu5KnYIE8gcO1lF6fDr1XKzUAH0+sXWCw7iUMh4Yqr9crbpv+FTemuj8/v/d6rLwYA8nZkEubYXmT2BTysQRIA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Um9SWVZnVGhSaTBHUzVlbjJXcjlxd3c2OWR4Q1d5NHBRZzVZRGhQeVhBNDJT?=
 =?utf-8?B?eStZS0JHbzN0S2RMajJ2dS9Ea1NDeEc5WFlVSStSNGpJS1UrKzB6OUZHZ3Zp?=
 =?utf-8?B?LzI2aWg0aXhHbG84RWxIV1grRU9LSGpSOVN5ZTYvUElGN0dUOWZCVWEyWXZL?=
 =?utf-8?B?U0pqMW5yVjZDL1RKRGVMOElwUWlJT0F6QTIvSGUxR2ozdWZ5L2tFcHZGd1Nk?=
 =?utf-8?B?N1dBdlh5L2RrMDZicFBpdVhvczV5Vldxbm1PMTlYby9WVTdvWU5tbmJ6ZnpC?=
 =?utf-8?B?WE9Nd3ZTcnNmcU5iSVppbEZsdkxEZ1dsSmpJU0g2K20ycjFEMTJpdzUxVmg2?=
 =?utf-8?B?UFFoTFFIUWFyOWJuWHI4dmRWZi9YaWNBYVZCYldQSS9TN0lBc0pXMGl1eGRB?=
 =?utf-8?B?dW1OMU5YRTUveFhrMEQxUHVJTWpMV293Y0lsWXQyUk0vcVhDbU5mWVdpc1RE?=
 =?utf-8?B?RGs2a3NaVWZVcmtCbHFhRzFKYlFOK0M2MVNFd3hQRi9CQTZTVTFNTjJWbWV5?=
 =?utf-8?B?SDJLM0xkVlVDRWwveDNvOXF6ZDFWVkZtVjBOcUpsdGVtSkZKcWc0enJUb0VF?=
 =?utf-8?B?cXR5NG53aVBsWnR0dHlnWGRUcG5vMkJ0UHRhTHNTSkx1OW1IZ0lJS2g0Mnkv?=
 =?utf-8?B?YmlJM3RvT2crUmY4WmJHV1dPK25kYktxN3NVVXgwdnBXaWdLekFuR254Zk4x?=
 =?utf-8?B?cGdyaHJxRTFMRWwwS2VyMnNaWnNVbXFDNGo1RDJmcHdFcXorQXgwNm9KbE8x?=
 =?utf-8?B?T1Y0ci9IQ0czbDJNUWpjbU16Z20wQ0o3bTA4VmxmVElhbjh0YStHUjBBN1Zs?=
 =?utf-8?B?U21jSzh2L2hJRFpVekVSejRNazBIRGluVjRkMnY5SGpWVHV3ZE1zM1VnTldG?=
 =?utf-8?B?UFl3Y0pDWXRTRXh4K1E5MnU0MmRFM3R1V203LzEzNEQvSG5sSFl0TmtBWjR1?=
 =?utf-8?B?QWwyTFk1aTlwaFlpaFo2T0ZHK2dsQ2RyS2YrVUdqdW52OU9jcGlwbmJuWkk1?=
 =?utf-8?B?dStwZ1JDckpXQnRKYW9MQWxRaVh2ZGZTS0ptV0xJcnE0RDJOTkl1WDZSR1Yv?=
 =?utf-8?B?VktrQk8vWko5WXF2QWpKOW1SQVN3bUtNclBSVktaNWh0WGFrVjFIQSt2Ukhn?=
 =?utf-8?B?VnVVQm5WNmdwNEZBUTd4YWFNVWF4Q1BNRjNIK3VjekRnSkh5WGdrQm5QMGJt?=
 =?utf-8?B?bCtWQUZQaTd3eEIrTS9ZK2lPdnJiNXMrZ1RiaWFtNmJ4TnhnL3I5VDJCd3gx?=
 =?utf-8?B?K0FOZmViakYxNng4RmdPOHpxdW0vWUxQeTR0aE1DVFZvTE01YitNVFBjNmtl?=
 =?utf-8?B?OUZITGQrdkdDWURMUWNpWlJSUVYyVkZ1ZnlMY1NUWm9MTytORVJuU1JUWDJ5?=
 =?utf-8?B?ZFZ4bnhQMzYzdTdsKzc3K1pwSFo3WHZ5UTJWVXlaOGUvam44SUJoWXU4aXZr?=
 =?utf-8?B?V0ZaWDhqbXdlOXBGeFJHb0hNNWlQZDlMM3NqWXAxUDFVby9SMkM2VlZISWNJ?=
 =?utf-8?B?N3pZRHJXcTd4NUdQdUpLMmRVZVVqd1pMeng2cFhGblRsYmM1LzNRRm1Jc01V?=
 =?utf-8?B?V0x6YTZ0U1QvZmtuT2QyVWRFRzlxZXNvYUtGZWNFQ2R4ZFFtZzkzMEdCTXgz?=
 =?utf-8?B?MTdRY3oydGlQQjI3RGdFRDRlTTJ2R0ZXSk9UbXdrYlFGbTJSTHA1ZmRxcVBF?=
 =?utf-8?B?eG9OQ2pPWGpVa3lleGNUWEhhVThYUEZJWk5ZRG1LdmNHUEYvYkw2OXdVOHVn?=
 =?utf-8?B?K0l2K3NVZVFYaCsrQzYzd0tSNGlWT1JvTkRtdCtjNDBDWmp4K2NpUkswdXIz?=
 =?utf-8?B?NDc0b25VcDBTWk5hNUtzUzYwR204YTFvZjZXZmRITVQyNm40ZUp4S3loNWJv?=
 =?utf-8?B?U2J2OWowd2dGckJLaWNVWDJibEFVdjlqNkhxci9wK1JvaTNoUmt6bytZQk1m?=
 =?utf-8?B?Y2JqQUl4RFpWcERJUDZlUnNLcHk4YjB0NnE2V2kzVmVrYlp5eDZ2eFlwMTZ6?=
 =?utf-8?B?TVRBYzJVQ2U5WGtOZHRrRG9pU0FvUDFjUDM1SVlzNDZkUFM3aTBOamdDaXcv?=
 =?utf-8?B?SHFZVE9HdXp4NWJZNnJyR0V2VFAxOXZ4ZDQ5QjFkWW5Iazh0RVAxRkZpNWNM?=
 =?utf-8?B?MVZ4SlhwS29hajBKMGNyUWk0STdEYW9EK2ZEZWJHUFk4aVpCK2R1Wjlqa2hB?=
 =?utf-8?B?R2lOVzlONkdPQnVXMmp6bkpiUXV0YlpEWjRYL1NoQVZiL2xtWGZoWGI1bkVu?=
 =?utf-8?B?YlMxUWF6OFFXR21KTDVwUWZHMm9RPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <8550081561FA844E9C5CA8ACCC3F1C26@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: +AIJ5J1HLrGkz5C8T5ui3ODkVmLRmEVLmW6PgblEQ7m8ckdNU2a+Hmh7upE8FnSoEoNgYtnA7isBfLmtvUa/uvUT1DIw8gxfgRo20g613qN9tByNRo9e39v+gqv37vlyVzE75tvADppILfSWiaFT679rBZslKRyD+1XlA8S0xl60hSzfugTPkD/fWMZetzxBCY7z8mnNdlnbPVbLk5M/6zM5JKhCXv5XC+SUPXwCcYnQbsZBfXQmmGj3orSCWtkLQS0X9rZRFVwFSbVtkGvQWJfu4lONNfDhFyWOh9p8JB5fAE54afGq5IwZxfciWh3y8arNlqwV7dc1dJmtjeCPfWqYhe/7gP9p6j5agB8xqC679EkJ5nnxbwN7ljU3QlSGndSgAHtTWSM+kvtN2POU1X53PuzXqYXrWZeEeyaO7vGR1c8jSHfjr5JzcQ5RzPwP+cgpX//7fHQWxNxxDHfx+R+8VW/CKTrt8TrOSTJGBH62k+yTYs7Lwfvy0QauRJ3U2s6sWQX2edHr4FXZtWedqk30c3BetP9ly4wS5QzvnQWsjHvktU0HqC0bvLFMJ82y5esHbjzt7ELfx8UmxVzmNS+SSWrB09On6Nqycn4sLKISkHqdnulw8KuDrxtMwc/p
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 974ee461-51e4-48ef-028b-08dc58aa82a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:34:13.9128
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZWJY6TL62+HNwCI28/Lp1hjsgV6sswx850NVkK9zgm70E+A1l5dNyIvYEBZhMTiMf5+yc1w7kzTplecAmW+wIv5Luw3fbUqco20Q4czned0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR04MB7417
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=p5eoBY1w;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=ZB2PUudT;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42
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

On 09.04.24 16:42, Christoph Hellwig wrote:
> +static void mpi3mr_configure_nvme_dev(struct mpi3mr_tgt_dev *tgt_dev,
> +		struct queue_limits *lim)
> +{
> +	u8 pgsz = tgt_dev->dev_spec.pcie_inf.pgsz ? : MPI3MR_DEFAULT_PGSZEXP;
> +
> +	lim->max_hw_sectors = tgt_dev->dev_spec.pcie_inf.mdts / 512;
> +	lim->virt_boundary_mask = (1 << pgsz) - 1;
> +}
> +
> +static void mpi3mr_configure_tgt_dev(struct mpi3mr_tgt_dev *tgt_dev,
> +		struct queue_limits *lim)
> +{
> +	if (tgt_dev->dev_type == MPI3_DEVICE_DEVFORM_PCIE &&
> +	    (tgt_dev->dev_spec.pcie_inf.dev_info &
> +	     MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
> +			MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE)
> +		mpi3mr_configure_nvme_dev(tgt_dev, lim);
> +}
> +

[...]

> -	switch (tgt_dev->dev_type) {
> -	case MPI3_DEVICE_DEVFORM_PCIE:
> -		/*The block layer hw sector size = 512*/
> -		if ((tgt_dev->dev_spec.pcie_inf.dev_info &
> -		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
> -		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE) {
> -			blk_queue_max_hw_sectors(sdev->request_queue,
> -			    tgt_dev->dev_spec.pcie_inf.mdts / 512);
> -			if (tgt_dev->dev_spec.pcie_inf.pgsz == 0)
> -				blk_queue_virt_boundary(sdev->request_queue,
> -				    ((1 << MPI3MR_DEFAULT_PGSZEXP) - 1));
> -			else
> -				blk_queue_virt_boundary(sdev->request_queue,
> -				    ((1 << tgt_dev->dev_spec.pcie_inf.pgsz) - 1));
> -		}
> -		break;
> -	default:
> -		break;
> -	}
> -
> +	mpi3mr_configure_tgt_dev(tgt_dev, lim);

Why did you split this into two functions, with the innermost function 
being only called once?

While it's slightly less of a mess to read this would be fully 
sufficient and IMHO more readable (please excuse the whitespace damage):

static void mpi3mr_configure_tgt_dev(struct mpi3mr_tgt_dev *tgt_dev,
		struct queue_limits *lim)
{
	u8 pgsz;

	if (tgt_dev->dev_type != MPI3_DEVICE_DEVFORM_PCIE)
		return;
	if (tgt_dev->dev_spec.pcie_inf.dev_info &
	     MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) !=
			MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE)
		return;

	if (tgt_dev->dev_spec.pcie_inf.pgsz)
		pgsz = tgt_dev->dev_spec.pcie_inf.pgsz;
	else
		pgsz = MPI3MR_DEFAULT_PGSZEXP;

	lim->max_hw_sectors = tgt_dev->dev_spec.pcie_inf.mdts / 512;
	lim->virt_boundary_mask = (1 << pgsz) - 1;
}

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1e41a8df-2046-45cf-8ab7-caa5839d1718%40wdc.com.
