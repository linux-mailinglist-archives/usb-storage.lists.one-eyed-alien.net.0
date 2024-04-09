Return-Path: <usb-storage+bncBDW5PLF2TMFBBCFZ2WYAMGQE7D4K3LA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D34B89DEB0
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:19:37 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-431750e74b7sf63568491cf.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:19:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675976; cv=pass;
        d=google.com; s=arc-20160816;
        b=j/FCjWsuufulYNQpJcp3w7V8t9coybKylfCo1zEuq5RoIFqXkCJwQ9NwCqKNIGlg7f
         6b2wvjTiqEml/fsOWw2IuBoVolhGY69zVGhT7ooxxfAeVouOdHrpdTmsqyOpdLszBz0q
         iqIEXDI5VJ/JUu9iv00XLrkd34ixXXaqvQgAKqVl10ogOGpFFBISYk9LrbytHcgQMlGj
         9cxGgKG00mooRU9LMC8nn77kZOsEdXPJlnPVzMdt36OE211HmSgxy5h/D55I2tTSq5UR
         7vyN3G00+s04//vkcANs6tU6H5+mENxCcTzWvuOzWrNnOwSWD6Exg49nsYXXSGQn21hL
         zknA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=DyI37ZRuhWxlVQclOLBZSqv1l9709K7+VO2Tv6Ys95Q=;
        fh=ARRGomPnAaCdq8x8mPX8qdtARomBfXC3Xdt9FnH60dE=;
        b=fx3vIlsyRo+TmREoJO1/D418OGTXMdC0Mni8QxZcYEY+3ULFctM9RCG+LLv6LNNSAz
         NVYMMNeDU7PgU9Isn8VsXazmc+TFMk7lYE2X/2DHs46s3TKw7doiwqWY31XYOhPfSjCo
         7BtGKob/2d2bqUs9UqQYIcZRZCBGo37g4R4kb8HuwCoNAe03lqS2c/FE/phYmieRnl+E
         E5nFeMmho3L1IZQb1fN80a0qn1F/o/uxJ1rapTkb1wArMziibMi6x1qryjoXtOapHT1+
         0X7XJA7hrw5TqJWwoy5NLHaoSJdjVCs2+HI0D3w/e/5sj5ScN+3iGU/P5iVRDzUGMMdU
         9IiQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Sm0wNSkM;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=m8HOV139;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675976; x=1713280776; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DyI37ZRuhWxlVQclOLBZSqv1l9709K7+VO2Tv6Ys95Q=;
        b=N8GsGQZocbpUVtz7odJ4Frxjyi7v5xEojFY/f2Z1e2Kg2j1LUR1ZVWxtDGtYxQCr1I
         X+HeZxdmvzYzhb6kfIlXcIQxX2iEOwBigBlrBdCMo9XbQrSozeZ82RvIT+vogSa6GVqg
         lmHszzem85Hv/dZ9dc1vg86d8oaOSMgOEovrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675976; x=1713280776;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DyI37ZRuhWxlVQclOLBZSqv1l9709K7+VO2Tv6Ys95Q=;
        b=V8i0yq3YXd/JHFi4uNP+MD840UUyVte7SX0srHw/QmSCXMZGzeOuAZcRNXmc1ihBwE
         oapGRwHg9mXsWOaPernoeZ1/1yAj6fYUvh64lRVzygWwaWCt1dqjeEVcnNxXXhDH4tot
         ZyGgEFWFlh13vkqrSCihS6BWhLmc0e+zDlby0/ezUrHKcMDFszlpZv4CaOg+ZRgqnE10
         jey2SeGsCc3nxqhn4o7HZn7hLOfgiM2n9za2CHuHnKF6AFhxRodEAt86Oz7qlegrWYOW
         EEtmVZeQv5YgckQSuX/o/cjtgWDeZYaX8ziyRbDI/CtRZ1pJVg7rgITjYCsz550Ln2p0
         GNBw==
