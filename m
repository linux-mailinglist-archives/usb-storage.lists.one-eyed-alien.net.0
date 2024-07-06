Return-Path: <usb-storage+bncBCFP7G4HQQGRBOVLUS2AMGQEMLN4XNY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 1401B929257
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 12:00:28 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5c65e857a32sf908728eaf.2
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 03:00:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720260026; cv=pass;
        d=google.com; s=arc-20160816;
        b=GWm6aHN+LNsDHD/58O0t8qLRA0+LJ7Fk+YJtkvkLETQRIlIG3tkzUhXGsSwblm0AGo
         IPAzsqdLDfPDiGFESrWSR00ft04R1fNoIukcMr9IVFaDH4WO28cVw5/s3QITxGn/6LEQ
         amQpc+4IEE3k2tUs69JDFdWJYcfk1A1Zxzmoe7B7sHDFtW0To0tuWNplMt16gSQZCjps
         JsVQF6nCUi22RzRh0CXKy6x7wqxlbZuFmSV0JFXtU3trl7oNADUfQvF8YjT//7/FNQ3e
         7syCuYY37MGVTHDiOUyL0RbofUwFxW+VPA02eiev7ncKHnzRMJ6DVBFGanOFpRxiD2nq
         UMGw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=5CMIt+Arj/zOpW/RBLlKVwLPP/cpfKAOc0+PH27j2NE=;
        fh=/NFveijWSAmXIUgg77CfHKW9Dq67DGQerK3GZvG+MOM=;
        b=K5LYcOtdXFdk1RPs7cBZCu/alAJc3AmOV0bPOeGii2mTdEggxpZ2LGP74qSd213hZK
         GMdEaXCOQkZe7MDh7SBCVA0FuN9M0cpioHSFbOamiJs5M9Rr1OCPS/dYfeAVnp3iR/zx
         eo87enoFgYg1D0Dj6AyuM/jr/lka9y6uK6ycc1WqmhRSspKQnT30waWGeUnXMKQo9O2k
         rFM+7c4aEgPTZIVlxc/nP9jtQTyxOaVOxDoui+qVwyy1bIcGF+IY/8ZCKMcRGy+Tm2f2
         srlgIC6jbBP55X/FE0cokXXilJIPFE5Ga4yOQGeHuDunVcfo8/Nu8Cj+wAkZC5BaWeb1
         zjCg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=Gx1eHaev;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720260026; x=1720864826; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5CMIt+Arj/zOpW/RBLlKVwLPP/cpfKAOc0+PH27j2NE=;
        b=LElVJI/l/EqMkziIUz/8XsNB7aj1Sa8HxoJyrmMo85Bx7BiP858zBWfR9xjgJ1SZ7y
         3gf7HIJhZjPBJbk8R8iKaJhNwtS4Ifu75rxLytIR4+gy03LyB5icVugZefdkjpb4JGHo
         yckvXSHZ9Uo0KKWBMAWE0Y4kRyDoYl5A2uUtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720260026; x=1720864826;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5CMIt+Arj/zOpW/RBLlKVwLPP/cpfKAOc0+PH27j2NE=;
        b=KMsokeaaHpGYBFHu/aqAvRe6ZWe6ZxrChkSmvQfPHP3IyKj6BuMsfZVSjE9MJQcW0u
         6l+J8iAO+jOM1f+NWwY9i6d/apme0y+J8kmXvuOleaBg6V3KChQM4h3mZbQMfAgY9jbe
         PYLutXig+O5CvHs/WWGeZTbkVC7OerGoyEew8kK1ywpsYelTW9ZKrTainHURDdDgddlQ
         QzgVTp92ctroE8PoEBwlnCVtNycX737GlV3DZ5yZFLEB0DVBKC/Z5qHwdl9PBroYbNzm
         1dczodUu+fEsBWMKuULq5pXqJ9RrtNlWdVGHv65fA6Q25+jKGii1zhhp0KbppDY8jJMK
         mVzA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCXJAIPrdc9uJ+/jGar/yYis3cAMkW86rrmRNn3A4E1jNxXMboYuAxrXn72uFDyE//H1yh67Snl4CgyJfddKvvthWr75uGjF1iGc
