Return-Path: <usb-storage+bncBAABBFVW2WYAMGQEQ4J4V7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9B489DE4D
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:28 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5aa18a128c6sf3285336eaf.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675607; cv=pass;
        d=google.com; s=arc-20160816;
        b=ssC3QA4ZHExSGoUf5v6tUVK/j+VwrduFApGlLO5Fxr2pZcDo+AtICe82J5ITo8G7Oi
         t+nYYmGGH3A18iMfvAizP09/9DlzdKCOUL/ZQqhIbD2e7ny4+RxkaSRDZQIui7an1Ezt
         Uq/TvS89wWS3ksPqdl5sbVCPsbcKutvZO7fg7jOEkaSZsDdgvf+NYr0LzX41xHSpGm6r
         Wmmpwl4P0IPp9KgFADEjz8y055hE/QMYjxuWVJ+Y4Ci00Qd3ak3sl56nj2/My+br6eyY
         dk45GzonxfAqH+o7Tn75aV3/N9NbC9t/dfanZka9K2hAITensufR45IxtX8vuSwXCaoz
         qLQw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=M89r3mB7VQyZMnwOPoVTfMHuDQfphD4CEVjlSSoj5ns=;
        fh=5reoSyClOjdqwvGMXD7E1T1AN9CPHABxlgPQlbPqj/U=;
        b=Ed12Zm0v2ZhPjuIryN5IR1c03Uc8Iexz9KE3jBb4bw7rLAVIWiIhJdK8A0s+u5Xi1G
         89yjOQB+2GCYDWxpRTYW6RLgL82xqUYqTcWsJJ/cIzOl07hkHUazsOmjO32umOvCFGxY
         vpXFOzngsbn8a/KQo643RFmfTxpDXZ29Pe+fSAgoyNQsRLionKRV8tE0+ZcASf/sCT/0
         /REbj+PVCTyobvYe1pvt4Z02H/GxyxJSjV8IwQGBCxGcHPorRrAnJQ501CVLtO5vjc7E
         1iiYwYgJJLPulE0tNPGBdaZBxMzr+640vQIH+4MUEx9R8UZBepRcP/SHmS4x2m+UdbUk
         4keQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=f8EVqGhp;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=tOfz7ynw;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
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
        bh=M89r3mB7VQyZMnwOPoVTfMHuDQfphD4CEVjlSSoj5ns=;
        b=ekojLJ2lHc9rQ0z5Yg0u+fusjUd9RGMaSlw+YcFSjngceKRvisbe30XjtEzCw0E0JW
         wN3hKoAArjULOJgdWL1aK7I2zP7tcgQm7Q938Lk95frfYKd9yu9BL3tU34RoEgJdVjxw
         61Ws5bEfWhNbIE4nI0QiT2l3OJ1awqMeEUblM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675607; x=1713280407;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M89r3mB7VQyZMnwOPoVTfMHuDQfphD4CEVjlSSoj5ns=;
        b=qbhWCZIKUQRBuI5C8xAZ8rxJn8KcGdaDiMpt/6P1kV/UHGRuw3wZbNBpSIo7YU4V0i
         NMJFBKIR7XLMrAcoFYOt1GTNm6EMvhonYATeEyzNkrS9yZvG/CsfbgNUOGQfwMFQhzWb
         OPx8guO6LcwiNPIgrnAhB8zaQZcLi1QxdUj/o+eb9WDp4HyLMxMFAYBKYOEOtMWY1OTL
         KpTUr7RUcNj8+u9w156HT56veprCD1fDwP+1/EPGwKmBZYqlQCZwiBlAkVumYl0DgaDf
         qUIPV9o/FPtWnGjfm16lNbrJRQU7i45wSrenOBTkt8Cn6OFX3do7n4/LVzeUxonU6Sqx
         Uabw==
X-Forwarded-Encrypted: i=3; AJvYcCXpnlw3+UCnLe+fuDNn8bXkavngSfOJX7mZbviZSJMnrK5cWcbh7EvHeGpu7ckmcPEwA+piowfrNv31HaxAnRghkqklhZzCP4b4
X-Gm-Message-State: AOJu0YwpZvSq174KExPzeAZMm5my7uVW65rA3tpVWuRcH56jNnw0nO5L
	Wq/GrJzLV0nLjpE8AE4Udh9uoF34dqg0JtDHqF10HdRmQX7JK9H+E/X5yuGRobs=
