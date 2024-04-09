Return-Path: <usb-storage+bncBAABBHFW2WYAMGQE5GEZ2FA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DD589DE52
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:34 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5aa35f6f9b0sf1621207eaf.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675613; cv=pass;
        d=google.com; s=arc-20160816;
        b=RAgK0wmolv2lgjQlOeP1Sb1qWxHDE7dxdpmTStiniY+CKExpujJGXHy4+Qeg8dGEvd
         TkIcRCr9o0ryLrHYz1ji4Tu/iKQf5/Kk6YDuHqCQ/P1YDwo8c2+m9xmubWCIJ0w9uOzm
         VENFrD8ZyHW721e1Xjhq/yAsjDDa37gPk0IVe8OJg8kQ3Kk2u2tlVqh+2taXA/bc+N0B
         LX50vz0V2J1DKJ9xFrLA5sRdUo991lNpq2flDADN9mBbqdnyVPFZfihtFwW/RguEUSOx
         BHt4eMR9UvZlH7+T16rTNKiBLpUcJZ7Bai2OOH0Xa0cLiG2lBbvwOa+KoK2kx0CEZLCU
         kKJg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=O+T8TTGjXQXLcs4yjQk+oWhQWpmD2fILL/w7oW+gw9I=;
        fh=W9/Ut5NbqsQzjpVK+QBQUiSK2dj3Fe05CjO40WNE7ZI=;
        b=TePbdU8NQ9c6+/Qhjux9kJu+vyOwvEf7/5+kB5In6sBbwAUJAIPMLih4Tg2a+NmsgS
         CXA6H6/RxqHUEQFPe6ONBWpShjoLRLudi68DIhTnH7s9fQhpJQLxatMGIgCTH2ROfHhy
         e+2OQhAA89OZtPcYIPfSJyJyT9HKIPiK066keb82uN3ziPwQeQomdh8a74y4pEaGK9Mo
         6cJk+r5oV1SVag6t6ThcEJTaXXWL32qN7Oz+reJ8i4YuOFuW0ofCpiKgg6tQX5o19MP7
         yRqTCRuw+izMubQc33IgEprCY5jBwNY13KfbaXA8ZHuL6LMsV0leFv4yv5/LDWTa+Uid
         McOg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=qNhY1PYI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=gXgHYCje;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675613; x=1713280413; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O+T8TTGjXQXLcs4yjQk+oWhQWpmD2fILL/w7oW+gw9I=;
        b=G7ZNrGkuHxDaB/ZwbT9VmUfeGK5TIf4uuGnkNzwXxzziLiMGDq0Ds7o6+T1PN0k6Ce
         kgdr67bCYK5Jhr0Wpe+q3qTmDJB8nsONvg2ww6Zuz7DjAqz6aSBr9b6HmXAYT0X2/D/0
         G+V4tzebEthKtqalYMHp4KpG1k1LFS0yeP2ns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675613; x=1713280413;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O+T8TTGjXQXLcs4yjQk+oWhQWpmD2fILL/w7oW+gw9I=;
        b=fC0Ocv7SbII0Qd46HrWGRMaT78a6PA3IArwKVtbyPHB/J7UDsqVxf85ExbPsNUQkWG
         vPb94FmWoERUvlqDgJ20jAXlqwvlCzKJzRcfteZOuenFu1gS6Nx0Sc8Zy/NOpP33os61
         m34kZg9DcOASz20IK3uYQznvJWWEYKDvdD36vQN8L92wJMnQn9fBv1lFKmUwr7yhBhCp
         mJ7L+jrSk/8bbhF3dG/BYN4jC00fUQmGF/Hx8hiltmSXcPZ0ZG0HXgTspCwYqilc3CWA
         BKKcB7mOYYbXmb5bvjFRJu6kSZeBsfX8jDEzjrwmRd6w8d/gEgxZU7MOL5pbl35OdBEg
         oN0w==
X-Forwarded-Encrypted: i=3; AJvYcCWTpJdWizw99Hiv5Cfml7wI30Gif3ttwkg+atHa7aGZQgV6maxMdlrzSsTLzeOeI7hcO6U4zuV04uCT/WDn21oUAVbiakSlsrpK
X-Gm-Message-State: AOJu0Yx7Pgl1vGM+KSvoEQuK5VS+o950MCtsOhGAmlNIyMn98kZf9jV0
	wAzeyEsUXt5nA8eRG3sDc46udO2k1wZNoh+9MQHqGtW2BKh7y0j5iVnxr0TlU08=
