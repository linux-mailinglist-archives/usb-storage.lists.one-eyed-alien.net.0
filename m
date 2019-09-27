Return-Path: <usb-storage+bncBDF7X5HH4UNBBOXMXHWAKGQER6BI2OQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id B2910C0CE1
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 22:51:08 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id 6sf4312848pgi.10
        for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 13:51:08 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1569617467; cv=pass;
        d=google.com; s=arc-20160816;
        b=DsU1NWx9BZddIPGTzDNK4qRf04xQ5MLdLwOkewQ9qqXAgtMoHFA7E6NVOFwuPll3qm
         Iqm4c4QA1PpjEjgAhy917neMM5AtjElekEQecDv/mNwsC9sOxnTlSF8qEbsYQjEcOZAB
         4zR2WVbedtHLGw1uVN+aY/ybb9fc2W+3cNjmy4bxj1/C0bDpJJmwbBe6tGoVBPAuWRI1
         2IC+d8XLYAAybMU3aM4DeeMVPPkornVlJRaJy4rKtfXYaG8x0y68LPwxrHsYmlhCo45I
         8SUv30e0ni1m191Fxe2oH3oI9cD6EtkUytSw95ZNdgIl6qruNRIPibFAQ+HkAvEYeSER
         RXng==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=TeMw3Iyo0Ji0opUp3600T2cczRch6VUmRPslDUKqRY8=;
        b=B6Jl9V4VPtHTHbyCCV+3QiGxGWR3G3ScOVyKm6l0YW8cPeykUULscWoZPNnj6GY6EC
         hIgNs7uub164m1rCx+2q3UDjc2mh8esbeppWr1xwXSuZnB1ov0MJkoxZ52zLv+RnYzWs
         qxnGBqrHj73v9MVgtfU4WBQ4++uIQcdb+lv7mgII/UEkCRXuTXY0H9LnEjFs7CUTr/cr
         2iqHuAz09+amo6KpxdyV3al8hxkhFeIw4ZAyWT2+eVW3HhvQLnB310DgKK8nNGYQklBZ
         BClVreYjE0iEO0iY+N3ODBm+v2uN4P6gxyV88hA20HESgmxM8aYAqgpNsZ+bb96rmXBS
         tFpA==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Iwl9Qewn;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=eIQ5T8Zs;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=1668f5126=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TeMw3Iyo0Ji0opUp3600T2cczRch6VUmRPslDUKqRY8=;
        b=fbronvaHrE/QT6alTUj5r06jkFL9w3T+RjZpcp7g/WLpOM+MDRbUZPGKmn+JdEjM01
         /zpV1OKNQYTJDyVfTDfPWPxEMIwu2EwJcHTPhMOE7bJVGrUg9iFqfPbiduN1F79N+F87
         6gW4izOEbuRXHG898V6wrnzIKMoIdpB5bMTfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TeMw3Iyo0Ji0opUp3600T2cczRch6VUmRPslDUKqRY8=;
        b=uPvIiVHvxGrIV0Fem8WOCUPcOtlSopH2UfO+DfS2dXQX9OtDNPJEg9lP/wEQhslT4W
         6T/Crc7/Zttm6MuAWZlt0AC6FsI9MDHdaA627V/eDNFhdFf0GAoUayvif158XyXg63NA
         GLoJ1Lsv6ttDIt3luRyGsTJqriRlp3jVarZE5YsuG5uYQ0ySOFPAWLRJHccaOGMmcWLK
         vdZIlnYSlVnyBHzN4DcQU7k2wNKYRCuUx+VIvYB/u2zf/JzvBPlUE/cuwTATbRyjJEoe
         zL5WijMeHRFzlJbcPn/wI2efciACmiRJC6Lzgh2ExkECrfMUZ53YfaHrU+mCF63qNkME
         aePw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXDcQEsuZQ5NxW0deEjvy2Gn7MvmstzlkPvddXwrkXamVBWkwOk
	A58ZjydjJU5xQXpvMX66dag1QQ==
