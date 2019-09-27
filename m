Return-Path: <usb-storage+bncBDF7X5HH4UNBB75JWXWAKGQEQUPDQYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id A2259BFC38
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 02:17:05 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id b17sf349615pfo.23
        for <lists+usb-storage@lfdr.de>; Thu, 26 Sep 2019 17:17:05 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1569543424; cv=pass;
        d=google.com; s=arc-20160816;
        b=BWOREl4x1WitmGY7xya4YCEIKmfq33i2+hO7hDozCatohn7FT2q/CM7nC2z1dVjEb6
         YTTFvljEspCDs6OedfUpJr1dWRXPsVBqdOW3BJqmVJiDzd5qB3Co9hYYrbz7rXNE4Gk7
         3f4y3e/9I6TIbDhuR+j0pI0t6NwxKCSbRH0V1TkyWpSC2DX2YhbACzMMz2lPEurgdNoF
         Ze3CkZu9K9wb+i7x11EiJsR7fFXbMsZDNGEZRh0pZRM58m/VbNBp1rzI27SytWqHrpil
         9/2afOQK5OxsoG85rsQqVtSCnbW6QqIX7NaIsU/jwF2fH9/9332Dm6usSeC9aaZzDv+4
         vT1A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=RA2EFef7+MsIQivp0qVR5ez7G7loiL1jskVxa74AitI=;
        b=oUTr5yGUO9pJgy6ZwMnCN3LQoirEVlAG2xRA8r0yWOZUs+SKzqJct2orbCCw7BP0Rt
         DDawXqE2T+xqOmYHAgYwo084OmqruV4+S8mJGTYr1v6umPNngApzGACMNuc40CgMaQor
         3zT0+mC+6MfnCmLbbA2c9jpkfwQiT67q8C4wQnqA2UYtVlGU+lY2bPq0TpFoUXHq6xCQ
         3Mb+Qho+DYSfp0oDqDPR1+h2l4hAXlVzLcIc2eG960v8Kdd+8xQ9+4HGtFo3xah8g/nz
         bVIz1lO9RJlhmGS0yErJpBjI+AWVEI9iPZtNz1j98Q1uM6JqzQomE3GkKp+sz6oxoUhp
         8u4g==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Bhf6+OGb;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=lg72dhEY;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1668f5126=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RA2EFef7+MsIQivp0qVR5ez7G7loiL1jskVxa74AitI=;
        b=LA4zSdEj5jciKrlzgvfvRAavO8G1wVeMQbt7PC7TJCVUsWlVB40czJk5u7V8h7Hjgg
         SeyEY1zq7hqYIG1AMjbWbw4GDkph0GqyTZDoBg7LxzhwUo8oxt2cdcCB7NDuqE67vURi
         cyZLWCpR3Kos84gEG5kMz9h8ZhmwOGPoBHbXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RA2EFef7+MsIQivp0qVR5ez7G7loiL1jskVxa74AitI=;
        b=T6AC6J41Yv8rM8sy2o7wddqCDvhTBd35C+nYr1/eAuZejBOTu0cdkqHosMS28z6Hog
         7NC7etiuHATs3h2T5+ln/MlIZxdl84THQCazHFVCkHvK/byefQLt4RZs5ZQ3MLE0oMe6
         Z1Xj0e0UAB1VGyyOYBYWFBNNKf1/i30Ob/v9VdjqBYda2koKwGZoiDj9J8vgs1Nxj3Jg
         biwI/J9k8x3EYVBG1KEpLT+B9TfTquHs8+EpMpcwBW0gUkDfbtGqzWyaPSNEZngN690a
         pB77MgHKy558FBsuk50fD+Xk6RHL9gtEbAOXtRJqoTWNT/CzkeNAX0z4lgmWusTXISiG
         gSNQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXDwyJRSzLhPCo2as6KmK2Ea58t5FssrA7vfVJ60oR6AKNtsskf
	yEzZynxW2nuiNCQ8Wzn7za0IbQ==
X-Google-Smtp-Source: APXvYqxOUQzdvc30bfVu6OP2E3eQeEJOKR7JLYJ7s4v/OJZWP+JDsUHyIN5MU4NeDTYc8+Xtdcbn6g==
X-Received: by 2002:a65:6550:: with SMTP id a16mr6322218pgw.115.1569543423430;
        Thu, 26 Sep 2019 17:17:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:2a11:: with SMTP id q17ls894507pgq.4.gmail; Thu, 26 Sep
 2019 17:17:03 -0700 (PDT)