X-Gm-Message-State: AOJu0Yz861VVlJR3lYC/4tAIGfJCaIf4ZwFC0f6U4bInooxkfpr7p4D8
	hAEFwmPyRt/+JvdrqbgmaGK4cgMyuDePv8vYrYK2njuGzrz4IPVc7mvfDk0ZD3E=
X-Google-Smtp-Source: AGHT+IGsHe339I+I8psGSO868yl9JWfqkz8PL8/OSmdXD/ehmkwj3xeTL174i/mPU3IYR9xEM3Ee/Q==
X-Received: by 2002:a4a:ae05:0:b0:5c2:20eb:aebe with SMTP id 006d021491bc7-5c6470de542mr7065134eaf.9.1720260026591;
        Sat, 06 Jul 2024 03:00:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5405:0:b0:5c2:24be:40c1 with SMTP id 006d021491bc7-5c643dbe0c5ls1875557eaf.2.-pod-prod-09-us;
 Sat, 06 Jul 2024 03:00:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVA7gDJvoykp8F8eUG1OYdPW3gN90XCN72W69oEMvifqiB5Zfx0wGb5Q8p3i6ImvVnAqYzvlf1MlwT3KmCaKmiYVceb4nQZZEg6qK6SI5uytKeaBps=
X-Received: by 2002:a9d:7a98:0:b0:701:fef8:154c with SMTP id 46e09a7af769-7034a760ca0mr8394465a34.19.1720260025705;
        Sat, 06 Jul 2024 03:00:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720260025; cv=pass;
        d=google.com; s=arc-20160816;
        b=snAQSVde7tqhUpwhmDXFyaXI0sxTjGsnrnippPfXeef7IrzLY7ckoU2BaDm+JwUFz3
         cH86Jiw6nMc+xkjRKuBr8rDdgBfp3mjkNQ7wkY/yWZtyrIG9mRaUtaMJ+mcPk5e0wmuM
         nU9jXcvvqdh8AVIQT4B1wARGCIE5xeONEnp+dzToTdUE6f2xtc1EjWLekAByD2FrADgk
         dqfqegirjUGOkjoB+2eQoRqRtzVLmDMlFXkp3kDTitv0MH3me67rvQhAWo6UPzg1m2Xt
         vr1EErJw176vjldneRNmy5UErikt0hoPIHdjA3TAwRld3ZstN5CYg9cnhotSZO3Vcd3C
         f03w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=kwcLnKkbwNtSh+Fo870t0RFr7qhod0dYfmejPREligA=;
        fh=4HWS1BnKmyzr1jKtPfMCWRzQy1hmtF9bNCvfHraD4kg=;
        b=xqvQXWRrR0ntFsWO+AysSl2Vl3b61ErfRu1s3LMODzcr494aI04U+btVseR9Qro5Z3
         MVeNHvrI8O059cH3aIda4Y4ixvVis9q5Ha0DilGTH2i4y7fBXVxy616yC3YxJnwg/fpX
         glUSsnPmpbVaLRm+wDAvGBqvzjSFRybgd7bKAVXfB+MC2KJUx9ti+1fiZ6VCn/iBmVL6
         yf2AVQ48IepauXPTHBNDtP0QUT7/y1PQzjUxXOA0ZlJDtGLZc6zzheifAJtky4ODaVLr
         w84X8PK9O0pMvrPm1XMZhkqdBKxfv/gAlpCCLundU2yHke9aobiZT/C1cI8Ms6zv7FvO
         gSew==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=Gx1eHaev;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20801.outbound.protection.outlook.com. [2a01:111:f403:281b::801])
        by mx.google.com with ESMTPS id 41be03b00d2f7-75e0784aff0si6297374a12.437.2024.07.06.03.00.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 03:00:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) client-ip=2a01:111:f403:281b::801;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OdDG6PrkQ/fw8ZzKmQX8W56Nx/iAE/KsK4pk1SMcDjwbGRC79wac+978J/HXVrj6aWvwZg3xkyWA+Vtm0n/GMouJS77q+32A00BE2IoUqOyb1/XG5+xqn4OIN5h82e7ZxtakkcaQa3ewRWFAZFzciCzJIUYWHp7xCKhGE1/gKpw4u3h9KPzkIJxdSv60bbo0KEu8SKeiZe+lG6xHtFc3PsUJeM2QELIRqOmSyFGc0/xf5xv+sUBbPFlWjElwCGfr4Lhym3G88lRqBCIZW9A8QaATOArje9cswq5c2wvgh1lJE7ZFzzZwbc/AUXj6vZyuMVhr6ASSb8zf92inM7VNVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kwcLnKkbwNtSh+Fo870t0RFr7qhod0dYfmejPREligA=;
 b=ZGUvHgTx6kcWVj9GTEt5qkJbSlp285Jx/YJXWB/4FZCU1n2TxKmowepjpvE3vI0yGC9Xb4t8kvfGKvOt6F/v3nd3ypvfTd0VRir3UZPH2GHdfIR6rnUkDqKTpiGQbZTTlTDu0Y81x3oa5J+SgQdfDOBEaFAXOyYUHEZmCsOTjndlny+rahJxEkokhCzyENqPW6qS3BKT82i5LjHesSnttcchEucWFIuaodtVfNv3c0F3hGnjHH8jDcLkOQoo70634UbET+vTaJf0+1iSMh9nk/BnU3RdYkZzGrsiB/6KaJVxtchnhat0mvi39x4frNsbCXTPIYNVveEkBzC/0ReaBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN2P287MB1372.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:1a5::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.33; Sat, 6 Jul 2024 10:00:19 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 10:00:19 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>
