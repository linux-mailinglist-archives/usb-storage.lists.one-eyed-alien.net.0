Return-Path: <usb-storage+bncBD7MTN773EGRB2VITTUAKGQEQJJEHXQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF08478FF
	for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 06:17:47 +0200 (CEST)
Received: by mail-oi1-x246.google.com with SMTP id i132sf3098671oif.2
        for <lists+usb-storage@lfdr.de>; Sun, 16 Jun 2019 21:17:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560745066; cv=pass;
        d=google.com; s=arc-20160816;
        b=ufvzMAuPZFoShv9NsACJZOGp10TF/NQZWPM+qXLXIZHrhwQvFMZqL5okeezn781pDq
         V4fmd/nGzXTSaRyRRyQmw0YHIxHa234WZd3wETiTeCYQCqcUZB90a87FoTMrDZB7llBs
         x+cM65CtgSobzOL8d+BuAdP83Tyr33q5jTJ2Gl0GIqadkT8uCeTdzXo1CNKf1p7xipDC
         mxtu7NbyD8OpkIJJxGXGADqoFEgkGsrYivWVm2viLhCbi09uE1cbTAuTo/axHkEs67vp
         LUt3cC/yd02hvyvRgbreemHS3ldVGdKpc6SjAxoUT1izfX3l1y1S5ogdnJMSchjnM4vl
         nxmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=9Ur025QN0hNS1GdxB11dhAGw9EeS0edBSAqnlNEliXc=;
        b=gxp2kIZi5fdQcea6XIGzgfCyty3Acp61lJb486clGh0UpUHGHprUKRIBfqgKeudrhq
         K1Zn/mlvDIUXQy6Uyj2NkLLmAd4WLHEZNY3rHPuVUbkXKa83wv6UTYhs7uGvwYVZAADC
         mL/7tggWlXTt5IXcyKcbtG+N/+GlH6qGSlThBg/ycRRUnqtbHUU0m9fIJR36JYg891Tu
         vCCKilU3/8zTOEUfQHxGWlxWL8p3Uw1XHarOsy+dQ4Oz00qn1dqdEgvB4Q14pzCdQ58a
         SQBz7cog8WmBN7h9jbvFHIpQI0+beYqzNjSPcV+eetwBD/qZ8h7NmFST+CPywaRA5wDv
         cftA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=riHkILYr;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.99 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Ur025QN0hNS1GdxB11dhAGw9EeS0edBSAqnlNEliXc=;
        b=Q4964VBwjYibc79Eooe8C/d7rKh9lKkXgcWPp0f+UB0556qy0itiyYB4S4bLvxjMAn
         BukAY4Ei6L9tlB5sEi/qQ7humHdp8zmCd3qwOdWNJ+IIwi+je/oFYXMiPCvwAjr456ki
         V431F3gc8DSMpIQWUp9Wjv8xODKiLCGhCmYFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Ur025QN0hNS1GdxB11dhAGw9EeS0edBSAqnlNEliXc=;
        b=ibBC4c9fnHUx2oaOnbSd8Y2QrrAf1IadU9FqN4J9eLcFOMHC9ITwah6Rrc+ifZ8maq
         919Cbau09w2oudnK7dVzJ2UsQ+1YP8y9+I1OLSwqu2yPq2BjoTRfISrlJdyFP5zDj+Wn
         BpSoV9fypx1NKHczDVtHEyTcBQXj06vc6IUHxr7U5sKR3UUwpPlZwtlNfaOY3U0NZPZk
         5zQU0OqeRzdYJR06fSBXNHTiFuXhY3sVpy0Q72vU6gFD2A0mIOPCBO60jTF59mNP0N+T
         YSHiXxvRblBA6GBQ8jlglwAOPiuhawccDgEIqWwWzxIifUnTewUkfIDLOBYp1dYuA3iG
         /bKg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWl0jIIhfsMx59MNMOmfJCf3TQxa9pOnHrG2K32vo44S5sdslVm
	1kEsWeZSo6e6iWwvWUku/jbqvQ==
