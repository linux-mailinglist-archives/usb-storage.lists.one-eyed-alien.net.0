Return-Path: <usb-storage+bncBDF7X5HH4UNBBD7R43WQKGQEM6TV2ZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 26558EA1A6
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 17:21:36 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id s15sf2020831edj.1
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 09:21:36 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1572452496; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2E52GHHPBCAcYomdKAHRrBKDAKeM5hL5JQHH5dbvmiF5mZZ2uM3HGIfXaqxF7g+Ff
         y6d4/ND3wX2+cXdIJEmp2a84xILerX18nYyErsZBq5PcNEWBifTrtFvyAOaObX9z5WCx
         iRWEZfy20nFFTBG6AxIa99EBJ7YhXDzGg0cW1E/eRCHD2L8thwbj2n591BLICuGa6SY0
         iYBi7vZ2HIGrp7ac/VYaBKB7qEXwMlSV/NY5vp8z+T4TxmlUNbaN/lipNQrqRNXxREqS
         a+iT25myoTZOGn8ZnrssmD3Un7BAcLEEWpn9aK8HQHI/1sSATWDvZ+k2bvPotrvv0ttr
         nsDA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=V5iz85hy9RPdeCHmubatnIFp49RIQGQcskwNuBrlpVc=;
        b=YPmDLOeyz4WtZsYoK6T8Mnll3gHhMzeWY71pLagPxjHekeSwP4G7CbvqTO6xK2lFJA
         VVaqf3GS1cVGN4Xa+EBAyHJgdEyOGZCPlfQW45/+6g6pmpf9eqriQDT0zSGQVjIBJvuM
         bAPFW3/v4Ffaw5DsqyHZyGtRtC610ppeYJ36vhOJWNebnNFpKcSs6m6hoVORYFe7UlVn
         2SYxpi/JVWUSSyR8iqL2dOZ7isSqiR+1b8pg5UzE6bUIHItxEZHBlIB3NvPgpUDPQl3U
         rfuwkMr7k6acF0zQA12LiUynxradBOEVGPvd03cWl762xKXYBGNAbeBNUrHD5FPjQ3sW
         Ggyw==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=gIpv965t;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=cNSfJOFo;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1993149a5=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=1993149a5=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V5iz85hy9RPdeCHmubatnIFp49RIQGQcskwNuBrlpVc=;
        b=Up+YIsmvIcsn4XoVObNl1jV4v3MI1nMF/a5xjpMiz7mNXI3gP8La14CRh+DkhUBBvf
         k4dvsIbWicVdBLtNtB3bWf/Lntfk1L8Yobzh7lVBv2HyGOiYtyGKLAEHbEYUCYtRA1pw
         XqpfBHOom1Yjp54jcIaSZe6EC0oRETV5uo73g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V5iz85hy9RPdeCHmubatnIFp49RIQGQcskwNuBrlpVc=;
        b=cP3FieDw6RQYkn6l+r2RqCCcyXuAFf7zJ32xLNZkXesEDldudttBdHQq8rlsFU4PJ1
         z6oCty1TIb4+3tGqQdOpreVJRAvkXzcn3pn8VbYeT5L9YXkM78kHJTnulRzUZiuTu5ux
         sGCCltKRY4JBbWMjGCo2hUnCOpJKxWX8DfW2ddtOlX1SiufjmfTusW0TZK3wl9kwUPPt
         XKBOy19PCq3HZsOUUF1ZGmfTnKNVkKm1bz8zTxlmeAkCue6Gd2PVDAnkhml2r67sFYTm
         tp05REkakO+uSTAwyPxdLUH/vXjW/bMMRuhTjcAAewCNJhuKqppGIHCiCfWK2F089lQZ
         KuLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVc6bnP+pommnckHVcwJZU2wRGb1/vkPd3D2eql7qgFR8t+VOxY
	z7DZ6zGp/uFEqWor9cm4C6nkLQ==
X-Google-Smtp-Source: APXvYqyOrVfyghJQflY4P0/IncdFhlQRDbNmiGtEXzAaDYu/ybE9DqY//BMGJSjf7RfyZt3XrAVqWg==
X-Received: by 2002:a17:906:6943:: with SMTP id c3mr324571ejs.161.1572452495895;
        Wed, 30 Oct 2019 09:21:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:d80b:: with SMTP id v11ls2363122edq.0.gmail; Wed, 30 Oct
 2019 09:21:35 -0700 (PDT)
