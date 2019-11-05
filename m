Return-Path: <usb-storage+bncBDF7X5HH4UNBBGX4QLXAKGQEIO6OB3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3E5EF1AE
	for <lists+usb-storage@lfdr.de>; Tue,  5 Nov 2019 01:11:07 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id f17sf5399310edv.6
        for <lists+usb-storage@lfdr.de>; Mon, 04 Nov 2019 16:11:07 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1572912667; cv=pass;
        d=google.com; s=arc-20160816;
        b=rB1aki3kdzOGrruLkTw71lMX2eP1zcexCe90YGcICEZpYpeKlgNbdLANn5uVFOEPHk
         InOnIjwTuTTHCXNDywTugDjRPvRQIBdYkYraj78JUfwMFxY9XE9eX7euRBC1jlLCe274
         u4EolyrvFuyRpf2R4fhWmI7BZHV2/R0psPf9mtirh/CVqtqWUi5gMKRMpb3SE3tjuqxB
         7B8jUXKa0397aheiN/6twIu+HD7XLl8qUJwu5imFxqkiTvxw3GGyFNWpd3DohV2hTioB
         unt3csA5iSH0bV1G6Q2obacalXh/75XJsM267CvIGQ4Pkgo38Pvu2Lgh98X06nRzLoN3
         3UgA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=+QL+038JmORnOELVneaHr8n2rw6jXnQIxrbh/5wZxgY=;
        b=J7zR1l+Eh9POXyHsuASDOq8N4/oRIGgaViQFtKKrhUTrHYS5X6n0Dd5qkz5YXYRQX1
         WZzD1H8rsej6yGZt2l4AZoyzYs0BXv5EOdlHEdDczOfQioHVHkag73gKFRhzqzJkFSUx
         MVrsQSvjOGHZm9UuerFPv/GJQofh7qSjPIeBnz8ABc9m6dWJn04Vn6/0GxwtpMAhj0L2
         Cl12eEwpj4kdE/5fbZbgibckS/inWb7MO586OAR8CJCJm0nSnmUtcx5L6qXe0FSAJyLP
         Q6Xw2mAOyh3Edxm9Uw86jfdZUdOGBwVyH5S4MRhdmdsJm1qCoUnNE2YO8kCTook387pc
         LZEQ==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=GM+kZKXT;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=fLhcxaGw;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=20536ca63=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=20536ca63=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+QL+038JmORnOELVneaHr8n2rw6jXnQIxrbh/5wZxgY=;
        b=gUiZEyiv5aoQ3Hc3GMVccnI6UFhSZ67xfY5f+v3yzM+1xhLAZtNH/lTKusKagZvJTv
         OauxLuKDKP3hBzS4T2USwJgDrOa5QIvApajGz7tKShLAQcpy1wDcRz2LrnBSkSNAmyJI
         LVUa2Bm043pg4Rr3EgKtvEMafkAbyEbHNeqBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+QL+038JmORnOELVneaHr8n2rw6jXnQIxrbh/5wZxgY=;
        b=srgeuN2+y2rvv6w6U9T9sfZaj8jSlyPGfEbRR0ivuroObILRtrBdN0E13EHr3HwRmp
         ZHqq1+nT6D0hg6l9OnKN/fyr/Wwip82TuFcjm1fYGHKI3UysCEEH7kKDuSEeZ1x1BnXb
         SfUaIIKPs5xZR250X/QU6trNSUQ3cf1h/7b8uJY3u0a3SGZ/k+D5jyO3n5FKJU+DV14N
         ffD+Ze1gqRkT7Dfs5qj32/Y3VA4pO4rDxamPFY9POBwABXp30NRLqT4GeUR97qnU6y0C
         ktajQ+L8NyYBf1bL7jzcJ7kXqc/yx6rEZ8AliKJd7982bUN2oXm+JAlgPQZN/t7hxVrl
         KFXA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUvhrw6invERM0WM0DDoJ7uVV1SPlwIuwVraPEQ8ryeMVmlNuuQ
	U09PDyHPGIz8NBQYT3clYpDd2Q==
X-Google-Smtp-Source: APXvYqw+dH9FeIT6203hDi7ECcRtF/OMZFRcr2VmrBZzKVqXssSR5zvmB6P0Amo7XVNWq2Q6uI3tsQ==
X-Received: by 2002:a05:6402:1816:: with SMTP id g22mr32842839edy.76.1572912667106;
        Mon, 04 Nov 2019 16:11:07 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:ccd7:: with SMTP id y23ls4064461edt.12.gmail; Mon, 04
 Nov 2019 16:11:06 -0800 (PST)
