Return-Path: <usb-storage+bncBDF7X5HH4UNBBE7L37WQKGQEZASIOYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 715D7E830E
	for <lists+usb-storage@lfdr.de>; Tue, 29 Oct 2019 09:17:24 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id y20sf8160906edv.12
        for <lists+usb-storage@lfdr.de>; Tue, 29 Oct 2019 01:17:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1572337044; cv=pass;
        d=google.com; s=arc-20160816;
        b=ff3YzYmyI3ZLDmJjfraNDqsEOexiNCxQ0WWZShR3q7oMpLNW0xYH8iEl/03gQmVjjS
         4L7UtYgTge06WBxLfscnNnGFn82wLreuSTI/XgVhn0WbAW52KQ3ZQDUI0VDldNFHVl1X
         iYA5WvT7eBvWMUkgpA7yVUdcUmdgLvDkUQHV5dKWD2v4z5faN1t20aMi7UViW3TZ77hq
         PfKV7bGRiBjlakyBWnWC3t9zbhnp2hb6+/fidhOD7KVKzpVyqOVDqa6Tf6o0B2Gj1bmt
         7b5ysfzMFw/PfPcPYTV2RhjRZAcncKJJE9kZqDE+B4W0GzIUYyzIbaGPB86fAKalcfC0
         jCfw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=ovE7ZgSeKyTNDgy7jswvbfnKOP1kxZGozlgIaWjj+Nk=;
        b=ABFQyOkEEoHYjbJgBdBx000U66fVACmKnr/rsbFJbBnFX3zncXF9LG387jkS2MGE5R
         Vh0vYw5qTHObEO0WUaqODRAdN8S3b0xhm+Gi0V9MhhaK1njKQynVZas0BIS9GqrTkHlA
         aI30CeBwMGkeeEBQLNmNM0YzPRd/7sIASZAyY0L8ERAYXIzThpTrdtBpP4MCs1P7gSgG
         A7Ak15XUF/DGe3nSyOs2nTYh4h+06Zv1HhNsPfxvm2/jNl+krayjiI25ntfRrA2nohf/
         3oHpyhPtJjgbD0P47/sY8AHkMbT+e1oWPSMDWpCP8B0TwzOKVXvxU7q3FdfB/ZxgSVZG
         3Ilw==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=DFA3LfF0;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=cJDbleUm;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=198f46ef8=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=198f46ef8=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ovE7ZgSeKyTNDgy7jswvbfnKOP1kxZGozlgIaWjj+Nk=;
        b=egfoMrNLlmIAlnLiW6dfLnKIyzaV7oCfSIuPEWW8/+arVvBIHlF6PL4Bpmv/rp+lKF
         43A/ZO0g7xSdEt30Oi70heTP2bQ/mLZYNiGcvULR3UcPy3xF0IFUpvzlHXcMZpUhM/oa
         Uz9Z7Yc6QGXwoORPZspwGSidhRIXX51u81tSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ovE7ZgSeKyTNDgy7jswvbfnKOP1kxZGozlgIaWjj+Nk=;
        b=ALYwUoHPsj0Wn1HZzKWT2WFZjqjZsMVONXqiyoeufS6hVlfb394Cl9whaxARIlNzJh
         iJ3Oaj9NoFpjlEeQEa34/bo10jPO9i76h3oD9ze1YzVXVNXG91rjtFmOmey1Zyjt2JCa
         g+T6YfUUMvlY98RHOKLfS+5XtY1SezzFtV/F9jOJCs8HXFW8Lo8EG4C0tf49Ud4RYfui
         uUpKM9z7LkUUX7reZdC1+IdYqCig5LJ0XoOXEE+sXL57RtdmyPfAhunIXY0xSAU6/6dI
         Qn3deAohMmsPbh2hBpXecS9xarfez7hBicWP25JiVaecyTD26KxMPXXrUYkKSo4mPwVN
         eFOQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXLrE2eN6XJebEf6+o+XimWyiqpLaTTInPk6BrfYs4n5pnQW080
	TsPWAe+7vBf/YyxzFAx5aH40PA==
