Return-Path: <usb-storage+bncBDW5PLF2TMFBBQFW2WYAMGQE3QWMUJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E86389DE58
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:14:09 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6993edda019sf54016636d6.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:14:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675648; cv=pass;
        d=google.com; s=arc-20160816;
        b=D0xs71JXgbGjiXJZp5Sv+XVMqKsPMcBAIH/ECmVuHa4Dq4eMZbe+XFgldphu+fXJZI
         EQMsplfu52bjb4GdVpG40ErEsDGSqpn5lEhd99xCd7n3ilE/INEXNRZ1NNmkubZFSj1P
         CM5jb37jTN0D+JmmsjeTm68kLd4lRVPyUnRFYrdCzMOg3a6AoK/z6M/LbonyZt7726kp
         pqO0jLyF8woN1Pm01QY4kGodYLBlC9xCCe/3rdiJi5yPZoBa7gRs2K/mOYsUz3e2Ruhr
         pRG4kdDyD2DpYx6ATvaTY4b3uC3zNge0y+EZBDoTm3nVLT4iGWr4YLx8q6sbqnJtJg9M
         Y+PQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=YKbuVgoUPNfDgsSOzelgumXz7UcDTcHeJ9VgAGe1HmY=;
        fh=rk+tL/GBFIKQbo5eTEWX4EIVKUc1fDgomdF9au1Obi8=;
        b=RfbUiDu82MTNgNTGxtCkPz84ctWMEK6K+bgA4/hPYlNshyZ5wa1RfhxzrKw7J5snJv
         B2xUHQwucT9Pau0NWiFd6wmo1L4y3PUGuzxJAjel24PtYPI+Taszi9vwV++U3PbMWvYm
         7FFEnunEN6OF3bWjIAIHLdrIrh2AIIwPrQAotfIlCMrZ+bEJPIBWH4GhPk/WtSlTPz6i
         qvapeIwSiho6RDy7y7FUNoSIw8bnVjxCjoNuySxjj3mZ8EMrMjPbhSIyrmn/EY8jzczj
         Pp9wrFJzCTrbvpAHn+aIb/C2Ov/HpssRIgwZt93DYGXfUd0w/YMMvQ3wVWQUG5S6/uG/
         MmSQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=hafzwWQI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=ersTzWAh;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675648; x=1713280448; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YKbuVgoUPNfDgsSOzelgumXz7UcDTcHeJ9VgAGe1HmY=;
        b=RvyAUC11wRLN7EOKIGZGWlrYBfgUhyENftojokGtEp148tRe82G10Z6HWxn9aOzjL3
         +GvjyxwCXpMXMwXWeZV5lXa3gtWz4g/R7vWp2f1ujKoyOuhKoqfg/jEsh0A7ey3gfdnz
         jOnB8KapUYQsGQprYf6tQ43rdgPcdn3AupXjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675648; x=1713280448;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YKbuVgoUPNfDgsSOzelgumXz7UcDTcHeJ9VgAGe1HmY=;
        b=G3jRIBTkHu+b0Eus9aUIEnkUzknlXKRm69c1emovw465xjXQQkdn6fy+WYl7oMOKFI
         WhezURrbhwLyoYXHZlsH4g5aNOnCMgU5C3PAloohZc54roUP+T3cXdi3AqNRSlnhleK9
         tCjNODZqGot48R8fddVTpqKWiSawfRp11ODOJtz0o/Ac4wdwecHvF4iCI0GyWuGOUMUU
         zqPzuM+GAgV3oDnS/gVPVx1ERK8ZhrubVDNFAPiAYsWMM0GC7j1Nm+YWzuQSfvyf3JBX
         4M33mqhjjK54SsjLDO145uSm5fOUzdvZFnBJhV9uOWKazsjQaJBNoA1BeA6vToT036Dh
         O9Jg==
X-Forwarded-Encrypted: i=3; AJvYcCVnAgO2i0kG1gs+y4HuSI2EeK08BX/i8vnH4UP7WJAiZmhfesCGtrYPkEBiz5I5P3L4+JUVO9HWmOEznFa+jNv1itO8Uw+UOl2M
X-Gm-Message-State: AOJu0YwNwMpXMG0GkwFQc6/iirLFfzUMILsQFb/Dx1tjGI+zLgMNS8xX
	USD0U5SdIa2/iq91GlXDn3X4j3IeGmASLAO/wpp6eF9a6muYX0lxSv1eXVyPTGc=
