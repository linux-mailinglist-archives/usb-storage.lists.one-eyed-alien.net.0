Return-Path: <usb-storage+bncBDW5PLF2TMFBBHNZ2WYAMGQEKZ27HTQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E9489DEB6
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:19:59 +0200 (CEST)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-6ea165b4319sf1509724a34.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:19:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675998; cv=pass;
        d=google.com; s=arc-20160816;
        b=SW5gQ7oo95WlPEZGW4E4pXTuGRt8p9SPUm1HlVmNtUTm5j/8AB/ecXxv+NZn4OUmFc
         ovTvy1VCBFm1N40DMvIle2Kmxhljw+jnxVHg8LNwj32YtGqa9RkRiCg3Wf4xQlLLeX6Z
         MSDlqk5nyyaXS6aT1Pe+5YyzsWCTs2Rr+81nkHBXIK0Uh3K/buT4lRT1csPWWaq8eVOF
         dbAZ1rmRhBCvbNoLu6yRMqJR1CqltjusGwm+stFeYJXCtPq72tLPi/tCJfoYvtM3+zr/
         SnKn6pJvwjR6uWOb7bng+tJS2qpe5jqLVovUv4b6TlX5FLLTsrB04w97d0no01UQNLfs
         YgjA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=6sBoFQxBFfQlyE4GT+eiEcJGqYmuNND0xcck2rycV1k=;
        fh=SH8NSYpFez9CHVCUYhNUgxTDqGFJmiVoLnfcpNjsVbo=;
        b=woUoMgXf2MCeYM1ue/6Qm3RoHMVLnhu7pny/ka5nTczXyEr5oeTEWSFcCwe3ASIHVP
         33cWueAf+R830azXN9Et/onbcKsVb3Y06OazdWdI4CkRQeBTOYOa/MozLgz8XiCEjJ7h
         GKatyRBks/Fv7P7qnnUJbtJXAeB6JlRp+KLoUVQZdg5mJfbkHvomIILwRk5Kk2QUL8Pp
         Rzj8GHKw9zHVkSJB7gd/jLB7zjKqe/Ot903ATy0SBlMk8QBRpe4XCtx3n8oc9MXD6+SY
         plqXmovD6rDBpU0CRandy68NYltjP4pNHGv613FYS6HK5RshWYY4coBWm13hTp07oWGX
         GL5w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=MdahlomI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=fs2IoULd;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675998; x=1713280798; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6sBoFQxBFfQlyE4GT+eiEcJGqYmuNND0xcck2rycV1k=;
        b=J4dzM0TVUfYxe62lTcHmULLggjb9u1KXoszzdEgNLYONZRUwhD5vtn5MTRUNNuo2uy
         nnSONuaJkyXxiBiteACHl3DVEkZxWkEbIGWKWV9WU1D07ajfKY3DQ4sAAMB2nV+5bnX/
         xz9bkR2KxKSBzoHdjS4keOG3TA+K/Lcq+uoBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675998; x=1713280798;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6sBoFQxBFfQlyE4GT+eiEcJGqYmuNND0xcck2rycV1k=;
        b=WiabZ6UpPXAIN3ySFq9sYkbkd7zogKhPZAb/0lR0tb8PybnDN9Nyr/wt99WOuNGmaJ
         MHDIgrNUj12CQXYSIwZdgX5eRVrEsCttiwWD7WOS604VO24QS8fxz9eSuj2Y1h78nwg8
         ZADCeqVDrzSjQGScZjgCkplEaI0Y5/ls9k+ljyszguhL77vu9kqG5+SEBqQz2pmdNPDT
         mHapyebn4vpTEr3MZgn9EuyGfQ8P04fs5Hm5it3sf2M5GYTAZ8Dvan87rVQgFPrj0ozO
         RiIJe0c4Kus/V87dXoAcfvFYhGqMjUuMAH/Ish9WyKnMgNllKQPddn12LCtWB3XMSVOF
         2ucg==