X-Google-Smtp-Source: APXvYqwlhEIZaBSbFeZd7if8iWHhM03NoNaYhUwAXXHLd2jKbtLDYxZZjqxXzE6Gm+LRYI6l+McPlw==
X-Received: by 2002:a65:6252:: with SMTP id q18mr11629625pgv.111.1569617467103;
        Fri, 27 Sep 2019 13:51:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:9a04:: with SMTP id v4ls235140plp.11.gmail; Fri, 27
 Sep 2019 13:51:06 -0700 (PDT)
X-Received: by 2002:a17:90a:fe04:: with SMTP id ck4mr12568292pjb.74.1569617466534;
        Fri, 27 Sep 2019 13:51:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569617466; cv=pass;
        d=google.com; s=arc-20160816;
        b=fBemXFdw9ksMAYZdnnpPI/6WpoTCUKJFWHjTQTZeaZNSs14x+fa0ELUrBb4bzYXpIt
         nFOBEadslALfQipXqgUmBJOh8/k3nZPqTt65j+/g9Tor4c7u5Cyl8m18cC7u1jQKOgT6
         JQw8M089YaL6PnCVurFP/LS9SwWUo+e8ft3IYkcht4PtQSSINGs6gCoHLCGT1XMbsWsD
         zqseeuD9n0vpON0PeBe4in4q/rGmMH8aDeu1t/XyeAvsAthAmbPbDGzzYQAk841aeAeZ
         zp6h4gSDwF0H5XrzRpCKV6aOpBKMwitrvNHTEG5/nUGXuO4A7PXeRLSpclVVjHDgS3yE
         68tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=/ve3kzHe/f7jUHNhaWe68G6Ebai/Iy0xBB1BfOgYhUs=;
        b=fDlx/LS2sShdg8Uy5qkPMvcZeNEE7ktrj5vMTowGjvBGDuuskNzWi7oXy92Jkl4PXz
         wtrKT5YWEY5nA3/rAOd+sSAZjPzMJyJ5zIwf+iEKg5iFkLwJWQfo65lBiNNGLZ1iTlQd
         y47eDLSuk9TKyZflfSfdo2zTaP0DGbLxi41Q1b9TXYGLF1LcyoiuBM4bxGm5EaW4cXMl
         0jyC3YH4aFZw+A18bb8wuYq2WoqAWorxXD2viDeUNwk/ls0HZbJxpvnyENKA0glw8kUh
         3Cc1neqVAnSyMpjI7PilREXpgX30FMmFFuc76ezpObtTm/DrO2+x87C4qCylWVNp9d6i
         CMPw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Iwl9Qewn;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=eIQ5T8Zs;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=1668f5126=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id f17si3919297plr.90.2019.09.27.13.51.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Sep 2019 13:51:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
IronPort-SDR: l+iHwfLhIXsPijH1G/8bXRE8V5AhFBDDQEubkh7+mhlSImHoYMXkIL4uK+1ecNvNI8klaihI8F
 iMsws4mFmYR5y8J238z+UfOXg5T1zVPKKvqnu4/ezbFMoXUhP2oEdXiVcdHh7FtBqPRuqfUIBP
 7Q/kXZr53aXAiFc8Zm01yCiwR6ndHI+mbWl+TDiAh34Jm80OakAORljb29+/MYLHiNbkWcwQ5M
 3RtaSxerf5lC2SH4qq6tzKhOMvQLHR2rEFc8z2jxhYUpfl7aT8ByMB8Tq0KN3KZnAnoC5SFX1k
 OE4=
X-IronPort-AV: E=Sophos;i="5.64,556,1559491200"; 
   d="scan'208";a="120886481"
