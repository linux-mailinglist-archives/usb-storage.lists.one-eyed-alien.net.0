Return-Path: <usb-storage+bncBD7MTN773EGRBKVZ6DUAKGQEATAZUQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B295DCC8
	for <lists+usb-storage@lfdr.de>; Wed,  3 Jul 2019 05:10:35 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id p7sf543068otk.22
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 20:10:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562123434; cv=pass;
        d=google.com; s=arc-20160816;
        b=aDyhG7AcCWxejaNYoaqu7+xNC9gR/VjTS/z8uOLIAHydAFhcZN3r1CrqXHF+NrnUVo
         9IAV0I+t/HjqxAcVH0MFz1hVtvmCCAKeFE8CqZyI0OROIY5FfmyaBTVZHlM/P4i+XECL
         Nt85NOzyBX+JAoWfUKORuJJZX1/yoMka6tFDeHkxAgvU+k/iJSB38iDt9bbb+c3mNW8x
         a1HSbE/zLfapUlPy7ypkJmGNgRcDSO5KcEvVdYjZ7lZAkI/AY1QHd3DT1AOYjcC/0EWY
         TtohTJG2oRERzf4cFcoc5y3ZVgx1wsktn8Ai2wV8sLy6qpujgrZ7NoSCCqY49LMMu77t
         OPsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=zbKH2hBgQPr9R6ebyJPYJ68DDYuOb3W1M9kG1HM+f+Q=;
        b=mUIJfaTaFWIo6qa03ILxuOEPNZmUYfEVMCU48wCyA5/4Q8y8qs6ZGiQ9Cb43I3oh6x
         BfWDLQ87fKH1h8pnbB241Uw4F9pZ8pI3cxWxCWYs5oWKjpV/n/DC1Me2QPzxHkE5wvUz
         9Wchcqd+CAYrVbmi3UvNkFvG175DiDFrygfo/8QR9O/Lfr/2jraWB9DpyaH9wndCUflH
         vtJ9gPhQPCrBJeNB42Jf4hVPpozhYTR1paUbVI9B8jBZqekZBLrHevo3Mj5/OpYaMWjt
         VaHEfO17Lsx/Fq5fyYgFURQZi6Qh+fLNBr+a9nGMI3rlq+sOYuAjWURZ5IFgIkrIFn1z
         7aLQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=ktUAR1+5;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.93 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zbKH2hBgQPr9R6ebyJPYJ68DDYuOb3W1M9kG1HM+f+Q=;
        b=YqLPAYsx1ANFKKQ47UYLFOALYBzLua9uyCww92LlLLu4ZSDnQQbLT0zXjxwEFdkczA
         3Z20pENFu0z8UwjAZs8TzPEvLFNHcjvHKhpW50/m5k3MV5PP28y4jUlPt6a4gLVikxm0
         hCQyYi7/atyN4MIvhZUFT9qvPr8+WA6dOf4Go=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zbKH2hBgQPr9R6ebyJPYJ68DDYuOb3W1M9kG1HM+f+Q=;
        b=Da/EMKEsRFSN3wMqiVG6aNd0V5dhPa4TTC/Mf1HJcUe8ytPLtxZLg5w2OwG6/u3NXK
         Ew/Lj1TTd9vjJ8bFZAaua4/CMeBj5zBNVWIjSUqm1Qu3qm/otExFt4kxLQtqE8KfahzD
         ljlr/IST75C1/la3hZxo8c0hR6E2NC3jeeoboB2jYf5O63qIQShV0dQNs0IIVxUTi3Dw
         9q2UrxxQaN3uP/1Ts0xY+Vg0uaImLlKOvRXjUKAfdp0A6b86gJjCdBp1juIYWAQDi0I4
         cQU3x1Ya3QrlZt5CB8JArCMM+NJL3iPFV7Lio1PVcFN2DLgtE3aZfpgEQ8d8GIN8cNmw
         DWAA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXs6fdHbyJMpUUKjkbDjld3PlLiUUerbMZ+ovU0ekHI18K4SYHO
	5NEGlm99mN4AjUXR6+wTNVZ74A==
X-Google-Smtp-Source: APXvYqw2X4mRH+g2lRqFaZPkH2po432XushHVVGhOZ44i3EVWaM7POBEN+1vmBbgmBE1GLMQzmMYCg==
X-Received: by 2002:a9d:7847:: with SMTP id c7mr6478638otm.290.1562123434543;
        Tue, 02 Jul 2019 20:10:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:3ea:: with SMTP id f97ls136615otf.5.gmail; Tue, 02 Jul
 2019 20:10:34 -0700 (PDT)
