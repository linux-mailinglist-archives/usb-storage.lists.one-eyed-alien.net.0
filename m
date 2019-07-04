Return-Path: <usb-storage+bncBD7MTN773EGRBYVN67UAKGQEWVGQT6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C78F5F6B3
	for <lists+usb-storage@lfdr.de>; Thu,  4 Jul 2019 12:37:27 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id a5sf3130957pla.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 Jul 2019 03:37:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562236642; cv=pass;
        d=google.com; s=arc-20160816;
        b=d57Yj7SmcUjNSLozMBi2QKH76GmG9lF4bXaF+fhFCrw16F35WSFQbXQtJ5rf8GaXRL
         wsC1cKCnN75yXUzOOpDyGXSKx4b71ziPDDtQ2NSX51obDsRZAtTBs4zDn1W3L2SUi6Dt
         jyfs1WXRE8TrrYn1pZl5TjAMVb1aSzgjvcOAE8OcPEmDI/00Rx7hscJtcgmT2qbNvX3P
         Xh8+t3msqf+1ywY1vUB1MzQJyDXAscOuxfXjYqHjWfPG5X4yGzFyEtO9AFbj9aQRxewM
         5fHPysnk5bu1sKIfaN7yrfsEY91Xh9HBxxlhhwXYhqrtUnfb/N7Q4Ck7EpdO7dRWVPLM
         vsfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=BSeJdxxkgDDnjYGEAqyvm+qWdQSqDJc93CqPDYHCzdo=;
        b=t8IkVxXVmg+rjmZYyJBrMxa1iR1VtMvAr+OBT2aeu+PitARWTQWcYfMVLPYLV9Af+i
         Iyv/3NEAek/Lrl9mCzPLsvpYIlyhGVxqph8p+oIbRsMp4D0zCl5HhGM5puM2imGN0XLl
         +Yj23+pzPeM0rwtUk2+JvpOf+3HPXxqRvipx29Xv/blUF4wLFxRzoXpKnBoVXXIS8kl9
         H75COsjGZJTKedp1IBWd772CyirPeO9GgpjdQ4uAjo+zEDwisLVuN5EdIaTOdgD+vxys
         P3JjWDbSR8rxTT2nsTmnyxCCqkSn72X8rC6gq7kVJ9GT0bbnVkJMx+NTuN+VrYtmwtXz
         GoYw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b="Skn/kjQ/";
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.131 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSeJdxxkgDDnjYGEAqyvm+qWdQSqDJc93CqPDYHCzdo=;
        b=S9puYPX8KIpZb7etn4BT+9M5aDKJnkwQhZ8ZK+Nh/Yx4GqTu0K0bCff2JLxfF7mdG8
         KbDO5WR8I7E6C+5eTNPyyruQNRnblRtwvuM4Z4wowCKfDGuJU0z/bifQYAH9vnxBHRwl
         dfj9H+eUcMcmR+OpacHeThmciuegKoMCoCB74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSeJdxxkgDDnjYGEAqyvm+qWdQSqDJc93CqPDYHCzdo=;
        b=Tme3J/ly/kCkZceG7cBZauvuIqs8G8DVe47r/5rBdlKEA98DiBf2zhgbqYW+DqVxPt
         lqs89wGydWekqeBtnZHXA3yypx97nyvjSBUNventxcWUciAYqPoGvbgkFsRX5/Djmz32
         RY+rBzrnGsHKHG5oaKK9wNLVCMWMUs5TVZUMqLsX5ZFdhpwo7lit6MzcJBhhSPEsHTKp
         TS2/6PAENSf1zRDa7VF8u1DOolxe6P7tNe8lATOyMEbmwL6QCD0SXAZMcfjoSd+fqOmF
         yLmpL21KXKzA1Ulu/47dsM1KKgDFwoxF6BHDCxLNkOpGcwHUhQNotgwGesuGe+L9TH6J
         3YvQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWATOJT+jweYE62V+/cMTmb2JnL/a5LUmCKNR/z5I1px/7wdDZm
	PqlVp4taj204f9P04dHKQqKOiA==