X-Google-Smtp-Source: APXvYqzA52zcvMSTNirBc2qPuAMwdP4ftjar+oBD7IpVu31dnYJYtd84EPNxDhnGceDIaZxyD3h7Zw==
X-Received: by 2002:aa7:c155:: with SMTP id r21mr1853966edp.296.1572337044114;
        Tue, 29 Oct 2019 01:17:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:cdda:: with SMTP id h26ls1663067edw.8.gmail; Tue, 29 Oct
 2019 01:17:23 -0700 (PDT)
X-Received: by 2002:a50:d717:: with SMTP id t23mr23956227edi.231.1572337043133;
        Tue, 29 Oct 2019 01:17:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572337043; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzihGO/ZvqM8lkSvzYV+6nCZ+gjV2GoUewjXevHfXg0zkof82d2MpJg1l7hsSaMFEQ
         UR3bGA/6FiCFFJoKIusnjNxxL0xMMaivnTusYJmIDkJ5q7FA1K+FIQFLeAAN7dQUlOha
         EcrQ0jZDxHLALoEa1Y5AHGBlDw2OEGNCl2iO1Jp32CQt/0VwwG8tDd4O4Y43JMRqtI0D
         zb0Bbt1NrH7fK2q8dqtL4zpoiCCvCneFzKMqPxy/6u0sBPdhiDSnEwov7nn9vQdr8SDp
         IrKgxhjYAPLBC0OulB6pHsX63MU7Dcsrf0O5vptyTX4E2ulPsUyE4CxYpwv4VwQVoQ84
         cpkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=FEUG2Sf4F/3LQDjC82Ne2l1gAYjH07MkHV8IcqBdHAs=;
        b=j74XzPnu7PbzksNvxm1UE0ygyERjphtk9kQfpiLDq6Lctjr1LB4im+o40SZYw4z+EL
         uAzvX3J0GdZxDrYSW5Iqq4AzfDVXIRCONF58n/FNMLg4WLXUh9B1Z9zRCQYfxGfeRg2s
         Exxita0qadNiYG8/8kY/AGzn1ZK2lRs5yK6av2+HQ3/HtmG8XLIHN/CfJ094snNDqOGA
         KRhsXQDblXsGM8N64cyXMTIDTlYSaerSoC6kwpCFSF2QCa4IozradxcacMOVynMQ17SQ
         qpFTeJb7mvUAywhPJcRg0UdQR6SmSbZZf7zcoOVDgbw50va15M2iBm8HFmR6OPxOhwuN
         R+kw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=DFA3LfF0;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=cJDbleUm;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=198f46ef8=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=198f46ef8=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id gz25si8131466ejb.81.2019.10.29.01.17.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 01:17:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=198f46ef8=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
IronPort-SDR: lnMriUzBrY9AoSGeGqtDftUBEhpxc18+yZbQnY5MzkgiAPTzVT5EUj7Rnsr0vKlv4NicIqszt7
 LPwiiqLjYL572OhGF0htJh/jgX5aWczX/Uvi8xXpH9FhVrylLWq+BfhUiYy7s1o9+ELgWDnoev
 zYsxOv5sE+J1xYVuLyq1IW0K/vrTEPDProxJzfq8qun+vik/QivqA9rNuOvQm71bY02YRSvaBb
 ++o4RS1y7iRMxv1nYCVsvlFaWp/5z2v86KHNshV20OBjxifeXvp06atRq7cWhTAl/6yigEv4w2
 rVg=
X-IronPort-AV: E=Sophos;i="5.68,243,1569254400"; 
   d="scan'208";a="123158393"