X-Received: by 2002:a9d:6f0e:: with SMTP id n14mr25163048otq.38.1562123434200;
        Tue, 02 Jul 2019 20:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562123434; cv=none;
        d=google.com; s=arc-20160816;
        b=j4zBh0ZDvUGWqrxgkIXRyOzzi6k1CDZwMrOYtJ6vyG4f3nR/rooYRba7AwGSncvFkk
         FuSkSYtynVr/c8EKovqcGrFrRpnkaRHwKIlI2LzXILawU+6jI1kDdlU951dvzPc6wWFh
         az5g55MV41n5NsrvszEoYssVTZFRBl3mxknAxmfkbnmWrj6H1dWw+1nuYeZvshqqMEsb
         uLeYwNtKHauisrJbNv4lTfJdge6JuY61x0hMxjODNV25cIWsqRxY6T6x1/I85KlqSqXD
         Ow3+dUniJIZUsbQ1fJ3kQii6mSs8QkN/SNXdfJR+NbDqH/kAVgKDrsIn/rw1djOjuyRD
         fF0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=ZYqLO6+U5LWl+wYzfaeZohAa2IS82Xjq5Bnl1d1ZbHk=;
        b=JvpOSFVfs6h2W58zJf+wzuA+FfEFxqWkmBexqVR/7GPt7/S/sVyQAcCe9mmXJah7bP
         qcTGSi8EOa+JzIki7HuepeStdFp+BYCMmOM2819gaYu6uNoo1JAlML9EwVRKdmb0Usue
         8HXNW4ANt/OgDsSEaZaZitjfl1gKD9tu1oFSexOnWDNQr4gemdPW8O7z5sSiGtnV7Usk
         E2pkKrMynw83PUA92YapOhRfv0VAWIZg8AQN+D4ZpL4NLsMXhxUuzQVuV0iwKfm6SL/B
         UC6Y7ImyqBH97BVyCDafQ+xBC8zsll0SSN+l571aqs7fRyu7XP7DVqcVjazHTeZL2Sfe
         xSQQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=ktUAR1+5;
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.93 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
Received: from JPN01-OS2-obe.outbound.protection.outlook.com (mail-eopbgr1410093.outbound.protection.outlook.com. [40.107.141.93])
        by mx.google.com with ESMTPS id a28si883347otd.173.2019.07.02.20.10.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Jul 2019 20:10:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.141.93 as permitted sender) client-ip=40.107.141.93;
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.174.85) by
 TYAPR01MB4880.jpnprd01.prod.outlook.com (20.179.175.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 03:10:31 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::602d:62cc:de62:eaba]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::602d:62cc:de62:eaba%6]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 03:10:31 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Alan Stern <stern@rowland.harvard.edu>, Greg KH <greg@kroah.com>
CC: shuah <shuah@kernel.org>, Suwan Kim <suwan.kim027@gmail.com>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, Christoph Hellwig <hch@lst.de>
Subject: [usb-storage] RE: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Thread-Topic: [PATCH v2] usb-storage: Add a limitation for
 blk_queue_max_hw_sectors()
