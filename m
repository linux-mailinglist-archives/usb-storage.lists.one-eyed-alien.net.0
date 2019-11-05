Return-Path: <usb-storage+bncBDF7X5HH4UNBB74OQTXAKGQENNGE7NY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD9EF4CC
	for <lists+usb-storage@lfdr.de>; Tue,  5 Nov 2019 06:24:16 +0100 (CET)
Received: by mail-ed1-x547.google.com with SMTP id u3sf13915550edp.19
        for <lists+usb-storage@lfdr.de>; Mon, 04 Nov 2019 21:24:16 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1572931455; cv=pass;
        d=google.com; s=arc-20160816;
        b=IaZyFCI4BrzONwDFBt4gkNwd0ePV39reqmOxvX0aatCj5UaU9Qx+efE8igcDyNlAb/
         NjbnwoJyl1JWb2Fta91Hn5/YxO/c6ipnXFr5uIxFKQ/nUOXOOy1f7tibIdDTCPHvHWhu
         R34Bo6jpV3YJHeZlQTj0pVidOwC46cHKPFRSUwJRNREdfPamfn1mHaxlx8RHq9+AH/ZV
         rSUGmCKgOKKHQMAmtHrRWQAzxCIgwWMyqzLwyKzwG6heianlgrTlGYqLkYDmHkQ18BeV
         Uv6fpkR8Zl6ZsWIBVNpE4+67U8pphotEY82GX5E+5pZb5OxugC6OeGH+lPulRN236OVL
         5dyw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=JHIZ5QJxEy0rAkQF2654059JgxgA9mw02uZPL4Su4qo=;
        b=HWra5Sl4Y0ltlZ+be8dXp2KP1m87/uE1Qn9APE5w/V6kUDYln/FSsInXHblfNWQDLu
         BuOUQkYQ4SqvjgDLQMkEaLLJFyJIe2saMj1MEd2/Vqs7+ZoZCfmcGvUHL4c3vCz9ZwZJ
         U8mXQagVSJKjE7bKtD1FeilmfDXk3ru4SZNJry6lbchmuOBdnB7oJGdl7vWnY3XlIow9
         pxYtduJIVkU2z6Osk9qG+oIaMrHxsm3P7JOJRd5lphu4M2hmEqVZrNAptifhd0B7Ms8V
         GjQFIyrgCW22YZuFgU/RL8PHEO9amHp/D4dYZ+GICMkp1DQD0meDdrHpb1eM6k2qEQmU
         k+qw==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=qY28zXmd;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=NKymBmaG;
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
        bh=JHIZ5QJxEy0rAkQF2654059JgxgA9mw02uZPL4Su4qo=;
        b=c6F9xy04Wa64J7x18wjVJ3DsPH2cMOzS0f9FUgMyF4jkH9JhB+cJMhzJsILNbtaQy6
         xckB2q7EbeDaFOygojAm8bSbilrjP7QYoS/tfz09QwUzaU19IFzA5JDKBeCn3MSzHjC/
         vDHMbLWeb+ludpdWySSkqJclUjABdycwJQeIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JHIZ5QJxEy0rAkQF2654059JgxgA9mw02uZPL4Su4qo=;
        b=epTin73TZc7l/G2JxAxdVJu8F+acwAafxKMmjJaNKlpN/Wz5Ir8Eh9VHf5qDxQUAnG
         W15T2CG2p1XBrJumJVv/UWKt+RBPnaIIW+vVM0LwGDqA4NWm75hlNGACQvj4dIC40/ED
         04PaPrND3t0s+dbtyVJRfPDbmF8Y1hFaERt+lGVvdxsAlr/56zXMp5HYYpgpL4Y8Cr/b
         XScMAoEXWqskI1ZLK04basw5rIE5fZ3FDa4+VRCeOZ/3/HWTuN7Sr0z4pEJA2yFHD+9a
         1RS/ZBnHkszTcg59r+2Al8ITXr8IUrAjUtlrR7e6fvKvi71DM2DBvhDrBAZp9ENEDjFU
         GULg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXq0XARJyeUwcJGMcX1zNzO2H5n2B0Pr1c26/dFUUd0smK4AK7r
	BY7tjh9IVfe4tbOkwzB/7d9pBw==
X-Google-Smtp-Source: APXvYqylsw06FNDYnuWTYLhiRBcldjlZ8ldxysoafaDYnq62o8VsJwKfZQ9YQEHnRYMOP4oQJkuVWQ==
X-Received: by 2002:a05:6402:110c:: with SMTP id u12mr33864995edv.127.1572931455777;
        Mon, 04 Nov 2019 21:24:15 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:559:: with SMTP id k25ls4809431eja.5.gmail; Mon, 04
 Nov 2019 21:24:14 -0800 (PST)
