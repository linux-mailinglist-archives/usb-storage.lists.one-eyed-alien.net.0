Return-Path: <usb-storage+bncBDW5PLF2TMFBBTFY2WYAMGQE3MZRBYI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id D300C89DEA4
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:18:37 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-69a011f3069sf47684336d6.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:18:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675917; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGxEMUYEPxbxWSUE6gLdEzqDzMUlLK6MsQHFdI37W+10B7rfBOB1QrW5fpLlSf2910
         tQId1amgvRpqvFxnP8XLGo9/CzH87Fn/5tCS5xMZyNAZYRpmww8BhXF2aZkTClel3K5x
         slppEaL2hX2JKsjqHn9WwXM1JUBDndE6iuoHdhjYhYerJRWgLLZt8wszhESw773U9GN6
         5xNtPe5NfB0tztzoSH22TQ4GPdLFZbx+sIPDU1sF+VvM5MJNP3dZqDSQvGJC0fTEa0PR
         FkQHaxS0XEzRy94icsH5UX1Q5yb2o3luG19te2/a8VPNMauPYa0keeoPSco2Xpc6q2He
         nKhA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=2/hsn615snYMmqC37swfIrkZdjNxEqxIy2cnXg2tdE0=;
        fh=QYmdTHMc1zpyJO8l8cQWGUS/0n+Qps5OK3RWWbk68x8=;
        b=tzQSemtatPSzMCGJvbigM5zU2I4iNCl20iD8aCumsJ7QlsBNm7fiWrcmlyzoRsC7+X
         kbv3UevF5c866kpcy2MYGdUWWny/vGmLj3IdBnmfi6ZMv5oPJK+ROq9tLUAXa7AHgkJ0
         nroK6vlH9gAtVAowmOaopOYX9vks4wWqzXmlGhhOceaebQ4Ur82cf7E4gQnldlik1oyD
         GVI/nB9Nk58scN+qwURucYQzZF7uVfBZztR9W1Bm1ABRdgNJeE6OJy6qYq3nAXu51ZJK
         CRMhvV7NFPdhw14vmAEqqo+KGoNlTx1qUAZpr/eVD05ZblA6md9DL6eu+DiA34ifbFJ3
         O7nw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ZwBj5w7t;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=CJK5HwlA;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675917; x=1713280717; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2/hsn615snYMmqC37swfIrkZdjNxEqxIy2cnXg2tdE0=;
        b=jzp/YYV18Xml8mA3mZ7tggvkncwZF0fXzirMXuZApAjPLWCDzmvDRCMjWCrqc4Xb+T
         mJi5xVGAVwbrLQJDleEAu9r6MXyH/CIjuAUdMuOX9kpUyNZk1LqX+Te8x6h4dzQzd+BM
         7Xc1FFptUSNizZxL4Zc+tuVBL8avvGt8MV1CM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675917; x=1713280717;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2/hsn615snYMmqC37swfIrkZdjNxEqxIy2cnXg2tdE0=;
        b=D8VgCbi3on2F45hK8pLTB9gxfjkhV4W4kDbyHd+qUCsDz8amUnQOga7tFsXE9NF85c
         n3cw1VfQE+qN6TXXovEJDKORRlAAUAHUzoqYxCqHJ1GeyqKMUq0Eg7xJ6f/vS1aXDfDX
         0esL/NzajJOt8KNylSou1ximHX1dhQ93VqG5x7auPlfwoL8OF2nn+/EGXE7F8E829LwP
         4ZWeciyClH07AxYGsUYfBdE6ZoE1PhpWkWEtBwB4f9qMySJBEm0A0+iTO4PbwgYkNmAo
         USaqmu5PNPDkLVZRWpSXLO733cM/fFfWUiZ+pHwTc481I0G+6Ywp1c91fJ3LG3Dg2eLc
         TKbA==
X-Forwarded-Encrypted: i=3; AJvYcCXRX2wUUnMFYCMTL4KZc2eWQZZdTHEHKFb2PIgKndkTio2/azUmAJodjRkD8zkDKj9Cs+RxVBrro93Dh8IF74gW3Pk1NZFIxI/b
X-Gm-Message-State: AOJu0YyEBpxviqFwofL8pJ84dTms/l5DT6of2PJ7Btk9fqIqTdfAoA5k
	qYO+t9uFFx3/nDDJrklaWKGI5B/s/yagoRR6++kQKB3MhYVp9A04j5h0h338PwE=