X-Google-Smtp-Source: APXvYqweGNZwKF8RTEXAEMpDW5Sj29pA5m7NuBZ57LeUFw6/BEM5Ipt9JZNDykyS+gI7+O8QJfs30g==
X-Received: by 2002:a9d:6a81:: with SMTP id l1mr8022100otq.113.1560745066329;
        Sun, 16 Jun 2019 21:17:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:4804:: with SMTP id c4ls1970937otf.10.gmail; Sun, 16 Jun
 2019 21:17:45 -0700 (PDT)
X-Received: by 2002:a9d:d51:: with SMTP id 75mr15048349oti.46.1560745065956;
        Sun, 16 Jun 2019 21:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560745065; cv=none;
        d=google.com; s=arc-20160816;
        b=HTOqhuI+9AJ3SwbwIYQyXsBSR9fxFFay8clfT9oNjtEQp8pm23bCckAu1FfWp+YyGa
         rRMZjnpiyvlIjoHm2/iH2jhpzfQshFO/mx2jXNmSxDYMFUENDwd2dPZTgMuBUr0Dng1a
         zNa/KCJAHOfGavd30h82y6EBuer6toBCQHmcPLIYyIr4saNC4CFP8yxdedJb/srKkz4K
         s1d375e2UBdXlBcfa/JrxgkD+dVm4FraGIlwUg49ovOEHnf7cMambhy32t+iMgxiqs0Y
         22mKfJGYK6pC6HqBIBaz08Sy9HVLhLtWyxU7yjPFcfBMt2X7ZfepVwUdAzV0hBsIqRRE
         AW/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=MmkixwRvjDS7rGX301COiJH0uUpjqnSTmo128qV9Lvg=;
        b=Vu65h1afqL4AyGFjPWDeVLiAziLEORitUu2vzSrYGrtR0/YMJMnw8Hd09Gk7q416qs
         Y603t5J7UOYEhqazHGLWZqlhF8OfM0sVwXUGNW73duLuqc0ph6wpk6qf4X6bMWU/Larz
         rBGdytt7ZiVftGYQOAXFguwq6q6BYOhBdR8hnoLIkUTH3uh2tVJpjrym0RpWzlKUoM9M
         3U9SyvJXaOW0ihRSCVnjEi+HGBjIT/UzJRp+AtPkNZ8Wrq5L/5b4XXa9LF0YDuQF55iz
         4xWdYZ3JEeVlOEOWzxhAV1VnvJls/6a+byQi7vi+YMCm8yS/q4RtZDzqv5f/l1s7rXQ8
         rGPA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=riHkILYr;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.99 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
Received: from JPN01-TY1-obe.outbound.protection.outlook.com (mail-eopbgr1400099.outbound.protection.outlook.com. [40.107.140.99])
        by mx.google.com with ESMTPS id 34si6072732oti.296.2019.06.16.21.17.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 16 Jun 2019 21:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.99 as permitted sender) client-ip=40.107.140.99;
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB4487.jpnprd01.prod.outlook.com (20.179.184.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Mon, 17 Jun 2019 04:17:43 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::b1c2:125c:440d:e240]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::b1c2:125c:440d:e240%4]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 04:17:43 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Alan Stern <stern@rowland.harvard.edu>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, Christoph Hellwig <hch@lst.de>
Subject: [usb-storage] RE: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Thread-Topic: [PATCH v2] usb-storage: Add a limitation for
 blk_queue_max_hw_sectors()
Thread-Index: AQHVIcuW138W6xs/SU+mBATKJYat56aZ0SQAgAABRQCAAAL1gIAFZkqg
Date: Mon, 17 Jun 2019 04:17:43 +0000
Message-ID: <OSBPR01MB359051D6F83101432E0F2549D8EB0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20190613171112.GA22155@lst.de>
 <Pine.LNX.4.44L0.1906131317210.1307-100000@iolanthe.rowland.org>
