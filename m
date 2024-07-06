Return-Path: <usb-storage+bncBCFP7G4HQQGRB5P5US2AMGQERSOJJPI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id C86A59293A7
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 14:56:22 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6b5e0b5c9eesf30721616d6.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 05:56:22 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720270581; cv=pass;
        d=google.com; s=arc-20160816;
        b=se6wUKto6/x6uOncQ1N3ApqoknDPWBoZ7bMIMWT6eZuX+W6kmwMD+R+3VfAU1dnpte
         GurfJLMhDexn4Q8ubbUO02Ys1nVlOj6nb+bwmaJQTLDoxN+BlZwCKx/Gjw8U6QnTOfKO
         aPQEowzdU6IzleH1z7BdTTmcm17MkXnufbt+X4wTgaIcNWAmOIDNc4YCUv8BHRdHY+jP
         qdKtVxkuslGLWwq2yc+J6yPDTLTqXkeTuKOmxMi9qVT2yPjkGNhy7axU0SUYZrDuO2R3
         grMi1s9u+XGbVWub8dbO/Y7zE5yHjTwOlM8C/fZf2UU5qfR9oYMJKaK9bNeZY19bRYFb
         /sIg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=3LTFYdc4bs7iGjFTSlYNaq9O201rqqIYIVqDXYBqpwM=;
        fh=oL9snZbgu2oVWENdeTcpYGTfCouRzjOiKH16n1GdsKU=;
        b=WrGKAk5yiSlexxfIC2vk/qyk5XibBVBTYMJb4xlap3URN4ymk3plAVNBhOW4kX21r2
         cccImOG131KTd654/VYsU1UdVExWbyU8EDfyc8d9g3qNsJ+s45xlF1D5KkWR0bK7rRp6
         wOXuEzTSC0bB+I2/+CwoX+XviOxT08sSMb0T/KjcpEOsquNz9IKTyBIYpgchfDOE2SM3
         Il0pY+4OWEHzGG9C2B7zN9CXdw81AjdeeZVEijcoIV1J996Id3BJSOS7a/vsRSK1vEN+
         cCTpOLS1cPkl7Pd/Dl05cwD094na6+MQjEJFTt6jfugVjg9h210xG1dPzjYtNBBHKvKN
         G1Sw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=Y7TJ9JCu;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720270581; x=1720875381; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3LTFYdc4bs7iGjFTSlYNaq9O201rqqIYIVqDXYBqpwM=;
        b=lyzNHBcPva85dMjfK/XxU7i3MVHa9HBLoG85Mnse5BK31fe8PVouFKZY2hgy3LETlX
         yFF04Stj7GHaM42dBCNYQS2xRFay1jCDEreWxeTvH5XvG3KGyjRjRiFKN8cn2xKOVnVk
         UiMGkbf+ve0PP+vd5cWlePlwOpF2YjXgJ9lPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720270581; x=1720875381;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3LTFYdc4bs7iGjFTSlYNaq9O201rqqIYIVqDXYBqpwM=;
        b=YkCdnSJD/SSQ3O/hZpmXghdgkU8hTBGBKup3MDNyaUZpjbCOGlyTFGwgB5TgKWlcz/
         f8vHOxF0Nb6OnzzddrlC1Fg0QwVZYuR5jASp8MBvIAiRZ5MHEbEC6LKdb02skWVYSS21
         wYnmLDy3HI9sx/J0WyRYuHC0GqLSnuIY6Qbc9ZBUDDJgH2h4tJCw420Xmn4LqcrumsGO
         mb4iIeyQOjIy+o6vdGHZVWXKo3Lyn9wWNRaJLdnhKvemrY8FGaji1hH3pxVZ21Xug0Ym
         +4ohvYO1RCNRCBfbYHcocjpjJn/CZpVvwj+WNG7rvYaxDWjLdEdr/i0vLz6xQPKWDZnB
         4L1w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCXEI1TnQIi/GXighMj28NYeV7b6iqAE6nxBda+P2duy35wroa8/JFlXn83FGYPTWxehVTAs15hpwVzP33fpPqxsU6CytzXZ+B2I