Received: from mail-bl2nam02lp2053.outbound.protection.outlook.com (HELO NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.53])
  by ob1.hgst.iphmx.com with ESMTP; 29 Oct 2019 16:17:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ne+YEUiCiXy110Ezel/md0cmGBs8EcgUzOlxWzvBbqDvHuh38uGBWkwiv9BKJKr/L+Ldf8uN4D237j/z98CYb4G5WbUsCj2SLS44tamUPDSkyWeTHHo5Orsji2p1b17fqgYqoxjzZLKdYGBVNIz034AuLs+XfYxatOayiwBJuNJy7lG3//5HeFUDGDUQQQenl5rOFIaUgHQ6pHxCmnrJk6KTWzxDbmgR8kmhdRXLV1P6RyaMM1fj2YfrfyNrmyVKgyl23aN9WHNUAdnmgj/0n4ncO9NKkaaLyI4pzXk5BcZuFqiur7yoQNaCY34kDqsENnPVxIajvmUcT+mow0DeWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FEUG2Sf4F/3LQDjC82Ne2l1gAYjH07MkHV8IcqBdHAs=;
 b=hubiXZJeydKDEVTLxSCc5uPELfGnmJd1/k+pSCGTqjrtM0fbGDu1MAFVMLTbbwb/oW//892hfPxAo2z50VNVh/eYJml765SZkVfXJty4svyRh+6zs97UMl3+BBghtzRzheoBGCbqhyMnEMKp6u3FncYJhHv/PLie/axD/hCh0Ukba9SUaoZ2VX2eN+rsP0iv7XMciJJ/wD/eOuydjSt24luckLUb2eDU4+mBecVYUDq4EsGF8TUDmMs/XNGHytSkNeGmmGZQTx4Y8CuM3fN2ZCdMuwtrq8l2RP0McDq3Tyh4uGDXmdLncvjl2z5Be+qM9FAEdmlvQP1GEWMLZfYICQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB5224.namprd04.prod.outlook.com (20.178.50.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 08:17:18 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40%7]) with mapi id 15.20.2387.025; Tue, 29 Oct 2019
 08:17:18 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Alan Stern
	<stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
Thread-Topic: [PATCH] scsi: Fix scsi_get/set_resid() interface
Thread-Index: AQHVjX6FczFTAsffsEmaAwnX4owuoA==
Date: Tue, 29 Oct 2019 08:17:18 +0000
Message-ID: <BYAPR04MB5816FF25422E60C168F78308E7610@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
 <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.253.240.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 17b65504-caf9-4aca-5833-08d75c486a50
x-ms-traffictypediagnostic: BYAPR04MB5224:
x-microsoft-antispam-prvs: <BYAPR04MB52245083FCF2297A131C500DE7610@BYAPR04MB5224.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(199004)(189003)(6246003)(33656002)(9686003)(3846002)(478600001)(476003)(486006)(2171002)(4326008)(86362001)(26005)(446003)(25786009)(71190400001)(71200400001)(6116002)(316002)(2906002)(256004)(2501003)(14454004)(7696005)(7736002)(229853002)(52536014)(74316002)(66066001)(76116006)(186003)(8936002)(6436002)(305945005)(99286004)(53546011)(6506007)(91956017)(110136005)(102836004)(81166006)(81156014)(76176011)(66946007)(5660300002)(8676002)(64756008)(2201001)(66446008)(55016002)(66556008)(66476007);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB5224;H:BYAPR04MB5816.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lsM5sOdnBekAxT35W6AWTCHmLtaRnCM8XSEICm1XH6S4aPdSv1YlPfsodya0ANa4tHmqTFAvHr4W2DzcVWSMDlNhcKsc+I6/12BWcLcfOsnLqliMLI/WlwAtCa2shEP4yun1Vz7bCQiz0gQIfQkqcTJZayId+sF5YV1YGF5Yzsu/1AryfWav/F7Nbyp0hmM3pIYaPaya6hfpoc9Y+CJzU8OFmyNiYFCOSIRyw7DChsHGopRox9XRzjrZEFk6PAgpiAu3ANir9u9MHLJp4ibe+vt5rLLaVYy5+J0lJ6SmtEp3C/lu5KcUHdoAeC5idrFdKUWehDBveERZJXEaJ2KlzSpGrGMVL7YR3sB7Sa37UC9TUe5J17dVbo2nCUSkuiSXCrvHetfEjAp8FHTLNBkBjZXJFRGCt4mSEflAk8cnca54sTaKPvkxMwslNAM75/re
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b65504-caf9-4aca-5833-08d75c486a50
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 08:17:18.5226
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JKw0LHdGRcNehqRE7ftEGjKm1WZ7AO/6bSbVZIYOAEmB/Hjnd6XSButSabfpFm1+N2VFP7cAc/XF3M5tjQoPyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5224
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=DFA3LfF0;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=cJDbleUm;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=198f46ef8=damien.lemoal@wdc.com designates 216.71.154.45 as
 permitted sender) smtp.mailfrom="prvs=198f46ef8=Damien.LeMoal@wdc.com";
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