X-Received: by 2002:aa7:d8d0:: with SMTP id k16mr32973eds.14.1572452495208;
        Wed, 30 Oct 2019 09:21:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572452495; cv=pass;
        d=google.com; s=arc-20160816;
        b=WUTiGo6xDmqoUMrLSxxL6Q5Di2eGm85M19QmCLLEtIXL7ja95ofsvOTadTKHyLXdGi
         aWXrQaxOcZsRGvukuE6S+h758FxkKCJKhyEmkqlcn0kpi3HAKtr8NgczyvfBtN9Y4c+M
         jA+hJ1AlEOy6KBDVvGk3bQMQNpbS8+Jd4KU4EGXSAr4rktO4Wa9CodP21IsD0h73oK2I
         0daRn02kmnmoapL6YukwI+pSgd8ymwfc+xnVgeFobiGmEukPaDspN0/dDRZ0aTg2XwZk
         J4rEIEDZYYfbsX+ZPde4jjxO7uK1+pq8uZIWehnYkl2cu3F8WsIbXNRPvG6NixHPQPRY
         JnIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=t9onWDjDeru5/Ig5S0u1pswF7GT7sYNeYWoXvXJm2bw=;
        b=MBw6flRZ1TcIurkkD5UydCYuW5Mjwwaouzcr+1L7mliG07H3C4bw7ur5AHwCEoRMQS
         C+xSGnHebiIEbIGm/9FGFpHvtbd3a/KN1BDIMU5yWNwXKm7xUrkmERzuG19At/91yhGq
         yQTQyRmCOUWvPZ/aF5zjLmSN+4NuAZb7D4aFBAYC9iFhbnyp2NLyTzgEY34GF7KElGZW
         YKbojRrqa5v4UoABa0s+cQdiJ0Mu7L7p73Cy2m1+KZFKUa+NLZ+UQ6dtIH/e11eybwtp
         v39rqPYS39jd70ffIxc/+Sw7pU0hAd6DYBzE1Yx/zv/NAfEOldMvbFYur9fKpwDXpkRQ
         XwCA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=gIpv965t;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=cNSfJOFo;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1993149a5=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=1993149a5=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id y27si1692312ejb.58.2019.10.30.09.21.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 09:21:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1993149a5=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
IronPort-SDR: jXwPatazL3qc/a6RMDqfnBaef8Y2DDleBuvBveKOQHPYXBgjTJfM8fn1HGjhzxK//nFqoCCux/
 LKdI8aUOxGvxW2UVYxgwjzKg49EEBebE1dUeVny41MzJka6NHMdPpGwwmNqwDA8gENyk+Gacqk
 Q6XyOfXlb5q7WhOkC2cdmtnI90H6gWPa+7Eh+3+EssHqx2+Men79gKfVEvKmOxvPA+VCVBalHM
 TDVjA3lUY3xyic+oH+bAUTfkIca7cIdkeBJqHChfTtqxqwkHQdFozS0go9WajLKkqSEfcdgWB3
 f6Q=
X-IronPort-AV: E=Sophos;i="5.68,247,1569254400"; 
   d="scan'208";a="222845402"
Received: from mail-sn1nam01lp2057.outbound.protection.outlook.com (HELO NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.57])
  by ob1.hgst.iphmx.com with ESMTP; 31 Oct 2019 00:22:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a2vgYkyWgyTB6fLeFxV5vzOHp8s0z8NqOVnFCR5uYrLNtahn0Or3FbWCV9JO58VUYXBcReAv0fXqqo9+xiVLIK0v8OzxiRaP+jd+33Di7EAsz9STHdTBw7bK36x1iwMFDSF8nP1rSC90VLye4jiq5k4vjytkX1+nIf6IRVQmOQQiyMx6o0cN/DEsWJYB1f7SVNBIygMeNssXCjdEhWJ2Tu6sDXEhCAvzbW8wLjlk4ZiqZWug9sePVug30Tyrz6l9t+WtWsJfDen2N/NS/8hRVPKd/5eUh45L3Lrco7vwIEOxfZ+tQeJ4w/Ao7wm05LfTW/iYET4BwEswupPfWu1oNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t9onWDjDeru5/Ig5S0u1pswF7GT7sYNeYWoXvXJm2bw=;
 b=QwBM5pMEbbwu0wglmI+25LiUeVV8oTK3gv/nl+TsdBZIA/ai53jhSxsw+4AgO4bUFSep+oDOba5XBfQoOsUDo68Kzv2tZCA5+AuvJHACta1ek52WIuunyq39kCWZxMf47KJnJxcxMiNTGTV36ZCESC1rMYZSvB28jZhsBGd20+jz2SbXzlDGcA0Mcatv6xL2Q0OnMvbkL8nvtUyIH3OVIa8dI44V5wQ4J+570AyH8PbPgwSrzcyNII1ddwmL+qtGaBAmnSvuuAmB1YeF55GxfFwQGST9WxeHffS3QyG/irhy5LQEM6XCCb0eE/e3ppAUrU8ckaTz4P8/NKpMNqBrwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB4101.namprd04.prod.outlook.com (52.135.215.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.23; Wed, 30 Oct 2019 16:21:31 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40%7]) with mapi id 15.20.2387.028; Wed, 30 Oct 2019
 16:21:31 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Alan Stern
	<stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