Thread-Index: AQHVIcuW138W6xs/SU+mBATKJYat56aZ0SQAgAABRQCAAAL1gIAFZkqggAAqzACAF8/kEIAASseAgADLi2A=
Date: Wed, 3 Jul 2019 03:10:31 +0000
Message-ID: <TYAPR01MB454441748DB5CBCDFCF207D3D8FB0@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <TYAPR01MB454412603157D6DDCB512092D8F80@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <Pine.LNX.4.44L0.1907021018220.1647-100000@iolanthe.rowland.org>
In-Reply-To: <Pine.LNX.4.44L0.1907021018220.1647-100000@iolanthe.rowland.org>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [118.238.235.108]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97391305-1046-4447-08b0-08d6ff640220
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:TYAPR01MB4880;
x-ms-traffictypediagnostic: TYAPR01MB4880:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <TYAPR01MB488062653B815BBF6F6AFBA8D8FB0@TYAPR01MB4880.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(189003)(43544003)(199004)(66946007)(64756008)(76116006)(66476007)(66446008)(66556008)(73956011)(305945005)(14444005)(74316002)(76176011)(316002)(7696005)(8936002)(81166006)(4326008)(5660300002)(52536014)(66066001)(71200400001)(71190400001)(7736002)(256004)(8676002)(81156014)(478600001)(25786009)(11346002)(229853002)(476003)(486006)(446003)(6116002)(55016002)(6246003)(102836004)(186003)(2171002)(6306002)(9686003)(6436002)(26005)(68736007)(14454004)(86362001)(99286004)(966005)(54906003)(33656002)(3846002)(53936002)(2906002)(110136005)(6506007)(6606295002)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:TYAPR01MB4880;H:TYAPR01MB4544.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: giLm67VTVR5c9WnFZEsY+Nxn9+8XDt2LpHjKeq8DgLULkCGJl27cZC8wqVtGM9liEfFSteFkcI4WVQCasWR6JXafu5N8O5U4759aAJTrmM2MFFsQTAH+FAQb8sR0smQtRAAx7iLcKDQo84cEHE9f+q8kss/GIoTSwQK44QZzL/aciDupMXhG4cz4loClzaxuaXvMnpWsH1o6DhnCxS9EF0njrKIKzpRoIWLCmXcN8l+uU7/z0VmkhEMXYuEUX6vf+2qEc1E8HpQCV1nKE1Q+JmIFMwHfkHPHsyybphQGfU9ELPzrNdQOlksPvmhoqGhJ139rQc0mH2gNxegGvE3dAnqLP2/QViadHQ6AGJ6yRnZ5GL3sA5QhkqF90flNGn/OAucGYVsKD10TpOHmcCNptSYd37dhj1oYInH91fG4Arw=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97391305-1046-4447-08b0-08d6ff640220
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 03:10:31.4631
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoshihiro.shimoda.uh@renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4880
X-Original-Sender: yoshihiro.shimoda.uh@renesas.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com
 header.b=ktUAR1+5;       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com
 designates 40.107.141.93 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
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

> From: Alan Stern, Sent: Tuesday, July 2, 2019 11:28 PM
> 
> On Tue, 2 Jul 2019, Yoshihiro Shimoda wrote:
> 
> > Hi Alan, shuah, Suwan,
> >
> > > From: Christoph Hellwig, Sent: Monday, June 17, 2019 3:22 PM
> > >
> > > On Mon, Jun 17, 2019 at 04:17:43AM +0000, Yoshihiro Shimoda wrote:
> > > > Thank you for the comments. So, should I wait for getting rid of the
> > > > virt_boundary_mask stuff? If I revise the commit log of this patch,
> > > > is it acceptable for v5.2-stable as a workaround? In other words,
> > > > I worry about this issue exists on v5.2-stable.
> > >
> > > It does exist on 5.2-stable and we should fix it.  I'll plan to resend
> > > my series to fix the virt_boundary issues for the other SCSI driver
> > > soon, but we'll still need to sort out usb-storage.
> >
> > I guess that getting rid of the virt_boundary_mask stuff [1] needs more time.
> > So, for v5.2-stable, would you accept my patch as a workaround?
> > JFYI, v5.2-rc7 still has this "swiotlb buffer is full" issue.
> >
> > [1]
> > https://marc.info/?l=linux-kernel&m=156114524808042&w=2
> 
> I would really prefer to see a different solution.
> 
> The actual problem is that the usb_device and usb_interface structures
> are supposed to inherit all of their DMA properties from the bus's host
> controller.  But the existing code copies only the dma_mask and
> dma_pfn_offset fields in the embedded device structures.  If we copied
> all of the important DMA fields then this patch wouldn't be needed; the
> max_sectors value for the request queue would be set up correctly to
> begin with.

I'm sorry, but I cannot understand what are important DMA fields.
IIUC, usb-storage driver should take care of calling blk_queue_ APIs anyway because:

 - As Christoph mentioned before on the email [1], usb-storage has a special
   max_sectors quirk for tape and SuperSpeed devices.
 - Since blk_queue_* APIs don't take device structure pointer, the block layer
   cannot call any DMA mapping APIs. So, even if any other DMA fields are copied,
   the behavior is not changed.

[1]
https://www.spinics.net/lists/linux-usb/msg181527.html

What do you think?

Best regards,
Yoshihiro Shimoda

> So what I would like to see is a new subroutine -- perhaps in the
> driver core -- that copies the DMA fields from one struct device to
> another.  Then we could call this subroutine in usb_alloc_dev() and
> usb_set_configuration() instead of copying the information manually.
> 
> Greg and Christoph, does that make sense?
> 
> Yoshihiro, would you like to write a patch that does this?
> 
> Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYAPR01MB454441748DB5CBCDFCF207D3D8FB0%40TYAPR01MB4544.jpnprd01.prod.outlook.com.