X-Received: by 2002:a62:1ad3:: with SMTP id a202mr764377pfa.75.1569543423006;
        Thu, 26 Sep 2019 17:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569543423; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q6NyqwUpD+WqtlTr/FlNZI9ApMAgzeaJYKl2waua10IpLVUZvxx0dmTWZUexXwDcGE
         dqZGSmm+snjraQPZKFdJojA1sh/1YNStw+4uOaA2Zc55F4o5JphHYe32B8olb+n/nvtR
         ddeR+CFy7Y5zuStbhnKnWaLc4akcDewbGxNPVGeqqin2Ix6GQ0ay60HIFtQg3tQZrbvT
         q1Jc9igX1hbq9dPSPiLU8+VwFfDhhUk5mXyKTlfGAfDjw/vfSkkZ29swlRbUVopvyynb
         bnAllZFEXlwy7kvHzi7/N0XlYsttlz4/JpdfPJ6ZqyjV2NRsLVPVz4OKlaEhQfayomMX
         7W9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=E9Ob639aVb846pEvlnsjW3v7OXz7GDaSSgoDGMCVo+8=;
        b=hfz7d4taUv+Qj3E0/k9ub1Ngombp1Ax0qzaHxXNoTxkAk9rSayBnimoN9ZEUmTlQ1t
         1VG2GLrBTJOL8390E36ZYYjUcsOlBzGdP84k4NVEa5SIK7+jHJOTusRm6uoKtsp0pSik
         b0EG1aAe+88+4rndXwLNZJCQeGkFK1ZABxm09Dto0qvvifil2cNgAM3CDVlKeFARier2
         WrJ7yC/lRMnrqQi81KFQIF6ruzkT8iGY5nBdR/NFoPOXzOHPkLLaWMPWdSDtFNQJ0edD
         hbhH3uUd+m+ez+n6pEuxgS7BclCevqwQrwRgxxC5wl4aRCjSLUI5J/XlxkwmdOA/glPc
         iE1g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Bhf6+OGb;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=lg72dhEY;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1668f5126=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com. [216.71.153.144])
        by mx.google.com with ESMTPS id j15si3804846pgs.543.2019.09.26.17.17.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 17:17:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) client-ip=216.71.153.144;
IronPort-SDR: v4voQ5LM5zJvk4nUHijT4iXPakS9pOgL+SMGjUZ1iPl3TKHAJFz2gd9GDEFgMj3ilb2G+cp5n9
 2PsR7FEYEO1Ah4AZFUwk4Tb5mscYktAWGhe3WRx+UNcQchx7DZXuNlxX0YXBDv8YytZ51SBAqJ
 jHn18qdHAitax+Mbwql7RATgsIo2yZJ2W0NW9R+QAc9DbyNt09DGX2WCzMoy2VfNb8GpcIoVUS
 I3lBJ6FGEgem7e7InfRMyKUsmTIhnfHQ3cEPaZsoXuzstDm+180rzaOiFZ5thmGkKQQoe1NNU6
 olE=
X-IronPort-AV: E=Sophos;i="5.64,553,1559491200"; 
   d="scan'208";a="120010188"