X-Forwarded-Encrypted: i=3; AJvYcCUoaw9PleTmsuGZ4g2Wy1bLZbtDHn8EeCi0RFKqyhUGAyxK4RYemlwoC2urNcOzWPR/56CognTYZji0doQGoxH+FT0Qigdmc3v1
X-Gm-Message-State: AOJu0Yz4zgB14KLbxMCxQvb8z9afiiYSi+MIaMX8N+zZuwDd3G6z4tlz
	sLeute8POL5KmafOzejRlTWQWD+eRtXqQzNPlvBo+I1WckpfwZFQ9Jkq+4HiTIs=
X-Google-Smtp-Source: AGHT+IHEPtVpGXQve53TA9XbeA8ZuE5g906eU8D4X6iaWKk7AeRGNB3UQC0O8MwfqPvpjuiqlKzqvw==
X-Received: by 2002:a05:6830:45:b0:6ea:2b0b:6171 with SMTP id d5-20020a056830004500b006ea2b0b6171mr77503otp.5.1712675997680;
        Tue, 09 Apr 2024 08:19:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:62a:b0:698:7a54:d873 with SMTP id
 a10-20020a056214062a00b006987a54d873ls576867qvx.2.-pod-prod-03-us; Tue, 09
 Apr 2024 08:19:57 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXe6dc7WOrAuqtSHMQjv5JP7cjY4pmPdJaJB7CX5LSSn9J2lJPTL5S47Zet23jXILERhOV1K408uYNSM4aYUojVViQ2kajInd5cQSDoxP0/eFiVJBs=
X-Received: by 2002:a05:6214:2aa5:b0:69b:30f6:d567 with SMTP id js5-20020a0562142aa500b0069b30f6d567mr1151976qvb.58.1712675996823;
        Tue, 09 Apr 2024 08:19:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675996; cv=pass;
        d=google.com; s=arc-20160816;
        b=y+gtsujjcTFvgnKQJVHw7Dui1/Pc+X/uwMtyNPuwc5nrfkiJ42IBuA/whk9DG1h1EW
         Klf0B2kr57J5T2aAFuZiXKRkC6hKjfzugVMf1tOYMxv5j2zo3YqninJMKcSNQyOi+Cvv
         4/Fv6T2D304uWR6g49j2l/au62x81h9qTFmR1L4irVzya0Cmxw7f5QKBMQsvPLvWoWt2
         YhKsL0I54klXx5RI5WVLX+Ho7taVOafVQrdI/p0P/NFI9HAwhynEG8esVsFbRebx+XST
         Y+EvW6a/vDv0BrK9/QEskfYs6ULaZgV0qPKlKorAGTDq466UWm8Jv5UG9RTr1gta4XpZ
         O/4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=ALvqM0tW9ZykiLKe8jMSWGfrYrsioi/XFf1inxvq6PDovRpOdQ+d2NElPtyEGJns3F
         tGygGWU72VLgF7KiMZl/dQJ4HxvK+lttH2fLS08W2UA9n2btmmYW+esHfb3zstDKly16
         FiWVizbsL3eU8obKgsXJylD1xZDku0dT2ZPXpEV4/grSHEyXZ25WOjE5uYu2DNRiNjWo
         vvisHr83qgFolF+Hbz0Rh2wHXtFfbzK8AzTtdG9mxZjz2YXde8IdGc7kQA9YoAr7woWF
         9llCMv8TPj0M0Ns0Qx90LfM0EJpWVBC1eRIa7t9dSK1uQ85hrp7PZpQvo/KWti8UGCA+
         RrEg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=MdahlomI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=fs2IoULd;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id a15-20020a0ccdcf000000b0069b1a4b3a7asi4885576qvn.159.2024.04.09.08.19.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