X-Google-Smtp-Source: AGHT+IGjzUM4Acx2xL0KetMjMtT3sf0Jk7LFLvHu6tEG0o7IsI6f7z/LPsPIUTVGTVnvub5kx1TZjA==
X-Received: by 2002:ad4:5c4e:0:b0:699:20de:1817 with SMTP id a14-20020ad45c4e000000b0069920de1817mr15068803qva.2.1712675648207;
        Tue, 09 Apr 2024 08:14:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5bc1:0:b0:690:c124:c187 with SMTP id t1-20020ad45bc1000000b00690c124c187ls753612qvt.1.-pod-prod-02-us;
 Tue, 09 Apr 2024 08:14:07 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW1t2ZGVPGd8uQZaFwh+jR0U+lLG1C+JnrilrncBPirbykD3ATeNQf0jo87UP5zi0ZiWx3EamskZdVReBxOFxN0utHF2dlJ6vSccYhTS1C5K1UeP6A=
X-Received: by 2002:a05:6102:3a10:b0:47a:1a2c:3b7a with SMTP id b16-20020a0561023a1000b0047a1a2c3b7amr1805510vsu.32.1712675647015;
        Tue, 09 Apr 2024 08:14:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675647; cv=pass;
        d=google.com; s=arc-20160816;
        b=SAXNrxIIegiMFWX5bx4ChzXbaI6+WkZflLG2tPbhHcROlHumk23eU7x1nM4JcEOVws
         XNi+36Vc+7hiqWi5w/pS4UFrICBNukXigVB/ldEeMonl1asE7jc7bWcbIElqV2U2zRHM
         0mmVBG2+fA/2tOj/K8k6tcm+o9XKoN2s7Ykrf9Nq1AzkzpGwfkJdlK/PtX81naGNfXI5
         jgQtuBhSl6YPyDOHfULCYl9mzxwVg7n/azz2Wkv9AjXtbQJNMU1iLyifw2+1MSB338MM
         QIkFsa6epJ/nkiHZzSZwh8FizoNOqhu9xlSvVgVG1SapqGhj4KHz7ocpRVxFq4H/bh9e
         krxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=PeGL4bG+k/5Ta55Ynsz1gPV/irhLhN4e2vHn0khPpPCQUM9J/8Q0Y0tiKouJiQ4Bs7
         M5IvX3Fz/cd1uWi64dUw5jLye5HP0Dl+BgUXhlrEzfMxQFAJCrbw3H8+pVuB3g0ZkVMN
         yjvSu04Ao263f3E2RATvz9xOPp7WQ4eX0/AHXdLALsua6r1bwd0CEo4wOGGx2wUHdvK6
         NGXvYRh/lM9xcaGrzRaJd/E7xSyTokBOlXFueEatXnYFsYBeDk3t9AAGts6oRKbkzWJw
         vq5aElgieuqVj2KiBkOe9CfPJSxYbUcFwcHY0ISD9mQEpdf/gYSufETHPeUwaYoQ6GDS
         J4zA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=hafzwWQI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=ersTzWAh;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id m20-20020a0561023e9400b00478496064c4si1603570vsv.151.2024.04.09.08.14.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