Received: from mail-bn3nam04lp2058.outbound.protection.outlook.com (HELO NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.58])
  by ob1.hgst.iphmx.com with ESMTP; 28 Sep 2019 04:51:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SpQKGOfTiEgVQnp4t4mIi9uuShH3abIJSWZgDsq8iQ/TtmKUwteTfemoRQuK6Kaix1kGe72VbtspfEV5wJDgJCUWDq4CBUH9nnnYQrO7HKSb/iDF6fcqiQS6sfL5ia/Wi1n0TB/H3OzeGb2BlFh8r4yT3jxiyRDdvAkkpci3rUdND6GbQCTd64rE5EPE3oYDTTwiUgwIgAheAq0BYmHoZZJ/BMICIQwf2va73ux3dPejo6R4Cnzt1W8jupbNOHI1dDd8jjp0x9HJ1enT1gsg72Et61+DfuyHRVa20LAR/ZRP+sYmIt6HBRBtDVb7nZ71orj0aycdH52UsLbAVnxRUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ve3kzHe/f7jUHNhaWe68G6Ebai/Iy0xBB1BfOgYhUs=;
 b=kTHbDy3GNzZEcnyKXcpuxF/XnIxt7BD6BPxVP5yYi3n8ALyeZfcXeqmAfVJgsrK9fLFzmCHzGeAxUF13FqwIdc/Fu/6oSHCsgOiU9ANf+xgoVrwHKATIY9xgGbNXfbGKOl4v8ws7/hu/NKNmQ1CdNoJtEfJ/ljYhoZO+zgO54PfX+/nht12M6w3M1iHc8PajgCkeLGtQyEVj7/wLVIczRgeocR5ilnuesycnxYbdeSCR0Tec0bMWWwYm6ILUoRzDpnM1n50sArF3K1k/JudnxbNGixPQML22HcEiDMsAKyND2C6zVyGdecCDm1Uqdzgx4delpoNWgNeDTYc3QMWWjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB4696.namprd04.prod.outlook.com (52.135.239.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.16; Fri, 27 Sep 2019 20:51:02 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::9821:67e1:9799:b117]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::9821:67e1:9799:b117%3]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 20:51:02 +0000
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
Date: Fri, 27 Sep 2019 20:51:02 +0000
Message-ID: <BYAPR04MB581640C4D180F4699EA64838E7810@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <Pine.LNX.4.44L0.1909271218200.2054-100000@iolanthe.rowland.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4f4b7f7-9a2c-4966-7923-08d7438c6867
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4696:
x-microsoft-antispam-prvs: <BYAPR04MB46964A7E563F9F15E39EE824E7810@BYAPR04MB4696.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(189003)(199004)(6116002)(3846002)(476003)(33656002)(14454004)(14444005)(5660300002)(76116006)(256004)(66476007)(64756008)(66556008)(66446008)(478600001)(66946007)(305945005)(74316002)(102836004)(8676002)(7696005)(7736002)(76176011)(99286004)(6506007)(81166006)(81156014)(53546011)(6436002)(2171002)(55016002)(26005)(9686003)(6246003)(8936002)(486006)(66066001)(2906002)(229853002)(316002)(86362001)(446003)(71200400001)(71190400001)(52536014)(4326008)(6916009)(25786009)(54906003)(186003);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB4696;H:BYAPR04MB5816.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /cj5dWPnS9X3kPPaYQGMUStuanXF6RKNYJ85ukwdhhfu53pCq0o0jLmrlLMmt3T1Moh4lrE6IeRfxDeHyjcNNYWeHV2aucQpoxTDt0sbVx0fdkQq/s//pfd6+Hk0qqoLwsBe3f3N94FHtFPzEeTi/ksIkACo8bAhgfl4RFM2qXHfLYj1bVBP/MjYJMtBTwCwrATauJqnet5XoUSogNOWB18kPVjVK1OQBelT62/6t09v/dLjPXW1fOmY/SANgboYcIbdK0Vz/PmPvhT465EZHfyS2vO6IiJnOhbwmRMSh2fzJ1dOYQROUdU4t5iWvNcZciXJmCZ+WstZnuksGXKuRzMAhYp7VFeSr2FkS0oWNl+0MnI5TaNWSo/OLmNbSuKReQzT1vDiCy4vyrNKqdlApjTx39VEpFgIyypEzM/gB8M=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f4b7f7-9a2c-4966-7923-08d7438c6867
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 20:51:02.0779
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IEFTyCKIpl+2m9XE0EpZ310ogT6sGU4g2KNnOxccGA2weed/YQoPnK79h4B1PcABXrp/BDm+76vNrukwF3VMJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4696
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=Iwl9Qewn;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=eIQ5T8Zs;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.154.45 as
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