Received: from mail-co1nam05lp2056.outbound.protection.outlook.com (HELO NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.56])
  by ob1.hgst.iphmx.com with ESMTP; 27 Sep 2019 08:17:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L/xhvl5eMIT0cOHmBwG0MiRCzk3kWu6VuZtaBSWCUZsIIlX1jroyq1zjEHedUyXXOb3tCaykOL3dTJKmgk6ulhNBxv/DUVIAIy60Zrq3to8pVuFYgqE+czwo6e5Tc+MIPnDYp+7ErgRZT2rjRNPrSOhVgJHqqZxLjCDfGo+tu+AiCfOovsNkT/sKRjAuhqbpG1HFX52crjSdfvrycStDtsNqCLxj3egCZ9LidjhtUIPUxUbN5DvUzdyZZQUJqlTzMHixiqyuh2QuMWLG8MpL2HvbwAQqmA4v4bFbFFaDc1O/delKIwgBvnphz7G+L+SIar1smjQCxm6L/iIYYOOBxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9Ob639aVb846pEvlnsjW3v7OXz7GDaSSgoDGMCVo+8=;
 b=R5sFGFSC2tj9ZXusJFkyecMsTvX5oHLWzUnd4BC9ZzYqYq4X7uEYMtZ5+pS7LK0sm6yQ8AY1tWHO1fUpTze/6OT0ezWFdHUVkC1I4Y180HPc4mdKdcd8ynblDXwRnD8ZVnqWVKPhxslGAID9hjPM4fzusiOuFfzG93IMsBfD9CY2Me194hRp6Nc5lroXNaVHrz2vdYo3xd8Mbz4wqV3PUc+zzcUi7zeVDEyZ+l5GBMgMj0Wm+XbBQWinnJyLZgNUouJV3k8aJNWGHpqyWqLOTT8taiamJvuUXSVf52B6h9EoMtXN79/4I1/iUp+AgMPmsZjz0K5pM+x9vMkrABmNbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB6054.namprd04.prod.outlook.com (20.178.233.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 27 Sep 2019 00:17:01 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::9821:67e1:9799:b117]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::9821:67e1:9799:b117%3]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 00:17:01 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Alan Stern <stern@rowland.harvard.edu>
CC: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, "Martin K .
 Petersen" <martin.petersen@oracle.com>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
Thread-Topic: [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
Thread-Index: AQHVdLb8KJ6R44yKq0u9gZ6abLEPEQ==
Date: Fri, 27 Sep 2019 00:17:01 +0000
Message-ID: <BYAPR04MB5816017131A10A32CC54D756E7810@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <Pine.LNX.4.44L0.1909261943230.24988-100000@netrider.rowland.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48be9023-86b1-4e37-cca9-08d742e0048c
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB6054:
x-microsoft-antispam-prvs: <BYAPR04MB6054D21AA7475F987507282DE7810@BYAPR04MB6054.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(4636009)(39860400002)(396003)(346002)(366004)(376002)(136003)(189003)(199004)(14454004)(74316002)(476003)(66446008)(64756008)(66476007)(66556008)(66946007)(305945005)(54906003)(33656002)(66066001)(316002)(7736002)(446003)(6436002)(52536014)(486006)(9686003)(229853002)(5660300002)(55016002)(76116006)(25786009)(186003)(86362001)(6916009)(7696005)(14444005)(8676002)(53546011)(102836004)(81156014)(256004)(81166006)(76176011)(71200400001)(8936002)(478600001)(4326008)(6506007)(26005)(99286004)(6246003)(71190400001)(2171002)(3846002)(2906002)(6116002)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB6054;H:BYAPR04MB5816.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fDdJTBOVvpnp9kF6MYmC+Fs6/H46tFCwGiCKh9g8v1xfZvaf+SVS0csNLiSN1ChUPP0c8SuSSU4ThRlFR2dtLybcPxcym1uI9qW0BEmkyJ74FlSeK3tu299hoViATGiV9vscHriqtk1i6TJcbLAh2Iq6HoBfFyTmh92G//99WhPRUUn/FD93b/V36Uf/yV7LOHaxASp/C2TVecB6MZcGqU9L6eEG+I+ITk6I5wS6lrWGVfc2eNVhGroFcikjgnv43BCYn7r2XtPp7eAdcKGhrwoDrIKR6HOSOjMSKgQtMfYeuWLEgWNIBlIHsOsHuxNTlSWHnk0RBeKHiiR/Cj4Ujp9sYpDBzuejDLz7/xiuXAWNoyTQ/dl/A6VUTbMKlvYOjvskd+CbVLS7vSqy/QoG7OEf69ldh7bTIJNy+TiuKM8=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48be9023-86b1-4e37-cca9-08d742e0048c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 00:17:01.1019
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KKg1Ye9GyH+CHjoE6P4wQAkY5IlemQpwAngzae/hYc8PvpsMd+v5aICh0CUfoK+FmrBlyFce9PHNtM9nD4BlZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6054
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=Bhf6+OGb;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=lg72dhEY;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.153.144 as
 permitted sender) smtp.mailfrom="prvs=1668f5126=Damien.LeMoal@wdc.com";
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