X-CSE-ConnectionGUID: KlExRxbiSOC7GFhkOGKNZQ==
X-CSE-MsgGUID: yEGbEnZfTXCdeAP/Mh5gEQ==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13602048"
Received: from mail-bn7nam10lp2100.outbound.protection.outlook.com (HELO NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.100])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:19:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0eeX4rtScBMdU4Am0F/b2fnxfWk7tJ4ujqdXo4HACIijJ5/m2hTwUmQFu8A/JE8gRFVxXULPCQMbieoLsRUEeI61txn5Bp8x8A6VkWjMrdvwc71tGsABVIEnFugOuJ7YQ3uHX2CtnG522krBw82vMDFBGhrsXyJYiGf1RrBNHQ6bBaLZGFGFLUytjjU45cThFuehNIv50Pju8qdzRh7YaAPKcPAhBjdh7dDmpVKzqJCJcFay4v9eFHh2LV8cAjOEyOwhNPrbXzTaJGH1jarZ1On3uTQrSp2JpzcoPSPD9QiOMEFKSq+7cFExQ1N7cpja7jILKJzMN8zqJspsB8JMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=PvgLZ7fvASYbWmk39palWUTgmOIPAOtxuP4nk6eN8Pn+rFUBMfq9MsMSVFJav38hwT3GgloCcgeU97uS+ZotqHqBlCF+QFi+ApctXGPuCsvIHeKb75Y9GV7nA96CNqZaytenhJLtLmKiq+xQdwbnj7NlmF4yjIbTgmT0rjBBKdoqczl3qOlq0qL2h8PTaWTvOAdHj+V6Z3C8Hw6V2blXqWwH83lorCG8e0a3bhOXk8E2u5fqNlk1v+UkoUMxfuq2vlCZ4J7vdHv/Zhrf9v6vaBoIspep2anr6wTAmcNNrv1NETDnyXSphb1HHNdblYOCwbdhmkUjbgM62sObInB7bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by DM8PR04MB8103.namprd04.prod.outlook.com (2603:10b6:8:2::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.46; Tue, 9 Apr 2024 15:19:48 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:19:48 +0000
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
Subject: [usb-storage] Re: [PATCH 16/23] pmcraid: switch to using ->device_configure
Thread-Topic: [PATCH 16/23] pmcraid: switch to using ->device_configure
Thread-Index: AQHaiowDwaEj/LNwRk6+2/GDx5swfbFgDZ6A
Date: Tue, 9 Apr 2024 15:19:48 +0000
Message-ID: <8362894e-b0b0-4327-93a3-837bb677acff@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-17-hch@lst.de>
In-Reply-To: <20240409143748.980206-17-hch@lst.de>
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
x-microsoft-antispam-message-info: Xd3XQm1Bh8rHIlz5RZ5480IwQEFtvwMDLc5Iml5YI6xXGxJFm1ZrFub/WX6Y4kPWCSt6zrKeOz2rnvN9fIG026rC+pxOzRIodtLsLGAG8o3tVOwGuw8Q9CpwjqhQLFXY14MFYAiSZdQ64e8nNHyRhZ9VxJG6YXniHquXcpHbdZ1/o6eGawMbnr8zH8f+Nm/Avj8+zPsjOs6gQFCQpeAop0k0Q37QYxi0UY7f6EiavdFdNN55I8+T4Qtz7f1zLIK5xfrKUorop4YT9H7/W8c3ZyYRg+G2JoxJPstj26Vx3/WS6avz4Zjyji+qaKGvWmjiIR48Txm+UkUyc2/lnw6fzwyLfgkQMbkmMXUjV8bwA2iYYIOdF2jVMwwieb1Jxd8MuK0bkYWWhI7sQxnbXZFyBRSA8ezUOakaZDqwSIvkIxGAPK+bnobkYvGzTZG5vbQEaX7Wj980Gw0TL92JeiBKryXwG1tR6aLaSfzafxAWCAKgzvyWgFC5PNar6EgQCBWdoopGdZ+XuhTvfSf10LEHE9lPDnoHNCF4m266IZKtC6Q4kKmGKkoQ5tcHMidTqiW38e6gNIvo2TpQt3JJhahmA7b+FcQujmN+0lVc4PdWPJkoC5bjTmHHr1N/X1JNHNexp2MnlsaJ0UpxF+V3yA2QvNExjOT44CKuDz28cYr+Iio=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akxPRlZKcmZ3R0hFUEZNSDh0OWIvbFUweFZtMFBIMG1nNFBZSk1Dd01teHFz?=
 =?utf-8?B?VDN1ZXJkd0R4amh2ZXZKVkQxYUlWTzQreFlHMEh0NE9pVVVWc1pjTWZYcHIr?=
 =?utf-8?B?bnpXeTVaSU5XRlFhL0RoNUtQU3RoZFVsUkpwc25FdXlBdG1EZ2V0RzZHc0xB?=
 =?utf-8?B?eDVZQXJ2MlJsS01FVVdpUWczMDR3Nk9saGxmVnJuZDd5ZXlBaHZlK1pzclpF?=
 =?utf-8?B?VmU0QmZFbG54bXNsM1lEYWc2Zkk5Y3lsQlZIczMxRnZsUHg0a211cjJKcFVN?=
 =?utf-8?B?WHhhaDFMWWUycHpkQVk3WEhxc1ZLcXlhUExKVStRNnRlSnBEczFBeXNnRG1S?=
 =?utf-8?B?Q29DL0pGeUZ2RFF3SmdxTzNYN1dTeW94MlJ3MzFkVTU3L1pJWk55SVFmRXVD?=
 =?utf-8?B?NnFqM0M1YmtmV2x4RWx0TUxYVjVjZmYwMXV3QnFsN2NuUjcvTHpXUVN3KzZQ?=
 =?utf-8?B?Vk9NSnM3Ymh6dlNTOGpnbVM5Y0pMUGFUdVd0bmx4UHdZcXo3UWF4eXpMRE5J?=
 =?utf-8?B?Z1dMTmJ6a25pVFpEQUx6Vk5lNmo3eWg2VXAvQTYvVHRuSWVsM0pHbTMvMjhW?=
 =?utf-8?B?cmpBWHpHajhaVERDc1hIV2VwUUNwTGVPS1lCRTV2QyszNjB5MmhVcTA4MWl0?=
 =?utf-8?B?VGhna0ZMWjFkeXl4eHBYMndnSjk2ZnVHMStiU09DNnRxS2V2OHdVY1M1azJJ?=
 =?utf-8?B?Wm03cU81bS9DZDZhdDBDTGFBOEdTZGY4N2p1VWF0TTByR3hUTnFvNmdQb0hR?=
 =?utf-8?B?KzVLdkVQOFR6V0cvTFNXdnpUS1ZsUnQ2am51TzZLQmNqc3FLZzh5NWN5YnE4?=
 =?utf-8?B?eXM0V0VPUEVPUE9uZXRRKytqT24yVittNGhTM3lOd09xamY4TkVyemx1Rjdp?=
 =?utf-8?B?cFdWdytVcE52V3ZCSno5em9SL0JuUlhDbTlWVlRrQXdtSHk1Q2thOVVqUW93?=
 =?utf-8?B?Vk9Kbm1EdG5OU2ZPZ2VuNW1sNi95cml3YXFNb0l3V3JaTW82ZHhZanNLdnZn?=
 =?utf-8?B?cW1EODBDODNCb0xBNE9uU0ZSRVJKNXBmVktWamhNa3RXWnJvTllYNUp2QzZ5?=
 =?utf-8?B?ektZSkY2ZjlGclZmRnNnOWFDc3BMcFJLYzFrQmxaVzBLNWNnbjRWd2g3YmVS?=
 =?utf-8?B?L1RLbmFoS0l2cU9mRFZTdEROeTl2QjdJSVo3QlZTL3ZodDZBWFJZM3NtbU43?=
 =?utf-8?B?WUlpY3N2aUczZ2Z6SjBnM1prazJpRnZScVdlUzdtWXdDc1MwU2ZKUXhvNDA3?=
 =?utf-8?B?S0hBVnBXbTQ0QmV5Y0ZOeEtXamI3cC9zUTNwN2V3WXErclc2YUVUTStYR2ls?=
 =?utf-8?B?RFZDQ3hhQUxCL1NhNDFIMzM4Rk00Qzk3SVlZK3NkQnJ6S1BSWGk1N3N0eXdQ?=
 =?utf-8?B?RXM4aEoyM0lBS2l5VmpnMmpvV2NCZ1JTdEIrQXorcHdySU85WGJRcmV4a3Bn?=
 =?utf-8?B?YmxLb3dXLzNUeXMwNFVadi84cWdzOGVaUjh0ZUZGaGpMTll2b3VvRGUxd251?=
 =?utf-8?B?eTJ6VTdsTHNKWVhhYnR6MEZpd2Q2dTBqZGtrQWx1RnRTUExsakJERDhZSStE?=
 =?utf-8?B?aTZ1NTllZldNcCtYb2NTREdjeXE4Z0hha2VRd2hPMWRCWWNnYXdveE9qanRk?=
 =?utf-8?B?ZHE2alNXSzBXYlhGYmZpTmhBUUVuT0ppYlBtUkdkajByVmpGbHo1aDk1RFpT?=
 =?utf-8?B?dTh1Q2ZnU05ZQkVGUjRpY1grWWJLUDM0M1lJaHVXMDVod3k2VmhDV1RpRlFC?=
 =?utf-8?B?SUxRMlcrMzRxb3BYcWNYZnF3c0hoZDdNTUxTWjJ6ck1OeGlKVG9XYzY1SytK?=
 =?utf-8?B?bklWUE82b09USXNnbytZeXR1cXR6WllBek1oaGxyR0NDU1cvbW9YbW83VXJt?=
 =?utf-8?B?Q3NOS1Nvamo0ZUZMdWdjb1orRUQ2TlJGRGxUL0JMSkErdzNyYlRXQ1Q4TWdL?=
 =?utf-8?B?aDV6a3UvTEVacGJobytnTEdlcnZaMWZudk9VQmMwaW1LbEo0Tzg4R0tTbU9B?=
 =?utf-8?B?ckN5RTEyay9uWUtRZVJOTlVOVFI1ZDI3eEJKWHJBM3JIZGhwSVUrZ0tOV3FT?=
 =?utf-8?B?RHVoNW92SFRJUGcwTTdqc0hFZFZWR0VCQWZXaU8xOUV3RGNkVm5vWjVncFEr?=
 =?utf-8?B?Z3FpckNoY2xqT2pnNHN3MlVzbHcydkpoWVYvSS9xOW42NWp2RmVocE5ydWhR?=
 =?utf-8?B?TGdjeXVyaSs3bEQ0S1dQTmZnYld3ZnU2WkZ1VG9OMk1McVV5UUI3SVBrZTdp?=
 =?utf-8?B?V0MwY2VURVJlQkxGUmxGQ3dKajJ3PT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A8083427B684C04B8733B6B26D7D77EB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: hn/r3sgEjBe9eWmV0Y9xWsPEIvxos+k0Ykzp5AVXsdxkIBFZfilUyE9w1Hnv1duJl1D2942YLoqb8K6naKuSTe4gz+1hSCZDj2y9IaF6TfbNFrGALDHfBMrSosAa1ZdsDLPbh92DPeh2dQU2e6kxuRNqHUqUi8zgRV2PiYqI2PG5WXCm7N5C5SO6n2wNtiSuRw9+aeSGyC7P+2UTsSurKl7qzZhJJBIXf/opNVX5AzcHXqbMnhA9Nzj9a6ktQiPZSQiojsNpmSMZSlve+bX+Y9UqcCGTBycP2NT5h+3nAPNFf7K/DempRuuc70XwEVOPLi3tB6S0sKTvtK1QhxB/LqFb8roflPx1w/G9dtbY9gi636N445Rrfvj472b3NYtCxbuT1S4d0kflC/S+zSlWwAHoM0Um5bJlXV/eGYxofeZJzrzd5SWjy1nNvxKt3/4EAEA8wUFsZ5aqikZCefv8TuX1d/rPt38YyNHqrEUDCGBPskkJm0SHtM3GpiZg0TDPIlFcj0hRb0vkVxXxFUNN9PwjV0AJF956mIOsnugRn1VT3gDwLlpDheCUvfrE4owJe+sH4v0oeLhYvkpAg3g6eHQUOzzdkz6emmmao1zMumGUvVCDTZpxllRpLMIDbGvC
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87433ec4-a360-4c58-2db6-08dc58a87ef3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:19:48.7016
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RRZ3ueqEg2N+s17HCx3sURNpAiwJHrlbHci6Ck+oskdnzcv11Js1iFfqvdcseJOBtHFtLDLAKVomNn9Wo/EtivU0XAikbWcPkmPlGMKABfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR04MB8103
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=MdahlomI;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=fs2IoULd;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8362894e-b0b0-4327-93a3-837bb677acff%40wdc.com.
