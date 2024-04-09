Return-Path: <usb-storage+bncBAABBFVW2WYAMGQEQ4J4V7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A04B89DE4B
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:28 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5aa22f4eab3sf2627205eaf.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675607; cv=pass;
        d=google.com; s=arc-20160816;
        b=cbqzeCCtqLsKuO4nwJ5iKQqaxsb73QU7+sUcxPko7dp1PaUUEAbSQSCTlfFecnINwc
         VACFMbDwwuwlpShoRqUeXwJh5o9Fprsp8/UbW/wrtL/ntsal1o256nXMipNh+LBVtZdB
         9qAbR3/xVZPd8eD4SpbWmHQrqou2yrmX58SjPBwAI+RRLEQl4rlArcwhBuUKbgLK99Zm
         42Ueb36SF+LW5fisbJa/5+VptcPLPBsBFqc040s0nS5hFJYJybN4y4WTP7uKKewKJ5Me
         N8rl4pnyeE0i0/fIyjbz/USEFQyIRYxPusTziAeriy5U5j9LxBXWR9Opi2Moek+yjgCB
         Ki8A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=vll6dRXG1xnsiVz75BYkNATKWEYFXWaRONX331YS1sM=;
        fh=6wNpvXtbxd3GQQS6D6/dKeAGUcueg/vq5M/kII7BodA=;
        b=ollkPRQhwQ/5EfrxbqRd17K2O8VBY5w6wmhdh3Rci1CNIIaivfkroge/DOP++NAWiG
         zatpMw21ki39Uro5HFSyGZmT/9NPNOsEGm1BxIlrVYgc6GBKE0arIeUbCeyZt5JOwbRL
         dkto/wu9qckGVpLRJHg+K0wySvgb51NrbcSx3u2G9U6+xL8Q7+bw787+GSGnYjXfbN3v
         wF7rL9PKlS6CUAFypUbkoBWEo2lTu1aFuToBxFQ4XLxG9mqHeLPEt5VjrRhOQEqWr+EA
         pdVFnLbvqEH+/U+IA2Yp3AwJg8JVBd6v3ie5AR/D/CnYVFt1rsr/Z9vVyhypAFaDmE9E
         8ZCQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=IJr++rTD;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=M+nGMEh9;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675607; x=1713280407; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vll6dRXG1xnsiVz75BYkNATKWEYFXWaRONX331YS1sM=;
        b=W4bvm0sbcN85exyjNXyiC7K/xxPXWGgaJGvTsY4ay81Cf899LZbVQbgEzslfWXCTEp
         FBqRp50tI2kxuum6ORatsP4+T25txYrgbRp8SBsgA6Kb1XRKrOHrpLkP7KSnlLrtOQNV
         Da8xwkbE0g6G447JRo8a9tjNNhOw3YSwIar5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675607; x=1713280407;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vll6dRXG1xnsiVz75BYkNATKWEYFXWaRONX331YS1sM=;
        b=rAo0dTz1ABh1po0HKeq/okIoRnQ/M6/2sX9AcrqMXhquJ9UOqrT6zLO8wRoCL6Ulh/
         zi7Vf93S9HD1YZ0BQ7i43W28klxf0y+dY5Xr0tWIIJMHdYtxNLThicghD8VVP5XXcUje
         BthBhMYXXYUcYlFlr9RQMOCEXW6IxuCjrXdP7+O9PgoPM7snjQPZwzxPsBIR4CcghR+m
         d42O1gFrFAeC9qHuo99XqQGFERpKWpWh7r0NBD8fadVCaX/9I0FBg1gNI+fQqiK2yezB
         JvNfFBgFZFjAZXD48qoS0V/gYoISJyXkiLQW+ght7yY5E6Us1cQgYUzRqUVpdhl8XVPG
         tKjA==
X-Forwarded-Encrypted: i=3; AJvYcCU6mjGxKQySqDyWyuY9T5kwnO2/1CewvGrfd8S+WCuJWCipEkmNNfWdHjqEE/89Yu8HSnjPaMzC1eQ/PykegTIZI/q5cYr65QTn
X-Gm-Message-State: AOJu0YxV8C8K72nmpDS9kf1BWfH+QkVGxepZbjZKSdcAFaB6rGIwgeiL
	ivsUdx0mPw3lWOqNhTsNB0biAGWjv2mt8ET3yc+Byo8bVdh+HxX+ZRqcNZiqGIc=