On 2019/09/26 16:57, Alan Stern wrote:
> On Fri, 27 Sep 2019, Damien Le Moal wrote:
> 
>> If a non-passthrough command is terminated with a CHECK CONDITION, the
>> scsi error recovery code reuses the failed command scsi_cmnd structure
>> to process error recovery request sense. To preserve information
>> regarding the failed command, the functions scsi_eh_prep_cmnd() and
>> scsi_eh_restore_cmnd() respectively save and restore the original
>> command information. However, the resid field of the failed command
>> request structure is not preserved and reused for the request sense
>> handling, leading to the original command having an incorrect resid
>> when:
>> A) The command is not retried and terminated with an error
>> B) The command completes after retry and the underlying LLD does not set
>>    resid for a fully completed command (resid=0)
>>
>> The first patch of this series addresses case (A) above by adding resid
>> as part of the command information saved using struct scsi_eh_save.
> 
> Good catch.
> 
>> Case B can be observed with a WD My Book USB disks when a read or write
>> command is sent to the disk while the disk is in deep sleep mode
>> (spun down) due to a long period of inactivity (~30min).
>> In such case, the following command sequence happen:
>> 1) The read or write command is terminated after a few seconds with
>>    CHECK CONDITION and an asc/ascq of 04/01 (LOGICAL UNIT IS IN PROCESS
>>    OF BECOMING READY)
>> 2) In response to this failure, the USB mass storage driver triggers
>>    autosense processing, reusing the command descriptor to issue a
>>    request sense command with a 96B sense buffer size. The reply
>>    to this command gives a NOT READY / LOGICAL UNIT IS IN PROCESS
>>    OF BECOMING READY sense of 18B, resulting in a resid of 78B.
>> 3) The original command is retried and failed again, with step 2
>>    repeated, until the drive spins up and becomes ready.
>> 4) When the original command completes after the drive has become ready,
>>    the request sense command resid of 78B is seen by the scsi disk
>>    driver sd_done() function and wrongly generates a warning about the
>>    unaligned value reported.
> 
> But with the 1/1 patch in place, 4 won't happen any more, right?  
> sd_done() will see the resid from the successful read or write.

No it will not because the USB driver does not set the residue when the value
returned for the command is 0, that is, when the command succeeds after the disk
spins up. E.g., in my test, I used a 4096B read at LBA 0. With patch 1 only, I
see a residue of 4096 since the command is entirely failed with CHECK CONDITION
until the drive spins up and becomes ready, at which point the resid becomes 0
but is not set with scsi_set_resid(). Without patch 1 nor 2, I see a residue of
78B which is the residue from the request sense executed between retries of the
read command.

Patch 2 is needed to make sure that the residue is set to 0 when the command
fully completes. If there is no failure/request sense/retry dance, resid is
already 0 (initialized value) so there is no problem. The problem shows up only
for CHECK CONDITION + retry patterns. Tests confirm this. Only patch 1 does not
solve the problem.

>> This problem is fixed in patch 2 by always setting a command resid to 0
>> when there is no residual in usb_stor_Bulk_transport(). Note that
>> usb_stor_CB_transport() does not need changes since usb_stor_bulk_srb()
>> always sets the resid for a completed command, regardless of the
>> residual value.
> 
> Exactly the same reasoning shows that usb_stor_Bulk_transport() also
> does not need changes, doesn't it?  Which means that patch 2/2 is 
> unnecessary.

In usb_stor_Bulk_transport(), since scsi_set_resid() is only called under the

if (residue && !(us->fflags & US_FL_IGNORE_RESIDUE))

condition, resid is not set if it is 0.

Whereas in usb_stor_CB_transport(), through the call to usb_stor_bulk_srb(),
resid is always set, unconditionally, with:

scsi_set_resid(srb, scsi_bufflen(srb) - partial);

where partial is the command length for a fully completed command (the variable
name is misleading), leading to resid being set to 0 as needed for successful
commands.

Please let me know if I missed something. I can reproduce the problem 100% of
the time, even though it is painful due to the 30min wait between tests to wait
for the drive going to sleep (if I force a sleep power state, the problem does
not happen due to power control the drive USB bridge FW, I am guessing, which
will wake up the disk before the command is sent).

> 
> Alan Stern
> 
> PS: The correct term is "residue", not "residual".  I know that the 
> code sometimes uses the wrong word.

Thanks... I keep using resid but trying to write proper sentences, I mess up the
word extension :)


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BYAPR04MB5816017131A10A32CC54D756E7810%40BYAPR04MB5816.namprd04.prod.outlook.com.