X-Received: by 2002:a50:d717:: with SMTP id t23mr32114605edi.231.1572912666171;
        Mon, 04 Nov 2019 16:11:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572912666; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJAN3UEa4+++Q/Rln9MqcSWAooAFQPZj88bZdN3l0AK5py5XhAB+Nu57nzi7tPR40g
         TPferb414v0BRoNFXCnK8f5R/+amDo4d5taJ6fuOGbaZdg1uyhCf4MjY81RJnYlkeNag
         MwB3PLS/cSbowmDoYDDsUYbK4dpyrLkWHKenzJBgDB1+t7togTce1PDFxTT3NSCff1UX
         PJ7WuBXFoLtpkrDZq6r/IOcF7o42hFbiqPagUxGtb7JteCmIiSWZnNx7lag7ulMBfRZG
         JocHyDANaLUAhVUg3HxuO33ZMFDXh7gqD0EyGK3FzvbUz7EisDofMJnZ8qjyk2K2P0WI
         Tg2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=IpGkrazEPo+7ww0J9GyOg8jzBIXRj4bsgBJ8Ld6s/60=;
        b=tfKpvu6hIO/T75F8WvhjyOX3Ff/Buz2dN1qRs6bchoZ+ChV6o5XWyNdWmLaEQosl0f
         Xx3N9sVwvJx6LrENGpZOeJxeODYPLC9yuqO9OYIaqE6SWoRTik5iCpQUUeAcxMRhk3Ay
         plg4C7UPNA+ahPJ39lXAVxs5YTo8/suB7aQCO4lz1M1tmJ3EJ4kQJDPqY2BRyaJKiT0c
         7IuRmUP8DUMgp3pXwMbjLMR7KJ/H+Y+Kpxz5wkWxX/8U5DfyH/dk5ikbVsWr9wgjWWlv
         BwmyJ/BLtCxyo7eqPUZJb08N4ImfWUNykjMD9zzQJMZE86clEwSCed4xcblX+2RlND8q
         78jA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=GM+kZKXT;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=fLhcxaGw;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=20536ca63=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=20536ca63=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id n4si679719ejy.426.2019.11.04.16.11.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:11:06 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=20536ca63=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
IronPort-SDR: mmYGmcdYizFoFbLIdnlII95gHpO+DdJjq2p/MZ6TKhX4xEElokrrttk0oHBN8GzBHVOmQDOpIl
 hC4vw0jDClHcJx/CAmBzrhCU/67IIwdl1x6MWfgzMSjX955TZGibycciBxI5nmtj2PJ2VO4c0+
 BIClN8zGNdv5nvTYNdFyEri3T96Mx1oDGcuP4STnXxU5JoLZA2U+aOFwNtjnWbvLNYBgiUWkHX
 VOLV4xafnXCCVciUZ+SYri/ga4LSLGvQ//H4eJbN3px6pzYTXg/C1B0xtwfOsoHhyhPEa/e3v3
 FKw=
X-IronPort-AV: E=Sophos;i="5.68,268,1569254400"; 
   d="scan'208";a="223294773"
Received: from mail-dm3nam03lp2056.outbound.protection.outlook.com (HELO NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.56])
  by ob1.hgst.iphmx.com with ESMTP; 05 Nov 2019 08:11:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=McfkCcHe+krpHs2HQHJFm2mMejLuNhCIj1X+wyfdXb1rfjLJhGPpp2qH8S8xgUqCQ4zdPd9+bjjHWkXQH/aYSr5Gi7TS/3Ho+1iaR22zSqZKsU6VAmrrur7jfnMHqQO1Y50Nd7kzXgjE9CUqKXVb2rCClKNrXD1ucxlRyfFGCMDutFnkI2TpvTnDYBxGHLBp0tLliWB22Ow076ODnuU51V6W6gHxPBp00L53n5xE0/1rJRUCazsOF8Iiz+8ftnEdNvJS0oEKuqlGq8aPhKpP3LuhOi9+UUBqbI4fsFA5tDx/1qDCRuzHW+TtEWdxdc8jcWA5N7csgfDHgeczHtecrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IpGkrazEPo+7ww0J9GyOg8jzBIXRj4bsgBJ8Ld6s/60=;
 b=l544MpHTrOI7JFn/yD8zsF4jtAD6N2vT/ANyTQfRmgLj6fWIuaQKNBBgoL7IJkp8mNR2mQRKGBDmI396o2fFKi2wpXDoybuL+8/tzG+rL0Su9HXMo1AkpEMW23p6DvzDfWUGbu0pQQe3oiilwK0xF+2EdGHE2hVOqwiQa0NKqIlXq82rCvb48O/MVMuHBnwzGeRkmUq1Y2VKPJ8UGIvu2aA5FKmOj1pOVP9G/z35u7ubmsFarBNcPU1wHgUAiYrZjL48vlcM0v3SZ6iB7VuGfwe4GkPYsjY+wSIXk6czsmzoHOZ4YwrpxTeg5LFLFJFDtS5kFSnG17eQrl1QYANHRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB5544.namprd04.prod.outlook.com (20.178.232.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 00:11:01 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40%7]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 00:11:01 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Hannes Reinecke <hare@suse.de>, Bart Van Assche <bvanassche@acm.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, "Martin K .
 Petersen" <martin.petersen@oracle.com>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Alan Stern
	<stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
