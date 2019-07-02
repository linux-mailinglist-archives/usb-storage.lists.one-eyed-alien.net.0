Return-Path: <usb-storage+bncBD7MTN773EGRB4OZ5TUAKGQEQGY74XQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E4C5CD53
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 12:07:47 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id i2sf10619721pfe.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 03:07:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562062066; cv=pass;
        d=google.com; s=arc-20160816;
        b=HxUwYVAbjV/o07AxF4WLyENtn2AdpKUq48EPe5rA46NBqoAT22xq2l87lYD+fgyy7T
         SeyHuVx6hUq9uLK+TKWeP2VGn7sgy+AgiLhNOJUjF4L0FXjwJWtb6IWGSfWnweTuHraN
         ftO5xcxtnwMGHL13kMzDnWM7GcGOkI/cNkvEswJRq0l8xYZtJHe5ZYdceSPNxq6zCBr2
         kakxLxTR9TW9QFH+HXkruHLJtS7TOXKFvLr3M84kk6apkJkhEAuCuywa2pclBLsM77+o
         cugFrhyiFC6u4GulO8VKrYmi4f9fS0WYY0/ad3csCzk8uMMDVDZxD1fbe+AKjVUXJg09
         OJGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=gZkywhUvTYS2NxGEOfIRvBNEEuMebdNLg48JsHFDCv8=;
        b=yGZ8LVUtDGOe6I75+9D+M+mxivpeuFuEOP5HocLgCPDA/2jRvOKlv848bxwhK0EVrI
         WHnkyLEGu9V++u5vhCVv6wCQ+xUGztWSs3B+XYtAdDB0cjnrbwrE4+NGzPBp8Qee4nbI
         wiFMlpbB9W9kKsbWsYBbSfZla7TCPk6U7ZLjh7NU0/mNYi8HPbwj9Ok9Ovl6mEg7P9mz
         ZViLUTfN8zYvX+RHf7uP5ZgM6syM50kmkcWibMUP7H2N02Z9Wtp3I96TEQHSlY0p1gKZ
         yD0Qqa2t31FdHCVo+dUXac/Zd6BAOZTsHaVL3r+TsfxH3RlExn4778CdYXOvz0dEfOLk
         KCrQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=YoIdHenU;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.137 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZkywhUvTYS2NxGEOfIRvBNEEuMebdNLg48JsHFDCv8=;
        b=RWgKo7YNlwlcl8fI2H9bCtNRbEP3E23N/XJLGVRgdbOg5txggGA58GuCEgjw4qbtGB
         ejD2fQoRHz4zoBLAC/inpB0A3T6Fe4r4CJRExFxkVMK53FsCgxp9Q+qyUIjxakRBBBp7
         QOABHxlhB1MZEV2JW1KkIJx2cSZdXIWm2iyOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZkywhUvTYS2NxGEOfIRvBNEEuMebdNLg48JsHFDCv8=;
        b=JPo46na3MckyfSwjbnqwc2Wd60e7UUvgvn9LyLAddx2iKgMh7e2FkItcF1PMS+OIxP
         Oe3ujbpGIj9i76+xuC6UuVJxx7BBujFplkYqj1hTxzIyuwN/GvaJfnSnMh05ZKftD/zl
         7lYh1cFpvr8n9jr1VKX0Zqe8B2YHgWzpGa2BcVElUAkdGZSdrco5AwhBAz4NasxldUDF
         6oqYHjP4Css6FwwbOBgyqGwN89WD7Cp6ZU3liq45vXgXSzTw81/NP+D1FCi75yW1G+a5
         L6vVGtTk5ko+ZPm2h/iDseQBYSrBWpYZMom929Z873BjhjXRlXyi2TMi2cz7dnV3ODXc
         XZmg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXRFvGH/W86YAicV77M1J7m9J2R1pnSfMfbagoUS46QqtlL57I+
	8+rK36hA1VEYVnN0dhwkpc/MOw==