CC: Kerem Karabay <kekrby@gmail.com>, Orlando Chamberlain
	<orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH v2 1/2] USB: core: add 'shutdown' callback to usb_driver
Thread-Topic: [PATCH v2 1/2] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHaz4tO1SR07ZiOs02hIhmy4nGDzg==
Date: Sat, 6 Jul 2024 10:00:19 +0000
Message-ID: <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
References: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
In-Reply-To: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [4EiUMzB2V+nZeooo+yOotsRAE7uv42s9oIloJ29GFCul71g9/mfMIFvbPiDFBsDPMipJedcTzJc=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN2P287MB1372:EE_
x-ms-office365-filtering-correlation-id: 71622f64-c780-474f-cc9d-08dc9da27157
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799006|19110799003|440099028|3412199025|102099032;
x-microsoft-antispam-message-info: 7N4a8d2ZZR+ibRxGY1hAe6ieqlVB/N8snOTfpvPXl5CU/bVJAQbSnILdqG2SmxKBfJ1tXqj7BIUpByRecxkbB9333mUSFPfNtOjHwBjAzn80UDdWCG+CnnmVsk+3lzlADAzPty3fGwmm8KJ2GmPYmtZIyXN8jSaa+SrOjAqXGzRwfyOg3kxwu2FIb18IcYfbp778RDlQIewIjh5yp+479d3pGPU94HIBCmKrL9mD+2geVvS0ASpifBkw1ZNvxPqr6YDPtQotes6N7xYCypSLuTxTIZVzqmcDLW73She7sw9WzQLcjIa5+yfv2K9TYptaB7rnpk30CPLArbzO3qIxnhWYN3P31tf4nNSUtcp33fxQT0HTbMSSdemxeVUMl83WDnUjFaBT5xFkwkpDHMQEnKkQ8Lb71fsG7OcbpNECIjkw7GwCBwSwmsS+odMWpX87PMRAVu0B9BLNXEp3HhanGLsW4kxwgTqZ/sra+5MqDalupCPCjdfawnoGx4XAMQnypB6zKy6mgsVJZIfeJb4Gs9vmEyfq4WO1WHEmTWvTP6iDVUEl4zGt+jcvGgTNb75/Nrmyd1RFxYoraUsy5SDrSQMs6wFu4S4iu2ktaxwlpBXT1riw6zdKnckXetjVKBFC4pEAlC56+vJl8wawhmuuEA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?unbaERjSnIjFaiIrp2IRwFBtV+jVaCXgdvE7uCEBU8Zj3vbDTtfNqniYHJkU?=
 =?us-ascii?Q?4cFyvkuHuFf76vJ+h6Wen4VWIS324lBImp1ZEqPpRtVKEY/YUU0H7DIwWkqV?=
 =?us-ascii?Q?U0hoJLbqEq4x2PiphjUuHw0iuTiWZh8vnSCsSA2P+wLvkYBxnQ1UWbnLSuap?=
 =?us-ascii?Q?lLqf2uesNrWaBXQJhSoyyPGUB+B2J0f3/PDyzK82U7lJe3JVHmFdktv3FL4j?=
 =?us-ascii?Q?wYedCMWSZ2nYVxjJIUwD71k+SfT6JvX0GMrSSXZMBD4JcrU3z+uYL2EVfIwP?=
 =?us-ascii?Q?YsN89+lYEhgxKCrQVHielhKR1Y9yNy56Mtg++72v65Yfy33gXGrXLMDv7JxC?=
 =?us-ascii?Q?w9F394YkkCtnz0WKbITkQzEz3AnSG8N9LxrmTelPWnwDZxhbcA+VvxEFRTfc?=
 =?us-ascii?Q?OR4Aw+OW3ssS0kWVxczmEhQaIpvFpiPPHP2MJz5oix9A4j1rHq+hiOxz7lUK?=
 =?us-ascii?Q?UyYtkX+Mid2a+NnnhJTmWVgTe/loXUKOO5+1mO0mJJGBjPu4XbiTGfHlBQJH?=
 =?us-ascii?Q?cQkij+T+rU5Qtn/xaLgrgx9b92pApapTr6LScqsixftzTq4Vspqj579zKGsM?=
 =?us-ascii?Q?VfTG0Zs1Iba+1QPBEHnhl8xloPjfLzmXyS64Be7A2UPyPEZG/zAIr6VxGvAY?=
 =?us-ascii?Q?9ku2J/w8f4zRxvEtpYX5ISEIBhGunNunm4UPqCzW8z04zi7PDRJYlsVyNKQO?=
 =?us-ascii?Q?Ae4BW6NUkvw24k6y5dgZxvn1/gcX9RS5VOz/MdxprfPOQUoIFGRtvQlNLQ16?=
 =?us-ascii?Q?fC7YkguPz6Bw8zMmwvkKZyDyUwS8a2nHazfar4DTacJj3B4c9V0ilPKYsHw0?=
 =?us-ascii?Q?CM6htOXEKQlPS1TTxVrEWMrojWHSMnh/a8ckAEezcgy6BU2iHl0wCkqOPTLw?=
 =?us-ascii?Q?7iVkWmzK9tO9Wklmh6uMFoym4EEluEzBxZgxUxd4StoE9JZp94E00IsPNdkj?=
 =?us-ascii?Q?tdYLeCoLRg5WyBLpC4VqOCbA2cC8DD53Fgaft6ugLiIN0KR6PP9HMlEN3JVr?=
 =?us-ascii?Q?GeKLV8LtDowJy4woCKxVJ4RNPRgXJFPCV/hh66h58SEeFASnxvLLUW7KGrmM?=
 =?us-ascii?Q?TNlgPyWiGiwUCYl7fCq1bwaHLVu1o20jCF0kaABaCNauMAIaD28KOoXGu9TW?=
 =?us-ascii?Q?Z6B2XyY7BTyJdQebZE6z79LFoni0S9/eJdeiQMwNdgXFbsuBM91BirMrG2FD?=
 =?us-ascii?Q?xG5z9NTSeuWaKjFxiQZ7DngfmV4BNjXqawpzQfzBBG0GEC6MIa8340ys0PZc?=
 =?us-ascii?Q?rambc4HyguSXyNr0wzV0JetlUUpBBUulEaM8y8DT7c8ATTpp1NKeW+eyRwcE?=
 =?us-ascii?Q?FKEMfXjWvxyns4tfNjF0Uyq8?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5D1E6FA22EA4A94190EA2BFB9BEB0E2B@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 71622f64-c780-474f-cc9d-08dc9da27157
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 10:00:19.1584
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB1372
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=Gx1eHaev;       arc=pass
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

From: Kerem Karabay <kekrby@gmail.com>

Currently there is no standardized method for USB drivers to handle
shutdown events. This patch simplifies running code on shutdown for USB
devices by adding a shutdown callback to usb_driver.

Signed-off-by: Kerem Karabay <kekrby@gmail.com>
Signed-off-by: Aditya Garg <gargaditya08@live.com>
---
 drivers/usb/core/driver.c | 14 ++++++++++++++
 include/linux/usb.h       |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/drivers/usb/core/driver.c b/drivers/usb/core/driver.c
index e02ba15f6..b35734d03 100644
--- a/drivers/usb/core/driver.c
+++ b/drivers/usb/core/driver.c
@@ -517,6 +517,19 @@ static int usb_unbind_interface(struct device *dev)
 	return 0;
 }
 