On 2019/09/27 9:34, Alan Stern wrote:
> On Fri, 27 Sep 2019, Damien Le Moal wrote:
> 
>> On 2019/09/26 16:57, Alan Stern wrote:
>>> On Fri, 27 Sep 2019, Damien Le Moal wrote:
>>>
>>>> If a non-passthrough command is terminated with a CHECK CONDITION, the
>>>> scsi error recovery code reuses the failed command scsi_cmnd structure
>>>> to process error recovery request sense. To preserve information
>>>> regarding the failed command, the functions scsi_eh_prep_cmnd() and
>>>> scsi_eh_restore_cmnd() respectively save and restore the original
>>>> command information. However, the resid field of the failed command
>>>> request structure is not preserved and reused for the request sense
>>>> handling, leading to the original command having an incorrect resid
>>>> when:
>>>> A) The command is not retried and terminated with an error
>>>> B) The command completes after retry and the underlying LLD does not set
>>>>    resid for a fully completed command (resid=0)
>>>>
>>>> The first patch of this series addresses case (A) above by adding resid
>>>> as part of the command information saved using struct scsi_eh_save.
>>>
>>> Good catch.
>>>
>>>> Case B can be observed with a WD My Book USB disks when a read or write
>>>> command is sent to the disk while the disk is in deep sleep mode
>>>> (spun down) due to a long period of inactivity (~30min).
>>>> In such case, the following command sequence happen:
>>>> 1) The read or write command is terminated after a few seconds with
>>>>    CHECK CONDITION and an asc/ascq of 04/01 (LOGICAL UNIT IS IN PROCESS
>>>>    OF BECOMING READY)
>>>> 2) In response to this failure, the USB mass storage driver triggers
>>>>    autosense processing, reusing the command descriptor to issue a
>>>>    request sense command with a 96B sense buffer size. The reply
>>>>    to this command gives a NOT READY / LOGICAL UNIT IS IN PROCESS
>>>>    OF BECOMING READY sense of 18B, resulting in a resid of 78B.
>>>> 3) The original command is retried and failed again, with step 2
>>>>    repeated, until the drive spins up and becomes ready.
>>>> 4) When the original command completes after the drive has become ready,
>>>>    the request sense command resid of 78B is seen by the scsi disk
>>>>    driver sd_done() function and wrongly generates a warning about the
>>>>    unaligned value reported.
>>>
>>> But with the 1/1 patch in place, 4 won't happen any more, right?  
>>> sd_done() will see the resid from the successful read or write.
>>
>> No it will not because the USB driver does not set the residue when the value
>> returned for the command is 0, that is, when the command succeeds after the disk
>> spins up. E.g., in my test, I used a 4096B read at LBA 0. With patch 1 only, I
>> see a residue of 4096 since the command is entirely failed with CHECK CONDITION
>> until the drive spins up and becomes ready, at which point the resid becomes 0
>> but is not set with scsi_set_resid(). Without patch 1 nor 2, I see a residue of
>> 78B which is the residue from the request sense executed between retries of the
>> read command.
> 
> I don't doubt your results.  But you need to do a better job of 
> explaining how the existing code leads to those results.
> 
> For example, you said the driver does not set the command's residue 
> when the command succeeds.  But in fact, one of the first things 
> usb_stor_invoke_transport() does -- before it begins transmitting the 
> command -- is
> 
> 	scsi_set_resid(srb, 0);
> 
> So if the command is successful, even if the transport layer routine 
> doesn't set the residue explicitly, the value should still be 0.

