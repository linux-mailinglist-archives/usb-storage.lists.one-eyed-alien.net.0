Return-Path: <usb-storage+bncBAABBKPQRHUAKGQEMKTFZRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id E71054423F
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 18:22:02 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id u200sf7005053oia.23
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 09:22:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560442921; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nna8QDUA/rrlBDgCIx/H6VbnnLz1X0geLyIahkNAwLkHxHF07unWYT7VSoXnAzA7kO
         +kB85Rm5NN4iUzE+ffjVP/ZMiy51/qFpgKhS1Lf0ox4AHlDgAhLMM95wvwZ9vguUpTBs
         WIdnSJQQPcSm+3Lj7nbtewV3immfrjmEGa/0Uh0omLD2ZHD3IQ48ljQEBVv9Z1nd5JWE
         Nqmry2XQ2XlocHgO+9UdZtmcqwvImXFU8YHa9r/TSslX1V/0o6YSShiXT6r3+Nx1YF8E
         46IEvJhXDHt6rmIeP2ChkmV07KzwJbhIG3+NukGA0cHwENeJVLe9wanJwOoYcyv/8IMe
         bKQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=/ezHV7NO3j55G3J/iDBpMI3XrHyXx+02uXhrqFwe0YQ=;
        b=zzVHUruAiNHYRIJMtZwmMZq1JAyQWW8gTqc9e4H1wBePlXrJJ2QRibR2wteG3fCr7h
         Sz2m/3FdSXEtziE+SMsOMHjLHo/sOd+AZD32CIfWol37IQoi2gZw6QFQ75cp9KimZ0KU
         y7GbModpOHl41QxQ7wXvtONsF5ivkGSx+M/FwA8++i/p6bWe6T0KK4ACVvuImlZydx9J
         YOS8jmzSl7OysywdnRzAaGwHZCtjyL11JfD5DPVm5xhYrBx72nct/HxaV6ZlHC6kHaxG
         JbwpDcGyCSnsZC8zo49JAI0lWsvXonB0Aqu+e4e8Vz4KaMY2jgG51P/nY1BLGjHUkEth
         BYhw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=eR2oxwBN;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.139 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ezHV7NO3j55G3J/iDBpMI3XrHyXx+02uXhrqFwe0YQ=;
        b=ZUwBfan5WBQE2hT2M4kthZmlbFlDXsNeUaaC1lKEt4xSei4yFY4/B2zbWAnFLn8krO
         qaAiFXjBNhZehzVWkH9HSFSIFZz94tamFSs87FIPuBCkXX4BVBYQhykE+3TnTZrDnE6V
         veYv8Iuok8aIn7oKjql4BYHcMooNSq4PY7Z8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/ezHV7NO3j55G3J/iDBpMI3XrHyXx+02uXhrqFwe0YQ=;
        b=rVmwAjXZ+LUReLblvCUtDTpuA9dgggFXxT04TUzsZftDaLqmZWO8HSgGtAaVemPgG8
         RQ3XvGdA4Y3+kNEKosomv9xZ30KM6lxNsaLc1kXpVXL3tBoyOVSoL107DXFxRR/3T5KG
         hbOFZt/ZcVZ6VBF3ZdgkDZ3A3t/9jWoiE0fabXQb10aa/IEWE3DQ+zAvfIyJQSS/Z6WC
         b3KBzvTs7HcWzQCqYvpF95R0C1xKNsZz4ZnCjyzQSTNLOyFHVvzK39gBDeo65vXkkgUV
         Fxs6T92auHbwUXnwwRM3rEUloUbCBzTOjMl8JnMMzXTNP6YQ3+ktmYYxns32kdYAy+db
         k+Vg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVI5fSUm8ClS5o8qUZU/0VKasUQL2zyT6qOUn6EGJkmTmJKQBws
	crUFX3FG3iUKJxEQT5qFjB0y+Q==