X-Google-Smtp-Source: AGHT+IGlRKBMc+0/bFMSwhXtF7FrekEaNCEjKzZAc4BBAY5e9X5dy5RxS21JI/Wfb3K6CgDJNZ3eMw==
X-Received: by 2002:ad4:5c6d:0:b0:69b:aa6:4074 with SMTP id i13-20020ad45c6d000000b0069b0aa64074mr5861291qvh.9.1712675916788;
        Tue, 09 Apr 2024 08:18:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:e450:0:b0:69b:a44:bb68 with SMTP id d16-20020a0ce450000000b0069b0a44bb68ls1886617qvm.0.-pod-prod-00-us;
 Tue, 09 Apr 2024 08:18:36 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX0X6hP4ESPulg/FK/zFkLHrYnG3kP9NRckmAAxG9oVvK9DTIkxECv9gCl8zk+k9RuBggxPYmC85VtDmPpJOitUoZBKc6Rv0bZOaPuzEbiHUNsjSkE=
X-Received: by 2002:a05:620a:2485:b0:78d:42d8:7123 with SMTP id i5-20020a05620a248500b0078d42d87123mr5005353qkn.21.1712675915835;
        Tue, 09 Apr 2024 08:18:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675915; cv=pass;
        d=google.com; s=arc-20160816;
        b=vprOd6QgBFlpvRDiFXMcVlfLTOLB3FKZTbK66QBEVgGwM3IDyN28hBfOh6DqkfxvvZ
         7f/0JOUX0Ilr9BNhqMXUkW7Ahqxz2HD3iJSHqL8V9BvXR6EbmqM2DyoQ0qDdjjOTCGmK
         8DgP8T3RGhYUs3/0bCJc9z7hhyJIlRNSe/o1celmMmi4v0V9wR5IAG9gUEmYB1wX723M
         RIo/aq5VKXqsmyZZsMm2ramXAyfP9Iqd6eAycfVGsK1/1cE2Cu9fj7a8qbz03mPX1VqD
         omAFrAuh08+vNWFTJH0WVOIdcbztc1SXiz+1bhW0w0hSvM7Ick5uzbmsnzLGMPNVvtPV
         kHHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=VihKEzCwFr+F/dKMaG4qSAJp/IQxw4/xOXcvRz2TCb6rkGjXPAtsUBwaRSsL4r8GeM
         pwNHfxUAveEfu8Y+P3YqVRCwT/ZIML6MObVeIIpY4mQMh9uvgeoyKC73nL1gjH9zQ3KO
         o0wAoNTY7+GZ3LH+0Br1V3L2PXtyZOXOtAttr1dnLtFKHTc3qXM6X733bCvcKv53tzC6
         42CGnmNgLV/pzz4sHBIoOEVdivAXmWcDBwbGZIS5+C2lOyjwFPgmW4H8xN2SjK7+ferC
         mMe+m8YMixBP67u3kkrV4AJlf309kkdg8bvTgVZyg7QRbEMAatC/9WiakFqhXEsN/Kgs
         DDug==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ZwBj5w7t;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=CJK5HwlA;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id w27-20020a05620a0e9b00b0078d608d851csi6323049qkm.489.2024.04.09.08.18.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:18:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
