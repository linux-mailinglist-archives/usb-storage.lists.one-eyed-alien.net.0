Return-Path: <usb-storage+bncBCFP7G4HQQGRB6VSUS2AMGQE2RVSG6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7C0929271
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 12:16:27 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-44502b26836sf35498831cf.2
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 03:16:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720260986; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jtp27+X+YzkDS4YtqQbMG+dfyyah1xmeV6QklfzAcpm6UG2xq9Sgrbob3d1ZI0WNnk
         mgGr2sRPmjoXC99H/XFBv8DaBQdYvYYxgje0LsCN2AqQDqCsnbfNg8eTKCYY/gqkLDrS
         bcYuBu3Ha6ULRZ1w4KkmanbFSFiHimH0HxUJ+b+8VCZnqfwaHHlydRfJIGprL1Dd+elg
         0IAxhDBD+hLRmWqeKEaEJXJ2ibiB6u9GFxy8LESvYdMEAwwZGGcClvC0tWGKp1pzzHso
         Ld3GfLXdL8hX2sOm3U4ggNg2OMXWcOeYMAw4luojXgM7oOw4aGapKDtUEn8G1K9IF/5i
         n3xg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=U/TZfJ/FW5CPlAdkwZAjPrzcYycJBbiqZhja/duRQeo=;
        fh=JUYPT0l4lRpfPnM0P47cSZ6B0ToccumN3zC+EGTiV9Q=;
        b=yGlVLEMpg6YseWvst8ap+H6p/jZdE7HrUDdGBt24D4nEXVh35/A1m++X34mfnijmzs
         6kTsJd1qT/N7Gj5zZp7obNctzX/AaLGZnghOvYu/VMdRYf63ezCg6CVLIKavjUZhU+UM
         hYxp3u8PUKljVO4oMtl2R4a6HtTEXQl6Azv/7ff2OxixGWw4s8HCq6eqJUOhtbbprhZ4
         rFpdPtW7Xptk5Ujbt+0eIKpmqx1KYH1rlKijmpeYJ0pp+1QYgqWXFXBTHkzE8XBPk1sG
         dK+rgJAUiHiSomKUh2RXOAtqnfREOcapKIdlHC8+BmUIQXO/u5kBu4WeKklERH1oxbbD
         y51w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=QKuC1Kur;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720260986; x=1720865786; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/TZfJ/FW5CPlAdkwZAjPrzcYycJBbiqZhja/duRQeo=;
        b=Jt65TPrRREPIr7soXDv/ljukGHP3rYQTi2xOZy61scN6KSSuQy10/e+xy+4H+knphL
         jBtGoaYukiCeOHh+9LMA1lsOzLkV8r4OrnYRf85SJtWAyG4Z2wvHRRxY69/T55AMtUKL
         5t/anDMvW6zlg6P7COmwb+DBBqEzmxSiuvNWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720260986; x=1720865786;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/TZfJ/FW5CPlAdkwZAjPrzcYycJBbiqZhja/duRQeo=;
        b=tJLnTb3SbIPeZLhC/ohiq3RLWudEwBpCN5lOzULn4dAKUcR9UjvrVxdqltmr1Qq9zx
         0C+c0wdEVKjez9+f7h9GyEf61kyDHStOSzv7ArpZyz7sKhwZ+4L0wGF/K/KLJ13c5hbr
         PhOb5ItxGIDon+15nKnbhUROND2sPOj/MG/68KJ6c0OYPlRcKBaCIH4Ei8fwA6DPzh1Q
         K7cL1V3K6hb8MZvfh1URICMZxdYWFmCEzmPY+4Vp3Ny/hC6a/KADoadB/XHhTMBJ1Ckw
         ImjEMveWGfgh/W3gtOVRziMTFAMPsLslgN48loVczataj2bh4w1m9q52AvmWItxV6uHB
         tbZA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWQt1bZ2uGc/xpZ6UOx7rvqfwLzh+HK8rKn7I8nSwdsaOV8PKQu58B4jc1m1A59vvAYGcWHvkXzs3sfeIw6mjslG1QMOtRcLxmK
X-Gm-Message-State: AOJu0YzIuM4jb/r0pSSZ7wyjE4FysCfMOdwpzCJwxoBwV/HQuXTST4k0
	AhJ31TRgCJQwWZ2fPM/EJKQ4wXLXXKj2TAvHgSxEYeF4OuswGGJskBcuNKQcvjQ=