X-Google-Smtp-Source: APXvYqwOcg6c6JGm0iU88ZFK1/Pv4eMeUXvdm+QQCYEc32twuU0eyxHagJBPWIjpmIKlF9U+PIVX1g==
X-Received: by 2002:a9d:6644:: with SMTP id q4mr29687008otm.308.1560442921471;
        Thu, 13 Jun 2019 09:22:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:47d2:: with SMTP id u201ls938255oia.2.gmail; Thu, 13 Jun
 2019 09:22:01 -0700 (PDT)
X-Received: by 2002:aca:fc8d:: with SMTP id a135mr3532059oii.145.1560442921244;
        Thu, 13 Jun 2019 09:22:01 -0700 (PDT)
Received: by 2002:aca:df54:0:0:0:0:0 with SMTP id w81msoig;
        Thu, 13 Jun 2019 02:03:46 -0700 (PDT)
X-Received: by 2002:a17:90a:ac11:: with SMTP id o17mr4171228pjq.134.1560416626418;
        Thu, 13 Jun 2019 02:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560416626; cv=none;
        d=google.com; s=arc-20160816;
        b=lAZL02RV8dVexQgoynSI7tEzq2ueltluhQD9zqnh0Mif6j/mUQC0eKw/B3Cp5Euy0G
         wns1usniW1oQU6kQ68rtLcgzCN+LLJjnMMKgz/f6Xopm00FvwTLuKObqXYkvcR3R86rQ
         w8FOApvp0l8AEBpI4LCpWvx/y57LGBiuLVPPOgTbCVOEhT+yQQW91cIYQLApf0+5IL2e
         yHRDAxFzz+q6yWcz5TiCBkyKjLoHhTTV2yo1//v1uuGGPSsszuIkymQgYpP2RbUb5IZA
         knthltT59zA9dNB7NDt1Mmf3IOmkllah+JFl+Tk4F8MSL/UyYU+L0hV4jEcOLF04RiF5
         QfWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=uAY2bLVCaJwEhGCGpQ1wTEnD/jvTHS3JmrGyHZ07RS4=;
        b=GIZ9KVDgnqR2FMhXoBRxLPLlJMdOSpHyoPYGwSCzlSMCfU/XbhT1nqVtk6P+g3VFKr
         HeOhJngU+cp6XE7i+tJ11VfoGNuw7Jp3p1G6p/YpGBfFuavVLg+MooiP6NKS7eJ+N4aB
         KMMf2weUHhNvtGiZmXbOHUlFegiWVtiKbvRiy3eU+QTRsfKdonda/Xy+9ttiRvznnWu+
         fleUD8/4713N5Ce1FrZ/ntVuQb20IGRpSghtHpJhDSmY61qlHsGH7fKyK96R5nornADP
         ZOai9JSOW1nmRNOtGYVSOBuCvI84DIdLMEJIShDglwDL3HP2aUjKjyZXoMkp8EWVUDgC
         h3dw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=eR2oxwBN;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.139 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
Received: from JPN01-OS2-obe.outbound.protection.outlook.com (mail-eopbgr1410139.outbound.protection.outlook.com. [40.107.141.139])
        by mx.google.com with ESMTPS id m191si2496958pga.17.2019.06.13.02.03.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Jun 2019 02:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.139 as permitted sender) client-ip=40.107.141.139;
