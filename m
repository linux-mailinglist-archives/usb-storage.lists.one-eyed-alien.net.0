Return-Path: <usb-storage+bncBAABBKPQRHUAKGQEMKTFZRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E184423E
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 18:22:02 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id z52sf9479958otb.13
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 09:22:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560442921; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsWKrzO0b8wgIdNaCD26x/S4K/NtqKE7xma+B1SHLC5WmmxwSpkhHvPDg1/cLM/Wm+
         mljvFjPr7dY4PXblPOP4nXVBqSsQN3mapOhXAfrUWX0jAckFuTwWkJ2ruHga1DfDp2WQ
         i86Y4PrIc3L8eA6vaSSmZnuTool2vcZK9RSPTKo1xngWtP6bSlOxlTKf5G7ngmh7gtOD
         JNeE3mzEBXqmQ1R1B/UnlrtzVNEvNcRwKgdRRdumC3WW+3tG0Bl34tVDvJIuX2DiHAex
         IqmwQj45qjXf4Bt9OJqnAokeGZmtG0vcs48QQQ8K2m1/II1wUNuygUp2S38uE47Fac7z
         M8ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=RHbPJ1E74v9XxpPd1PmZcvEND/UGoz45gSHFfgtBpGc=;
        b=YMcapLREJEG9RFU4d6czcc04eUbpHOSldKjRDWqi1n6ah1FpA/g5YDTY/i3AcB5wLJ
         fKYOojfOuxMM3ccUgRaHeoEJ8PsENHpp06T7gJd+pfgq2nvjBrHW4oJ8nZk8VZTFseOc
         iOimLp+QWKeo7F6kVjWVvrv5lIBP2hImvhrIbi57O9tSIadqRJSrJvvbR/RcC5RPc6So
         tFPrOx+dkkgB1JTBOFTn3ErwLjzVMTtD4Xk3zx37AJR2jO9V5cGQnFtI2hEe5UrHV9zf
         eZ7slx6nrD/XSCW8/4cZxw17qjO1bOs0e99hCGZ7KvhyQAgNNN4qrtdehtWegrldpWQx
         AlMQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=YJ80gz5k;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.98 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RHbPJ1E74v9XxpPd1PmZcvEND/UGoz45gSHFfgtBpGc=;
        b=RcWBw5hb8gVapqJRNob/S19yLryBCzu3DqNZWm7D4RcfSmFkJ9e0q6pKFEQmeoMmyY
         pcQ0MZjB04wNwKoF2j3jB2EMCpTRTdQ3hxNJIJDAMQfzPv2UmHh1pm2t58Fi33j0gNW0
         ekr9RK0Pe0PMv4Kl5mW9WDOBO6TJLT6b5byFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RHbPJ1E74v9XxpPd1PmZcvEND/UGoz45gSHFfgtBpGc=;
        b=hOhgjdufvuEDQ+1o7uNpnBr9b+hbcPjAw2RhdkeDJ6BJBIP3/t6bw7/9d4iwuWO9Fi
         W8NR0JIrRW15Y0zn8/LtTdQghENubXnIHIiIpEuNWGNYS9DjoEwbzB8SC9frLOXjnA1X
         ql6lOH3cmopQ6Rt0oAuh6y2WoqTUYlf2cAdBM34MDRqjiECyclNnT/cXoUNb13DuJ+Bg
         FONBCkaka2Wzbx135FoojEi8HWMkNT1En6Mjhl2QJUUWkUR1FWp/ULh2JBGBJtthoLck
         n7uWvSNl9pSnztdzGXviFygaYW1+1GoqWKWDdweLJseSNmk67kSwCHXSyjDe8U8WEc46
         UueA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXBQJO1IXvlx41vpc3kQ/+7/XWyzU8DzsguTEljXqQ2RzH0zhjV
	z3oT69Ne7eCBieJbWHi8SEVegw==