X-Gm-Message-State: AOJu0YxTDiu0hmVO1hKAwqYP1NR5YRx/TelTBM0RQ8YJwatihbcSwUsu
	6nnpvHO2/M2r83NKPCsXak2kJUb+hJWN8s0XFsCh23zD+zYYnKmACNqRClLFKTU=
X-Google-Smtp-Source: AGHT+IEx9kVG+61It/au2KyatDgspqVzu7PDamo8/CPeOyxBV+TzVBNX7TuSohNlrIMiJRDh1fDRDQ==
X-Received: by 2002:a05:6214:1253:b0:6b5:d311:962 with SMTP id 6a1803df08f44-6b5ecfa8604mr95974746d6.22.1720270581622;
        Sat, 06 Jul 2024 05:56:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:4106:b0:6b0:91e6:b46d with SMTP id
 6a1803df08f44-6b5ea25d76dls38198516d6.1.-pod-prod-02-us; Sat, 06 Jul 2024
 05:56:21 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWk4D0icuHzg38XxN62OJPtgVuYiENdfb4mICAyc76Rx/Vi2JEbjaw26wYmD0m8kFi9h9NGSnBjmvJz9OwMXXftEEBmcLQ3I/3CNh4t09vchVFsgZ4=
X-Received: by 2002:a05:6214:1bcb:b0:6b5:d97b:7247 with SMTP id 6a1803df08f44-6b5ed0619e7mr86062886d6.52.1720270580783;
        Sat, 06 Jul 2024 05:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720270580; cv=pass;
        d=google.com; s=arc-20160816;
        b=SxJy4EIlsxP9wsGyJcNmlm3OLjjuzTxOx1zgSmhjZM399RFFACu5ivRm9pPc323Azm
         NvKwC0edm2xxhNk/4K55bkbHHr3Vxz4Y25TD3J6HiA3m284P24UmzaM7ag7OPKIhdFbz
         I2aZpDd5NfBT61J2xxKlMKBzSUU+HsXBRkktKrfIFXmk3JEawJqj3HiFJjSpsdN3c1tk
         KiRvZOEFXqJHdr01ROOUmZyUboA3viNhZBYiWZf+HVaNFEN2OMKRGH/KruZgmhGc9l29
         Gk7IdL1SBQjoccCm6cW1FtuAqJh4zbbbxCA7w2osdNzKSMphk+vJOmIeRDnarY8dg1ka
         A/nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=QWNBRCb7JbXWO2xGWDsp3WrYX6YbvrpK3aNJdDamE+s=;
        fh=ckEDp2FnyVnpr6Oz+EVf3BXfz23j5KNJCpp38Y15hrM=;
        b=HSW89gJ2UJsZTwXkaBijNZsL8gT8pbO1qe3Z4DcRsgP0ybHShx6NtgN92z3DHxMGS3
         talgNnPq5NGfVphAhODqV8M96B/Ptj+OeMfMlP065f3X5+q1PIYhCdcdw2fWGAKznRDT
         GGnTQsgzYorpV/4R0Efz6EgRuO8AbMKtXKiCKuxj4jyh2QMptzo0f2O3BO2v9K9fQ6yg
         WZgHIyI7/0/e0gJkQqMCriaW2b7CYzFzMmbrp4GQENpSUiAU2DOBH2+FKgcK9vq+8iwU
         04O2icQelFit+lQ4ItpRBGmoktSo0tEA3oMZKcK4mG+Qfm39FDw5LAKoaOiyA5S3t2mM
         C0zQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=Y7TJ9JCu;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20801.outbound.protection.outlook.com. [2a01:111:f403:281b::801])
        by mx.google.com with ESMTPS id d75a77b69052e-447d791df1esi29105961cf.451.2024.07.06.05.56.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 05:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) client-ip=2a01:111:f403:281b::801;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2GWtUNg2M3cI0QPASBLynzcENmLun6g3IkHoIdXiQNKOsdf1rfOBqZPFDIg0zzwuiwEsVPpNmb8q4Re7K+PPcQAJLIlcpExFwrR3KSIBZwE0kJ23/f7I1cyW+xqDFBaNmNur/rm8Haue6L5o/8Zr/lpvJU2Me1dtW0DFNo38ItMB0IawL6+W/tDgzSp88jnQpza1ORTTj25X5f71HBavqZr6ELlaSy/raTkuZm3RGEtUb34pBFt3R8vu86YwJ494iBgnVp8rJpMULOdk9MnIiBqSqSX61QeKUIACOdWAegnIhKorMGHlOM7S5PmNuI/5rjgXeGHXnsgrP3ivIc/Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QWNBRCb7JbXWO2xGWDsp3WrYX6YbvrpK3aNJdDamE+s=;
 b=n0gFp0pGfiXys5iQLNJA3Z+aU2kKY9nQJI/UgB/A9vHEWsA68gA/RaWupOCGjRBshMhcHu/7QmSm1vJTEDytvK7Orjwph0CgA3b153Ko+bVrZskQ/zcV00MhGaH8Ym8G8IlHQ/msZtOp3qoQ4n9vZh3kM+qDidBs3nGSffXfxU9tfwl6m5bPcr6GrnPxAXmK3JXIeaKrF4Nk/bh4Uzy1fzwu+gMlcSMa8NGl6T0Qsi354FFlepbITOoprnfcI3zYLeBRZZOuyD437jz5Q1d6J0UJv8qI+dNVu8AHESkTU4aF3TYzG4R9k/X4DGo/2OJTIyvzGKXA+YYn9TbvlcFJEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN3P287MB0789.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:174::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.31; Sat, 6 Jul 2024 12:56:15 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 12:56:15 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