Yes, you are right. I missed that one. Patch 2 is not needed at all.

> So if you see the residue not getting set properly, you should explain 
> exactly how that happens.

I got confused in my analysis because I missed that the actual timing of
sd_done() execution is after every command retry+request sense pair, that is,
what usb_stor_invoke_transport() does. Without patch 1, the resid is wrong on
completion of the initial command because of the request sense, nothing to do
with resid not being initialized.
W
ith patch 1, sd_done() sees a resid equal to the entire command size in case of
failure, and 0 (as set by usb_stor_invoke_transport()) in case of success.

So as you suggested, only patch 1 is necessary. I will resend it with the
additional resid initialization for autosense for security, since that could be
a problem for a sense request that has no residue (the request sense is issued
directly using us->transport(), not using usb_stor_invoke_transport()).

>> Patch 2 is needed to make sure that the residue is set to 0 when the command
>> fully completes. If there is no failure/request sense/retry dance, resid is
>> already 0 (initialized value) so there is no problem. The problem shows up only
>> for CHECK CONDITION + retry patterns. Tests confirm this. Only patch 1 does not
>> solve the problem.
> 
> But the residue gets reset to 0 every time before the command is
> retried, doesn't it?

Yes it is. Checked.

> Unless for your device, the driver doesn't run 
> usb_stor_invoke_transport().  The only way that can happen is if you 
> use one of the modular subdrivers -- in which case the bug lies in that 
> subdriver and should be fixed there, not in transport.c.

The device is using usb_storage (Bulk transport, scsi transparent protocol). But
the problem is higher up in the stack anyway.

>>>> This problem is fixed in patch 2 by always setting a command resid to 0
>>>> when there is no residual in usb_stor_Bulk_transport(). Note that
>>>> usb_stor_CB_transport() does not need changes since usb_stor_bulk_srb()
>>>> always sets the resid for a completed command, regardless of the
>>>> residual value.
>>>
>>> Exactly the same reasoning shows that usb_stor_Bulk_transport() also
>>> does not need changes, doesn't it?  Which means that patch 2/2 is 
>>> unnecessary.
>>
>> In usb_stor_Bulk_transport(), since scsi_set_resid() is only called under the
>>
>> if (residue && !(us->fflags & US_FL_IGNORE_RESIDUE))
>>
>> condition, resid is not set if it is 0.
> 
> But usb_stor_Bulk_transport() calls usb_stor_bulk_srb(), which does set
> the residue, as you realize:

Yes, absolutely. Checked !

>> Whereas in usb_stor_CB_transport(), through the call to usb_stor_bulk_srb(),
>> resid is always set, unconditionally, with:
>>
>> scsi_set_resid(srb, scsi_bufflen(srb) - partial);
>>
>> where partial is the command length for a fully completed command (the variable
>> name is misleading), leading to resid being set to 0 as needed for successful
>> commands.
>>
>> Please let me know if I missed something. I can reproduce the problem 100% of
>> the time, even though it is painful due to the 30min wait between tests to wait
>> for the drive going to sleep (if I force a sleep power state, the problem does
>> not happen due to power control the drive USB bridge FW, I am guessing, which
>> will wake up the disk before the command is sent).
> 
> Please investigate a little more closely into what's going wrong and
> present more details so that others can understand it too.

I did and realized it was my mistake. USB is not to blame. Only handling of
resid in save/restore of struct scsi_eh_save.

Thanks for your comments !

Best regards.

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BYAPR04MB581640C4D180F4699EA64838E7810%40BYAPR04MB5816.namprd04.prod.outlook.com.