X-Forwarded-Encrypted: i=3; AJvYcCVRcJm2sYIe7aWwZX6ya0lZA0ivvRq+erRVTXFCB1neLeza+wBXXsUIEruDXCw8+dDAzpQ9hVxexo0fKg7pFhhDmA3mmibWswU2
X-Gm-Message-State: AOJu0YxnFIedkWgffnu3jDWG7D5S4V0DaxScgN8oYj/YwyZXM5aAL9rH
	GmwPYgOm15p7T3wS6EARFLLtzGwn9DgnvPby9GewBtv7wJgoQAwiDPVANpieRiM=
X-Google-Smtp-Source: AGHT+IHx7YHB+IS5ipPflx1Hs7peHOLdVXnLlYA4GB09Uw6busCKD5mdkBGJjptN4zPFJZhBxyKRcg==
X-Received: by 2002:ac8:7382:0:b0:434:af97:887c with SMTP id t2-20020ac87382000000b00434af97887cmr4466987qtp.20.1712675976194;
        Tue, 09 Apr 2024 08:19:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:59ca:0:b0:434:b760:3fa6 with SMTP id f10-20020ac859ca000000b00434b7603fa6ls3135887qtf.2.-pod-prod-05-us;
 Tue, 09 Apr 2024 08:19:35 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWPx6FRF0BJZJmLtv5dUjFwwatuvQ+o+Zuax+LOkKEfwj4XmBuCodT5CyjOvjZpoaG/1eixlpsVae22IOm9iO+m4Ct/eN7i9/DKF8inBn+2+f2AiLg=
X-Received: by 2002:a37:ef15:0:b0:78a:34a0:6354 with SMTP id j21-20020a37ef15000000b0078a34a06354mr11107962qkk.42.1712675975259;
        Tue, 09 Apr 2024 08:19:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675975; cv=pass;
        d=google.com; s=arc-20160816;
        b=aiXk+rUxPLfvM5dzegxPpG5m0U05mfwT+yfJSH6yrWPe5Ev1dqLPEZ6B5Cg4otHdjB
         9xyvME9X7QQYiLN6d7JLa85oLrh43WUkT7+i/sUIHNFXBXkUhJFqampE+CjCxXgCwSUA
         6a8xiVZw9rQhvcQbaz9dMGx+NeuGG3DD8C1Vgmn2TNqUHF3If5ezqetpQV+CYXIIPrX7
         V6iF/UUwLLbq+PRbof8s8S3ZU2EWLSUB4C7rdAlhjiUkBQHPlXXW6TCjIeWK5vqCHkgu
         Gwo8pDUei5bciyt31GV75DZnBEmnCSxN+wK+t87e8zYE6u82SE8vyQ27xbxD4DIfUS0r
         ettQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=jwX6quJl4OJEuZuW0DNPP37UqfUmSBn5GkzN1Nc+t5kU09bPEm39AnuAzAdj3kFh6v
         RZ9zD3XN4jFH/EZbpQ2MKS5ifDrV6mFdSPRAvwAzi3c29rZD1NcPbWXnMRmtHHNGvgh9
         37UiVU1szSz8YQcSALPAjNt2L80RL3i8FeGXlgolrAtVZX4xOWLDVhNA9Qw7sxdGHUTU
         z8ZxxpcmkehctvYBYH9ktEpYo+Mrfwv6Listk2zujZcaatO0Rbo+0lKg5bzhX7DhXLWV
         aN64nzczszW/CvfeieWIACTHLS2X5CpOSoCt8qJ1I+il2LPLb+slEOKKh1Ub6+HKsL5P
         szRQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Sm0wNSkM;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=m8HOV139;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id u17-20020a05620a121100b0078d66b28823si4367286qkj.572.2024.04.09.08.19.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