+static void usb_shutdown_interface(struct device *dev)
+{
+	struct usb_interface *intf = to_usb_interface(dev);
+	struct usb_driver *driver;
+
+	if (!dev->driver)
+		return;
+
+	driver = to_usb_driver(dev->driver);
+	if (driver->shutdown)
+		driver->shutdown(intf);
+}
+
 /**
  * usb_driver_claim_interface - bind a driver to an interface
  * @driver: the driver to be bound
@@ -1059,6 +1072,7 @@ int usb_register_driver(struct usb_driver *new_driver, struct module *owner,
 	new_driver->driver.bus = &usb_bus_type;
 	new_driver->driver.probe = usb_probe_interface;
 	new_driver->driver.remove = usb_unbind_interface;
+	new_driver->driver.shutdown = usb_shutdown_interface;
 	new_driver->driver.owner = owner;
 	new_driver->driver.mod_name = mod_name;
 	new_driver->driver.dev_groups = new_driver->dev_groups;
diff --git a/include/linux/usb.h b/include/linux/usb.h
index 1913a1383..832997a9d 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -1171,6 +1171,7 @@ extern ssize_t usb_show_dynids(struct usb_dynids *dynids, char *buf);
  *	post_reset method is called.
  * @post_reset: Called by usb_reset_device() after the device
  *	has been reset
+ * @shutdown: Called at shut-down time to quiesce the device.
  * @id_table: USB drivers use ID table to support hotplugging.
  *	Export this with MODULE_DEVICE_TABLE(usb,...).  This must be set
  *	or your driver's probe function will never get called.
@@ -1222,6 +1223,8 @@ struct usb_driver {
 	int (*pre_reset)(struct usb_interface *intf);
 	int (*post_reset)(struct usb_interface *intf);
 
+	void (*shutdown)(struct usb_interface *intf);
+
 	const struct usb_device_id *id_table;
 	const struct attribute_group **dev_groups;
 
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/A53C580E-C0CC-42AA-B50B-F1B8A5756C9F%40live.com.