On 2019/10/28 21:38, Bart Van Assche wrote:
> On 10/28/19 3:57 AM, Damien Le Moal wrote:
>> struct scsi_cmnd cmd->req.resid_len which is returned and set
>> respectively by the helper functions scsi_get_resid() and
>> scsi_set_resid() is an unsigned int. Reflect this fact in the interface
>> of these helper functions.
>> [ ... ]
>> -static inline void scsi_set_resid(struct scsi_cmnd *cmd, int resid)
>> +static inline void scsi_set_resid(struct scsi_cmnd *cmd, unsigned int resid)
>>   {
>>   	cmd->req.resid_len = resid;
>>   }
>>   
>> -static inline int scsi_get_resid(struct scsi_cmnd *cmd)
>> +static inline unsigned int scsi_get_resid(struct scsi_cmnd *cmd)
>>   {
>>   	return cmd->req.resid_len;
>>   }
> 
>  From the iSCSI RFC:
> 
>     SCSI-Presented Data Transfer Length (SPDTL) is the term this document
>     uses (see Section 1.1 for definition) to represent the aggregate data
>     length that the target SCSI layer attempts to transfer using the
>     local iSCSI layer for a task.  Expected Data Transfer Length (EDTL)
>     is the iSCSI term that represents the length of data that the iSCSI
>     layer expects to transfer for a task.  EDTL is specified in the SCSI
>     Command PDU.
> 
>     When SPDTL = EDTL for a task, the target iSCSI layer completes the
>     task with no residuals.  Whenever SPDTL differs from EDTL for a task,
>     that task is said to have a residual.
> 
>     If SPDTL > EDTL for a task, iSCSI Overflow MUST be signaled in the
>     SCSI Response PDU as specified in [RFC3720].  The Residual Count MUST
>     be set to the numerical value of (SPDTL - EDTL).
> 
>     If SPDTL < EDTL for a task, iSCSI Underflow MUST be signaled in the
>     SCSI Response PDU as specified in [RFC3720].  The Residual Count MUST
>     be set to the numerical value of (EDTL - SPDTL).
> 
>     Note that the Overflow and Underflow scenarios are independent of
>     Data-In and Data-Out.  Either scenario is logically possible in
>     either direction of data transfer.
> 
> If the residual is changed from signed into unsigned, how is a SCSI LLD 
> expected to report the difference between residual overflow and residual 
> underflow to the SCSI core?

As mentioned in the commit message, cmd->req.resid_len where the resid
is stored is an unsigned int. And it has been an unsigned int forever as
far as I know.

So I think changing the interface to unsigned int makes sense in that
context. Also, unless I am reading this wrong, the above definition you
quote always lead to resid >= 0, so I do not see what problem you are
worried about. Could you elaborate your concerns please ?

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BYAPR04MB5816FF25422E60C168F78308E7610%40BYAPR04MB5816.namprd04.prod.outlook.com.