X-Google-Smtp-Source: AGHT+IHdtaxa/4hAPR3qkbcOyqcw5qaxAXiSICoKfC0e/E9et+GG+BggeM3h5C4KD8Njahomjv/gig==
X-Received: by 2002:ac8:4cca:0:b0:447:dc01:eb1c with SMTP id d75a77b69052e-447dc01edb6mr23993561cf.26.1720260986127;
        Sat, 06 Jul 2024 03:16:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:52:b0:444:b12b:b736 with SMTP id
 d75a77b69052e-447c9cb35b0ls33359241cf.1.-pod-prod-02-us; Sat, 06 Jul 2024
 03:16:25 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCV0DWCcRk7spphbSidFuzjnQ3hsHc/w9FTaiKRWgtlh9PZgAQwWUgEzJrhTnqKZGRw066+WxMBNYiGdKGthQ581iC34i9aqhv7fAQWXcaz3j7bWFEc=
X-Received: by 2002:a05:622a:1441:b0:444:a34d:9009 with SMTP id d75a77b69052e-447cbef6101mr76578261cf.2.1720260985280;
        Sat, 06 Jul 2024 03:16:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720260985; cv=pass;
        d=google.com; s=arc-20160816;
        b=cYHysAvBZQp/UcoVdFAYyQgsU+qjD0ytvw6Xf7UHP/GBX8mAL3CyWlZ/HdmBTTHYkP
         +/jxNubARr9ylHdXxdZBNVOf4uvy3IFdWm/50/5rlQaLzQCBblBSg6OlYAHSgX/Gj8aa
         atdFxqF2rDHChP7H3TjetXJBpwjCoRlxGS6GTQ1Le61OekjxLNIkC0R8em3OWZnXqWD+
         l6/YSo8hD72+hCzOrK1/yuQLRlXAc2zEI53IJeCsqOqnN0vm31Kc1TMS5HLnsI8BOxpQ
         75X6djHErzhNFZGCS5+l1nxs4vSu4Apv3OAeVJ1JlWWK+Bs/PcDxX88/70jdhT5Pmadj
         MOpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=q8uPmxbEezjNw+MNAG9+Tw/FLfDc4xqkJCSFy31RFkw=;
        fh=ckEDp2FnyVnpr6Oz+EVf3BXfz23j5KNJCpp38Y15hrM=;
        b=wv9H/LOOJHDygz5FBV4D6w40yesCkpGZehouBpuXXaURrAS9+/gkwk+x3crkN+BKwd
         CHH5JTjMaqvofGiiUm7MzKKeyx2V/vrcxzMNS2ko3ZVDGOuaXzJbEfrnUudPeTloNg4x
         fg5swNOfjniz08DxPYT0c955YH021b6eaWXMJMMuEXZOyGYZq1PzFhLlkFZ+e+iveDbN
         OCihYXgyijsOUJBcDXeMaLw7x8UpGNa1lgnAd1Rcm9+u1EkV/hE1Hx8d09NplckbaAsA
         11ATXphaJ6keM0f/Ho3/lLjdlYbCKJBKUs3RV5kd7MXIxm078Wv8G326sB3llwlIJlZm
         q9SA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=QKuC1Kur;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20801.outbound.protection.outlook.com. [2a01:111:f403:281b::801])
        by mx.google.com with ESMTPS id d75a77b69052e-447df1adb8dsi14989261cf.301.2024.07.06.03.16.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 03:16:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) client-ip=2a01:111:f403:281b::801;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fnC+UxJH919I0NvudFf7NIYzSwHxCH9f27pXWsA2clg1k6i3RRHdx1A64232BJAOaRz0h14U4YtmW0qkVIMqHKmQib575Pn3pTK64jTs07Ot83ffcMFJ6GzMnYxTApBzQpojfcJGzuHSIK6FgpPSS6QmRlKmEr7GuuMlEchc9NaIJozcTaGyPyBRZKTsdDk40dfKEYHMnGO/KALNmyEf9H94kqVrew5QyuLIm5fN+b57x192+aeNg1q/kbwo8uCaYZHOaHER76aP7YwIpLX5shnGEwGnhP9Kp4YWt/uPK0/kmM6bPBCfMN2eKcl8C1/XR7/B5LWZ/5M7611O5zHekA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q8uPmxbEezjNw+MNAG9+Tw/FLfDc4xqkJCSFy31RFkw=;
 b=JnVUCmqXeJ0w76R+q42sKiQnLwf1sBO5GZD8WIfNPSK3b558ZFoGzogxGrPTCAJJ1nMUrHTEQ9e+BXW1lIIAyfmog7OcRVijuEAhJl4vCLhMAOTAveuKmoKQTeKbiLlD57TSN45sSptCz33gzSOSPp4EsAGksfLSsyBsGhBAHH/uQBWj4r5b0/T54ydsixL8hB0BvrmnAldrf0fI4n26jU3fPlQFJXUGQ4fnbg3YCHJcOk880+xVeQt5py5u8BCYhPjYjl2h2EmnWJ8CxzEvaK/ikfTzzZVv+w+/A72p/Ky82mCjxf79iVi01nGrDgd+moR755pd7HJ/gsYp6ZzfZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN2P287MB0983.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:136::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.33; Sat, 6 Jul 2024 10:16:18 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 10:16:18 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