X-Google-Smtp-Source: APXvYqzXzr7CBt0MHZVAPdV9Ti1qaVyk8vo+HlMuwwqN0zmz9m81Gnbr0P9UeRhXgtnxzUS3lCIngw==
X-Received: by 2002:a17:902:124:: with SMTP id 33mr49686327plb.145.1562236642597;
        Thu, 04 Jul 2019 03:37:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:75ce:: with SMTP id q197ls978159pfc.3.gmail; Thu, 04 Jul
 2019 03:37:21 -0700 (PDT)
X-Received: by 2002:a65:6647:: with SMTP id z7mr44087640pgv.349.1562236641877;
        Thu, 04 Jul 2019 03:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562236641; cv=none;
        d=google.com; s=arc-20160816;
        b=J2yf+QMWj1CckX1EJrIwgoKqwRPgLoEGsmixc4xByNoAFbmJ27ShsrsydhALGVKfUI
         ROGhZ0qTQUv1pXSR5pIvLUesOQgR4DVLgxaRfNRkiIIubEnnnjGzvfBaCBfzmhrISF58
         0lIA9tKKnKC2Qlunvvx1dhHpzcpx9IdCqsvVFscwpEDgAhPoLxg14RkQgR2kpQ07C22v
         qY2qlG6e6xl29K2ck76BAGD0cpvKpcAhVW99cYiTfkq2p9FD5xzz14x+iOOUk07cxT+/
         fSMS/0U3PtMt5y31lpOUo9ninacC7HM8lWvVQklZDZon6Lo/6r97T3OP5ns/buxn/Zcv
         d8sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=tW/XrGflnLpiE+GcowS+8JkARY0qQ0lkKnPqgJfgc1s=;
        b=I/lK+M6nkhC5WgtdzFtAYUvWQAIf90EUESK7L7BU/zTM52QGOSpi0JJAwjyOPuw3JO
         aPFukqWpfNg1YvxHQ2J2LfbSflyYhdqk1vUN1jXPEsIK+Gd/aB/Wk9Naor89Azi+xQhu
         mXAXkbPY16TVuTxQHBmtg78jZt40aDJmudO5ZiDBRhXW9cf8/PpMcW5nmIZZ/ewWOJTH
         54z/NWEeuqknSSsOKdxhWMWaveniF0Dvt+JeWXU2zkXVdJuB9bSv3FTNQ4xBl7H0SN47
         QVeTwcxQeBt7gX3Z5rNwsbgszMpifHEK8AMpsY8dH9MU+9X6V525esD2NKWLH/pY4+J9
         5AoQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b="Skn/kjQ/";
       spf=pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.131 as permitted sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