X-Google-Smtp-Source: APXvYqw3AROY5ntA1AS9jXHJ1qr1c7fY4CewZrBds8p6/DGf/kQsPYjcLFcDpCAi0VdFCpRxOmNHtQ==
X-Received: by 2002:aca:518f:: with SMTP id f137mr3369661oib.123.1560442921448;
        Thu, 13 Jun 2019 09:22:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:6244:: with SMTP id i4ls1179327otk.8.gmail; Thu, 13 Jun
 2019 09:22:01 -0700 (PDT)
X-Received: by 2002:a9d:71c3:: with SMTP id z3mr6801428otj.58.1560442921245;
        Thu, 13 Jun 2019 09:22:01 -0700 (PDT)
Received: by 2002:aca:a8c5:0:0:0:0:0 with SMTP id r188msoie;
        Thu, 13 Jun 2019 01:46:04 -0700 (PDT)
X-Received: by 2002:aca:d7c3:: with SMTP id o186mr2178676oig.20.1560415564707;
        Thu, 13 Jun 2019 01:46:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560415564; cv=none;
        d=google.com; s=arc-20160816;
        b=i4L5H1KWAyWJRcnYtk/o2ZiI/Niukze0hqV7ImmRqHrKmTSbgJInpLVtRMysPeinpr
         8Qq6YW4iVEtGJEFyr92UYYy/mNJAwVI65pKDKwqgWIS8pLwMVpre+W8E/Mud/fHKRf/S
         egYLGmiDTYHV/utZBhucGjnj0UAdvxSdmLUmwFJFaGY4rZq4IiFj5TkbPpluyRnYYejW
         2ppDoTAa8ALs95EOEaCihSAU6wd7jBdEMWl5f3k3JDavZjw6Kq5n3Xwersbz9rE61mPx
         L8gZPfnq6jG3hH1v5NBvoyd0Xjdwx/9Bfn0mKIAEOOTbL+n3fE77iDDw0C7avVOnlM5Y
         xi2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=GCASHWooroGpGB88P/55HprvkoGw9Jdskk7uBMe5QsI=;
        b=pBBczq46d9ffCp/AYb1lE0ckfENr7ztMutijabNOeeE1kJn+phgfJ6SGnOCvC5EpC9
         E7km7tI1jK3d0APoPteUlCNe62+O2HUGoakk7BM6fdj6dIFsAnET3WSvwMEWL9VKcUd5
         UtL0DydbY23QV3tZTSze2B4hgmKD0Gb9l8cLdcE8P53XKRJB42dtQW/KMt6TmzaXot8m
         0csNMuNv+a8zOwc9NNrGnBeggJFYL0BBag5b+14Cor1TxwCmo7gt0t7/8fR6XRaBV+P+
         +uC6j7AAQOUbXNwn3Ubon/t2KfulzrUwehO+6Xj3xDIx89TX4lnqkmGDvi4egbAPUuHm
         Xevw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=YJ80gz5k;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.98 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
Received: from JPN01-TY1-obe.outbound.protection.outlook.com (mail-eopbgr1400098.outbound.protection.outlook.com. [40.107.140.98])
        by mx.google.com with ESMTPS id k7si1447004otc.82.2019.06.13.01.46.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 01:46:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.98 as permitted sender) client-ip=40.107.140.98;