X-Google-Smtp-Source: AGHT+IFLV0Bl4Aq9DkOroHedWGCPOhJvP/a4yeIseQgPLZX5NerKqrJLo8lBX5E+jBOwBhCoUF4hkw==
X-Received: by 2002:a05:6820:98a:b0:5aa:4d6d:2674 with SMTP id cg10-20020a056820098a00b005aa4d6d2674mr121337oob.2.1712675612785;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:58c6:0:b0:5a4:ee4f:96d0 with SMTP id f189-20020a4a58c6000000b005a4ee4f96d0ls1829756oob.0.-pod-prod-09-us;
 Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX+e0aAfjqLm5RvklTVhSYcJSKve/0bfun3/nUWMDiS9L3eLUe5ZcXZDcbRL7y3n0W3FWBD7q3Yd1kHqX+c6L6y7SjPqXjOUSUH2Npn/lORV2oHNwk=
X-Received: by 2002:a05:6808:1404:b0:3c5:f63f:1ffc with SMTP id w4-20020a056808140400b003c5f63f1ffcmr51604oiv.11.1712675612432;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
Received: by 2002:a05:6808:191b:b0:3c5:e773:977f with SMTP id 5614622812f47-3c5e7739855msb6e;
        Tue, 9 Apr 2024 08:12:47 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVCHU7FTb6XHlArpC+Kw/SYBC+8LyFszgfvrpUh4HnwTRd1H3K+DvThwG7bwvZIY6ThyUTNiEPO6ipSkbOXPNmj9sPBqO/BrLipFWAQJzCqtsrCAIs=
X-Received: by 2002:a05:6808:643:b0:3c5:f342:6752 with SMTP id z3-20020a056808064300b003c5f3426752mr5951567oih.46.1712675567153;
        Tue, 09 Apr 2024 08:12:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675567; cv=pass;
        d=google.com; s=arc-20160816;
        b=MJmIZb6ubq8W93GszuiBiMNJ7z0uzNAqXV2NmKqR59HOkdc1vrVirEOcEK9OhD3oES
         /FR1uCk26ntEEzGbmtMtZShZ+m0F6jekwjh7HizZXlM9Bbpfco5aCEmVB8TCc18wo2z0
         YogTfZNBXXxXQH9dDRRzEkWp+OeCAtXF2TIsfvR6KpCqcD5jEkOQlchu9XEG37pUA+6N
         XUP0eNtPtZ3zeRQVMeOkRJ9i/P9yra9nMlq7SNcBnQeUMIkEaz1/Az7L+ngutpxdnCv4
         cxFQD1+kaQcJwtk4SDXaGt6YzBCPqZMOGsBmL4yqkpt5YchxZxpZXYs3YCVzm0roPHGM
         X4kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=hH9O1sBzfwGx/HI1c59HN26Ke74SuuBOq1UkP3WBHlkPio42mcECOu/66mN+cmrYrH
         lGySQUJxVH1EO2ZQg9bfBKJ0K7UgzK0Mi3qy8SlS5gXMq5InnETe+FaJg2rQ6KzhKpUV
         AsT01zLU4mxV4iNuA0tSTgYCHg5a/T9kbxXiJvk88yAiEee2GyVgu0V3XDqzhn1+D3hM
         qBgrOx4D5bY4CRLzp6ulVjEyMJsznMGTLtovNFKv5z/IO0oMAely82/iVRJA61shQ7JH
         gAZ3Dmh9BYtyEEhltEgQzde9npStOruIZwlQR6kQKi7QGczgXQVuhTuL1idb7Lzn5cKH
         65KA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=qNhY1PYI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=gXgHYCje;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com. [216.71.154.42])
        by mx.google.com with ESMTPS id g10-20020ac87f4a000000b0043473910774si7252058qtk.467.2024.04.09.08.12.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:12:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42 as permitted sender) client-ip=216.71.154.42;