CC: "oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>, Kerem Karabay <kekrby@gmail.com>, Orlando
 Chamberlain <orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v3 1/2] USB: core: add 'shutdown' callback
 to usb_driver
Thread-Topic: [PATCH v3 1/2] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHaz5yAS+i+TdTeKU6c11DkRXEKIrHpoxgAgAACioCAAALZgA==
Date: Sat, 6 Jul 2024 12:56:13 +0000
Message-ID: <7CF44361-A11B-4C30-B2F7-A66C986D3143@live.com>
References: <58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com>
 <7AAC1BF4-8B60-448D-A3C1-B7E80330BE42@live.com>
 <2024070612-squealer-wackiness-c885@gregkh>
 <1E1BF62B-E8F6-411F-B06C-4A28C96B4897@live.com>
In-Reply-To: <1E1BF62B-E8F6-411F-B06C-4A28C96B4897@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Qoeu7CdgzfrwjYO7YijztYGtA3DtNBvetGnIGEVvsJcGHW4212a+xtyWck0CgThV]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN3P287MB0789:EE_
x-ms-office365-filtering-correlation-id: 8c5696dd-35fc-4d76-50ae-08dc9dbb0448
x-microsoft-antispam: BCL:0;ARA:14566002|19110799003|8060799006|461199028|3412199025|4302099013|440099028|1602099012|102099032;
x-microsoft-antispam-message-info: GSUpfrP89OQR5qh9pnY4AIl0UNFVzMdrKS6ahE5pLJt9Ps1ofhWuQvdlDQi/PwETz/NL3ay6H8k0bk6DBOPRTYN7QRcaehAGpr1g0aA8RqcdQdic3R2ZQLKL/5VhSlN8Pxb9Ga+2gp0nhY3FAly30HjDEn45bFUke81ykUgY9xGUEfoc2SkRUURV70MpYjgKRSVfVyM3JiFOtOKzboMHR3LTtTbJsxByxJc1Z/YdOhlcbOUGYLKGeu2qfi+eS0C71PAfGdNcW5I92fqoUjh11Zlfv+LgT+rBSLWnEfMl9aec6iC0O843QCiToUqUURNfjG2xp74AAjQKWolqOcJfxQ6wPEYt6yLK02Mu1KkVJnQUi0buCH3x9hsP/fPU/T3yttQlDqLenXLqlm+pxqEH0LuefTTWcpGSP3FYgVS1Xed+oLEJ5TIbeE4zoER1fLIK+YVEZ1+YsuOc/scEUr39i80WgnmtnG1dB22qR3PangGRYfUVdzTRwq1oHxpsI/mLjZZyoOmJW1y9UuVigJ5lEIioXjmbOpCXMD6fj5t1MjMKuyR6QdLX5Pnm5Eaoo1fxU4hs6zDHvzLZLdv9nG4ygfIqPnTBIQa/xvR85o/70X19qx7/8Zg8vpcqZedIxwlI3kzya7rDc3sleDyxvJMjXmslVu6MHChlgY81AeXkrUMB4l8PGgjTIfxfA1FOGdrJEsF7kU8rANOZn7nIwSTmYKr5Li+LSb/rqxKZ/vJqZXQg//UJZJ5FF3/7ltLtUq6Ve2UxXnnoP09eRDYxlP2ilQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFRRNmJOQWtRdS9ZRnFTVzZ1dEJZdDNLekQ0NlFxV0ViTEs4QnZ0VXdHMjhz?=
 =?utf-8?B?enNCNFl1dmxSNE9zMnNqK2NwdzNGVEwxZTk5ak9VdGxmUndqamEwMHExdXdU?=
 =?utf-8?B?REVOSHBjWkJHQjZYakQ4YzRFUlYrbDJmTWs2alN5cjRqcXhtR09Vbm5UMkdy?=
 =?utf-8?B?MG5BU1lhSGhlRWVwRFJ0RFA2WnNUcVNoazBPTC9iWVdIQzRHSEJmUVRhQWpK?=
 =?utf-8?B?ajhTL1dDcjB0RnpXM1lkb2Z6OEpQRTA4aWdFSDZVM0JqVUZmNzRvUWY4dlhy?=
 =?utf-8?B?L1BPekczU2Z2bEhERnNUWWFXTURqeDRYbGV4WTZWMHAzNVpuZmluSHl3eUM5?=
 =?utf-8?B?ZmFLK1gxNi8wRHpiSWM2bzdPNjZOVUVFaENJc2p3UnRuZnhyN0tkMytxYWR6?=
 =?utf-8?B?Yzcwd1d1SzVHeEhHTVdrMjZhSmNFdWxaQVE5Smd5Z2diTWx5MktCeEZqRUVV?=
 =?utf-8?B?ekhxc0lwS3JoUXNUdzVoQm01TndjbEVkdXI3ZUVtK21RYkpaRVBXQW8veWtk?=
 =?utf-8?B?VzhaQTY2SnNTSE1RRkd3b3pUWlc2UGh2THhQKzVZTDRaOTRDaTRFczloRXA0?=
 =?utf-8?B?M3RCZHRzL2hLRTVWaXEybGNGdXR0cnRIL0tRd3ovZTZzYUlSWlRnTWtVTnhi?=
 =?utf-8?B?UWh6V09DQ01hYlFUYUNyam5sWlZ3ME40aUhDc2ZxZEJLM3FoYm5HZ2FsSU4w?=
 =?utf-8?B?c2hSRXZiQ2k1VFpBMWc3bkdINlY4UzZQWXRQTW5XNzF0djZ1eTJzQ3BJc0s2?=
 =?utf-8?B?VWVrYlFRVmZhUFFIMzVMN011aEs3bWNLdnNQVnYvWFRaZ1ZyWHQ4eit3d0wr?=
 =?utf-8?B?NDFWNTl4UVN3bUEzUUh0ak5KbG04UitZS0NQSGU4TUhYNmhNell4ZUpvdWIv?=
 =?utf-8?B?SlJmaGtoWm9pajNLM1JYKzl3UUFneEhON1Vsc2IyV2tmOFh4eVVleG5Rb0Rq?=
 =?utf-8?B?ZlNsL2VsNU5mM0ZlQVVIK2RVd0RVamJ0NUJ2M3RrQ01jbDhaVmlRTjlrbXNv?=
 =?utf-8?B?dFpBTnVuV2Rrb0VJNWFqVHNobUtDZmJMTEhsdlBERElvV3g0bmRzTldJOUtV?=
 =?utf-8?B?Ujd6MDN4ckIyTzB6bGQrV0pZL0J2MHA1alpiQVo5dnVaanJsaFFrdnoxOUFp?=
 =?utf-8?B?aGNaVHY4VnNIQlduQ2x2VjQ5Y1VvQ3ViZHEwS0Q4bkwrN1pjY2dYRWpGRnU2?=
 =?utf-8?B?YU42T0RjRXoxekR3b2wraklSdXZQTFlvZXlWUlpXa1UzRUlwWjExTHNsVFVz?=
 =?utf-8?B?L0hqZUMrdmZweUhuQkR0Qk5tc1V2WVFScDRNV0NjZWJjS2IwYVN6NEFIRXJV?=
 =?utf-8?B?MGJKa0pNbmNtYUtubWxxeHNjTTlyT3RnQzg5WUFRQ3grM0NiellzTnlyMFVs?=
 =?utf-8?B?WFVvSnNVMXNySzJKTUFnTHgvQ05lck9VNjBCZG1YSDBNbS90NVdxV2xHWFJa?=
 =?utf-8?B?NnZqc01BZ1ovNmtkYlpGbjhaTStibStIQk90OGRxSjRuaWViWDdrSUtLeThj?=
 =?utf-8?B?d0hpRWVCREkrcDFOZVFPNEhtK09ncjEyeXBzZkFNamdkazd5SnNuZ25rQXFi?=
 =?utf-8?B?UnhPYUNVOUZnYjRtS0dFYmVnYXZyemgxSzhIU2hqQVdORE5ucFpoWEZYK01D?=
 =?utf-8?B?dmFmQ241ZkZhVTdrMFV6bUtibnBwZW03dkc4L2loTDdJVy94K0FxWFZGRXRU?=
 =?utf-8?B?KzU4RDdjcUozMGEvZmkwaXpSRENXNVlQL1E1ZmNEUXIxaG9pTElWZUtReVND?=
 =?utf-8?Q?qTx+91PyC5KiFOOpHxBrBq9wNuJyH4cH9Qc90ep?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <0EED9A1C0EE4A34AB199B9B3403048F9@INDP287.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c5696dd-35fc-4d76-50ae-08dc9dbb0448
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 12:56:13.6017
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3P287MB0789
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=Y7TJ9JCu;       arc=pass
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



