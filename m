Return-Path: <usb-storage+bncBDF7X5HH4UNBB37KZLWAKGQE4SHI2HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id CA04AC2BCA
	for <lists+usb-storage@lfdr.de>; Tue,  1 Oct 2019 04:09:53 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id h189sf10229748pgc.4
        for <lists+usb-storage@lfdr.de>; Mon, 30 Sep 2019 19:09:53 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1569895792; cv=pass;
        d=google.com; s=arc-20160816;
        b=flAragf2++UF7/lR/3Bg55JBJIFUO3BT5HR8+NJvf/10EGiH3cYJTzSwD60EFwqk0Z
         VO9TWtQdhKX5zgfRegv7teoj4WcG6gz5AWU0u2GZY+Jk6IpLRCMDCOFJTz6ZXFBwP91U
         2s5PfVIzHw5ok4V8u/98PZx6NHkgCHUNJfQqTfyM8JTVyAgFX7bCyeum3qnVxs19cJaS
         YvvJhgYJITsG0lgflK5QDqSX/kXpzyMH8fDl3oIRJ7Tn/gxyXTjy0RrkjVFTGs5SCtZx
         cTpmt2F5JevMQ0WNYxcIQxfLhoEnGPZgiI/z7+wXySOCvI1Ce16QIAmpRaimQ4tyonNI
         DlMA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=bkremCRHR5dAcQLxdUdkz0LtiNVo5KFlTOOZgfYa0ck=;
        b=HpHD6YLhTFfYiFH/4cGEXA6lkCtr7GLAQ4v6/w11kM6PVJZMbticGqBM1d6IZWUlY9
         C43Z588zGQ+fZD+yRlFr6fNm8AY8eDWzWs1DkTTrvMUuBR8zWMW+96/neW/I6u6lxotb
         lnGMlyiNhTFZqpRdbd9JbVaXI6wnHgoFh9ymytvj0KZkTw3APZhSV26aZJzJpBJYjelZ
         dLwXGRvA8rBBO8Fp0Wb67iX2VldqEVxQkXV3ocujGIpJ6kFt2uCmuKZ32l5DqRTlBsee
         N7onztp5QtKnjrs1StIGDin04VUX03oHwE2ThSxj4Iyw0t9niKEgpjmLZwEXUzHSm600
         NIaw==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=FO9fCVj+;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=CSN3U2oF;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1703f4a22=damien.lemoal@wdc.com designates 216.71.154.42 as permitted sender) smtp.mailfrom="prvs=1703f4a22=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bkremCRHR5dAcQLxdUdkz0LtiNVo5KFlTOOZgfYa0ck=;
        b=WQZd7zHy01NFkgM0LMh3k00oOnJXt+WtgoNIBWyxfr7FNp+9bSm30328htONP/TEbV
         pWYwahGNec9JHlDG6e+B12aHSeRFGZKULG+kSJmApT1iNoiMMi1IUMGJi8xvVYeMYHCO
         v2D9Fhh5cOjVfJRZrF3k18VSNJXb0c4rvUw0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bkremCRHR5dAcQLxdUdkz0LtiNVo5KFlTOOZgfYa0ck=;
        b=Kznq+71x00yP0RVPAhmr5FuHALhY1/JP6PidGQV/gTAHDj0r4/AA1kp9r7c7nlIqTL
         j1wiU9Rk3skKwMLXNUVPwrB41ZGXyGW50afA1Q3VhIYfzWhDj6XoGyutVg/Cj3gcij4I
         jGtesuDKhrmun8ZaHGxDnGM7qf0WECuUjaXYybySuWfPRyE6chgHaz/852wjzSiT62T5
         L11oMMAUKWqsbwy+UN2W7ry1LvswHDfn6lu+fbosVUSD5ZJQmuK+n54NQJKA0IWFELq2
         J3L2uFF9ZhrK6VLSPzL8RE6sjgThHC7+vtytUkx+dcrsSBk4fpOSCOWO/MVSrZP62TJV
         MQqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWGqoJyICos/kMBTQ0BnPG1vVXpUdM4FRsgqk/lsijyBNeXJhT2
	oijpR7uRGFoT+L9xKpUH5ctfew==
X-Google-Smtp-Source: APXvYqwjri9FfJiz0c8hUC50G+eUhhiKOU6KchmNtHWCBZCEBXrLaTvpuYgLyvgNvdPqaY73X0bqVA==
X-Received: by 2002:a17:902:9a84:: with SMTP id w4mr22976752plp.186.1569895791938;
        Mon, 30 Sep 2019 19:09:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d68f:: with SMTP id v15ls3083762ply.15.gmail; Mon,
 30 Sep 2019 19:09:51 -0700 (PDT)
