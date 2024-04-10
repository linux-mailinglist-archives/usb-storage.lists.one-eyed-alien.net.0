Return-Path: <usb-storage+bncBDW5PLF2TMFBB3UO3GYAMGQETN6G5EA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 238A289ECEB
	for <lists+usb-storage@lfdr.de>; Wed, 10 Apr 2024 10:01:52 +0200 (CEST)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-36a38d56655sf9239385ab.0
        for <lists+usb-storage@lfdr.de>; Wed, 10 Apr 2024 01:01:52 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712736110; cv=pass;
        d=google.com; s=arc-20160816;
        b=ljszYZwOOtT02jhLuYmG4zzAkM3NAod7qUGMG4UkPXVtcz/vy8id+srSBtBHH1f3hi
         /BnmPRacY3oDi6A8XphDEK5/nAnK/+92YyAAcO7W6fAd6kiywX2UAHpCCdH4lZSaXrww
         WygDi+t2as3LU2n1i2jdoawUk5qH+hhc1roMnBLv4zcSnxwYHlkJvEWxsGBP141D6Qjf
         QvOk9naxSVixLM4f5n+Q9DRMMBrO1YtFCqPpSDpFxtkAjUyt/HcirxC+WuCQw6qBamsL
         aghHfX1FiN/Bi+LXx3Ug27wmzaDcCmNwWTfiglgOrLKnytax10cOMZvk2vTfWJUC/Cft
         mUMQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=EnT79MqunLvCusOUTJXjWolu6q1cjy+f+ChER6lWp4c=;
        fh=yvB/eFYoRSIjTiGeBiLK2Zz99/MlDm9OnPXk4PDgH4g=;
        b=qXm3bBssOUTKkhXf5guy0TiWVYPDU0VyqkQcjiu4Q4UIcRPQ6fYnrQTKOl/70TWF+W
         fNmjDmXr/f7ErgRbsSaOH0MrkksyIHgHm7CW6d5SS003Hfjd1RtLkIcJsCoQmXYBdU7d
         3yUxXZk6mGx/dOIq/xLqK7xyRsPaerDV/ekVvbbaQCpmzBGASvHLT/gM2uPclHNlyGx9
         TaxAks9bB5kIJvflUWdL/M4LSTNZ4yZJqimsyopPdiviFC7nRTFh6zpdBIVMgwKeO/JC
         7iXxykHb2DJl0iVoeXavG6uy7UKEFCgrmPLw+XhvwHyHixQqvRunIXgFPNFLks64qK/7
         GT1w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=KpeKRFxl;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=P17hzgHt;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=823dae605=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=823dae605=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712736110; x=1713340910; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EnT79MqunLvCusOUTJXjWolu6q1cjy+f+ChER6lWp4c=;
        b=VrHB79SHowgH7ZWgBCEyp6STn3f4+nuK7v8fVjaEWaKUxrKjRCvP5wjEH0HfxqZmLP
         JSonwyCc+Yx0kb4de1P/WgVqCZCC0qmlTM9qxhfkGv3Zj4FOX4JdtYdEp59ioC1f8FmE
         hrpVoF5dJN3XSHHXI70vIDtWTlTio4KJXO//A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712736110; x=1713340910;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EnT79MqunLvCusOUTJXjWolu6q1cjy+f+ChER6lWp4c=;
        b=QEmEzZnGgHrL0TxtYQ6SdO/W6UaxcEtVs8rkWAey3Lv2i9818BDSPhuFz+X3NQtGM1
         F8ccfJRc4bA6afwHpg/jV5duCgPbXvloM8aif/nB6yRKUELn0ZkuhOyA7ZA1MIq8BkH6
         0Sn5rTesREHEnzSd1DNaEiwhX1RHP/475rijlO5XP4psxVk34AGnmOXcnoLwWUdVoYL4
         GGRUnEqnj/sgnr/hwslDWDaAAjRZN6htRHz+3ko6wslNYTSmcX+MmEPXU5nFdEH5wo3S
         BbCK+oxeLDb8l6xoCOt/eXvO9h65ihtph2DsNR+0ybJioc3Eh/wTuI1Fbdm6VL91bJPQ
         rJiw==