X-CSE-ConnectionGUID: FDlSiurbSf2EC7k2G/arPg==
X-CSE-MsgGUID: lRomwTenSCO64v/deQR3Lg==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13602848"
Received: from mail-bn1nam02lp2040.outbound.protection.outlook.com (HELO NAM02-BN1-obe.outbound.protection.outlook.com) ([104.47.51.40])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:19:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGHYNYoAoFoh42pMvmtrzhgxy5iWmw9IlrkwxtfEXBH71ZaxLpDRftR/xCChFzvcAsEDrbFThZ108HYgTv1pGKJORJAwxwiE9ukKn7y29YGx6kuHebZ7A/+BN+Q2oYks1MVIOtmgiCyO1yOSYfhvpaLjpYYuARYRTx6Tu4PGtRwv2K7pXfJ5eXiB5a1NPkjJyx6BD8gTnWnVdlgNw33wxW1TQNuVSgZa+UjSW/5ltAyDjIjXEosdQhPlM9lV/AZbo3ydzVod6pBnEB9X7neronsMFdr8ZVaPUglhksOq+VtgeuZAdbR6hCX70QGs+qCrVzp0vVTC2gBcSbUYKUeLjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=EiJI2DehRn2eRl9JfEuvrJTXiLOvIoU5M8zF8/0Yiq8gLhayDo6vrwCrH49fKRzJUbbUeqamOnM0O9vZWRe3der9VxwwC+V5zMNWsoXytY4BPGehYZeDmmd6WaLLkIJrbC/oTVHCB791qokCVTzZOPMLvjTVb8i0so3NfY36mgkycowVxgbOX41ZZP3B+IROYZv6uMdq9CvDrR4Mf7nbmWWJb4VsTgaVbyS57lIBuM2sIKOrHCprYseltqpxKodvV1xaqHUrkaZiD1ivI9/J1a9vO2xaLfYv2lI/m4ckKZ+ahv/YBhlKjEDr1FpglnXjUh+G/dye5yNZbKYTjXrGWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by MN2PR04MB6687.namprd04.prod.outlook.com (2603:10b6:208:1e2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.53; Tue, 9 Apr
 2024 15:19:29 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:19:29 +0000
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
Subject: [usb-storage] Re: [PATCH 15/23] ipr: switch to using ->device_configure
Thread-Topic: [PATCH 15/23] ipr: switch to using ->device_configure
Thread-Index: AQHaiov746iIsI2UCE+NzAHj9hgv37FgDYgA
Date: Tue, 9 Apr 2024 15:19:28 +0000
Message-ID: <d2ac5a84-edb6-4de1-94ad-b1da102458ec@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-16-hch@lst.de>
In-Reply-To: <20240409143748.980206-16-hch@lst.de>
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
x-microsoft-antispam-message-info: oCGdPgIFcmZCZYk0xTYoJDF+y93eD6807lms3ELH9H9O/HzWs0f487TR7G5msHTq+SUQDrnwFDBGVeBXpX6kg9Mh6P3B3V4PeSoJTCm0d2C+qnwIQlRMpGoc4kQAnMC5vciG4XrYBYQNUAS+YN3q1g66S5feuTSpa/rfZZ2Vh7QiLi+P/QMQWceZlTnXadVvzs3Ugm2+UR0vi2fwPyJdoCahb7+KYDnLD8zNiHHOFWTtY8LIZjF+2jWp4209Igs6Twk+BcOGjM0USDz+uXCIMkj/iCPa6yB5iuMMSwyNtol9r+f/amj0ztYXxb88rg2G1GQg0xOh8EICmUOzG8a9Ng94no5aa7y/P/ovMEEAKjTgszoZbiCkmPcTFAzLd3QORLjBLZTxDJuvhjT1dzncdDIZrtgSi66uV9Bhlo3PD6Ii3mX698llhCt+4ih4c+n+CDJC8bbSx1PUT8qKvfMjdArVo+bwzXcTvVgcUVLXMWaLLLORo1LN3UpmQs7YH6CpvwC/rozGjVNzGR1RAIq3jZ5XeX/9wMslIOFRSJCXf0t+rFQxV7R7eRDtyZh7FgzylbRjtRCZXnZhKBQNHoTuDzYSGdnAMd73ezlzadyGefyQP+RtCGY5MdGJR+nbY4nZArpmirTJQCqBA93x0GcteTfBJL0wJpuSK17wpW13UXk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(366007)(1800799015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHA3SVNCNkY3SFJ4Z0Ryb0s2U2tvNHArMHZheVc2VU51a3Frb09JeFFNNERO?=
 =?utf-8?B?aTZIS2FYT0JRRFVvME9ybDJiaHZnc0tWZGdGOVEwSERzMzZoNk1NNVN3UXZW?=
 =?utf-8?B?K0tTcHd2dzJuM3diL3hyRDBCVGgvbHNqYTVmSHg5QlJXM09IdEY5Vm5SK2dt?=
 =?utf-8?B?aGlRWTdFNDVCcUtkQjdSaGlKbElaSEhqY2Vpcnl6WUNqM0tUOWZWNG9Lcjhu?=
 =?utf-8?B?NU5pY3YxS1hKbGZPb0dsemdwNERIcHcrc3FDUFFhRE9helFPYnM3NzhmYlBN?=
 =?utf-8?B?VTFBMHllZ3ExWStHZzNCTHVGaU5aS3BoWVd4cXZQTnE5eC9FWXl4UDU0bTBY?=
 =?utf-8?B?aHMzbU8vamcxem15ekwwblJwckl5STBWbmVGS1RmcjlidjB5alI4Y2s1YWdp?=
 =?utf-8?B?WXdGZU1JMktCT3I3MXY2QmVyZXprK3pZWHlsZVkzc0l2KzNhZGN0K0lGU0Jp?=
 =?utf-8?B?OE9kN0lWQ1FZYUlCYnlVNDhhKzFiSmRoMWpwN1hrOGZVbWJFSkdQdE9OWlhS?=
 =?utf-8?B?SzJ0ZnZwOHBHUUNoUGRielN1NlFoUEhEaWNEMWNUeDFRVEkvazU4VGU4azlB?=
 =?utf-8?B?MXB5TXE0cXZhVG90VmhqNllPcEFYN3h4NTFuNlNjVXlYdWU5WFNERm80OGtJ?=
 =?utf-8?B?NEdOLzMrTEhYbTNXK3FYUGJrbXlGbFRXaTdRd1ZQOHJkc3ZHQXI1YlN6MnIy?=
 =?utf-8?B?ZmlNMHlhQ2cxRmxYcE9aWE1zZ3hvdmpFWklnem5JeC95bmdJdENHTGpZaU8v?=
 =?utf-8?B?TnBYc0VZT0FoRUFrbWRWYUpJTzM3M1B4SFliaXd3U0twdXJnVkNuc0RjcFQ3?=
 =?utf-8?B?cGRRNysyNTdHZEQ0WGkrelEzQlR3VVlaazg2dW9ZdE5kNzJLRy9hVDlZN3Iy?=
 =?utf-8?B?ZXhVQzNPajA3dlV4L1JCV2VaYVp2WDJxOVRFcjlHalJjcXpMVjhQcUxpcjk0?=
 =?utf-8?B?d2pSclo1dFNMbElzbFVPR1pKQnZ0UmhPU1BtSGh4R2wwRkVrc3VFQ1VndzJY?=
 =?utf-8?B?UWZtSWZFeTN4YnN6WlVOVnU4d2hzK1JvYW1jSUlnaWtnZ21BMktCQTRQNDRG?=
 =?utf-8?B?cXJNQTRJdE5BZ1FSZlU4Skh1ZWJDUjdLdVFPSTdBcVpaNmxjcy94VU0zTHh6?=
 =?utf-8?B?VUx1Y1ZDemx3bzRyVVBzcFdVR0VwQXBUMzdPZ09KbHpnckh4M0NObDFDbkpv?=
 =?utf-8?B?NzRZbGhzcWFsNVVCS1lnNkZVTXJBZEN3VXpvbmF3eU9kZnF2UnNMdkZzKzA4?=
 =?utf-8?B?d3JPSDQzekhTSEdJa2x3b2tiRHQ1NUs4MGZ6K2J1Q3MzdnhjSUNvcHJucWZ3?=
 =?utf-8?B?eVVmUndYdFNlL0Z6Yis3aCtsSDRwd2JQUGtlbGQ4L2R4bWoxeGJ4TlkzRTF0?=
 =?utf-8?B?NXpZUDZlRDlVMzRDUk8rbzNMWXh5ZnVjY0xzdC94bGZUT1V2a2w5YXNwaFYr?=
 =?utf-8?B?ZjFFZEdPNHhSWjYxMGxGU0g3Q1dDWUJoTEIwMkpLTzBHczNtdCtMblp5OWdB?=
 =?utf-8?B?aFNXdHNjcElmMjFBMnRiZWZzRXRYdXhYcC96N2M4d00yLzZLY0VxMFFLNitq?=
 =?utf-8?B?QzNrckczR1RveGF5ZTI0dzNoUzhDVFRHa3lnNjhXNmFhRlQ5djYySkdhTk41?=
 =?utf-8?B?OTQySUI0ZDlaMHdsSFZDaVF6T1NzdEh1Zk43R2Q3cHNyMVoxMVA0WVNLdFlK?=
 =?utf-8?B?N2FoSnV3bFpmbFFUZWhhQWdodTAzTG5zRzNzcTF2ZkRBVy9SclpDaXFPRTZT?=
 =?utf-8?B?TElRNDArSVdFbElLQWh6ZE1jUGovSUFtWCtWTENIQTVnd2J5MGpVOUtaQ3Rt?=
 =?utf-8?B?dDNGUFVRUUQ5STFXTVdEczFNenBSNllJdjhKeUxJM2lRbUtUZzBTaVBOYmxj?=
 =?utf-8?B?YnVycjMwc3lzN0dTcGI2MG5TVGZsVnV3eit2dWgwdkhGeXhOZzRUcU1zVGZq?=
 =?utf-8?B?QTdMTy8rNlNXQ1dQU3JxYVNIQ25FLytwY2hyV3lKWGVGTkZHbWJFQ0N0OUx2?=
 =?utf-8?B?YmxxU0dsdWtwbDViOE5QVlhsZkZLUEp4emsySnlEV2RTUzYxS2VkcWJCOWFP?=
 =?utf-8?B?OFdhWm1oTnlwT0FtVTBuNXlQUGdwK0t4M21lckN1NWZlMDNiYTJYSTFUMmVB?=
 =?utf-8?B?SUdhcXUzNElueGI3YWxMeU5VYnZGT2pJSEZCMmFHKzZZTjZNQy8vWFlyOXJu?=
 =?utf-8?B?NmJXWFNzdi9NU1NuVjY1WHE2dmY5NzUvWU5WMW5uVkJyRzZObDN2akFnUlRG?=
 =?utf-8?B?RVlPTU5sRVdPemVHenl4Z0hjeUR3PT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <4D954B81E920B04D8FBF92346B1692EB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: z+Omy6hZLcHuj3QvbiG3dl3CEJ8AHTg4+qYSur6q6M0lieMIDcaX5J7HRA4I+qGTk4qWYWud07eQ0u0uPxmvZaauLazToL2ZzexsPG5Mp6pT/srs1UlX35hoIWchgpOZlN3lCea5mvPOW9noNSD3etxUlLOYzQ57POjTpu251DTqD74uE9MtmvOgdHw5djAVmS6Cb/4jlsRFrApjgcYOomJBsSeXNzvLv8U99921nRjQc9AOUnp5EC5bB7Qce37qX6o3ApYBesjehB9s2daNDAJyg4Bc9DK3J5ArObHx9wvJRtlzVibHRa4EGdmV8LybxPBhHarCHxNiCXO4+TLdYPf7kyvsHk9o4fcFie16Uh6BPpEKcWXacwTqvIZ1geBTYDcQ8aGB6EgzkZj/1DUD8JtGSOqbA3BG3hB+NnYTBq+nyJAFNsZmoOy6PwZEi4g16aZSCYhGuG8O9OSBfl5aMyxHZF36q6Xaz97E3BRoC8jx8A/Qz5ksgAHZwE29Nmu0o0YBGC5fNR556Hy7gIC+Dn8qJ62vfr48jfW8kefM70u29E3MCQFN6QvNX38js8zD9r3WzmvVH3yUYfbiKPk2tHuF/wpUW1LIkONJVED06hRHZyBwDDSdahCjj+dRHqPa
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e5e80a4-e9b5-4598-a574-08dc58a87328
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:19:28.9199
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gDS0bbvLxsoVxYeBl07b0VpBkG8HBo+1ZV6fYheEveMBfisQaVVS6ikLpcH1dVRZ1uiqcoK6qZnU/bkwX5xrni57FWGBh5MZY+qONz5XOMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6687
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=Sm0wNSkM;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=m8HOV139;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d2ac5a84-edb6-4de1-94ad-b1da102458ec%40wdc.com.