X-Received: by 2002:a17:906:cc94:: with SMTP id oq20mr28182589ejb.263.1572931454792;
        Mon, 04 Nov 2019 21:24:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572931454; cv=pass;
        d=google.com; s=arc-20160816;
        b=ltxHp5+OmB76RkeY6lZOcVJLiIjo8zuVFavXq9opOGOBTm9dMzobrnE3mCtgCCDGxM
         1qD0MvOA3B+ze7IZsio2eFVsfbX+we3axHAAgAVhN5OPPO0U7u+HTJ1lkwdzbzAZeSOb
         CXaoGrSKqCCz+LuPMn8R1jbEWD8Q+WTaS/J03s+p+MheGQ+lHgqPTRxTpvJS5jdI2SQC
         eEoegLggO/Sgn0bqhFy7ktGzWdm8DYICuWl8mW2WmrQFU6VMb1nr8zkBjwErTWxeY+gG
         Yape5bp52wjmLQkWCkP5mkX9lfX+auMMmgZbpGJWAtBoSEvhhFzJ8+tKdZ6aFztnzv9U
         ys3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=nNpg/DUAi3ZPTGpMhEs6llqrA+4xa77GTilkDhFTV3Y=;
        b=SS9b2276Am36LtAUzA094YthN9EZF8zCDn+PKONEvxqkiKdgMlAazVr0NsKbKRu0qf
         rWnKqnqr7rxrPt+7Y2Ee++ObEfxS3hYRpp+BzhPg3XA7gFgvX6eQ6W0IpVBi1O4Z45nF
         5tcoFLnv3O0/ruJbB+1VSJ6KPCMaMsjv04YvmBZ2abk4KqPFKo3mkLuEJ6qQ8JUqy58+
         iPwo/B02fqp5SZB37BPNxGHTDrv9YiRop+q3dhO/KtbM8sYm7wrjAYQACxrlyK67srcS
         NVNdMTi6q6u6BFy1+OsZk5eoEZWJjfIjF5tFkqItMuiyn/bDAWg98TUqw0UBiW+TVBfK
         3T3w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=qY28zXmd;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=NKymBmaG;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=20536ca63=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=20536ca63=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id s23si7436018eju.55.2019.11.04.21.24.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 21:24:14 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=20536ca63=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
IronPort-SDR: YSuPxDkg6zrmt7b7utSaWPU/tIXhOGpyKwZGfXisrUCZaUbxfh1MQpVZs79/8xWYSUK/GVvdVv
 AWHCOwUipqvU2v/7VS2evCnsro2+TqUTrM6XgsJdKN755ARm0p6w9V1VmHZvz0q/dgJXP7naDz
 s5qBQteGcxjC1q3gC0yiwcAdLsBWFgJv+qvGJlhxpMHQPBzlvDK+lgNO5nzZ+5DMZqedBpITP9
 /p9SRaoYNrQCI2uai+7EdVY7wjWQHe9qz2H1fUs5lwAMHe1+9Pd7bMNtR8STz3WKScRf6hwQRY
 zw8=
X-IronPort-AV: E=Sophos;i="5.68,270,1569254400"; 
   d="scan'208";a="223321583"
Received: from mail-sn1nam01lp2055.outbound.protection.outlook.com (HELO NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.55])
  by ob1.hgst.iphmx.com with ESMTP; 05 Nov 2019 13:25:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QnUKTs1avwPNQptBfPGsuW5g9wOUa5dFnXdMTgmWEIMv++r/RI29wiASFVMRQ8NZvaxeRYdnAyxyDP80eF7l7GefwpzsyhHJriPAwmD+/nJuOBI+3SZPb3nYBFEgebyLsOwD7UjorZdY8l7zmsFBgGJWqS7NbhTQhUdDIsiJeO+/pF884lTl+QS8tRLJVZqLIS/0NGOAvxmYGsF2p6DQ3gZdh688f3w6lGdvFwj5gvG7ktxhUCMqMGulkyxMDG+I/IDnQsk/K9TrLXlPXPbhzD8WRjQ8lOMhsqxi1+hBk3CouTFs3Q8A+G/JSQB5YTsuEsomU+vTcCM1tXUkFA5gjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nNpg/DUAi3ZPTGpMhEs6llqrA+4xa77GTilkDhFTV3Y=;
 b=ZoPVyQ18lgqVBI2eIsWShQuhMD77PUtmZmZFlqk+SBRV19WXawPBn/SNPZi+tnCDnrDFQ3nAStzYiTFdCT0a1TuJB7yWoHO8ADYXHf5P4OrpqODFCUJXWiXjz3m9z+plHci3Ik19Sx67W512y25thw+Unbwxxjqylr8GJw4xaary8JCwtqJUZdH3ZApfA/YQXCnRPyZTWxcGiwbCOZv+xvTiWkaxhwKojRt/NgrXHWs47xfhQlw5CfCTULFeqQTaCMP9+fD8L4YQiLAkVRyWqK01diyh/FRrGLXhvbuRHk/0e4ge8gzJWcSnJkG9s2fjHoe7l/RA46ie6NSdbToWIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB4231.namprd04.prod.outlook.com (20.176.248.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 5 Nov 2019 05:24:04 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::4176:5eda:76a2:3c40%7]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 05:24:04 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