X-Google-Smtp-Source: APXvYqxEXUbZZqqmM7mCrCyeTADjvoRsCS71OTpizTdx7dGCNfoyKBmm7DqRaPyHRoUI4KznWUBbgw==
X-Received: by 2002:a17:902:7448:: with SMTP id e8mr9464123plt.222.1562062065920;
        Tue, 02 Jul 2019 03:07:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:2029:: with SMTP id n38ls942043pjc.2.canary-gmail;
 Tue, 02 Jul 2019 03:07:45 -0700 (PDT)
X-Received: by 2002:a17:90a:20c6:: with SMTP id f64mr4710833pjg.57.1562062065462;
        Tue, 02 Jul 2019 03:07:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562062065; cv=none;
        d=google.com; s=arc-20160816;
        b=pqaRrGSlVbxCZMocwfFx9lp9/4Ydqv16x6Hh7/V/8h+lF7ax5lE0Yz2R0C/I9sK7xw
         6PWiP2JgmXhCm33mzY2M9hO41+5PbpwBe2v3JNvfxNQE2QsCjK/2SjDYNcshb0XZR8qB
         PBOy5PBZ/4qcJxxaGTa0hTrdlXrrNkczfAaWJ017S3k6k9+11WpY1JC1hQc2xzCzpkPx
         R9KIEwNb9orwDLuuHqHnvgATjuUXnhZK0vw2MM5dfL6Ea2fSG0qZG5JLe/U1QaQXY26a
         Y+4zvExZh5txBm41NoQekTE0kXVR7PkUx30Ar1PwfTeD1SzJs4SAeRtL9WX0eR0zWLJi
         Tt9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=PVScTzklIbcld/D3JN0jH69Ly/BX8fx4iBi1HtTtXxg=;
        b=UjcKIpsgSPeYoWZCk8GEtTPVncnZBjrKJQ/8dRorPDkOwq1xNiP0wjT0Yo+EgszA0y
         hpPmcWH6pRrJi3+fHHHtqtavUMZNiaXcMK9bxMPGcsfaFfX140tPRdMKulHLDmNvhy0R
         8etbkbf8y2PcBiOkErbzdI+d8FAdyxVbr5fLLtIhUYs4sV5I4CxscBn+qCI56ajjy3cs
         fwjJ18siAKnDe7uAqDeXj6Rhy0KCxP0XqkLWU5fVLKmvnJdSLS+lL6VeE0ciCp24PbGY
         8OwhCE8kHdnqjQGBQSruK1WSYoB+AsrqZbuOvWBOCX8f7qzMTjFv+Rb7b08cnoKeBWtr
         z/dw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=YoIdHenU;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.137 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
Received: from JPN01-OS2-obe.outbound.protection.outlook.com (mail-eopbgr1410137.outbound.protection.outlook.com. [40.107.141.137])
        by mx.google.com with ESMTPS id o1si12765813plb.337.2019.07.02.03.07.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 03:07:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.137 as permitted sender) client-ip=40.107.141.137;
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.174.85) by
 TYAPR01MB4477.jpnprd01.prod.outlook.com (20.179.174.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Tue, 2 Jul 2019 10:07:42 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::602d:62cc:de62:eaba]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::602d:62cc:de62:eaba%6]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 10:07:42 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Alan Stern <stern@rowland.harvard.edu>, shuah <shuah@kernel.org>, Suwan
 Kim <suwan.kim027@gmail.com>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, Christoph Hellwig <hch@lst.de>
Subject: [usb-storage] RE: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Thread-Topic: [PATCH v2] usb-storage: Add a limitation for
 blk_queue_max_hw_sectors()
Thread-Index: AQHVIcuW138W6xs/SU+mBATKJYat56aZ0SQAgAABRQCAAAL1gIAFZkqggAAqzACAF8/kEA==
Date: Tue, 2 Jul 2019 10:07:42 +0000
Message-ID: <TYAPR01MB454412603157D6DDCB512092D8F80@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20190613171112.GA22155@lst.de>
 <Pine.LNX.4.44L0.1906131317210.1307-100000@iolanthe.rowland.org>
 <OSBPR01MB359051D6F83101432E0F2549D8EB0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20190617062222.GA5069@lst.de>