Received: from OSAPR01MB3089.jpnprd01.prod.outlook.com (52.134.247.150) by
 OSAPR01MB3252.jpnprd01.prod.outlook.com (52.134.247.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Thu, 13 Jun 2019 08:46:00 +0000
Received: from OSAPR01MB3089.jpnprd01.prod.outlook.com
 ([fe80::19ad:b6ce:a287:dc85]) by OSAPR01MB3089.jpnprd01.prod.outlook.com
 ([fe80::19ad:b6ce:a287:dc85%7]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 08:46:00 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Christoph Hellwig <hch@lst.de>
CC: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Thread-Topic: [PATCH] usb-storage: Add a limitation for
 blk_queue_max_hw_sectors()
Thread-Index: AQHVIaFtvT1x5o9i20+mWJmRsUTFuKaZMWgAgAAI15A=
Date: Thu, 13 Jun 2019 08:46:00 +0000
Message-ID: <OSAPR01MB30899FBDA010F0465599437AD8EF0@OSAPR01MB3089.jpnprd01.prod.outlook.com>
References: <1560400504-26884-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
 <20190613073346.GB12093@lst.de>
In-Reply-To: <20190613073346.GB12093@lst.de>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [118.238.235.108]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 061ba84f-71c8-42eb-4d94-08d6efdb8fb4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:OSAPR01MB3252;
x-ms-traffictypediagnostic: OSAPR01MB3252:
x-microsoft-antispam-prvs: <OSAPR01MB3252D136DA3572FB6D9905C7D8EF0@OSAPR01MB3252.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(39860400002)(376002)(366004)(396003)(346002)(189003)(199004)(256004)(7696005)(6436002)(99286004)(68736007)(76176011)(53936002)(9686003)(55016002)(25786009)(71200400001)(71190400001)(52536014)(5660300002)(229853002)(3846002)(14444005)(86362001)(6506007)(26005)(186003)(66066001)(102836004)(6116002)(2906002)(486006)(74316002)(81156014)(81166006)(8936002)(8676002)(6916009)(7736002)(66556008)(76116006)(11346002)(316002)(446003)(66476007)(64756008)(66446008)(66946007)(54906003)(476003)(73956011)(305945005)(478600001)(6246003)(14454004)(33656002)(4326008);DIR:OUT;SFP:1102;SCL:1;SRVR:OSAPR01MB3252;H:OSAPR01MB3089.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: F3BwGACOaCiFhTOQsEieTsgtFBRXfjckkZX7bXejpi34oRtEs7u1pMG3xBnr5pQxUqKOIxHOAsX2R3RAa8gkX3u+70GB4S9ygCCINJ07ojiO6T65PVkRlXZk4ywKEa3p8vS2k5bjM1ltns6G+daY9lHlbcHHCZjjGszd67oynlxQhaq/CBo6r/LSXVY+dDWJPHL/dk8U3p623oqN+b8TFqDTQhrnyzvlPJVlSA/TCnXkcLwlacNk3O3wRKDnxVxT51MPZu55Nmi/Z0ABRlhkWV/WNwmNfH6giWSvs1Tb3GyWlY1fetyqCtWIsFrEABU+EK5hkYF8QgA5AVsSRPSC3jYR0iziol0Eed05cH0zF94F3e5u8sxLAiMnRHFDNkgDWR4WNXs3/RA31OOpdGTu3AJS5BEo1+VAajPh1LP19f8=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 061ba84f-71c8-42eb-4d94-08d6efdb8fb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 08:46:00.6648
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoshihiro.shimoda.uh@renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB3252
X-Original-Sender: yoshihiro.shimoda.uh@renesas.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com
 header.b=YJ80gz5k;       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com
 designates 40.107.140.98 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
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

Hi Christoph,

> From: Christoph Hellwig, Sent: Thursday, June 13, 2019 4:34 PM
> 
> > +	if (max_sectors > 0) {
> > +		struct device *dev = us->pusb_dev->bus->sysdev;
> > +		size_t max_dma_sectors = dma_max_mapping_size(dev) >>
> > +					 SECTOR_SHIFT;
> > +
> > +		max_sectors = min_t(size_t, max_sectors, max_dma_sectors);
> > +		blk_queue_max_hw_sectors(sdev->request_queue, max_sectors);
> 
> I think we need to do this unconditionally for the rare (or maybe even
> theoretical case) of a dma max mapping size smaller than the default
> max_sectos.
> 
> So something like this:
> 
> 	blk_queue_max_hw_sectors(sdev->request_queue,
> 		min_t(unsigned long,
> 			queue_max_hw_sectors(sdev->request_queue),
> 			dma_max_mapping_size(dev) >> SECTOR_SHIFT));

I believe this patch I sent has already covered it. What do you think?

For examples (all value units are "sectors"):
	default	mapping size	max_sectors
case 1	240	MAX		2048		--> we use 2048
case 2	240	512		2048		--> we use 512
case 3	240	128		2048		--> we use 128
case 4	240	128		64		--> we use 64

Best regards,
Yoshihiro Shimoda

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/OSAPR01MB30899FBDA010F0465599437AD8EF0%40OSAPR01MB3089.jpnprd01.prod.outlook.com.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