X-Google-Smtp-Source: AGHT+IHrj2K7p+fEG916bIuy7IMpDMj9VmYLS4gL+X04YOvRQ8COdwZGocMM02t4/TYy/Rt2FNc+sA==
X-Received: by 2002:a05:6820:1511:b0:5aa:377c:641d with SMTP id ay17-20020a056820151100b005aa377c641dmr211950oob.1.1712675606934;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5542:0:b0:5aa:692f:5e93 with SMTP id e63-20020a4a5542000000b005aa692f5e93ls110347oob.0.-pod-prod-08-us;
 Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUOwPnISWK3ObIJVzp9V3/llfUss+OR4Hr/GC/X+wy+dVyaMr1UstChazHO3vEiRkh7S7Cm12rZYODzIBpPJcQOGJcxDEzDyd2uCwGadMWk9ln4Dyk=
X-Received: by 2002:a05:6820:80f:b0:5aa:3502:bbf4 with SMTP id bg15-20020a056820080f00b005aa3502bbf4mr7831oob.0.1712675606537;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
Received: by 2002:a05:6808:1591:b0:3c5:e8ff:ff1e with SMTP id 5614622812f47-3c5e8ffffb8msb6e;
        Tue, 9 Apr 2024 08:08:19 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXKEFODjo2aP3OCHLpS8MK4XEYhcB73YAJcDIy6nB95b4Ikke6mjem5R6GimJrWIMOiuev4RQ3cvzc/qNqbilSBm8klV8QqqrK4WoeK7C64iEcGQuc=
X-Received: by 2002:a05:6871:9ec1:b0:22e:8ba0:921f with SMTP id kr1-20020a0568719ec100b0022e8ba0921fmr9897517oac.52.1712675298512;
        Tue, 09 Apr 2024 08:08:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675298; cv=pass;
        d=google.com; s=arc-20160816;
        b=QSEp/R6K6xH6ARb1rWkr8181CoYEFaq/jOs+kYPgt65QKlwXqXb0kTZufAmLulcliF
         7BVZ40Nn9KFBwZwqUwwaQRWaXZHEUzHIzkRbNZUBt+9drym9+aDVfaHY/hgBXOdHDk9L
         0HWsD4yqeNryrXfHb8gBh/3o1xeEK89kqswNMKDP00zzump8Q4mgQ3UwZMmLfRE4dRak
         CyUiqpYoIjm/RD0wYA2uL3jdArGhKMCeJGWZPNib2fssLFFSWC1Tpb+EMl7ASH8BhEkp
         l06BR36UW2kL2YLFpiFazpn+k+yd61vZMHiZ/x2cOWWlc5Mirkfb8ib+M27U+3XzDqUQ
         oOkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=K87h1M+Mjf9yu3+oazlkkgmLosW0e82G4Holg2Acb1sgRpumwLoEX7Mb8KCGZb5HUg
         j7ga4cker34Hucnk45syULZcRePlhXjU6ep4ibJ7QmaNJOzDvIfdWD28E7nbupNL8eS8
         C0JZePf8AJiIaq7W065KPIEFRF2PtuaJiTK3VXH2l0UVPhQ2kAgBVKRActeHsWeq+gkx
         J/de6Zc5G1rLAH2uW9VtnXIxH7Ui2QmLMM2/xk8rvt6Zr9xZ/ahHhLFPMH4RSj6sE5Ra
         sarYkT2fQrlFrMftKtKjurcuPnKFMrnK/HPGS35KfxMvK/Rp8ffgfjlsXzim+yTcvGL2
         gbxw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=IJr++rTD;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=M+nGMEh9;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id i13-20020a0561020a4d00b0047a13487967si239759vss.9.2024.04.09.08.08.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:08:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