In-Reply-To: <20190617062222.GA5069@lst.de>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [118.238.235.108]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2df9c2d-e54c-4ad3-1df2-08d6fed51f77
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:TYAPR01MB4477;
x-ms-traffictypediagnostic: TYAPR01MB4477:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <TYAPR01MB4477CA5EED4F8BFA7F65C64ED8F80@TYAPR01MB4477.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(199004)(189003)(2906002)(66946007)(76116006)(73956011)(102836004)(7696005)(74316002)(99286004)(81156014)(8676002)(6116002)(71200400001)(71190400001)(305945005)(7736002)(54906003)(8936002)(486006)(66476007)(66556008)(64756008)(14454004)(52536014)(5660300002)(256004)(86362001)(476003)(53936002)(14444005)(966005)(186003)(6506007)(316002)(110136005)(81166006)(11346002)(6436002)(3846002)(446003)(2171002)(478600001)(76176011)(229853002)(6246003)(9686003)(68736007)(26005)(66066001)(25786009)(33656002)(55016002)(4326008)(6306002)(66446008)(4744005)(6606295002);DIR:OUT;SFP:1102;SCL:1;SRVR:TYAPR01MB4477;H:TYAPR01MB4544.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gDi1d+37W/+Kj6oOahfpxj97F4zn5H9LQikGOLpJ3kXeqQqlZ+HhZ2KHP4g//S7bw53mjpS541U2JfhtYkXgEO21PvS9B/1kga7U8hgnvPxOu1+hPU21vTLG6Ok+v9Ad4OGj5fmYrO7TTWNrn90OiTX+jU27hXYQx0B29oWIADHdL8nvVknpbA9Ia0/xIOSo0Mnptj7DDx7miwcJelwA9bA2/ArLReI+TM3kyVz1l332aajK7c0ejNm4K2E7OpDReKzIpWMaLVqg8E2MI6Eg8wwdz2Js1r65sMB51aBQ5PG3DceGir6GeHC2EhoXNk63CY22chJFaI+YwK7oN3lnfo59fNUHdTHh0gMZxzpAD584t3MmVnW/o/98H4hAiZfoKSfbK912AfNCZURJX6QHTnKhf7uUPQH/ChSHlsjWdgM=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2df9c2d-e54c-4ad3-1df2-08d6fed51f77
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 10:07:42.7663
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoshihiro.shimoda.uh@renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4477
X-Original-Sender: yoshihiro.shimoda.uh@renesas.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com
 header.b=YoIdHenU;       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com
 designates 40.107.141.137 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
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

Hi Alan, shuah, Suwan,

> From: Christoph Hellwig, Sent: Monday, June 17, 2019 3:22 PM
> 
> On Mon, Jun 17, 2019 at 04:17:43AM +0000, Yoshihiro Shimoda wrote:
> > Thank you for the comments. So, should I wait for getting rid of the
> > virt_boundary_mask stuff? If I revise the commit log of this patch,
> > is it acceptable for v5.2-stable as a workaround? In other words,
> > I worry about this issue exists on v5.2-stable.
> 
> It does exist on 5.2-stable and we should fix it.  I'll plan to resend
> my series to fix the virt_boundary issues for the other SCSI driver
> soon, but we'll still need to sort out usb-storage.

I guess that getting rid of the virt_boundary_mask stuff [1] needs more time.
So, for v5.2-stable, would you accept my patch as a workaround?
JFYI, v5.2-rc7 still has this "swiotlb buffer is full" issue.

[1]
https://marc.info/?l=linux-kernel&m=156114524808042&w=2

Best regards,
Yoshihiro Shimoda

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYAPR01MB454412603157D6DDCB512092D8F80%40TYAPR01MB4544.jpnprd01.prod.outlook.com.