In-Reply-To: <Pine.LNX.4.44L0.1906131317210.1307-100000@iolanthe.rowland.org>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [118.238.235.108]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2cf138f-69ff-4fc6-2f40-08d6f2dabeed
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:OSBPR01MB4487;
x-ms-traffictypediagnostic: OSBPR01MB4487:
x-microsoft-antispam-prvs: <OSBPR01MB4487C41E39307542DA438F99D8EB0@OSBPR01MB4487.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(136003)(39860400002)(346002)(396003)(376002)(199004)(189003)(305945005)(26005)(2906002)(54906003)(86362001)(5660300002)(186003)(102836004)(6436002)(7696005)(74316002)(316002)(14454004)(14444005)(6916009)(76176011)(7736002)(33656002)(68736007)(478600001)(53936002)(71200400001)(4326008)(71190400001)(66066001)(256004)(229853002)(99286004)(55016002)(9686003)(476003)(52536014)(6506007)(11346002)(76116006)(25786009)(6116002)(486006)(8676002)(3846002)(2171002)(446003)(6246003)(66476007)(73956011)(64756008)(66556008)(81166006)(81156014)(66446008)(8936002)(66946007);DIR:OUT;SFP:1102;SCL:1;SRVR:OSBPR01MB4487;H:OSBPR01MB3590.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NxPmAC6mKVImNsoqBh7b4Li1dj6WA4Ordh2n+1oqYEYxsD7dL5pSj3uyxnjXmMN+rx7VPxv6j+LQBOOHaXseaujM9h4KxzLLtgCuK2yVVnDAryYq3MXrOad+X2eKQG60MO288KkOB1dd0sCxujcfiaHcnlx4ui1URHdDNIHSW6T/QlQga9FhaIgquChSA+0Aa6qVsrz/3y0qZr13Rot62gHH3+a8eXWwtCaHM3A8gUV+HzlhLCFcf3Yp+V9FAuoGne+lutqHCKzRYUyzT7UL0wVdw9AnnF+05sFFQq9XRGhEheFx96ofqQRFlhjSlALiA+yuNdy+voDOsf6JyFEL6vcHQIcF1zhAoiNFwGGeS5aXGa8mQw7cktOSStkxTPh6DNZkn6qrsZrbwbY+0XUR1b+TlmH/yb+CGDaogaeJH4A=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2cf138f-69ff-4fc6-2f40-08d6f2dabeed
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 04:17:43.7342
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoshihiro.shimoda.uh@renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4487
X-Original-Sender: yoshihiro.shimoda.uh@renesas.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com
 header.b=riHkILYr;       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com
 designates 40.107.140.99 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
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

Hi Alan,

> From: Alan Stern, Sent: Friday, June 14, 2019 2:22 AM
> 
> On Thu, 13 Jun 2019, Christoph Hellwig wrote:
> 
> > On Thu, Jun 13, 2019 at 01:06:40PM -0400, Alan Stern wrote:
> > > Hmmm.  Would it be easier instead to copy the DMA mapping parameters
> > > from us->pusb_dev->bus->sysdev into the SCSI host's parent before
> > > calling scsi_add_host()?  That way the correct values would be
> > > available from the beginning, so the existing DMA setup would
> > > automatically use the correct sizes.
> >
> > It would in theory.  But at usb-storage has a special max_sectors quirk
> > for tape devices, and as the device type is a per-LU property we'd
> > still have to override it in ->slave_configure.
> 
> Not just for tape devices.  But that's okay; those max_sectors
> overrides have been present for a long time and we can keep them.
> Getting rid of the virt_boundary_mask stuff would still be a big
> improvement.

Thank you for the comments. So, should I wait for getting rid of the
virt_boundary_mask stuff? If I revise the commit log of this patch,
is it acceptable for v5.2-stable as a workaround? In other words,
I worry about this issue exists on v5.2-stable.

Best regards,
Yoshihiro Shimoda

> Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/OSBPR01MB359051D6F83101432E0F2549D8EB0%40OSBPR01MB3590.jpnprd01.prod.outlook.com.