X-Forwarded-Encrypted: i=3; AJvYcCXXPjhYR6yXXn1F4mA+lxId3bo68CyCc+VlI0g7Hye8G8j8uNiThN4dw57Xtw7tc4JzYKhBZDQYf951kejUe9MRHR1ldNuyJQ8W
X-Gm-Message-State: AOJu0YzCYZ7h6M4K/elqbQ3lPY3GV5kjx96fcknZqVkSvWXCo5pHlrg/
	N7Oa4AJUcpzEcy7e5mlIflCBfVfWZbn/ujIP3HQQV38SNOEAwWtObzG38TwNeM4=
X-Google-Smtp-Source: AGHT+IGCk6vX2dXwFJ74aoS3QnjduMo/2TN4YDBy8zyBRDrk3RmTc2ceVQkot0AxDWO/wuAnZrLdCQ==
X-Received: by 2002:a05:6e02:370e:b0:36a:3f1f:bd2b with SMTP id ck14-20020a056e02370e00b0036a3f1fbd2bmr237104ilb.21.1712736110528;
        Wed, 10 Apr 2024 01:01:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1581:b0:36a:64c:6cf7 with SMTP id
 m1-20020a056e02158100b0036a064c6cf7ls2384658ilu.1.-pod-prod-02-us; Wed, 10
 Apr 2024 01:01:50 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX54/8cqpq2KWqqGuXLEm0Xcbe+wC7gXh6iTfiGVGisU8cKAzKzks8bPc7IPyNFqP4ANdNLx93ZtC0+cepB9CbLumX8szdD7tfkII5IpuNtMq+CXXs=
X-Received: by 2002:a05:6602:4c0f:b0:7d0:9531:d183 with SMTP id et15-20020a0566024c0f00b007d09531d183mr2199113iob.6.1712736109785;
        Wed, 10 Apr 2024 01:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712736109; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXZ5K5OGB5TANHZ6fdlUHt5XhfkQYY+H9giQIY8Ye1UNEA/MKXxj3uB7NAp23NH8ca
         d79TPeJEm5yH6+7VrosjPaSlMXAJn4cxCRIlfaw6bUBG9koKjvUhct6d5bMu/4fYK6wn
         gCAtNb2ZWjFTYGiHceNT8ZUFfI/dp7CQWrNN07Czfrnma3YotVjZ+o1P8Q6Uvva7hLe8
         Bwr9JSJsaUF73nGTUlc6ORZxEXLjqjogSZqPxbHYs+r34K4dFgfPZ/C/yvukyCy4I9/6
         2MWzSzcplM/nQJhuQmdYhrunL5ulMbu5GDEEI55N68eiEPKb9ypFPyTa6Rg4ssHmrAuN
         0U1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=Q1FWgy8VpvnsceOEuN4ZDQRLsZCJqDVv8OttbhOY/BtkHz9iABgsKCYe987b21iDS0
         6TKBCMuGngCzHIhaQGE4BlaLzDx54gbuxBYpJnHehNROsksYrVC5rAfSRJSUQdE/8R6w
         AyMK6jQ2nADrW6WelYxsGRrGDAlmm85WsTqhnlyFRFfQ6DFKF7mOk5V2zasBghmj1FWW
         9mkTSA6EaEz5hS1etChOIQcKr+B59v75YudWds/fMAknjRkSSfotoj9skpZQEKFW5uSJ
         hUu6lXIBk9buYoqvrBKhTqMQM9vXowPGiby2fuxGPAgHffM1XT7X0xvwhxb7gdbaEttf
         j/Bg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=KpeKRFxl;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=P17hzgHt;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=823dae605=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=823dae605=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com. [216.71.153.141])
        by mx.google.com with ESMTPS id k13-20020a635a4d000000b005e3cdc24c26si10306781pgm.467.2024.04.10.01.01.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 10 Apr 2024 01:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=823dae605=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) client-ip=216.71.153.141;
X-CSE-ConnectionGUID: w93PextrQ56QJmpldyzZeg==
X-CSE-MsgGUID: bTdzJfaBSGiLsCqd58JrLA==
X-IronPort-AV: E=Sophos;i="6.07,190,1708358400"; 
   d="scan'208";a="13484865"