X-Received: by 2002:a17:902:8c8d:: with SMTP id t13mr23741034plo.258.1569895791225;
        Mon, 30 Sep 2019 19:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569895791; cv=pass;
        d=google.com; s=arc-20160816;
        b=FjE/apl6ip+dlj7YvPhFeXk7GynHt6KSWelgSWKiwyxkOi119rInj/ZwZTzNW36SJU
         zOAiCKkvssKJ1wE+xBl0HtZr764s3Ff1H/kOffjzcxNvV173AIG2cUVl+k5smSeZiawl
         4TeyFdgGBWFuXySoTQ3q2o2q5StVqiXsYQI9Y+N+w6JHvI7C3CyJEpp6izCRyJRwaRTM
         qtlU5Aa8kwLr1fBUwjJ7IRaDqmL+cdm6jWcT81SjyNchjUMjJoEhPJOf+sTsXJrHL1TC
         WoFDgfqc0b2P2xUhWyoILYB+dLZr76YqsTePJBbRPizG9oGjxeFgzOrmZzzg+DNtyHXt
         yt7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=BRhuZcN1E/O4xAIEIK5Lr6AVcdJOpZNP3j+CspGWVo0=;
        b=xd0F/wmAnxaT03pAnrK48y9mH9sMqrIixCcjNsqz92hQCtnlbm7ZpGvU2e3j+Kdh6h
         Dw+5DbZAFZoe7UzXqUhv+kEDqIzLdFATEwGHG6htFczl5zKJG0EwEE7uiydDsZ+FGCj5
         zbIsQcXvnjSmFS3Ik4afa8AFJDbNyRKVlxkdfXZPXjQSAiP0DsRpbxKV73hZQcvA9Dzo
         o/5Xp1iXKHwZ0YYMF8VjCRxs4mZm21N2/HwSsS3osq1xrcJWDSe9Hj9CiA2X2Wsub5EM
         aYNe7qAUj4zCM0fdZ6J7PlhYq/fRmN5pBZ60xNj0KTuW/HBg5+ul+OdPyKEPpothDYHd
         XhJA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=FO9fCVj+;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=CSN3U2oF;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1703f4a22=damien.lemoal@wdc.com designates 216.71.154.42 as permitted sender) smtp.mailfrom="prvs=1703f4a22=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com. [216.71.154.42])
        by mx.google.com with ESMTPS id m21si12359118pls.85.2019.09.30.19.09.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Sep 2019 19:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1703f4a22=damien.lemoal@wdc.com designates 216.71.154.42 as permitted sender) client-ip=216.71.154.42;
IronPort-SDR: aHMxlB1lBiVmaLKxCxphi8HjV5obV4QAHYMtJR0pXbdpR7zZVW0n9jLa1ITS4Kf2hNEfYt7lNO
 2eVGtETat5uLCAA0yiZclX1VwM+Hf81w+6R4b2wJZWI3Fwvz/NUa8djHXok3MLiaQZMuEK0Vtq
 3Cn/247A6cfEzM/nyogj8mXJszvAafBlNctvVV7PCszOm6TlUwGGRzVY7d6YMJQtpl6F8SlvdB
 fk3WkMnXGr2w1A5jWuyC3Gcs8L3rtuIOslgCXR0tKy3KVLtVxsScUTt94sfzycUkihlqakICVZ
 /eQ=
X-IronPort-AV: E=Sophos;i="5.64,569,1559491200"; 
   d="scan'208";a="119490020"