Received: from OSAPR01MB3089.jpnprd01.prod.outlook.com (52.134.247.150) by
 OSAPR01MB3636.jpnprd01.prod.outlook.com (20.178.102.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 13 Jun 2019 09:03:43 +0000
Received: from OSAPR01MB3089.jpnprd01.prod.outlook.com
 ([fe80::19ad:b6ce:a287:dc85]) by OSAPR01MB3089.jpnprd01.prod.outlook.com
 ([fe80::19ad:b6ce:a287:dc85%7]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 09:03:43 +0000
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
Thread-Index: AQHVIaFtvT1x5o9i20+mWJmRsUTFuKaZMWgAgAAI15CAAAzWgIAAAfaA
Date: Thu, 13 Jun 2019 09:03:43 +0000
Message-ID: <OSAPR01MB308976F808F8588C4B49BF54D8EF0@OSAPR01MB3089.jpnprd01.prod.outlook.com>
References: <1560400504-26884-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
 <20190613073346.GB12093@lst.de>
 <OSAPR01MB30899FBDA010F0465599437AD8EF0@OSAPR01MB3089.jpnprd01.prod.outlook.com>
 <20190613085121.GA13442@lst.de>
In-Reply-To: <20190613085121.GA13442@lst.de>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [118.238.235.108]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 653f06d1-9ac6-4292-2b79-08d6efde0940
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:OSAPR01MB3636;
x-ms-traffictypediagnostic: OSAPR01MB3636:
x-microsoft-antispam-prvs: <OSAPR01MB3636942CFB0E899A850B5539D8EF0@OSAPR01MB3636.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(376002)(396003)(136003)(366004)(39860400002)(189003)(199004)(186003)(5660300002)(6506007)(52536014)(256004)(4744005)(66476007)(66556008)(64756008)(99286004)(55016002)(66446008)(102836004)(71190400001)(71200400001)(11346002)(66946007)(53936002)(25786009)(26005)(9686003)(6916009)(66066001)(73956011)(76176011)(76116006)(7696005)(446003)(6436002)(6116002)(54906003)(486006)(6246003)(478600001)(229853002)(476003)(14454004)(74316002)(4326008)(3846002)(305945005)(33656002)(68736007)(81166006)(86362001)(81156014)(8676002)(8936002)(7736002)(2906002)(316002);DIR:OUT;SFP:1102;SCL:1;SRVR:OSAPR01MB3636;H:OSAPR01MB3089.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yp2SH5Z8oeVDeXdIwLVK5Rx4sDwzZ3e7jm6wuXqftnxTYoQVxFNIgSPGtiObmKeJBjnsfHU5Cy9dQItQL1tYlksygOUohwEOh0VmMPp/q1DcYc2OswKzD1O3XRoitdz7jPaZTBBRqDf2/cb7Vr/72qWKtnmyhyylmNqSMlzf7c8veEtdHGsk8q71XtcOEmmmXhTLQqEXJBdVBlv1Dw+V6uUylnmBtbdfM6W2UEaH4YOAIynpudaYOkN3TqkrAPHg1YsNCHOJK325zUFa0a4T9EMWnknL8gkp3gdM7CtncMTDp1x9tb5h8WfUtpzzAroT3ZVwdc+ZzgiTsEkFsDOEnAr7UMCuTLRmhpNtz6CpB6hqq2A3lfkwhWoHQbyu+8+J0SH6f9taGONCbXkJGhbhpivpP/5dL7B56Tkm/YxKIe0=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 653f06d1-9ac6-4292-2b79-08d6efde0940
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 09:03:43.5343
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoshihiro.shimoda.uh@renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB3636
X-Original-Sender: yoshihiro.shimoda.uh@renesas.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com
 header.b=eR2oxwBN;       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com
 designates 40.107.141.139 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
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

> From: Christoph Hellwig, Sent: Thursday, June 13, 2019 5:51 PM
> 
> On Thu, Jun 13, 2019 at 08:46:00AM +0000, Yoshihiro Shimoda wrote:
> > I believe this patch I sent has already covered it. What do you think?
> >
> > For examples (all value units are "sectors"):
> > 	default	mapping size	max_sectors
> > case 1	240	MAX		2048		--> we use 2048
> > case 2	240	512		2048		--> we use 512
> > case 3	240	128		2048		--> we use 128
> > case 4	240	128		64		--> we use 64
> 
> Yes, I guess your version is fine after all:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thank you for your review!

> although I think it might be simpler to just read the value back
> from the queue in the end.

Ah, now I understand why you suggest it.
I agree with you. This patch changed 23 lines. But, it will change a few lines only.
So, I'll make such a patch.

Best regards,
Yoshihiro Shimoda

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/OSAPR01MB308976F808F8588C4B49BF54D8EF0%40OSAPR01MB3089.jpnprd01.prod.outlook.com.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