X-Google-Smtp-Source: AGHT+IHSuKNWkOTNBrxpc6KbmoiMQ70t1TFua0wFeiCMmAhbc/veG4EP7Jp4u4+e/xDtXnirKcnXZA==
X-Received: by 2002:a05:6820:3089:b0:5aa:544e:161 with SMTP id eu9-20020a056820308900b005aa544e0161mr142807oob.1.1712675606962;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:4405:0:b0:5a4:be52:5f48 with SMTP id o5-20020a4a4405000000b005a4be525f48ls487209ooa.0.-pod-prod-00-us;
 Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWU/FRoZKPd5luR9EdnLALdpJbws4F9Q6S+R4VZ242YNPkuj2NJxugtt8eyOwaUSlu/SMZdHAFis0Od6lmNVlPFrSwBT/MJ9olmfZtEGjFT6grOEQ8=
X-Received: by 2002:a4a:c3c9:0:b0:5aa:5013:8d30 with SMTP id e9-20020a4ac3c9000000b005aa50138d30mr151202ooq.0.1712675606537;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
Received: by 2002:a05:6808:191b:b0:3c5:e773:977f with SMTP id 5614622812f47-3c5e7739855msb6e;
        Tue, 9 Apr 2024 08:07:12 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWJ0LF9OyvvarlfAQC6+Ekw2N7+FfF0g6d6oQS0cRzLD1aLUfUEew/msJ2R14USEhLNhTsxvALvfQYcWfTu6o9S19geczv4tf8Zeyhs2a9Pz2Z73uE=
X-Received: by 2002:a17:902:8490:b0:1e0:119e:f935 with SMTP id c16-20020a170902849000b001e0119ef935mr37868plo.15.1712675231164;
        Tue, 09 Apr 2024 08:07:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675231; cv=pass;
        d=google.com; s=arc-20160816;
        b=WSq3VLAeSRRIgtNYpkB8s9jEbkMVq1kyVZ+ZwQxQHA/aEHXOPd4KR+VL05RAp7HLYN
         SvQG6/qkf5v8qXX74zfOBYxJDfAGAm+c/AaiwNE32sC+WnJmmTOYrEm8ON0ZqZla/NZE
         tp2ecBSnCTdJ90kXmQex9y652t5nsFslZMa3q6GC0ByH0JINymcoQXjeDPyF1vTtfFOX
         XcjCdzLPMyg1eE81fZSzs1pf0f2J5SJQpxRyBELKIK2JHmWBSG2USHnYJJrWoFk4WOJf
         PV/ePyFqUsZYi5avjRkb2gkVsOZyDf8sNJIanmdC1uPvFRgKck0g7w+AKnnwJc0weeOQ
         1n1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=s9WMfthK6oy/uKcfaQiSHqmtWeD7XsZLibrTxAgTIRsRFzGU2zESLgryIXyBlk4cgr
         yZqxMX1EDYWxHtoO3rze5P+XkCryGNYjrx4fLYVHjeLWS8kesHgdUyN/QogJQk7EFLWw
         xXcYrLbew9xDNaki3Wmkj8wzEqRvnpjvZCw5sjYJL5obqjkESNAlmxfP4KvSi1HDCSpo
         cVNb5ZmWOh/OiIQqe8n16sARLeUwhg0c8OuUD0wRU0HicW1o4jMcCXJAapxNATFkPFdm
         ZFSx3D6C2E2E9pBXqziQWaJuc9i15EquAwcY/PvdWEJDWbQ6E4ufgDKjswdFW0e2Ex1l
         u6IA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=f8EVqGhp;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=tOfz7ynw;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com. [216.71.153.141])
        by mx.google.com with ESMTPS id j4-20020a170902c3c400b001e4391b10f5si3732593plj.418.2024.04.09.08.07.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) client-ip=216.71.153.141;