Received: from mail-sn1nam04lp2056.outbound.protection.outlook.com (HELO NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.56])
  by ob1.hgst.iphmx.com with ESMTP; 01 Oct 2019 10:09:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GIabU/iG/3VLv44gXth+6ABGnpRaJX2iC2qHHJ0j6XzRuSNBTF2KuX/Tp4W2WtXWL89h4IeHU/TLmh9LfdQgI7pBCgt3oTEXfI2JOiRF7N/upgDODSNKFdTi51daVki2UGZaaRdEjLKd1ZAjvcsqA77b4yBdqJJkCyjogfp/r+3ir+4ZstsC65i1Gh2+nD7GAXa4/2RaHHCOo1AVYAqihDHZzleGVhAK3p8RtuXSlBFMiSGwahIPUQ2pcW7TgN+8V0NRPHJP+he4C0ml7Vf/S07u7YGW/ZqwWcOwK2bXmpJrtUOhgx44j4iiMrqU+gSL63OSnYeZE3xcvn93ndYmnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BRhuZcN1E/O4xAIEIK5Lr6AVcdJOpZNP3j+CspGWVo0=;
 b=e/9BPpDUsw4lRIGHMRDLOwT6iZ8n3OFCfZog+IE+otAIiWow4iMsn5um5kvZzH4Ba5dutfE1j1iboEhhybBvM2fkIqvKHnaZBVfDcfiBBHqbd3Y2EYwbf1WfVRXAJksnU91qR5x6kgH47RCMxETu4ZKT6vLO8aR86FaDpaC4puy7xEYRgxuAuuQmR58orY8W+vvMAmUwG7Er6qsz8MkPi354CqgqXIjaOHqXJLVUyeAt+pmy7fTwS++Hqvvff/rJfNvYeyUga0aJW+14reOedk7p65cW/YbABIKaW2SqNYHSbpXhYv4Btgadi0EjP6JzoDW7y1+pdaIqIP1kRblLeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB5480.namprd04.prod.outlook.com (20.178.197.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Tue, 1 Oct 2019 02:09:43 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::84c4:833e:ec0b:5053]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::84c4:833e:ec0b:5053%2]) with mapi id 15.20.2305.017; Tue, 1 Oct 2019
 02:09:43 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Finn Thain <fthain@telegraphics.com.au>
CC: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, "Martin K .
 Petersen" <martin.petersen@oracle.com>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Alan Stern
	<stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH V2] scsi: save/restore command resid for
 error handling
Thread-Topic: [PATCH V2] scsi: save/restore command resid for error handling
Thread-Index: AQHVdYErv4G7y50U7UCkETxGlX0DaQ==
Date: Tue, 1 Oct 2019 02:09:43 +0000
Message-ID: <BYAPR04MB5816FBEE392BE5E4BCF14B96E79D0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20190927221602.27080-1-damien.lemoal@wdc.com>
 <alpine.LNX.2.21.1910011011410.13@nippy.intranet>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.175.114.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89ec00cc-df26-4eca-1140-08d746146cff
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB5480:
x-microsoft-antispam-prvs: <BYAPR04MB548055E69FBD4356C93C752BE79D0@BYAPR04MB5480.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(376002)(136003)(396003)(39860400002)(346002)(366004)(189003)(199004)(54906003)(7696005)(102836004)(6436002)(9686003)(229853002)(86362001)(25786009)(66066001)(6116002)(2906002)(3846002)(186003)(6916009)(55016002)(6246003)(76176011)(53546011)(6506007)(478600001)(26005)(4326008)(5660300002)(8936002)(8676002)(14454004)(81156014)(81166006)(52536014)(99286004)(7736002)(316002)(91956017)(446003)(14444005)(305945005)(71200400001)(74316002)(76116006)(71190400001)(66946007)(64756008)(66476007)(66446008)(256004)(66556008)(33656002)(486006)(476003);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB5480;H:BYAPR04MB5816.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CcvJ1ZHkptQtlPtwAeyoR+LvefESzrBxnRXfs3cRrw/K+jQrqgSkQq0wO7UHwrGxUsT2Z5ZhbJ4bXwM6PJQP/EFXAHjYEqQQ03y53sp4nX+b0Vmu7EgHFPY1dB5CGl9HUsxrs7+LmpGVH5sVB9CCVVvLUz2KjrtnClebKTaPwrwWOGrcIiAZx/XwpSsOCJrhGUKXX4YN2G5JzEHlsna+spcPVS3kFziyzJPmO4Z3lPHaHI2A7QMk59/wH9jL1AHR9c6OuZ4lE1UtKpRMGR7V6ib+YUSGeWeL6dDTUrOTzgopvB121bC1uxmWIjsTK66N8+PxZ4TQVpwgVhwXDt/Ndv1oXWvxp1nfqHNCiAIsagMVFPlON5LZqLJaPZM73DCuvmI7kn1wmXWA/LOqL5ct4wxTw6jCs8kOf2Nz9q1ZlXw=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89ec00cc-df26-4eca-1140-08d746146cff
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 02:09:43.5951
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x2tVsj6sz4xpx+7dzOJWENzp/qpG+s4r3OuK356QH0BqgqeBRxHiTifHXV3DNd8OYwUFA6iVZuLSUwWrSouwSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5480
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=FO9fCVj+;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=CSN3U2oF;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=1703f4a22=damien.lemoal@wdc.com designates 216.71.154.42 as
 permitted sender) smtp.mailfrom="prvs=1703f4a22=Damien.LeMoal@wdc.com";
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