Received: from mail-bn8nam04lp2041.outbound.protection.outlook.com (HELO NAM04-BN8-obe.outbound.protection.outlook.com) ([104.47.74.41])
  by ob1.hgst.iphmx.com with ESMTP; 10 Apr 2024 16:01:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=REXK/S0+UeAZDh6MFHtzoj73HZmScKovpq2v0p+BS2HH6pI2CkYFPY4TdUWtLOPzFtein6Y6Mfl1xXBWH/urttSDOs8bGJ6dm+iBPTFPOFhQdK1fw4mJFoZD0SAtt/I8n8ajVDqHG/XQqsqgzZTdbCIarJAMvJStRLQ0Neb1jr4+NJAsONiA6HCGKhwQ3Ws6ObmFTFu9ZUT74EJpXA5dCvlz6IJIx+yJonhuwpnpSUArb7IZPEMe3JB269UQIaoKTnHhPq1eEbjqSIgdEb2UrP29qOd/7Y4RbabyzXXPjxwCcZe8KIjv4+0Czi9HQhWn/aV0dmB7eWV8gdWJ7mtzKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=nE2fmTv5SvmT7ZJBGKO4+VYzZnaR6ueltK6uBlDTAfjAaD+DiD9CDWGRhmspbaqJ/ljXxMdlvumW/OqtqzG8P/PsvtIrTlbXPbfOfXORhtnAT5+VP9s6RERdZeaTJNSRZ5eHGh3t1aS5RT4LaZaE+gIUDh8WrUh5b6PatXpI6pHrCpOAFjDg7Y1a9H6tMqSroe8sG9Toxb5i0O8mJcAOTe3tllFDvS+0IXpCaO8xXNXLFCAlgwkSx+XGdmrQjvYna3yiXT8C0HNrwCjY32ntstgWzn+19ZINp6twdRV7HAQ5bsFEEVek8CwfrPl8I2blN0NFdariNsQOkCtkLp0luQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by SJ0PR04MB8406.namprd04.prod.outlook.com (2603:10b6:a03:3d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Wed, 10 Apr
 2024 08:01:40 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::179b:320a:832a:fe82]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::179b:320a:832a:fe82%4]) with mapi id 15.20.7409.053; Wed, 10 Apr 2024
 08:01:40 +0000
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
Subject: [usb-storage] Re: [PATCH 21/23 v3.1] mpi3mr: switch to using ->device_configure
Thread-Topic: [PATCH 21/23 v3.1] mpi3mr: switch to using ->device_configure
Thread-Index: AQHaiv+KDFUHMRrhl0aoDuRvfXEedLFhJKKA
Date: Wed, 10 Apr 2024 08:01:40 +0000
Message-ID: <1701ade5-4f0f-46bd-aa3b-bf00d1fba046@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-22-hch@lst.de> <20240410042759.GA2637@lst.de>
In-Reply-To: <20240410042759.GA2637@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|SJ0PR04MB8406:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mlnjm+fnHKcNNfRQGzNDq6KLlRec4Be0T2fZgaaTSk/1aglvpJ7oN4COMkOkSYf5pJokelO7UfDhMsGRfoHOXDzJ33tpWrE1opHfsRjwI4/UCYKNZxnfH6Ypk6tkO10+VHsMZVBwvHbNKb3N02perOcXW0gLl6AYrZa3djfQjAGW0soRhm8c2PIkJ4PBYIjDxb6K4WJsq+CXhf3zn8/rywXa9UQxuDZnRzkUVj/WEElt7+UeimKUlex+PdMfc1vWIzU6xtoqq8foRe+uy3slYL9DQUqpgblWJGCb2yTiawAD0T0gVx4ICazL2BbgehXcOG7V+2mtVnsHlP+aOuHK5cxwf9bwiK0abaapZ/WlN7/b3u8/SIQUE8E0GGGaPYSYQq5wQNLlxVNsr0+iRhN26TpVZ2dHLUhc0I9XkFzxbxbtZBC6snc5OSmDQ2m/G4AtO8W/COCH332MuGI5Aj1ViIxUcDCiTPqnJu667qEfCqWcwB0nLjkN6m+oro8u+hmCOnE1e76Gw+34MCJvIPFlWbqlZrTgDTl5w34YW81rS2pVsZtlxEMIGFbpj2wo/u1a6pPvILH6yhnbhuNfpyZzgG6q6Gbx9EUhR0kQ69VjxFMFLgcFUA8vhy/dZmVK0uUyHRJuv3LwjaOrKTXFvbJWoz/vEV0Z/UItYRZtrBvCpDM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(1800799015)(366007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2ZlZEdnOEdSVElSazlvSE5nMUxVSnNHbjhRZ0JTTDVNMjA2WklhUmNKWUJC?=
 =?utf-8?B?RHNjeGoxNi9BK2RUWmhjNHRQWXE0RmQwbG80aFVCcGtmY21rcVZQZGNleTN3?=
 =?utf-8?B?K1VoekhZZjZrQWk4Tm9HQVdZYnBsREFkTHlkMjdDZjlTbE41M2dhYi9nTUZT?=
 =?utf-8?B?ZzRPY05kUGFsSnhlR1lnVFFtYzg5K3AxNVJUeDhqWmVnaVd5T1pBUGVZQTdT?=
 =?utf-8?B?M0JtZW10am45c1k5VUNRL3BEMXJaM2xEZDJUQzhmamJVYk9VM1FWR2Jla05v?=
 =?utf-8?B?L1d4eGl3S0VwQ28yVUdzelRBR3Rad0I1VUZObUtVVTNHWmdFK1R0QkdPaDhT?=
 =?utf-8?B?RzVnRmptb1E3R2owbDZHYk9FWXlGSDJ0VncwbTQyMWMyelJxMnpoUERTYktL?=
 =?utf-8?B?SFYzREkwUnhVWWpQMlR1eGNXUGdJYkxpa05kLzBKSzZyUi85OGFIZStiSG8w?=
 =?utf-8?B?ZVBSTkxmRDBZMW5ncllQbm5ZK29xY1MwZzdYNzN1MHB3ZHJTSEordUR2dGZr?=
 =?utf-8?B?NjNSd3Y5VzI4MzFDOWJjUCtIQThIdDhhb1R2MUR6cUttaWxwZUhqdmRVN2Y1?=
 =?utf-8?B?WDUwb2c1c0tGRHB6a0lyQWZSRWpFM2hiSERzVlc4WXlZUW8yUmorTXI4a2xK?=
 =?utf-8?B?QnU3UHpHc0dwNzkxdHM3QXRBRjN4ZWxqdGhHWXNoWDdPY2h4RSs0MllISjhx?=
 =?utf-8?B?cllGeVNORVB2TTZFaTNVaWNTWHJ2NkE2bThuY0RYUVJCSEpmeGRDNWhNWkxS?=
 =?utf-8?B?c1JUbHdBV0laYjczVG5NVUxXclRjRjY0cWJwaUMwT2xuQ0RqU1MrYml4Q3hN?=
 =?utf-8?B?b2RNWCtUdG90MWExblNXRUhOTXZhV0FQZFU5d1haMDJaSVl5ekVpek56K01r?=
 =?utf-8?B?VmU3b3p5b21RZmFTTWFnLzhCcjJZdFhybFd4aFVRejFvZTRZM0UzSExtL2I4?=
 =?utf-8?B?THRuZ3V4aDJXcDdET3Y5RkFxYU1GK0NRcGdLUGUzSU9oN0E4L01UNjdvdU9a?=
 =?utf-8?B?WjdpL29DakNlVkhMZnE0UmlLT1BNM25NemsvRjM2Q2JibHc1eHdqVkV4T2la?=
 =?utf-8?B?ekN4Z0gwVDVwWkFFSjVnblJ1dm4zNHZaYzhCSjVDdmdwNU1Gck5wN29VdFZi?=
 =?utf-8?B?aHY4U0JuT1dRS3NhMnB5Z0IwcS9id1dheFdmZnRJZVIzN2tkVUlJMzFGSUha?=
 =?utf-8?B?QzZnd0FMclA0U1gvNm9UOTc3SHRlQUZDRUNOZFpKU1NFSHYrL1ZkeUdiS21S?=
 =?utf-8?B?MXFOUVR4dlNPdCt3Rnl5VWtUNXpGSTJmQzE0b3hVNWRBenFnNEZRU0oxY0Rn?=
 =?utf-8?B?M3RPM0pQamFGeis0WXhrNVk1Z1VmSTN3Wk9Zak84NUpSMS9oYlJVMlZISHNJ?=
 =?utf-8?B?ZzBaS0JxeFVsUzB4cEswZnh6N2toTWMzZG8rc1lZaEdXVEJLZ1QwVmxSSWRr?=
 =?utf-8?B?emxXTGNxcVZ6UzJ5b0VkYVBocTErbGoxY3F3WEs2UnBLRnh2dkN5ajFwUEN1?=
 =?utf-8?B?REE3d1gyeE9SSTNZSVdGYkFCRnRTVDVsMVdUWi9PZHhkbktvY1JoalE5bEts?=
 =?utf-8?B?MUU2L2VEOUs5T3NZbE8xRGFmYkRYb3krUUlHWkI0Znp1enc3a0ZETVZEQ25N?=
 =?utf-8?B?bzcxRjJaWDBnMERDc0JmNXBFcE9USVpYRlJXSjJ4YWIwSVozdERtTlhqYXJG?=
 =?utf-8?B?MnlHMkluUTZMRmJqVzBkSi9ISC84a1ZLNnJQNXRWcitBeGRoTE5DNStmZkhQ?=
 =?utf-8?B?eGhJbzZlK3NiQklHcjZXWExLQ3A4dXNSN09qQ003R0UrT1JteUZoRlN1bXdX?=
 =?utf-8?B?VUgzNjdxaFEwRkxkcWhka1FXOWo2Qi9GY2ppU0Yxck0rVVdNOWtyQ3hXT0x6?=
 =?utf-8?B?V29rd2paQ3Bqa3cvdHJ5TXIweXhueXloc0JSQ2dMVlJjM0p1TVBJVmpwOXZD?=
 =?utf-8?B?Q0puWHRMdUNyMGlobmNXa0FVb0Y2dkh0VlBrUytGUEtHUlZlNkxFbmJUQ2Q4?=
 =?utf-8?B?MGVVNzFjZlJ5aFJaOGxCd1hHZWdvMDdSdFliUlVZdlFhdU9BZEQrN1d5NTVr?=
 =?utf-8?B?WHh0bXVOSnNCc0p3cEJNOVpJM1luY1cxZSs5dCswK2drWVdWU2N1OTJmNi9n?=
 =?utf-8?B?VlZhWVZsT2hvOE93bUlYWUhyUFlPSDZxcTFNRVMxL3lUcUFFZGp5Q3hQeXh1?=
 =?utf-8?B?YU51TFlKL2twbW9rUmhvZ3hzakxmTlIwZUc0Z2xKS1BlKy9Rc0pSZ3YweWpE?=
 =?utf-8?B?QUE2bk5PQmlBZURVclpONzlEeGtBPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <2E3ABC43A30BE44488ABAD001A209AFD@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: MXbRG3xqn04Sn2ZZR6nYrLFW5a7LWI7s7ynAFDv1PozX3liHQeynP90updN9TnNXNNyIdupdbUYM+veOmM76mgd3le/Q5G1U34W3j3m584j7yhNwtxOwgw4NNiV9ppbSLMVwFcCCz8HqeDjW3GR7We9gPC/1BFt1mpDy4V0pGpI1iER38l9JwGf5UFNiIhQ4JehDONybCxi16B41f8lqHKCEnr/E13GHGRIryNfLLQISHOx1AORF0BGJUeFVxA2Fi3dYex58AArWirrMGJOyDnuCoUhCD3vb5yKvRSltpaasmu+Tz2EZVOI8ikB4JZoCynb1QD2kH+TCXuxIpLMB+U62KCc3bueVaEr6N3AHiouYpS+Nv2CmT2c9KyxXmkQjtY1vig2q6IdmRVYn9O+maRpAcGQ8jVij5OJJDw6hHHik+aUiSwzv6APNAr28uCtf1acrlA5z+g0TJtIH7tKydlGtOM3lKfS58FPY99p+NCz9NFNV4l8sD9NVJ4gN0OO04zLB5To4keY/Et3Y5F0xPoXg311Q1nAMcJAPcqj3Li8PXZzBI78V4D8L3rFomcFe8TtwRhizOo5LxhfBFhCTjTRelRQ/g2eJhm9JOFXMXtdlIE2It6sK7LcxjiXRsXwZ
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a465aba-eb11-455b-4378-08dc5934743a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2024 08:01:40.2412
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/8AwpuoGr5xisQdjOqZtASZG+rcJftkmMaUayZe47+/0R88oa0AZYsoir3SXyM5MT0H3pnS9QbEfA7sly0q8LA5Lo1Oi4Qh2EdSauFK+YA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR04MB8406
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=KpeKRFxl;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=P17hzgHt;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=823dae605=johannes.thumshirn@wdc.com designates 216.71.153.141
 as permitted sender) smtp.mailfrom="prvs=823dae605=Johannes.Thumshirn@wdc.com";
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1701ade5-4f0f-46bd-aa3b-bf00d1fba046%40wdc.com.