X-CSE-ConnectionGUID: JSgZ2AsTSn6w9fcFTrC6Hg==
X-CSE-MsgGUID: wJbStteSQtys6FRHNkk2tw==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13424486"
Received: from mail-dm6nam10lp2100.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.100])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:06:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D21r3By1EU0zQomaZ/DWWL/EytNQN6aWZzQYV59GdFjQ089uQzSqGhSr/ZBqvMtnrPTdOyTMjpMUA9hdW7P/Aa4R/g1D9RcyYJLB0n/QEdXkMiYZgC4QvG4UkLF/Ru+Es4hP2RfGtbmT/PQLxMf0gGPoEr+NObf1NLIdhzM0nHM/wXGT4H19Xb8dUuPGiEhvxpAEKz2+ESe0TFlrNrnyF6oZLpXrORhTtt3r7+UUYS4QgslnhRzBsmF82vWZ4mX59LZfxuGHHmMGoS6W8i6qAASt/GmKNEXoeVOpO+O8Q/HW2czmwH0Fp/lAsNTKQej3bFxrwK3JhYGzl2ek35F+1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=aKDHqNIFFCDV5aA38ZLEFUlNvVEkVgH0i30aa8fIRPxfHCffSE5iOSKJVCjPU6916l7jY0a+cWB1TlZQxEnKue+gcutppc0IBxjE11BCNdpsEIhj/i/2W0ll2kokndmoyvCzRpvdFfF7NjXF9vGJAUdtWOA57gSeSUN41AwNxde45gqvB193eNg03+5cLYul4XtjFCO6kfgf7JMdUGvw4Pn8HgrF2MVzSgmfx0LHbBMpDvPVlXd/tcVwt1FKVbD0Hngg7s4jHIBtCaRQcK9vqYgxnGruR/cOW04paI8UU3YOpY33bSTzUmiIZKM6NOSqkiyPN3SQkCmaomhZZ2K5AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CO6PR04MB7715.namprd04.prod.outlook.com (2603:10b6:303:af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Tue, 9 Apr
 2024 15:06:54 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:06:54 +0000
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
Subject: [usb-storage] Re: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
Thread-Topic: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
Thread-Index: AQHaioub9+2YrgllmkCiyzR4qkk0obFgCgYA
Date: Tue, 9 Apr 2024 15:06:54 +0000
Message-ID: <c612d599-d431-4cce-925c-de81072db8f1@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-4-hch@lst.de>
In-Reply-To: <20240409143748.980206-4-hch@lst.de>
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
x-microsoft-antispam-message-info: PYk4+Wz6DON27UERXufcdB+IxrUnQmdqdPM9n2yWCCca2e7k7KzoOGrI5N5qw/u/D/el0Fx0G4QGDPe5MtjIDeDMuZVaybtaZvf9ulBenm9hXW/cPB9w+lfY6avK4UDJLnTjZ9etivE/B26gdmMSu4V2mTX/N/WlqD1DfjY98iugJr/wlh7IJCRFjQGQNjmtF9u2DtJwTKTrQgDwla0HTrN/GZG1civP3gA3jqZv71rY4oQMH/NVF6q6dSGwCc1xRz8VN5S4TGJqqSIjvc9rgraXiKzD4RtzJQR6bhE010J7mxVy8X1yEeSHy51oR76eJpKQdGNrGtPY8s7RgxsEQIGIBRYjHmDB2rxD+Xw1My/zKZ6DN3qs+3NWFmdhEyTnQi0E/JIjekgYS9rECOKXXvUhtDKeBGHxU1+DipJDeyby1rlrEQC/xpJoVRn5GPwsC0f5sKxlNu5gh/FjohJOeWGgxyh6MEVQz7uvzZ7Q6ZxrRKabl4tXiEXPCFLnUnprzKiNjup7muxbYYs0U0zJ06oVu+JRKq34JWHnq0/M3Qu2Zi/26DkXSra0/bjWHOZ/WHZPVxiGrtGkS76q2t+wRZlAV0T9Eqkz+iJ7eCszT+jOr4Za3wcvprsd+x76VyRifcRNZmHEcpurpqrNvbHAUBHGocrGrGcBymdlwef2+Yc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWM3eXdZbDZhMnhvWlBWaE1QeE4xSUlxeWRzajZyRFVTUGErUUcwUy84enZl?=
 =?utf-8?B?clNibWNlcktFMjZjTU4zaytOZWJKSlJqWGM3RksvdTgyZGk4RnFvUlhlZlNO?=
 =?utf-8?B?Nml4eGRjR2Q3MUpiYWJFUVZHWTg1NmVxRUJTcE9WNTFockhMY3VHa3lmVzZv?=
 =?utf-8?B?Mjg5L2NnUHAzWXFYNFZLUHM3Q0VTNCtBcFNkZTNHMzhZcEhCSytQWGJ3Zncw?=
 =?utf-8?B?Rms2UmZLOEpJVGsva0RKQlcxTUNzMkFJdFRTWTEwVmdjTTltcUZ0S2twaEdj?=
 =?utf-8?B?ODN1WDZ1MHh1eEdmdFAxMThJSnJDWDl6aVdjU3E4OHF2YU9OZ212UXVJbGIw?=
 =?utf-8?B?UlFjWXlPY1NRMjR0aGVLdWVMU2xpaHFpM1djSUVROU1HaXFmaEtlUVdrams3?=
 =?utf-8?B?ODBMVEJSNWVQeWtOaU1VNlhZRjdoYzZjR3NNM2loTlBaUk1OME9BOUJmYU1w?=
 =?utf-8?B?dTBrS29DYUY5eVc4bm4xR3hLY3YwemEyOHdHZWQ1N2FMZ0w5TFlpOGxzQUtk?=
 =?utf-8?B?dE5HNElWTmFBQWI0dTRxWEFBRmE2OEYvcmlhbFhLdHpvajMwclFNemdrWlNY?=
 =?utf-8?B?bHVZTlpFL0lPdmVEZUYrUWZrdmNLWm5NcWJGYVBiTzI4ekJtVjNPQ0xUZElX?=
 =?utf-8?B?M3d1ZU1xdnYxbDcrQWZMRUdWUDJnZmNibmNtTzc3M2RsOEk4NVhONGdBWmRt?=
 =?utf-8?B?UVBxakFUcSs3TUtaWDcvbWpDQWJZS1htRmRRcDdueWFIY25rbmVOTko3b2Fk?=
 =?utf-8?B?VWdiZE1aSUpoUUhlRVkzY0k1K21Xek5WdjRzUjFnNXpPVXdQRGcwdldtSEZh?=
 =?utf-8?B?WmEwL0ZHK0I5bVhOTTV6d244RkZEeUtmMUZPVnVzcnZoNnREdkorSVZPUDVi?=
 =?utf-8?B?MUVlK29ORUtSWEZjV1cyQUU3KzNZVFI4SE1ScDIrazdHUmpGUDJkSjZScDhD?=
 =?utf-8?B?NVVUZ1pMME11N2xtT1RaQVVMbzllNUkyUjVxWVpYRG5qL3dQRVVpYnp6ckIv?=
 =?utf-8?B?SzRhckVtc0RvQXpuc0pCWTlSSW9KbG8wa2EyMlBqYUlYWUpXQTBHSDR0UjdD?=
 =?utf-8?B?NTFrejQ0SW5OdGl0Um1mUEQ2NFhGNVdWNXNMSHJpL2g3YmhTNEZ0RE0rNTJV?=
 =?utf-8?B?c0Z0ZE5GTmpaSkJvR2cwTFhkZk16RTBqY08zTy93VFdXOG9vL2RQTUMvQmxD?=
 =?utf-8?B?M1B5QW8yRnR3UnJUdnU3MDJtSnZwb3hNNmlVSDljUUZxOEZXS0FrSEN5VndC?=
 =?utf-8?B?cEVWSU9XNHFBL3BoNkM5ZE94UEJoUmhETTlabU4xK2tpRmQ5TktzV3dFRTBF?=
 =?utf-8?B?MlhaSWFlRUpjUmJPRTRwN005WkZyTm5Cd2hjYUdIVTRzT1MvUVJwOHlYNUl6?=
 =?utf-8?B?YkppRVVlblk2WVZxU0d4WUliSkt4V1drQk4xaG5pVlQrMFRpSyt0a2RFWVJY?=
 =?utf-8?B?S3ZlUDlEU0dyb2FDSkdrdlo1ZmxRUHhCS0lwOWg4a3JuV0MxNndCUmxrQWJJ?=
 =?utf-8?B?Q05qMnd0NmRZQlNIcU10K2ZkRG9QWE5pZVlTbzlGemlDS21HMDQ5MnhjVnNF?=
 =?utf-8?B?VWVPOXdiSHpsUUJxQ1dMSUcwMHJrbVNOS011UlV2V2wxaHVDZ3lKVjB0ZEE0?=
 =?utf-8?B?K3BOZkxkQytqeitkcEZJZkhHRmNzN2RHN3p0UFYraFJNQVcrTjhXQ01vb2li?=
 =?utf-8?B?R2lQeHhmVnRXMk8wNU9vQk5CV1Q0dkYzVjhZd0VmWnRPTE84NVVCSG1QdENu?=
 =?utf-8?B?cTFuUUgrRnlMYTFBRllQOGk4RVNoVTFPR3hSYU9DUi9QaXdVVk8zNndYK0Y1?=
 =?utf-8?B?OHNFeVZTY2JyRG0wdWRDbmF2NTVQMm9tbklUVXRwWHVsd2tUem1iTG0xa1Zt?=
 =?utf-8?B?NWJ0ZzUvN21jVDVCQ3FWL01aclJUc2h2ajh6Z2lmUnl6eDU4RUk2MFZURXFn?=
 =?utf-8?B?ekJFT2xITUhDRTQ0TGIzVGJRQk1ZbkZheTdTNHdwYXFiSDFLTHg1ZUJQNnRQ?=
 =?utf-8?B?bE1xak5HamZnY1liSjZWVWJJNVMwWVNhN1I4M00rM0FCM2NUNHk5dDZkSHg3?=
 =?utf-8?B?amUrOGg0ZVRxa2w3ZlBNK04xcDVXWlViTFBjeHB6REszbUc0R1Mwc3MyZDQ0?=
 =?utf-8?B?Tjc1cmFhdTlIcFBqM3BZUVdCTEpLU3RKd2V0NEVWQkx3RE5vcjBNdlJlVnpF?=
 =?utf-8?B?OXNqbVJzdHloK0RONUMva3B1S2ZOTDlJUCt5SDUrV0hkVG9YdXRuTzdvY2F6?=
 =?utf-8?B?UHVIbGRXN0dSNFRydVBFWmV1MThnPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <BEF42466D1E315439B35F2972DD23CEE@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: lEQxZhhN0RoMR+WZOoMAQEb8HfZ0GjocVOdGTsLwdDc3sGNIF8MQOSjQvgq1yqVdPqXtppBMFzqoNZp5Ejrq2Dh/LoFZgvS+8mBeAIRiDBwsMOO0nxEigTc8DmG6iYPUBDLNUNCDys8SWrGiZqQSPicBDmLnH/iN7MnbcCPoXFXJ/wfxqRolekkiPqTdQlQAhKXgkR1bO/1DQt4ztwMVgDqABbMZebXAToPSQFQDBayH7qj/tbkFTSBpAuY+Tjj1oAM89JVKgXGkfUc4CZ3P1p6JFDVwplB11Ol9Z3KRqwNQ0w1S3TnHxTNho4mo1GFWgOcfbqRSKMDsEKXcnC0vE12aRvgV03wY+90aIIbeexJv9qwyZV8y/lMM5lfe4To8oN7uB08ElXQkuFmBEPav3lSbISKNY+3FbQSAz9vBuFeBaOfeYzwxWebexcWqw+k0LOIl35hHct1KjVTXMuo/1z6gGBoVnIebHr+umBU9+HqsXErZiNYGTKQPDrgZhKniCOjq62thuMsW3ZPsmnYW/rkmIpxBNEP20mR3XfHU1a9FkqPICSz+TgUmQb+CecqrFDS1oW52YD4/4IjsKBN3h3356rLdnAMga0beskMAwakkJLZFoo7+IVoSqtsEB2js
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b8feded-7b75-4577-9566-08dc58a6b18b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:06:54.6251
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CEm2XUIkgO8L2QhJwGrZxXsHDmCtnRAmaXHaTXFmtrVifYlsY/8WVDg2az5yPplpSaChVFrTkrBM2ETwJqMsS3QAqCPIPsjM5dKJN2x/sTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7715
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=f8EVqGhp;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=tOfz7ynw;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c612d599-d431-4cce-925c-de81072db8f1%40wdc.com.