> On 6 Jul 2024, at 6:15=E2=80=AFPM, Aditya Garg <gargaditya08@live.com> wr=
ote:
>=20
>=20
>=20
>> On 6 Jul 2024, at 6:06=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
>>=20
>> On Sat, Jul 06, 2024 at 12:03:23PM +0000, Aditya Garg wrote:
>>> From: Kerem Karabay <kekrby@gmail.com>
>>>=20
>>> Currently there is no standardized method for USB drivers to handle
>>> shutdown events. This patch simplifies running code on shutdown for USB
>>> devices by adding a shutdown callback to usb_driver.
>>>=20
>>> Signed-off-by: Kerem Karabay <kekrby@gmail.com>
>>=20
>> Where did Kerem do this work?  Any reason why they aren't submitting
>> these themselves?  Not that this is a problem, just trying to figure out
>> what went wrong with the development process here.
>=20
> I work at https://t2linux.org/, a project aimed to bring Linux to T2 Macs=
.
>=20
> Kerem helped in developing the driver for the Touch Bar on these Macs.
> During development, he did some improvements to the HID core, USB core
> and DRM, which are not specific to the Macs, but are used in the driver.
>=20
> As to why he didn't submit himself, unfortunately Kerem seems to have lef=
t
> the project and is not contactable at all. Fortunately, the patches he co=
ntributed
> were signed off by him. Since we have his Signed-off-by and the code is G=
PL2,
> IMO, I can legally submit this.
>=20
> Link to our patchset: https://github.com/t2linux/linux-t2-patches

You can also find his linux tree with the driver over here:
https://github.com/kekrby/linux-t2/tree/touchbar

>>=20
>> thanks,
>>=20
>> greg k-h


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/7CF44361-A11B-4C30-B2F7-A66C986D3143=
%40live.com.