X-CSE-ConnectionGUID: DzjSC/CDRJ+8bXAe3YTVfA==
X-CSE-MsgGUID: FI9j+KBcT4OK8i/gzk5YgA==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13602318"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:14:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iGoC9pKJfbF05tSjEv2mQJharhuNhKtB8fx6fNcYvQfKqkFW2PLKkJpF2+o9IYGx7C30ced1at4U4NZtsfJBn9VkFd6cGJywu9pO8CS1ARfpo0QK96bBXC/8zHhXqA6ET79gw1bPHhXVy/5kjmFdP6Zkgq4UX1tzlJ9oppuT8i5AhYew5j5DdFAJEwT55vEVrMpabre44peDdohawun+pgPZovc5rBq5+BgV45jWne8mUaBgf69/FktAYDBIm26Pa0s6llgQuD3n2JwC20W5noZly0ddnbqrHmnZfP4hWT6lzy6te5NPzB3Ma/O61WijFTdHr4WTwsNaiZeaDC35gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=OUlZZB3LT/dTxp0fn/FLBAIuJLklTRgCHv9d+1JGMuyiOXr5zQupr8q8d2CJTyhIjMt/VhAbah0N7V2VlGlN5YsW8/ZcBfMdt5LFVtPoU9tp8IIdX+zWJQ7irOOmMc9I2RWaepN2hjuLd6dyDlHNypSScmCIbAcdVYl+qiFHikQm23+CnuAleUIFuUa1TJRToWvQaV0ggsFFNEP/G3aWHUL+atrTRWMvmqjm/XCyLtXbUn04s3IzSp9gd5UBc3CUCmUsNhONnZZF6wFZJh/r+9sD0QrN2OkqK+xcDId8gCTWngvFw1abv5diHMs0BPLxMsVCtJDUjlaoCzxKmCAhxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by BY5PR04MB6375.namprd04.prod.outlook.com (2603:10b6:a03:1e6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 15:13:59 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:13:59 +0000
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
Subject: [usb-storage] Re: [PATCH 10/23] scsi: add a device_configure method
 to the host template
Thread-Topic: [PATCH 10/23] scsi: add a device_configure method to the host
 template