X-CSE-ConnectionGUID: NmRSAX0VQc6wIQvYBBl13g==
X-CSE-MsgGUID: w4ZZHQcyT6+bgARFNxKdnw==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13601905"
Received: from mail-bn1nam02lp2041.outbound.protection.outlook.com (HELO NAM02-BN1-obe.outbound.protection.outlook.com) ([104.47.51.41])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:18:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TcZj+lDx0bjMhqk4iJHXenKEea4H/4JAa7jo88SGPGB1ce2DYjYnELy/TcMnQ9tMgJVMMeQohJkO9LOd6MJDavek4b30woeN2IPOOkieWNP7IsCWlWJbcud8YxSpnmuwEM7pnRW8rlnScg86CfSahXoLeEUbqarOeK8UwOSyXsmhF72HcMSVEunnspkWNKxNJkCqq6iPS5k0YgA97d5O+CgT4RZdqHiTN3Z2ez9wsLeDrdKF6+tuLha9YxOULAh87kwcf5s9jp19uMtTn+6MXA1Wlbv0+bwpgHl3BzvgWMEcS7JuLUAiSLURgGbzi6jYitPc+T0+B/Z7CHRDRJoq9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=KPrzYcY+rlJdM7h8R6Ktr6omqFa8m7AgxLZL2GMooGjJYOLN+5sXHVKS+JzrWu5xxa8uYGrayHdVItUpH4DdoqALcyGOl9PFQgoYxhIm8yHLu0ujxtI7YrwwlGO9fiQDTy3XvPkfizbmEYA3z6jo1dthG6YKcUexHJUm4/3mx9VKiZOZqgiFDb37IwIrvvj2KzZodEwG0gSfcziDd/csscCNJl2XUxee0cwaaApVZd94RXrFoBf57pjHO5PDZOnkpHPRH/sGGPsG9BJnCTAdJ8DsZe6U0ASydeeOLOTyUtQBlGbzVAOpo3RFYgOv2gZOE2k2OqVIa+aslGv8ZcOHnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by MN2PR04MB6687.namprd04.prod.outlook.com (2603:10b6:208:1e2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.53; Tue, 9 Apr
 2024 15:18:29 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:18:29 +0000
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
Subject: [usb-storage] Re: [PATCH 13/23] sbp2: switch to using ->device_configure
Thread-Topic: [PATCH 13/23] sbp2: switch to using ->device_configure
Thread-Index: AQHaiovw+6K+Ju3FR0+WcJEiyWI6wrFgDUKA
Date: Tue, 9 Apr 2024 15:18:29 +0000
Message-ID: <c0bd2801-74c5-4a74-b314-f119de6a927e@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-14-hch@lst.de>
In-Reply-To: <20240409143748.980206-14-hch@lst.de>
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
x-microsoft-antispam-message-info: nKHXYQr23KUrW/6bIe2gbfL+7l+HeSz8J+p4tv+jhMYR5Os7VU1M/Odq75qsjKCpMIvmtBoc/xbXars8XTejAl+84ByIN/ZK8Z5xDLeNlwZoSgrvwgohzYBpeVOXCOfhDASHkK0bvrCVFcayGFL/2vL8AYkkmuKTnzgCvSPaKNPj0iq4dWYEoF2Tm30jCYMyOuTIK+r+MH3KypKh051QFbhDpvfLQXJPs4N/LLzM+BKpaYAr1tRqNtIAMZGaF1YxCMNOhoUacA4Regar+Ho9SRTZybFESWfb6VL9KmakmqliCRNGohrScbAJYSAvaZmvUjbU8ft9IH54a5Q3nZEZTtf/OUgK/730SFB2VcH1HxLoO36lJIXZ70ruio4JEt+q2nvynwSr98e943zRIXka9iVyk7bKyXj+EOFxxMsvijjQ/ceWZZz76o4DnMmdGKVeY2jJdyjQhOYOZY47QS6E0e7odd16y8nfZXjoV6sDN6godubn++v56GtG+hSVKK71gZjV+u9VEeNfTzoEOyjb3MBRp17cX6VD0cSODT576sZeLvZyNoyyG+7E21d/WJp/X5Bj41tIjEjjsNQS4AGnoD2yYQXoLLxA1jqB9g+bdfnjOaZ2Wlhk8fUxIeSSl3is5lLMPe35zf0wj00DdRLOq6bu9LCtVnh6z5U5wPFOyEQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(366007)(1800799015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXVDVGkzaS9DZU9KbTFBVHhUN1JBMXRydnZwMEhDOGpNcHZtdGZMYzRXdzY3?=
 =?utf-8?B?MlhtYjltVHJGaU15SWZwaFBtcjY4RlhBYTVUczBrZnNFaGtYOUR4UlUyNEM2?=
 =?utf-8?B?enJzZ3BmSjBHUXl5d2VFWUZTNW1od1F6TTNsNWV5c05aYnlLS3RxcWFzbTBX?=
 =?utf-8?B?Zkt3UDg5eTU5WnZkTDdUaElmODJkcm5sVVZmVmRkaEhYbFkxRDV4NnBjZUZG?=
 =?utf-8?B?cXRQTis5YldOWkM5VDFnZWVtSUJaellUTjlWK3c5T25jSXlybmcvNGNHZDJ1?=
 =?utf-8?B?b1NDVGJ6VTIwekZIVldPNzdaa1FZQ0Z1ZjVUQSswa3pVdm5sMm1vbzNiQ3FW?=
 =?utf-8?B?MTJHNTRacFNONW04c0ZKWlY1d2NEY1p3Y3hmMnVsaEN2SzBpaW1DQlZINmpT?=
 =?utf-8?B?VmpjVFpRUytVajNid0VnaVR4TUhUTHVnVHBBbTN4ajFzQUNlWFcyZDdyY1ZZ?=
 =?utf-8?B?MUt1KzM3ZnhBSVExZnI1dUYxRVRKRjBSbGV4SFFYdWZWUFVxUkZsb3o4ZFk2?=
 =?utf-8?B?WjFzbktGSW4yejV4NVdueTlzZGg3cWxSb0V5b0locFRROUU1NUE5N2E1R2dB?=
 =?utf-8?B?MUdEakUvRmdHT3E5R2prU1BBNUNYbnNlQm5mdHR3ZENoZ3pBOWNtWGpsVnRz?=
 =?utf-8?B?Si9JaXpVZ2FCVmk1S2pFejNwcnFLMC9yakVQRE5jY3JkU3ptWGZPZ2RLY1ZV?=
 =?utf-8?B?YkFDMXhtSVRDZks5VkJQeFBvUjhPZTA3ZGFMWkZQWjAwNUVyZ2JwUytkOHd3?=
 =?utf-8?B?ZXB4cmtIQzFtMW0yZGtROVpCMUgwN1plUHRTYnhLUXBBK1llWWFkTTBpQ1VS?=
 =?utf-8?B?SzVjMFVwNTFsblZkQlUvc25ZOXVtVmdZL0M5L2FJOEFmdFN0SFUvREpWRnc4?=
 =?utf-8?B?SEYvMzFQeXdMWWRHOUw5NVhkQ3BUNDdiUC9VSWMwODhDRGo0aXU0RWFidmdl?=
 =?utf-8?B?TEtlNGk1QTRsUm45T2F2WlovTXd4NHJ2Z0tSSkh1cEIyZzNzYkVoak50NGlp?=
 =?utf-8?B?YWxydUtEdGU2WFc1Vk82enJ6MitrelY0bTVHbmFkY2FCemVoZmQzYUVZYnkz?=
 =?utf-8?B?NmQ1dlA0RmhGWTZ0MVNWeWNnZjVzN3JFeElhYXFOUDByR2NSTXFJK1d2T0U3?=
 =?utf-8?B?N2VPYkR6RlJGNXRxYlhGMTh5SXBTQ0VPT2hDY3pkSmhNT05KOW1Lcm8xaUJv?=
 =?utf-8?B?T0xHejBkRmowZFlUR3VXN1Z1cDVYa0Yrb0RWNGNhK3ltT3NCSWRWUlkrVXBC?=
 =?utf-8?B?RGVvV0FTUW5PejN1dTVRSVVwZEhBNkwxUlFOZFFoVU45alVFdlZhRDRhaXA4?=
 =?utf-8?B?YjZDM01RbGhEckF1dm1LaUZlMXRCNzllZlZlRXIvZklGcGVZUmIwNXBnaVBr?=
 =?utf-8?B?eFVia0RBSGZiU2Z5czNpRnBhVnVEc0VjWlIwSHQ3ZWdKQ3cyQlNLS3hSQXZm?=
 =?utf-8?B?WE85a24rUVNVUXBiOHRWa3RpOEczUktPdjJ0K2l6UlBnUGhLUmovZlhHL3Ja?=
 =?utf-8?B?bFpsRHFZdEZncEhNbFhwVE1OQ3ZwT2EvWVZMM1FLL2lLc2FDY3h2aml6bmt0?=
 =?utf-8?B?THYxL2VKaUw1Nm9NelZVcmI5SFg0WlNEUjNIb3RQS2tMd0QyN2pHZmg4bXVx?=
 =?utf-8?B?WjNoN3JKQ0swQmpJSmVHdmVHY0VhUjRIL1hDN25aR2ZPUGcrZnRqcWFPMnpl?=
 =?utf-8?B?bXk0R1ZsODlyMWxlYzg2UWJhdjBreEUxVXdQWjd5d09ZNU1PWGJtRWxiZW5z?=
 =?utf-8?B?OXFpejBldlo5aSsyUXd4WE1YS1k5aWZ5THVuNENwVk9TeU1WSjFVRldUb00r?=
 =?utf-8?B?eXh2Y3pYM2w5K1lzM2dJbDJNcE16R3NrNGMyQ0RPZ3BPZXk2TTgrTlFISlFv?=
 =?utf-8?B?d3kyQ0pUTVpJNXByaUhIUW9DZDJFSU5tWUZHeTBwdFBKbXViNXRnakViZExT?=
 =?utf-8?B?bno5aXM4N21LeTRVNFVDRno2Y0pBdUdmVmNhVm90Sld6cUYzMkVnbFJjWTA4?=
 =?utf-8?B?WmEzcVUycGtoOWQ5TjNsWHJDOUZ3cmdEWDNWQytjZngxRXdHY0czbXRyVjlU?=
 =?utf-8?B?UHNCZXJZWldEcmpzLzArdGxKM2x4emRmdFpFSFgvWTl1MFYzY2JIMkhVZ1VZ?=
 =?utf-8?B?dlljSUNzdG1DamthMVR2QVRlOENkTHN0QTRqUGNKcXBKZWNBelBBNlRQZFNS?=
 =?utf-8?B?eUw2RzEvRXA5U1BLTTZDcUlKQXRkSyszaExpNWdyOW05bnU4R3ZCZlBvZGNw?=
 =?utf-8?B?UDFJTEpUbXcwNXpKQy9vTXdxenhRPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <6D1A7B5A18BACF41B845707A1CF79D8B@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: LuLpzQ8IJdud8kT396pWSuWQXEBMiJpBA+V/FB8dAXt8gPJrC0Fq9hsc6g/bem9OZljZmqJpVN/BWNP0VfxI3Exfim6cgXHyLf2K4XG1meyn6zj1JrqkuMkKuT93lBw7Tnde4mp0gbZRL575IvVglecWwnD9hajsUQ0TEt9o5ckXOJbMpojFAVeQeL4KpreJIMwKgFznPMHLxvhwWQG8yw4qpJgx09v4+YlMRLKmviTElaQPil2Ea1kbqDoJloFSPbHLJrzVMmupSupcEJVvimycNDFxAahc+uC4WXtebgrLCLz0Ricenkx5Ct0m8Je24DR4/23O4gnpdMEn1q21tXn0agydxD2SBDIUxAtAr2ftjIIuiXLsuodcJPJqHmzo4BT4YUfwvKgT/8f1DgIpNNoB3vb9ysxJKneYmOhZl458oQVkqUGECxsHGiK1tNSFpMYEcpSGG8y6fbninVfWGhK2eFUD5eD3ojkIjR9Jdpogv0wN7oiryVJ0N0EcYqNRgCojfeYUpF7nHj2/PoERIGQkvLn+K8ZC7+EHwaCS3awNxU82iss+M4LbJUsUc5UNzid081+T2Wv5XTJC3NF1XOCWr0BWK3ETqfAthFjzS0CfXYEwOD9i1LPTbKj6pN+g
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a46b853-c111-401d-37d7-08dc58a84fa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:18:29.3204
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E3xk4lcsfQd+06/5j5K5eoYYNwnTZITzCKMVOb/B5X4KP4Iogz30Swi36zN38eP6RofJiYz01PFRIZ1m8ECVyfDd5tDf9s6Rmq/NHOikJGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6687
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=ZwBj5w7t;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=CJK5HwlA;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c0bd2801-74c5-4a74-b314-f119de6a927e%40wdc.com.