Thread-Topic: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
Thread-Index: AQHVjwGpa2dwZOHBZEqGAzLsDczxpQ==
Date: Wed, 30 Oct 2019 16:21:31 +0000
Message-ID: <BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
 <af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [77.158.50.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fb3ac024-8894-4bf5-24a9-08d75d5539a8
x-ms-traffictypediagnostic: BYAPR04MB4101:
x-microsoft-antispam-prvs: <BYAPR04MB4101EE2EA3B5E1DC2EA84703E7600@BYAPR04MB4101.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(4636009)(346002)(136003)(376002)(39860400002)(396003)(366004)(189003)(199004)(6116002)(6246003)(66446008)(81166006)(64756008)(8676002)(91956017)(76116006)(81156014)(102836004)(186003)(52536014)(5660300002)(110136005)(305945005)(66946007)(74316002)(478600001)(2906002)(3846002)(86362001)(71200400001)(8936002)(7736002)(316002)(71190400001)(2201001)(14454004)(66556008)(66476007)(256004)(66066001)(7696005)(6436002)(476003)(446003)(9686003)(486006)(229853002)(55016002)(33656002)(25786009)(53546011)(2171002)(6506007)(4326008)(99286004)(26005)(2501003)(76176011)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB4101;H:BYAPR04MB5816.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jtz4X3Ks/A0YptKkjHMLDm3pOP0eleKVpwfwmgGKofcuwfqQpT6ucTMr7BeWWzO/qE65C1ayZFLmMTQS1t4OeMDf1pHIQW2QCMc1h41CZJblaepj8t8gjR2sAGIEstlCdbYqY3LUGv5ZD4wxtAR2B1ZqZU3bB8SpwFUk07jWucmXdCepoE39eajZb7J3dNCtKB/Kr7DhlOSKtLluQDx7ezlTUmUZ2ZlE0EP+9Yh9AVRR1QQvNM1Z38hnVFbaA0cQEPHH9qvRqEjwBggRbuEVU1c/hX5Nzd20VK9vqxfzkkayeqA3v7xpgmZzrbRpdNl6iGwWGuOh+sMUNKaDCFysE5e/CEBIg67/vnjL0tXOWdX8zOEQVbqcsAQeoh7jM4omIfNBM7uGYHjdPOXrNyjA1gWbM2nfmm+XE3jZ+IdWzo4GDKjXbfEcuOsEUGxbNM3f
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb3ac024-8894-4bf5-24a9-08d75d5539a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 16:21:31.4799
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xWAlMSVgxFnM0unP1J77DijpyVS6lCnVi1eK8Ge6tSOEQRTddmS7xEFzxsFB+XCeE9+UscpkIZOMGVlV5yt46g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4101
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=gIpv965t;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=cNSfJOFo;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=1993149a5=damien.lemoal@wdc.com designates 68.232.143.124 as
 permitted sender) smtp.mailfrom="prvs=1993149a5=Damien.LeMoal@wdc.com";
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

On 2019/10/30 16:15, Bart Van Assche wrote:
> On 10/30/19 2:08 AM, Damien Le Moal wrote:
>> struct scsi_cmnd cmd->req.resid_len which is returned and set
>> respectively by the helper functions scsi_get_resid() and
>> scsi_set_resid() is an unsigned int. Reflect this fact in the interface
>> of these helper functions.
>>
>> Also fix compilation errors due to min() and max() type mismatch
>> introduced by this change in scsi debug code, usb transport code and in
>> the USB ENE card reader driver.
>   Please answer my question about how a SCSI LLD should report residual 
> overflows. I think this patch is incompatible with the approach used by 
> the SRP initiator driver:
> 
> if (unlikely(rsp->flags & SRP_RSP_FLAG_DIUNDER))
> 	scsi_set_resid(scmnd, be32_to_cpu(rsp->data_in_res_cnt));

be32_to_cpu(rsp->data_in_res_cnt) is always >= 0 so no problems.

> else if (unlikely(rsp->flags & SRP_RSP_FLAG_DIOVER))
> 	scsi_set_resid(scmnd, -be32_to_cpu(rsp->data_in_res_cnt));

-be32_to_cpu(rsp->data_in_res_cnt) is always <= 0. But it does *not*
matter if my patch is applied or not, this negative value gets stored
into scmd->req.resid_len which is an *unsigned int*.
How does that work ?

My patch changes the function resid argument type and that function is
inline, so in practice, there are 0 changes, none whatsoever, isn't it ?

The problem you are raising here may exist, and how the scsi core will
handle a negative value cast to an unsigned int, likely resulting in a
value far larger than the command buffer size, is certainly a serious
concern. But it is unrelated to what my patch does.

If you feel strongly about it, I have absolutely no problem with
dropping the patch. I just would like that it be dropped for the right
reasons...

> else if (unlikely(rsp->flags & SRP_RSP_FLAG_DOUNDER))
> 	scsi_set_resid(scmnd, be32_to_cpu(rsp->data_out_res_cnt));
> else if (unlikely(rsp->flags & SRP_RSP_FLAG_DOOVER))
> 	scsi_set_resid(scmnd, -be32_to_cpu(rsp->data_out_res_cnt));
> 
> Thanks,
> 
> Bart.
> 


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BYAPR04MB5816D4B866F2E7CC421E8488E7600%40BYAPR04MB5816.namprd04.prod.outlook.com.