Thread-Index: AQHaiovRpCMVjc/UhUyzV6+PT6PeRbFgDACA
Date: Tue, 9 Apr 2024 15:13:59 +0000
Message-ID: <938a4eb2-7d4e-450d-9aa2-5f327ea65fe6@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-11-hch@lst.de>
In-Reply-To: <20240409143748.980206-11-hch@lst.de>
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
x-microsoft-antispam-message-info: XgC4A8bbhhABAiC8cUIxzLGSzX6SOiuWRFDgho1rbqOGti9gMpsGdWlxvSYnHxESNJLLL+TrLf+yOrebtIh3twSM6ngsWwQlaq5Hd0RBBMkjAeBdG3KyuUpeFnMbKH3o8fVvGjIhXhCvjIMnqEn+9Zvewvu26rQPGNFORm2emEWReGIdXGJxVWGDhLnBNlgdj+Wwd8QNU94UXxSJj5QFdjg3i0fC+1gUS/n8cRTVYWc1KGsLew/91f9A9I08lWAn7U4k9D0aKqcLY1znX8UTZXPw/IoE7mhx4ocHKObBPFx6FjCoCIPwPJPLfkWOT1ln2TjpfpDq5CQ0kDnh4zsGdQBMZwUXTqB17XiYddmxfjFZL7ffXI9gFlgcJw119eHpAknHQDXnC/uPOgQ+D4bmbgqMW8Enx5hcWDefRiLAN5G50SsMg1zeyGkMbn9MfYnDzHLo2ZuWTWZ3TKbywBAuCdJzQdamRGOAArrZdCsL4ooaib9spwqSlYAZ1lLwpUwBDLQqnj7ZtWLg6QL/y4/L3MNSMV5iZ5YHMCxNNL30vy4VUbiSVMHyQ8RwBGxCpXI4Qrr5yuUnD3omQI+MwU3aBxyHI7r35xyDGH8SP4nt2g5ylWfNYYpMgr3QNc7NwKrULWGRNJIxuX6Dh7SmOarMV/z9Y8LfnO9GwW2B/nmepBQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ak1PZWd1M1dWL3hDQTFGOThkamJncDNheUdQVWg1ak1UOEJEczdpSXV0d0tV?=
 =?utf-8?B?ME1GWHA5Mk9Pdk5YSU5IUEt2ZzZqbkMyNjIrL1hvRzJjeGFXNzFBNVdXR0pF?=
 =?utf-8?B?MzFYZnkyWFR5THJVVnpzdFF3djRrck5FRTlXOTNNbmNCeW1xMng4R1dRR2h4?=
 =?utf-8?B?cElTYVFvMTdKUHVwUG5IM2JML2RiejYwckp0dXh5ejhNR2FlVjVwNWRwVm9s?=
 =?utf-8?B?L20rMVd1aldaUXVwaElxRk9xTys0eDU0T1AzSmhzbHp3bXc4S3p2NnFtQnhj?=
 =?utf-8?B?dVpTU2lpRkljOU5kYWpYa1gwZEhoVlA1N1pMT2t6MFB0Nk5YQUpYM29aVlh5?=
 =?utf-8?B?a1F6SW1Sa3I1Ym5lajU1NjBEMG13cnVJYTlUd0pjdGRieFBiRC96Z0xPUTR3?=
 =?utf-8?B?Zjh2Z2p3bHBFZnBLd2FoVmgxcmh3V2Q2QkxhaFB0OHQ2T25zRXhSZ2c4Tkww?=
 =?utf-8?B?dG13M2E3OFFtNzVjZFBNTk85ZGFaTmx3enpIYUlYdEg2eUhrdlkxUFNmQjll?=
 =?utf-8?B?WkhuYW9uQVFPVC9PdnczdHRWdTZKV1VicDdxQXFBRUlKbmNiTmNQUE00Q0dK?=
 =?utf-8?B?TUpIdEFOWG0yZm5uWXd0WmoxUnV2eHNyNUlEbEhkM1pqTHlGdjdJOXplYW9k?=
 =?utf-8?B?Skg4dWxCTWJ3Q0U0MldjbGhzMXk2QXhycmsrRndSS1hkVm9iOWM5Mzd3bHFR?=
 =?utf-8?B?RVhzYWt2aWhoNER3R3RRMUNuRjVmZ0VLWDVhQVlvSkZEbkxGUkhOVnp4Q0o1?=
 =?utf-8?B?SDFscVVCMHhxWEw3bUIwTDBXM2dYY1ZrcTM5dTBKRnNIK3hJOTAzUWxtQW95?=
 =?utf-8?B?WW5LZmFGOHpzdGVldHBNMWRTcWt2eDV6cTk5UnRxY2w1ZUNabHhiVjdHMjA3?=
 =?utf-8?B?N2ljZGtaT0xoZlkycGx1QkdUWmtlKzFlVWhsU3RuNnIvV0dCMjVYcTBOV2NN?=
 =?utf-8?B?eHNNNHpZZXNVNGI4N3BvSGJzdVY5R0I1U1BnMERMZVh4R3pkb1VRc2RKMm5Y?=
 =?utf-8?B?cE8xMmZZNkJlTmIyNVQ1b2xQTW9lYS9Ec3R2VGJUa0RkdkdDUEhjZWpoZ1VT?=
 =?utf-8?B?UnpCbTQ2WDY5bHk3bDdlM2Nyejk0ZnlMc2g2NG02NW54d3FkeEVsYUxvc3M1?=
 =?utf-8?B?bksrbFNaUHJLS3R4bnBRS2tjVitPeEZ6dTN4YWJHZHFKTm9mbU0zYVNpdEM2?=
 =?utf-8?B?S3BRK3pMUjRJQTA4SGZUdjF4YSs3bUwwSXV5M0tnZnRWNUhkOTFQZ0FGS3hI?=
 =?utf-8?B?L0d5OFJsOVlDRmJSeis5YVcvQ3dBYTFVVjNjMnhXM1RZaUR1UENkOE9icDFz?=
 =?utf-8?B?REJvYmlVbGFBcnNobXVXTGVoYWp6UnU1UEQrNWpSeWlJTHF0ZVZlWnF2SWx3?=
 =?utf-8?B?eUIzczR1c1Mxb2o1aE8ybHoxcERnbXEvcDlwSDVEbmowSjd4V3RqdVlZTFBH?=
 =?utf-8?B?cHB5UGZTNFdtMzROYjc3SEQrS2p1S0l4NzNCWjQxL2hGOXoxZCtrOVUvWG5X?=
 =?utf-8?B?UGMxY2tYcTVrbnRFdGVqT2UvQ015VE54NjM4T21KNC9tbUNGdUpjTGsydXBa?=
 =?utf-8?B?bkJrL21ESzFMZGowRmZwWWNMOW0zbEpmNlhpcHh3c2JSU2l1cjdjdk8xSUtF?=
 =?utf-8?B?cXd6WnVpL3EwQjhqd0NXQ2E0MVRlbVhCR25vSkFXTTdQdWFhR29kT2Z1d1V0?=
 =?utf-8?B?UER1L1JrTTJlTVlYUUlsekJzTENWU2Y4RlNWQ3UvOWJJZ0FaWE9kTFp0bnZF?=
 =?utf-8?B?UnZ3b3UxVFZHNFVkWjE2TkZGdnM4Qk9zZUVlTXdDd0FZVWlDOFFGWW5pT1pO?=
 =?utf-8?B?NmRYYUdWZ3FOZ3c2WmQ2WklURG41NDh1TDRWWkhYZnBxRlQyZTRFOHpBOXNZ?=
 =?utf-8?B?YlpIV0liT1VvWnFnOUl3Nk42Skp4djN5NE95UHVMS3JVNFFyN3FZZE51RUUy?=
 =?utf-8?B?cE92RVdDeG1USU11dU8yN0ZtV3p2WWtzMENuV1ZUczd5TWtQeWZST1N0dy9o?=
 =?utf-8?B?dFh4ZXZ6L01EOTZoQytnNUJjcGlDV2FCMjdYd2Y0b0ptakY5eEJoTUkwbm50?=
 =?utf-8?B?bnBoTHNXV2lvcitKVU1OS3VBQit0aXVnWk80cVZzNWt5REFTbW9weWpyMCtz?=
 =?utf-8?B?aTZERXk5eEt1WXNESnRUNVhvNExjZ2NJSURDNXArS1F2WEY3b1AvdFlNK3NR?=
 =?utf-8?B?aDVIcVJoRG4yZHhQbUZQODZFRTJucW02Q2VMV2VNS1VkZHdJMTVHSVhlc1BQ?=
 =?utf-8?B?ODVCNlZHVm5CRzJUR0ljcFdKY1ZBPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <7B2E4CA14F8C8242AC181307FDD61E62@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ZIsObaQys49XzIdn+XBmOKmhZ53iS5LiW4ls1P9SO7ooicL0i/9jCGJBkwwAYNjo4rM1LI/tg7hS7kBF8VwwIO7lv9f9e3jby5IGd1L171QEoarIoQpKcHqzF63CU2nIp4rzDQx27wM6W661akKmfBkJRqZoQheQPPnXBrWm5toYq3UGQ1vEc/8mhslRjP05XVUwosf5cmxGp51mDVYHxg2zGyPDtNKxRqM1/3/x8C/+EKxYsY3ThYD7FbuWPDN+5mS94xKnbGdBIHpp2UPjT5REEA/oOx+RDfaXeExmy43h2qrao/DYX9zg8xP3ZJfdj/syoFx5mckGt9yWm/Oq8Bi4Pc228QxJsXE5f1z2FKlDxfTdK6uU7qJ1Cu/DPH7wDpdGJdDCsMX2YP5VH2EA6YeuqlXFtJ7Sia7mlo6Lt0mopQO5IVqiU0fFS5OW9+AaXw2qo20jTtRyvXwc0v7ynh7NWzk5jjB1+yrGAoFWJYlH9ThCLxakenqLXz+Aj5aonOJrZmuIYNKP9gFFwOEpX9nj2RWnWTG0VclZdGRrryItZoWzbDrfte3RD16lErYYw/ieWw6b2fPxDvZWyTHGJJqIoA6sBFB7d/wGD2KsCqDEFBc/Qa67fP0tavGlDOEw
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa3eea7-8aa3-4f31-3d15-08dc58a7aec1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:13:59.4213
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TFKcYRBMD86qYhwjXfUD56VfeOkxtiFG3CNwevs0ysDKrITIW3l1263/eAMPVTx34zv5wdeQ0xjRAX4c0fPnHi3LvsUZOI/mJj127vQkFB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6375
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=hafzwWQI;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=ersTzWAh;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/938a4eb2-7d4e-450d-9aa2-5f327ea65fe6%40wdc.com.