Thread-Topic: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
Thread-Index: AQHVjwGpa2dwZOHBZEqGAzLsDczxpQ==
Date: Tue, 5 Nov 2019 00:11:01 +0000
Message-ID: <BYAPR04MB581685E630A8EA91902B2F9BE77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
 <af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
 <BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
 <a33afd2e-a7d6-5584-dc26-79fb8f3d6a97@acm.org>
 <a640ee15-515b-6811-9883-48b49ead9276@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.255.47.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e6662920-8224-45cc-d4e3-08d76184a415
x-ms-traffictypediagnostic: BYAPR04MB5544:
x-microsoft-antispam-prvs: <BYAPR04MB55443B85DF64BDF520CB50DCE77E0@BYAPR04MB5544.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(4636009)(396003)(376002)(136003)(39860400002)(346002)(366004)(189003)(199004)(66066001)(81166006)(26005)(2906002)(76176011)(2501003)(6436002)(6246003)(7696005)(102836004)(55016002)(478600001)(53546011)(316002)(229853002)(110136005)(14454004)(71190400001)(71200400001)(2201001)(8676002)(256004)(81156014)(305945005)(486006)(9686003)(5660300002)(7736002)(6506007)(3846002)(186003)(25786009)(86362001)(91956017)(74316002)(2171002)(446003)(52536014)(66476007)(76116006)(66946007)(64756008)(33656002)(66556008)(66446008)(8936002)(476003)(6116002)(99286004)(14444005)(4326008)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB5544;H:BYAPR04MB5816.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I8EjWxDohBi3M0WpwJZoR59Yhk/EyZMAPlfkuzu0PTd+nT1DDckJrspJs70NkdCSjyAtuqcZInOfTbTwnYUOm9DNHhD/bAYipGUIlXB+ovE/XOEneNFD20tnquXlhPLAxMAprikJHC0hTTMpEAQBD18cRgtO6oO15XNQ4YJzDuYjoZQwO98TYHKxSkziQ5GlrJXhWX2fIApOMblN7nFOzr9KZm+yt6NMYUoYzriBZ2kWYcNx8HDznOu0g8olFtNtVMRwcd/kg0fA4W5Rg57i3qpOLX31LFw7g/SKgBUg7cAp99h8KS/vdDhGMwuG+QPefpZ8vB8Dgr4zm5NcKKr5/lYLGLl730QYf3GLoKnn37M/2t1Wot+l1ZTp2UZwaA7Hqr+u1Ew69gbFhwqPhltKvZkvibtHuojSC9hKlNrhm+iBwvdsZGO4LHa4TQVDrnaJ
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6662920-8224-45cc-d4e3-08d76184a415
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 00:11:01.0317
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kYw6fJvFqAqm1V8XiwHYPPZQ0HRZ7PeK1sGMai0u4S+Nn98yNPBDM1kihevU1/4Qh5lzuJcQISzkS1mPkFv+9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5544
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=GM+kZKXT;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=fLhcxaGw;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=20536ca63=damien.lemoal@wdc.com designates 68.232.143.124 as
 permitted sender) smtp.mailfrom="prvs=20536ca63=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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

Bart,

On 2019/10/31 17:39, Hannes Reinecke wrote:
> On 10/30/19 6:01 PM, Bart Van Assche wrote:
>> On 10/30/19 9:21 AM, Damien Le Moal wrote:
>>> If you feel strongly about it, I have absolutely no problem with
>>> dropping the patch. I just would like that it be dropped for the right
>>> reasons...
>>
>> Hi Damien,
>>
>> What I'm wondering about is how the SCSI core should support residual
>> overflow. Should a new member be introduced in struct scsi_request?
>> Should resid_len be changed from unsigned int to int or should we
>> perhaps follow yet another approach?
>>
> Please introduce a new member to hold any overflow value.
> And document where it is needed.

Yes, I also think this is the best approach. The current resid_len
member of struct scsi_request can be kept as is, encoding actual
underflow of a command (less bytes transferred than asked for). The new
field would only be used in the case of "overflow", which are not actual
buffer overflows as Hannes pointed out (otherwise, we would get memory
corruptions, iommu screaming etc). The SG driver can make use of this
field to keep the io header resid as an int, with negative values
indicating overflows and positive values underflows.

Best regards.

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BYAPR04MB581685E630A8EA91902B2F9BE77E0%40BYAPR04MB5816.namprd04.prod.outlook.com.