Received: from JPN01-TY1-obe.outbound.protection.outlook.com (mail-eopbgr1400131.outbound.protection.outlook.com. [40.107.140.131])
        by mx.google.com with ESMTPS id p12si4955186pgj.437.2019.07.04.03.37.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Jul 2019 03:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of yoshihiro.shimoda.uh@renesas.com designates 40.107.140.131 as permitted sender) client-ip=40.107.140.131;
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.174.85) by
 TYAPR01MB3072.jpnprd01.prod.outlook.com (20.177.105.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 10:37:19 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::6999:a5c2:83ef:18bb]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::6999:a5c2:83ef:18bb%6]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 10:37:19 +0000
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
Thread-Index: AQHVIcuW138W6xs/SU+mBATKJYat56aZ0SQAgAABRQCAAAL1gIAFZkqggAAqzACAF8/kEIAASseAgADLi2CAAMSFAIABU2HA
Date: Thu, 4 Jul 2019 10:37:19 +0000
Message-ID: <TYAPR01MB4544D30CE40795E07BB44CC0D8FA0@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <TYAPR01MB454441748DB5CBCDFCF207D3D8FB0@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <Pine.LNX.4.44L0.1907031015140.1547-100000@iolanthe.rowland.org>
In-Reply-To: <Pine.LNX.4.44L0.1907031015140.1547-100000@iolanthe.rowland.org>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [118.238.235.108]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47fb9a85-e26b-4b25-a94b-08d7006b9768
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:TYAPR01MB3072;
x-ms-traffictypediagnostic: TYAPR01MB3072:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <TYAPR01MB3072BDC5789806CC5785FC5FD8FA0@TYAPR01MB3072.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(43544003)(199004)(189003)(53936002)(55016002)(66556008)(66946007)(6436002)(66476007)(64756008)(6246003)(86362001)(2171002)(9686003)(8936002)(73956011)(2906002)(476003)(11346002)(5660300002)(25786009)(76116006)(229853002)(186003)(316002)(33656002)(54906003)(446003)(102836004)(6306002)(71200400001)(66446008)(52536014)(26005)(486006)(110136005)(4326008)(81166006)(76176011)(66066001)(71190400001)(966005)(99286004)(478600001)(6506007)(256004)(7696005)(81156014)(14444005)(6116002)(3846002)(8676002)(14454004)(68736007)(74316002)(305945005)(7736002);DIR:OUT;SFP:1102;SCL:1;SRVR:TYAPR01MB3072;H:TYAPR01MB4544.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MXqPfpaGXn9gQN82DiE/8RYmNOIh0CEx5mMHLTBDOAQwmIp0EeKjFnOQ0MXa+B8AuUaVwrK6kfw921eOYImbx8KlQb+R9+t8e4RpSKINdqpVwV/cYqg/pyj167teONFSl5VXqOFVfr3wNIiSYhwJ5HSSx9VRRYPbXRo9xHBlb6+zgfbaRLZlvqxacDBR19poSBmecJL38dYen68Bz5NEqHfkR/JMKQVkTfPg2Ae55j53NQDYvR14s/x/4NBOUFpVq+4PKI2JYyr8RjnI3xaYOgkCqp1sGxD4xTDQZxO+kiBGJxgU+9MqxcAXCOvSYff4F6sTj2z08gz5GfesaopQTPo6Rl4fJC3PZGp//ysnCKGsmrwY7yuddt33Jyz4CSeHPHLuPjEBOuvJ6BrptKZUq03HWALEIOdjMx/UqxHgrvc=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47fb9a85-e26b-4b25-a94b-08d7006b9768
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 10:37:19.6354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoshihiro.shimoda.uh@renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3072
X-Original-Sender: yoshihiro.shimoda.uh@renesas.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com
 header.b="Skn/kjQ/";       spf=pass (google.com: domain of
 yoshihiro.shimoda.uh@renesas.com designates 40.107.140.131 as permitted
 sender) smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com
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

> From: Alan Stern, Sent: Wednesday, July 3, 2019 11:20 PM
> 
> On Wed, 3 Jul 2019, Yoshihiro Shimoda wrote:
<snip>
> > IIUC, usb-storage driver should take care of calling blk_queue_ APIs anyway because:
> >
> >  - As Christoph mentioned before on the email [1], usb-storage has a special
> >    max_sectors quirk for tape and SuperSpeed devices.
> >  - Since blk_queue_* APIs don't take device structure pointer, the block layer
> >    cannot call any DMA mapping APIs. So, even if any other DMA fields are copied,
> >    the behavior is not changed.
> 
> Although the blk_queue_* APIs don't take device structure pointers, the
> SCSI layer does know about devices.  And since it is the SCSI layer
> which creates the request queue, changing the DMA fields should change
> the behavior.
> 
> However, you are correct that usb-storage has to call the blk_queue_*
> APIs anyway.  So I guess your patch is the right thing to do after all.
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

Thank you very much for your Acked-by!

Greg, if possible, would you merge this patch into v5.2?

Best regards,
Yoshihiro Shimoda

> I still think that copying the DMA fields would be a good idea, though.
> 
> Alan Stern
> 
> > [1]
> > https://www.spinics.net/lists/linux-usb/msg181527.html
> >
> > What do you think?
> >
> > Best regards,
> > Yoshihiro Shimoda
> >
> > > So what I would like to see is a new subroutine -- perhaps in the
> > > driver core -- that copies the DMA fields from one struct device to
> > > another.  Then we could call this subroutine in usb_alloc_dev() and
> > > usb_set_configuration() instead of copying the information manually.
> > >
> > > Greg and Christoph, does that make sense?
> > >
> > > Yoshihiro, would you like to write a patch that does this?
> > >
> > > Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYAPR01MB4544D30CE40795E07BB44CC0D8FA0%40TYAPR01MB4544.jpnprd01.prod.outlook.com.