CC: Hannes Reinecke <hare@suse.de>, Bart Van Assche <bvanassche@acm.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Alan Stern
	<stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
Thread-Topic: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
Thread-Index: AQHVjwGpa2dwZOHBZEqGAzLsDczxpQ==
Date: Tue, 5 Nov 2019 05:24:04 +0000
Message-ID: <BYAPR04MB58164FF9171FDA66879E7400E77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
 <af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
 <BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
 <a33afd2e-a7d6-5584-dc26-79fb8f3d6a97@acm.org>
 <a640ee15-515b-6811-9883-48b49ead9276@suse.de>
 <BYAPR04MB581685E630A8EA91902B2F9BE77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <yq1eeym52a5.fsf@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.255.47.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 072bcb9c-4386-4371-2c39-08d761b05fc3
x-ms-traffictypediagnostic: BYAPR04MB4231:
x-microsoft-antispam-prvs: <BYAPR04MB4231DCA4184BC3033FEC1360E77E0@BYAPR04MB4231.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(199004)(189003)(5660300002)(6246003)(76176011)(33656002)(9686003)(316002)(14454004)(446003)(229853002)(7696005)(54906003)(26005)(53546011)(6436002)(6506007)(305945005)(55016002)(74316002)(71190400001)(102836004)(71200400001)(186003)(25786009)(478600001)(99286004)(7736002)(256004)(14444005)(6916009)(76116006)(52536014)(4326008)(66946007)(8676002)(66446008)(64756008)(66556008)(66476007)(2906002)(8936002)(3846002)(6116002)(486006)(476003)(81166006)(86362001)(66066001)(81156014)(91956017);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB4231;H:BYAPR04MB5816.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bq4jYsd4N0SV8QjZaY/tCP5s4KbSq/ehJ/O1n3ya91dxyRANo/iV89fe78wOC52jOXTBiGKwlsum0FDiqMJS1w9kznEYzT7hvLR5HbCsqcU6qZrbSM4FY9HzpmHA2tUyRSRKtvBClNwprTbPrrsysmrrA8o8rBxadBwkJXSkfq4OKcxK/Vlbb7qK9Q11E17/OzdGBDSdjkVuzjbKOY5/1KWACsJ1xNGs1QwVJxt5Sbkr/WcoeT/Lnpecf1rDm+oFcEgmCUIC9OlAZSgiKLdRl8ktaKBXLrYFLWEraxlZ004tch/SFkR1BYpj2prLMH5CcFLCUXsIFBxSr8LUiHFACXzDIMYquzSF0xFX5IixENpu9CyjZpU9OdGL78SITi/mNVy3LX2/wkivaqXPYcgiYRaA0lR0ZOsACIrmIVES/VQEZDyNie+xY+KboWxdIINk
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 072bcb9c-4386-4371-2c39-08d761b05fc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 05:24:04.3090
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: smresKq5DiRrrNWqWcMTbbkdnrzX5WTJ20vaNv1K1t2TWrPfMiMuzVriurjE2GCB6ciuUgpS3cdfDGhOn29qIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4231
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=qY28zXmd;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=NKymBmaG;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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

On 2019/11/05 14:19, Martin K. Petersen wrote:
> 
> Damien,
> 
>> The SG driver can make use of this field to keep the io header resid
>> as an int, with negative values indicating overflows and positive
>> values underflows.
> 
> I am all for synthesizing what SG returns to userland.
> 
> That is also the case in the context of Hannes' SCSI result revamp. I
> would much prefer to have well-defined and consistent internal kernel
> status fields and then transmogrify those into something compatible with
> what userland applications might expect. As opposed to perpetuating the
> train wreck that is the current scsi_cmnd result.

OK. But just to clarify, do you mean changing struct scsi_request
resid_len field to an int and considering positive values of it as
underflow and negative values as overflow ? Or keeping resid_len as an
unsigned int and adding a flag specifying if the value means underflow
or overflow ?

I am rely surprised that my simple patch resulted in such a big
discussion. But if that leads to code improvements, then let's drop it
and work on a new series !


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BYAPR04MB58164FF9171FDA66879E7400E77E0%40BYAPR04MB5816.namprd04.prod.outlook.com.