X-CSE-ConnectionGUID: C/9OEyIPTgijb1h7dCYiNw==
X-CSE-MsgGUID: oSQlKJxQS8uh9perdTkLUg==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13077116"
Received: from mail-mw2nam10lp2101.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.101])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:12:42 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ocoe4dyjtExz8ZMhgVKhP8A4iiJ7Ro/6HffYWlHa4OAaRNAvr/o/Ui5WQKI3g7Cm2KTa/TBYoPYTHBOPfwMLLYBbBKOLzTGuouPWXh8b6WfFyXUox5Sc/x12E+xGCeYOyzwW3BQtNHds4L2WElpjRDM/y9XyHjWCSru04OiJRD72gNMLImbPtJFuQIbhh4k1Krt9m6nW+BcN2RDLvlCSyaWEHqnBx3Fi/qcmes8NuGt3TBDrfrL8as4k5f47eU+CHy2Y5H4BQHZIrMejw3/0H0N6ELwgvxQOpz15SVJbL5oDlnWkx379hEs77GNpCZv+PKwtgCsSh/RUR3Un8I1jPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=OkxsiZApkrqiQQVC/V8H/ZOM6WV0xxd+/HnaH9kZbC+s0msf9T0gFLCc90R01YsGOb4nInABHBTZ9VQ9OCNJ9jZfdvRKD2mNn/jbtSy0Xj/GMv9G+u19kFK+S/qY+Cwjm32VlIG3QDLtFVWUNA13zVHMNpURQ+ZZPDN6vc6vJ3lXRZYpSx4Pzbf70MtNFzpGoaWUqN/OlHrCCFu3VkzlhhzqjaXOOYd7h1/THK7dkNul8niTiaKhNjD4+CKNtwzX4sMBV8W4+GDzHMEz1EiyDLg6J2kXh+baBNHaLE6DmS4cQzFqZAPICClpN0atym6C18qwuJjKUwPbeaCxfR7PfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by BY5PR04MB6375.namprd04.prod.outlook.com (2603:10b6:a03:1e6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 15:12:35 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:12:35 +0000
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
Subject: [usb-storage] Re: [PATCH 09/23] scsi: use the atomic queue limits API
 in scsi_add_lun
Thread-Topic: [PATCH 09/23] scsi: use the atomic queue limits API in
 scsi_add_lun
Thread-Index: AQHaiovKXFrNho+t8UGbggU6LD+uP7FgC5mA
Date: Tue, 9 Apr 2024 15:12:34 +0000
Message-ID: <8af92ce4-4ecf-499a-a1ee-126c0b463392@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-10-hch@lst.de>
In-Reply-To: <20240409143748.980206-10-hch@lst.de>
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
x-microsoft-antispam-message-info: UtALpQEcWrfwFy7uSRZpRQVoAAt9pVtzehBAutM+sGZPFnwoFAqrf+NLVIUTnn6RDCAYQTX32KAAsRMbIfrrqsrg3m5uPnG8klK4ybmbvnBrnet8nXVt2MKYxdMCqaMokC04ncx08cJxyNtvGQAp26IYcN3d7VuicB1h9IvjaG4HoveQeKMjQ+2SxE6dJnqpjjoGu2BrU4NB3iwRaE7ppb2ftNUedFo94ceWYhJhQ8FCm4LGx6I6wwoa0g01/xApeEEYHIZF4NYfigcj1X2udybgJ/huLlZNKiLSZLepZ9OvBT8khtO6QABf01P/5FiFNZm5cjej87TVSDuairPlbAtwSKGFhBas1qbN4OnD/cbTcBdKrBIswqd2Jin8151bSTSnZuNA4d6O72iZxfPXQPfiCPK5BPBcog4kBN5u/86NTbzTUzDBTDgGEGK4w3o1PdMxW3JCDrkIW24nFbpV2BofCgTl3jM1+f9EL77t64hj3tI+dCLUERkoMq6/cLkedC2jcIvVKoIoOgMfEr4Bcz3THg14OTeWHjCiW3kt6BMB7zAxXoy3Y7Igmt8pJHyN1C/X7vAud72xBSQbAJiUyzvhbRBHXvFuKneT5TKJFgJpf4f9BVbnZV4BnK8EEznHSPy+fHdFSmFIbjxsGwHY/w3TCw9eTFvs8Eq59aL+pqw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akV2ODFYTGhSTk03anlkWkdtUnlTdHV1bGNTNXZDekhTSnVIT2lXak1OcE5S?=
 =?utf-8?B?ME9FQW9XY21KVkc2TGg5aTc4YWQrLzE4U3JPeDNUbmpTaW9NRTJoeFYzMkZP?=
 =?utf-8?B?b05aRUcwMDRaK09CV0Q0Ym83dmJzT3Z3SW5JUFZ3aE80MWhLdW9oTk9XK3h6?=
 =?utf-8?B?dWdSZVF1eFc5MDVhYUZELzJNMzF6NmFyVUp3dmE4c20xb2pqaEZUZXZEWElE?=
 =?utf-8?B?MytSb3EwVS8zRHNiWUtBbzByUVJTcDF4c3BIZmkzZnN5aGVmT3VaTHBKL2di?=
 =?utf-8?B?NVdnSlFuS0tUc0VOeDR0U0Q3RlZIV2REZ25EQTk4K09XWUY3STNBUEl6WGFh?=
 =?utf-8?B?LzB6NlVPOVJoT3pER0dkbHluNWFsVFJJNTY4WnlyVWQ5ZE14QWdSS0RUbWk5?=
 =?utf-8?B?VmhER0NhZ2xTU1F6blVFSFRpeUtuTUZ3Qjh0MnJIYTlVZ25XeU0ycjY3RlVl?=
 =?utf-8?B?ZW9KMFI4NzU1a3Q1a2FpbTVUMnc4ZFJVUitBUWt5OXF0enRXOVdUNDhwcWdO?=
 =?utf-8?B?aEphVFNKTWozSVJIVFFqK3JqbXkvaDRlMmlpQkRDQ3F2a2Y3NzVpbG1VaHJ2?=
 =?utf-8?B?Q2xacWp1WTA5Rll6WlQveHo5WEtNMzJyTUQwK2dWYjllVlhKTVdMQndyTXhl?=
 =?utf-8?B?d3ljZ2RLdW5WTkdxNFQvZVAzTW94OElPSnl3MFU0VWhXeWlZbTVONmljSmFK?=
 =?utf-8?B?dXZZVzhyL3NKSkFST2ZYSjhJTlN5OUtobGtidFFMbkFoSHdqWC9LZFFSK0dI?=
 =?utf-8?B?SkNrS3ZYRlNkQWdEQ1BJakFuTWF1NHZsOW9SRHRMTWtwdEhXdE5rY0x5RFIx?=
 =?utf-8?B?L3lNdm9NR2VMTlh3UU5pZmNFNzV4ZDMzV3JUUzdiV3BWREJWZnUrK1dUbXVs?=
 =?utf-8?B?WHZxK1hCLzFQVE1qMHd1T05EV1dsemNwK29VVGpWYzhENVZJUXFuRTZnUjRy?=
 =?utf-8?B?SkRJbG1obXZJbFB1M2F4Y3k4T0lFSjArcW1zamhPdldrVVhteTg5azJkTisz?=
 =?utf-8?B?UXVacVdkYWt3T3NlTFJJUWdSdjROYTQ4OWZiek0vTVorTEUzSjYvRWdwRm1P?=
 =?utf-8?B?dHFZYjYyWFNJVXR0cDhHYWVCWTlmRjRRL2Zma1VlU0d2cEZCRHVoVEptanh6?=
 =?utf-8?B?WmZyVjFOaUhLR2FqMXZvbXMxK1hwSmttK2tvMDVpa3VtVGIzMURSN2ZVenFS?=
 =?utf-8?B?YXc4di9Wb29ua05Sc0JrVW84ZTlKOVhWbVpaWm00Nms1ZGNLaGduUlJxRWgv?=
 =?utf-8?B?NGE0RS9CRW5LWG83clRPZEFIUStxUG9OWUMvLzJ3QlpGN2NvWDJadnBJdW14?=
 =?utf-8?B?VnlKdVo2Y3VIaFY1eEU3R09OSXk3RWNsd1Y3QnBSbTRJclZ2bW1zK3AxU0FP?=
 =?utf-8?B?UlJoSkROa21zZUNEUVAwSVBJNmpjR0VKWk5DOUowUlk0WlBTdVdadThDVUZN?=
 =?utf-8?B?U1M2SFZjMXZhRWlBOWZxZTdRcGU1RU0wK2dQQjM2MUNiTTRWaUdnaE9VNTJI?=
 =?utf-8?B?TndDZHlVVWw4eE8xMkpQTU9JZFJzbTA4NS9oNzQvd0J1bzRmejBkVVBqS0tH?=
 =?utf-8?B?MzRUZ1FzVm1iVzhXSUM3bUtVdVRuUGRDTFpEckdTRlByekRuYWxMUVJJSTZG?=
 =?utf-8?B?bktyWXJXaGZ3WHFWVyt2L21DZmVZRXI0SXRUOGhjRVoraHlTdW42UlNwNWdy?=
 =?utf-8?B?SWpudEVRdEQwd1pLTERqVXJkcjBaSW4zcWdTM1JKdm5mSFRTVkcrK1hyWVRK?=
 =?utf-8?B?dWVZNTE2ZlhyZVpXMkE2UUJoUTF0SWJ3eUY3SlluT0NreFlxTUNYNFpONkJt?=
 =?utf-8?B?am0vSE9PNWhGQi84dXM2M09iK2FiQkQ0eGNudG1TVmpyejJoVFdvZXRxSHhn?=
 =?utf-8?B?QUJ5d0M0MG5ERkFtQTlwaG9QM21Ma25XSmFkcEpqY1lsWkRDY3pmRWtOZVM5?=
 =?utf-8?B?UlUvcElHNzFjamdHakVvMUY5Qy85VmNSRCtoL3hQQlJ5eEFjaDBUa3RPUVdj?=
 =?utf-8?B?QnE5NWlaSllYRzRDVkgxeXBtSUozWkVUMGt3RzFadGsyT0loSDFOS0RrVXdl?=
 =?utf-8?B?UWFYRVBIM0d2QSsxZ3RWWDQvWjVsTkw1SkJ0QUFLMTN0MjlDcVdHLzB3eUgv?=
 =?utf-8?B?dHdaRmJvMi9DaHNzVzZXOHBuOXlFU0VqWEE0ajMvZlRKeHo3cy9TaTV1Qmt6?=
 =?utf-8?B?NXlaUllsa201dDlGckxEWmJMYStPR05HZDVQWThXVE5zR3BLTjdYM3o4MXk2?=
 =?utf-8?B?dnhSZXJyWUJBUENrSjNrVjZ4UzRRPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <2E3DE83A40317449968B9BE536DA6079@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: P0yyB+0pUayJRuP5eNL1u02By34jkJujpZt6t1DrNGA9DCgdQR6IVd6gpxlaPLZh9y/1j7BATwjqZfbOGda+ZGHPD65w0sJYIQ9SLb2sVT98pzKaRMTVoVy5IGmWLCTMNhj63iDIKmr+YTLuAUIvjUGLmWh90HA0f/kwhd09vPOh8bXqcZY2spNtR7eiIxIdRkZv8JyV46hBqqHZTlfRl/9+vmPbttQoCVNrtx7rn7VNoicqm2x+p0ajIURqwe9Yt5aPAkfuf/GMvnn6gr9t4Kh2OWDmlSI6XGxnlYMjfoIQ4zl6BFI39jdBMW9Hzd+lo6/tote2T4zrWVBFAYNtkSp/qtnPbT6zMz8ZGMUb8HVwii0bl4c/gYViP8BxXTK+3FWv+1dF3C0VCA3YIkQ/Xn0yZh/gUKo9thlyFJ+mKGyiSbtZ/kcBtJFaPEj5TS2BkGN+3wNIf/KvkgwFmy7OYyW/yz+gcLs8rc1qI2bnG+OF9Ksvg5D2UNX11hOpRXTEaNAb8tcouUTqpOtLEgfuRtx7hTFDk2cBmD/zEBrkt3/EO6a9/cJSr166aq4J+7GBgEQwYb391wkcX+jdtE+AlsW9HtpeNdYsT7EF8rafWYGyxLMerZxP8yniR8ho8BZh
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d1f855a-f83f-4c03-0cd6-08dc58a77c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:12:34.9936
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JUPu3G7SvDdhixKGD6SnUZ0ZeKuTXmX5PLt7teKjNH27lM8pcfc0bNjJNfHGqVcF2UxtyARu/LEeXw+qbzC3vSm45r0p83X6u6Ugi+RxfBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6375
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=qNhY1PYI;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=gXgHYCje;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.42
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8af92ce4-4ecf-499a-a1ee-126c0b463392%40wdc.com.