CC: "oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>, Kerem Karabay <kekrby@gmail.com>, Orlando
 Chamberlain <orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v2 2/2] scsi: usb: uas: Implement the new
 shutdown callback
Thread-Topic: [PATCH v2 2/2] scsi: usb: uas: Implement the new shutdown
 callback
Thread-Index: AQHaz4t+8wEhfBXSYkeB85QpAZZdlrHpefEAgAACDYY=
Date: Sat, 6 Jul 2024 10:16:18 +0000
Message-ID: <MA0P287MB0217CE452C944EE1093E6081B8D82@MA0P287MB0217.INDP287.PROD.OUTLOOK.COM>
References: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
 <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
 <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
 <2024070636-finalize-chop-f98a@gregkh>
In-Reply-To: <2024070636-finalize-chop-f98a@gregkh>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [WfSlyzl8i6PigxKUHH6IPx+3kRat5bKj48IJi/xvkcR1S1hBzG2iGuCS+dj8zReoYiJuSLhG8XM=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN2P287MB0983:EE_
x-ms-office365-filtering-correlation-id: f47eaffd-eddf-4dd3-7659-08dc9da4ad28
x-microsoft-antispam: BCL:0;ARA:14566002|8060799006|19110799003|461199028|3412199025|440099028|102099032;
x-microsoft-antispam-message-info: MkRqDl3soWmPaZLZCbbzvvD4Wlr0XCeuAU0tl4Nf8PQqj/ysOPqQZramO+fvZzGrzGp5QTqUvIc1UG9iEI5ObUuFkqgrsYBWQygvCrgu4Xa7LARsHpmjOa+yCFX9CJqtc0I++wQoFdjvsutfoEn8+ft9YVLjChWyEKvcca4EO63Ibl9MTVEh5zOvYmibsO7J8NJYR/wJ4T+SHkuovSC+hko+Yb3kualwgPk1Pl2d7L8VkFVURa8lfhpVKqItWhdDHPWRVA4cf48s85zTz3vV52R2+nmtGwohVCOLinZLyMcar8ym1i2VUf/dU45C68PXQ/l1tCkgs+z5CKiof9JpPGxEihiDjJ9+EYWM0it+A1nEEsDfy4C2hkIo7E2TVg+cuwU7ZZDydyMN69E1awpFMB4Zc+thL6ufv8HgCE2HHqgcg95c26sm6q8hQalpW5K0dswWwW4sFtuk7tMII5HqUzrR4r72wyiNTMOzwkkUFpijD+xYZaEnjTvmthrJiqTZgpIVoriG2tA8TCrx+YM5mGeCUqlyY8LIlMHHZbUD+Sr63BRNjBVVOFtOhY0paV/r801mDPBuOTDaErhEFUry7fnePqRs12VvrbSW/mgcTETNd/djRlULNzqi3qpn4jNbSKlJG8uo58xp0V/nuHmlqA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2txOTY5T2hpMG9CWVFCYU5xbWpTajErZnNKS1VyT3VSWDg1Q0o5WUxuaVBO?=
 =?utf-8?B?N2Y0bTB3RTZLN0E5dllicFZQbGZFb0I3RHAvaGprbjIyZ0lOWFBxTXQ5MWRS?=
 =?utf-8?B?L0w1WXZoRGF1RDMyUFMxTXA0VzJtemd6VDVXOXE1ZzlpV3Q4QmVYRE1MWmFj?=
 =?utf-8?B?ZEpIVmxrMHBHRlZoUFllODZ6bmNjRnVVQ3BDOS9UdWl6SmhqNHFWM3U2WW9B?=
 =?utf-8?B?SFNwVW9MUlBGbmZDMGxtWUZ5M0VPMG1TVmwrY1JQaDJDb2lHMDdvMlJnUUZF?=
 =?utf-8?B?dGx5QjdiMXF1R0lMY2Ryd2RFdFlocHlaalJqWGRUakZwWnRvcFJ5WlhTeGJp?=
 =?utf-8?B?V1JlNXFhN3RvYTdpK1Z3SmJ2TVZUbnUyMCt1SU0zZWUxSWNUSzJrVlFSZlZh?=
 =?utf-8?B?VkFsQU9NNDZTMDV1TUdHbUpvYnozbnI0Y0VlOTc4K1RWTVJ0TStPV3RNRkhv?=
 =?utf-8?B?NlFqZFRtZDdkZE1rdnhOR0hOQnFGbXl2L1NCdWxONmlkd2lVSlpacXFzbGRJ?=
 =?utf-8?B?WGE0ZU9BS0ZxLzF0dVc4Rm9mb3JPLzFUYkNNR3RiQkczRWY2QjN1YVllaVBs?=
 =?utf-8?B?TlZYZVJrd1JGRllORkVoV1ZLTGJ4UjJIRnZ3emVleFFTT01VU29oVFdhWUl5?=
 =?utf-8?B?MVdrc0hjdno1L1pzWGxlNEZnRXBOUGlRYkxKTFZ5czhEVnFPckRBY0NGSGRt?=
 =?utf-8?B?eTJzRmFzUkpzRlluenhSdENKaTJRTmprTjliQUpycjY2NWprUWpyak5LMHln?=
 =?utf-8?B?L0YyWERTRHN3WjlMMndoc3NrRk1QU3dsV0hHYkF6UW9EL053aUw3QVZiWUFE?=
 =?utf-8?B?VkRwbGRycmFaNjBqZCtWNDQ3ZlRqL09jNFZGdnFZQlJpcG9Yd04yUWRCUVdr?=
 =?utf-8?B?Mi9keWYxWGg5TGtTQkxhSHFhT2ZnQ2N4bmVFbHd4cDhGWHNHdUdGNG1vZEIv?=
 =?utf-8?B?M2xjNSs3ckNxWWVuUEdPdnBqa21VREZvbERUdW1TektjSVZnOWlFaEwxREMy?=
 =?utf-8?B?QktPeGRhdUQ2ZzZNd1JHTmRnZEhHSUJoOWVqUTZnd1ZET0pEQ2VwSEdWY05O?=
 =?utf-8?B?UUg5VXZLK3hCemd0V2FQbjFka2pRcTRmRTMwdDArRE9CQ1FWSHo3K2RhVnJF?=
 =?utf-8?B?b2w0KzJnak9ycnNQWERjR09DTGVxRDFpdWdpWEl5MURYM1VBRHNWM0NmSFlH?=
 =?utf-8?B?djU2clE0UUZZQjBqRStROTVmQkVLb3pFcklNWUYyd2plOExnOXdCOXFURFVX?=
 =?utf-8?B?TG5GYWl0VVlFNkZUZ3hsRG9tcXhQa2VJSVNoK1luaGxjTVlBcnl2VndSTUdH?=
 =?utf-8?B?azdPR3Z3dFdKSmtvU0UyVDBkb0ZyMmJJTDU0UEJkQnh6WG82MkdCaGlUUURG?=
 =?utf-8?B?UHA0cmFVQmltUkgvMGE5elJUeDZtTW1kcTFWelphY0FKSDJDSWI1V1lwN05J?=
 =?utf-8?B?QmQ0T0RWTHhVSUt5VzJyenhlMm5HZTVRTy94VDY5YnhPV1BBaU8xWU1LOTZL?=
 =?utf-8?B?MEZWRGtYbVdOMlJZTTk5OFJSM0hXUGRlcytYbUFmRlNWSTZWQ0lYaFR3Y1VX?=
 =?utf-8?B?c05xamJPYXBZL1RzenZwY1dVNWxZdDJOaVNJMnlpNU9LdTA3L2l0cDh3d0xN?=
 =?utf-8?B?Wk1EYlpya2xHdEQzK0ZCdURBbzhMRGZ3QjBpbWV5RlV2RGp2eHo3Z2xtSDMr?=
 =?utf-8?B?bzU2TzlVTGxjcnJJWSt4STNNc1dnc3hpSEU2ZmFTY1VhQ0hHOVAzU0RtOVgw?=
 =?utf-8?Q?wrK/Wv6wINQs7l3EHg=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f47eaffd-eddf-4dd3-7659-08dc9da4ad28
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 10:16:18.4953
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB0983
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=QKuC1Kur;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
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



> On 6 Jul 2024, at 3:39=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
>=20
> =EF=BB=BFOn Sat, Jul 06, 2024 at 10:01:38AM +0000, Aditya Garg wrote:
>> From: Kerem Karabay <kekrby@gmail.com>
>>=20
>> This patch implements the new shutdown callback method added to
>> usb_driver on the UAS driver.
>>=20
>> Signed-off-by: Kerem Karabay <kekrby@gmail.com>
>> Signed-off-by: Aditya Garg <gargaditya08@live.com>
>> ---
>> drivers/usb/storage/uas.c | 5 ++---
>> 1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> Why the "scsi:" on the subject line?  This is not that directory :(
>=20

I'll remove scsi: from the subject.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/MA0P287MB0217CE452C944EE1093E6081B8D=
82%40MA0P287MB0217.INDP287.PROD.OUTLOOK.COM.