On 2019/09/30 17:42, Finn Thain wrote:
> On Sat, 28 Sep 2019, Damien Le Moal wrote:
> 
>> When a non-passthrough command is terminated with CHECK CONDITION,
>> request sense is executed by hijacking the command descriptor. Since
>> scsi_eh_prep_cmnd() and scsi_eh_restore_cmnd() do not save/restore the
>> original command resid, the value returned on failure of the original
>> command is lost and replaced with the value set by the execution of the
>> request sense command. This value may in many instances be unaligned to
>> the device sector size, causing sd_done() to print a warning message
>> about the incorrect unaligned resid before the command is retried or
>> aborted.
>>
>> Fix this problem by saving the original command resid in struct
>> scsi_eh_save using scsi_eh_prep_cmnd() and restoring it in
>> scsi_eh_restore_cmnd(). In addition, to make sure that the request sense
>> command is executed with a correctly initialized command structure, also
>> reset resid to 0 in scsi_eh_prep_cmnd() after saving the original
>> command resid value in struct scsi_eh_save.
>>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
>> ---
>>
>> Changes from V1:
>> * Dropped patch 2
>> * Add resid reset in scsi_eh_prep_cmnd()
>>
>>  drivers/scsi/scsi_error.c | 3 +++
>>  include/scsi/scsi_eh.h    | 1 +
>>  2 files changed, 4 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
>> index 1c470e31ae81..f53828bf7ad7 100644
>> --- a/drivers/scsi/scsi_error.c
>> +++ b/drivers/scsi/scsi_error.c
>> @@ -967,6 +967,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
>>  	ses->data_direction = scmd->sc_data_direction;
>>  	ses->sdb = scmd->sdb;
>>  	ses->result = scmd->result;
>> +	ses->resid = scsi_get_resid(scmd);
>>  	ses->underflow = scmd->underflow;
>>  	ses->prot_op = scmd->prot_op;
>>  	ses->eh_eflags = scmd->eh_eflags;
>> @@ -977,6 +978,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
>>  	memset(scmd->cmnd, 0, BLK_MAX_CDB);
>>  	memset(&scmd->sdb, 0, sizeof(scmd->sdb));
>>  	scmd->result = 0;
>> +	scsi_set_resid(scmd, 0);
>>  
>>  	if (sense_bytes) {
>>  		scmd->sdb.length = min_t(unsigned, SCSI_SENSE_BUFFERSIZE,
>> @@ -1029,6 +1031,7 @@ void scsi_eh_restore_cmnd(struct scsi_cmnd* scmd, struct scsi_eh_save *ses)
>>  	scmd->sc_data_direction = ses->data_direction;
>>  	scmd->sdb = ses->sdb;
>>  	scmd->result = ses->result;
>> +	scsi_set_resid(scmd, ses->resid);
> 
> When saving and restoring state, perhaps it makes more sense to bypass the 
> higher level getter/setter API? Open-coded assignment statements are 
> already prevalent here, rather than calls to e.g. scsi_set_prot_op(), 
> set_msg_byte() etc. (There may be no code elsewhere that could tell the 
> difference, but we can't use "private" members to prove it, unlike C++.)
> 
>>  	scmd->underflow = ses->underflow;
>>  	scmd->prot_op = ses->prot_op;
>>  	scmd->eh_eflags = ses->eh_eflags;
>> diff --git a/include/scsi/scsi_eh.h b/include/scsi/scsi_eh.h
>> index 3810b340551c..9caa9b262a32 100644
>> --- a/include/scsi/scsi_eh.h
>> +++ b/include/scsi/scsi_eh.h
>> @@ -32,6 +32,7 @@ extern int scsi_ioctl_reset(struct scsi_device *, int __user *);
>>  struct scsi_eh_save {
>>  	/* saved state */
>>  	int result;
>> +	unsigned int resid;
> 
> There seems to be an inconsistency here. A signed int would be consistent 
> with the getter and setter helpers. Whereas, if you open-coded the 
> assignments instead, your unsigned int would make sense because 
> scsi_request.resid_len really is an unsigned int.

All fair points. Sending a V3. Thanks !


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BYAPR04MB5816FBEE392BE5E4BCF14B96E79D0%40BYAPR04MB5816.namprd04.prod.outlook.com.