X-CSE-ConnectionGUID: UdkqvAIdR/y6qSqCSR81gA==
X-CSE-MsgGUID: Ty74lvF7TZ2JRr/HU1CzFw==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13601521"
Received: from mail-dm6nam10lp2100.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.100])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:08:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9GH5OV2ZJ9mFrN5+Vzuat022xq6jhphyTDfwas01FB8n9gD12bGxO9I8KjkSGTemwJa0Ip7e6JDFv1jRz6ZMrlPbUAzYStFLvyeGAc2qjFQWLkJzez5+YSXnA1klJi2o8WA7YJPQZAFq6aW+0fgiq3TQTp3N06OhNWjswg4aSUgPPIhRafbJcnr8YKeQrHwgnFU10UK+7B9HcBdTPu58rOvAL7rWIArqeUiyc7SVF/MBqG5X4337hYDKDbhIQZRJIqw/+r2mSU+jhNTBVgFqnTkhJYNOnScSCVagvYhaEcDKI18Cjx4+Zxiymp7dxPoAzNTGQg3s6Y+n4Iw7upiZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=RJSOwM6Oct2ZwpQsJWw1n51rfxiWK1yOW+LA2z2KCfLRE3FpCrl/iwmX10MRh9Rb82gm877SDIEOdcimdby1NalP/+iUn+V2U/Zz53LymPC6UKrn1GE3iGy0wXyu1ekXFCBti7ABnf717CsrZlUlKRjI5p+LJJnnK7vPQMRA0/cRpCD2R+kWcp5K37GCBnLrFe0oLOmI92tos7dVAiHH7+Wgi8utr/4wXFNcSDG/BpRJPpMyqeQ4jO8opoI6V0VEguI5qeHVpnqpPTp7tS4yklE4qJccLeh1sqklka0ZUrUOW/bw7TeCn6oHv6g61ieuB6GhO/mnjFYnP4EqDXuJeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CO6PR04MB7715.namprd04.prod.outlook.com (2603:10b6:303:af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Tue, 9 Apr
 2024 15:08:11 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:08:11 +0000
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
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
Thread-Topic: [PATCH 04/23] scsi: initialize scsi midlayer limits before
 allocating the queue
Thread-Index: AQHaioulb6oCLfKfhESSdkBL43p8crFgCmGA
Date: Tue, 9 Apr 2024 15:08:11 +0000
Message-ID: <5657792f-7724-4ff9-9ff3-a124ebd52006@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-5-hch@lst.de>
In-Reply-To: <20240409143748.980206-5-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|CO6PR04MB7715:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UYKZ94rrEoKkMqCS/CRZn31/FaZtAp9tS5NX70124OiLdV4XclbGWNHz4EZuKTVHlcztY4G8pgeoJgqqhnB8Ut5lnJfq7euAU+nDwZXjt+6zvbJX953bj1mvo480TNR/ZIFedueSiNJCjmA+1TCgl7OufpteEDnlZatb/0REoFDxgcX8uQw9v8LghGihi2pfkNupzfMjlIlYEUfirh1NitqQuNr8e05amqRixjNpj/1YDnaVEbdGC1o49kFznFdm3Z+kNiAfa6e47oGrfOP4r1zdVtn9IzyM4TP7j1PYPYFoQS/vXQbYtvHTDleeEdPDJXUs0aCtTVyR95erbywpLPpeRaRoaaXU/r6hJlo7Cpz3ZMoff3pAwNoNS/PSJl4p2PvGbLSrn4YcBF9pCQ8TV4gUxyZHDnhHEeUB7RMS67hujDPt7wzlfEnYG3DC0fNxldC0RBZKuCAu1yVxQao9WBoBhuV9oof3pxl+JFa3yB0909GpHMVByK2LVx5m/g/Oow0eNoEIS4g7s9EtIjp4taQRaWl76Cu60cUERVKLdiYTJuJWJ3CUzqL4Wbftet+7P0eIWV6ewX+McfvD3YWQZDZr0l/yjlmq6vhnrNZKElzIUX+VH7fnR/Kt178qVH4TMLWR/gmXl+sf+bkUMd0ZiCLB9DcNZfTqnzzG08sm+PM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjN1NC9ITGJtdUdUc3d0RWdNTHU3NENaNjBwYURtN1d5bjNObnpDQVUwWEk1?=
 =?utf-8?B?NDQ4bi9jWTRGSkF1c1h0ZUZpUzRYM3IzYWFMRmRsMFZhbVE4TG1PbmN2VU5o?=
 =?utf-8?B?VTVheXpLdERoK0hHRXUvY0NPWXlOV2xMSTNEa1VZdmhlbWloMVVkUzF1VmhO?=
 =?utf-8?B?UU5tUnBXZnRUb2lMWXB6dUtCNHpxOHlrd0c3NENmaFVFRU9BM3UxaXBvcVRE?=
 =?utf-8?B?c2kzSDJpdTdjU3FCMWpsS2RxcVJ6Ui9wYU1XSGphVVp2NVppUUlPYjBUc0pH?=
 =?utf-8?B?TmkwR3A2Q0dlQlpuWEhRaWxhb0E1SnpRcXp3SjAzckZNWlFwcTNTWUx2N0Zp?=
 =?utf-8?B?ZmZtTEVlcUFCZmk0ekF0TEhqY1R3MCtqd3lLYnU0M3l1ZThtOEd5ZXVjZUFa?=
 =?utf-8?B?dWhld2pUNS9kQmRYdmhvN1J5TUxBS1k2TUIweG9wTGR6U1hMZ1FMT0lENm5I?=
 =?utf-8?B?blAxWkxZaWpKUmVSeDhVd0tJdzdwNXlvUFI1MFh6TDhBWWJEOE1BenFlNGZv?=
 =?utf-8?B?ODQ2MlEvRXlwenprelFHc0xFZ0Ezb1JoQy9acmJmTE9XbHNDRm5rcTlkWnRG?=
 =?utf-8?B?ZlZhb1laQlpqVGxQT3UySlVVRERHdmVtWU00NlQza0E1M1NnKzVoTkQzb256?=
 =?utf-8?B?SlE5VzQ3b3dHQ3BWVU43Zzg1cDJlZEhvQmp5bHhzOHVYblBOaGU3YkFoK3lM?=
 =?utf-8?B?UHZKbXdpb1cvVDlzeGM4L2tVcngvSVFFRUNORHdYbXNrUXFrYWdCeEZxY2hv?=
 =?utf-8?B?VCs5UGNTMGZ1dXMwME1DeFRPM2FxeU5nWno0SksySGdYSE52M0lSU2w2dDZJ?=
 =?utf-8?B?WU9lMkZoU3JycU5DSERWYmswekM5WlZnb0FXWkt3RGtNS2s1eFZwS2xTNXdI?=
 =?utf-8?B?MDVqVlliYzVtUlNwYWZ3MmVuNjFUWFdvM2hzRWNKa0Y5OGhhaHduSnNzYStu?=
 =?utf-8?B?dW85ZFdSZEtmRGg2VUZkTEJhaUxkN0Vaekd0UVZGSXF5SFhzWmc3d0xhdGFa?=
 =?utf-8?B?RCsycjdUNitXZWlzOFF0R0pFZ09wc1l0czNoNDB4K3BuM2hEYkx5VERZZXNj?=
 =?utf-8?B?dlIyNjU2a0NqUG9oZk14NHhUOExrZGk5eThPU1JwSHpXSzY5T1B6cmhjTGZn?=
 =?utf-8?B?dFdzU0p1citvRjlFaGtwYlY5bGNPWTc3d2pRY3JDSnRpYVUzcGNjeWx5ZCtP?=
 =?utf-8?B?TCtEMGVKZVRrSmFaYWVyQmFJRjhQUENUODdvdG9zZDFRTXJVME5VazNWYktr?=
 =?utf-8?B?MDMrV3prSUNGd214dEZrMW9tNFJnVVJ1cTArSEo0b3p1Vnh3SU9pYjU5ZGVZ?=
 =?utf-8?B?b1kyOXRnWllCUlZDaXB1YWhUMFVmTjRMUWsyNkwvTnpSTzR2UnpjNlJKV0Nk?=
 =?utf-8?B?UFZoc3U3UHlFdzhlVkZJRkVvakNiMUppRXo3OFN4K0d2blFmaTV2VmZJcldx?=
 =?utf-8?B?cjFVRU52S2lkcTVxb1hIaFQ3M0VkMDdoZlpRZHUvcUJUWFV5Q1JOdldOaklY?=
 =?utf-8?B?MGN0aVc3Q0hqTnN1bHdQOXRGa1pjcFFGOG5TMThjdklaQ1VFQVJRR3JPb3dr?=
 =?utf-8?B?TXgyMmljaUxFTVZBK2pmcWhIaW9OQ2JBY1F5dnFpUEJOM2xmUHZ0eTcwL2hu?=
 =?utf-8?B?TUFkZndPVk5nd0tUMHZKL2V5dkkvVHFvVnQwSTBzdHAvamJVdGZudUdmeFc0?=
 =?utf-8?B?bjVta1BJQmQzNElVYTdZdTRha1Y0SVVvdDljcXlyem1KSHNScFhEeDdzZGpK?=
 =?utf-8?B?Q2svM2p5Y01pYmQwRFV5UUlTcE1tRWtGdEJyNEFnbGJCNzJHSE90LzZzL01I?=
 =?utf-8?B?QlVXKzVpZVJadVE3K3lrMFRzaC9JcEhwRGFia0dFR2lZSDVHajBtb0hyZ3Nl?=
 =?utf-8?B?dWNnV2UvQmdsNmkyZUt2a0FGbUFjZ2djKzRMNlEwTHlWVFBLcklDa0ZUb00w?=
 =?utf-8?B?L0tpcVVzNHMwRkIwZ2NPQmNzbExIaFdWSElXZ3pKcVJybU5PVHp1VlpWRytj?=
 =?utf-8?B?V0xXRDM1U0hwTThrWHhpU3pRU29VNzhCbEoweHhxNnBvMHNRUFhEQkpvaTI4?=
 =?utf-8?B?MWR2QnRmOFc5a3VIOTFZM0ZBZUVRMThGVlBoc1hpcm1XUUt0UzZLMzJ3WkVO?=
 =?utf-8?B?Q1FYYmZkTllyU2NRTW4wNjZYNjJqTkVzQ0xhVnpMUGluUHVGZUpGM1RPTWg5?=
 =?utf-8?B?SEE5TEpFYlRBMEtMZkd4U0ZMUlZ2bTBsSUswQ1RRdkd2SDk5ekh3ZkFHdGxQ?=
 =?utf-8?B?NEN4dXhaR3N2blhUbjNINGNZbVNnPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <04675840BE0BD04BA508A4FBDB13016C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Z5rXQ5OzVXFXnZFadmjfqwK5JJCSwzpC0ZHNrA3gtRWpBSyoid9DEpJyhs4sk4JBD54TkLy4Z8Iw9YRAvzK3F+0H2L7fit2vJDhEtbBgMHIEsHKIDYR4rjEezG0noySIB0nsnwm218wbe/T1km6Opfh3877JoXbCetFZTrM1YPJckrUiwODXhD8EdylzR9I5bGUciCT4isq0lOdlK/PEcF5l6csuuh8nnhgV5H6a75ibAqYle7zXM2MMQg4Cd1r5GnInSgq6GYjdWH46cWzAqf73Jjnp8cfKHI0M1uPLNphd8awTSMo7YlQhY1b9g5uApF/F+8iNXYdQxZ/k60eZVaoz7HecWSkah4EAl+knJan3B0KoQ+geN5t33Zhv7IdL2U+0ZRNfuwAW+MzxKDHzHtvz8uiLlcLaJv43MlbLzdqG1oyj7w3pSa95Op/pIxmT67tDwbTfuQLZKoIQYu5AQiR1XLQr+iprT2Vuw30rtTvozx1zI/MRKcETuUjXIcObC7bVUr3JNek2e9ibLlc0WjsKVgd5vXWcLpCsFg8yDjJu9sGqHuO9v5wxI0cfjYoZERSKOHTP4dBSTZBKabEWTxjFan8Of0km7fjjPdZcevD7sOWAiPKrJFX92zDFLGii
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43c7f211-a22a-4d49-8be5-08dc58a6df95
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:08:11.8152
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GbPpH8RjKdJ98nliCI0Ff0HXMLshEUSpU6BEK2gUzbDl6++SJ29LOb8gltTgDyS0Wv5eEVkG8y7Wqs8EPmQiW+4NOaSjl0IayW8BE4b1TPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7715
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=IJr++rTD;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=M+nGMEh9;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5657792f-7724-4ff9-9ff3-a124ebd52006%40wdc.com.
