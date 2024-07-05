Return-Path: <usb-storage+bncBCFP7G4HQQGRBIOAUC2AMGQEQOUKMIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AC5928C59
	for <lists+usb-storage@lfdr.de>; Fri,  5 Jul 2024 18:32:36 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5c664226393sf113359eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 05 Jul 2024 09:32:36 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720197154; cv=pass;
        d=google.com; s=arc-20160816;
        b=RL4KvCOTgvmAJdwDQK7Di1pe2EmHxADmXpST3ywfXzTdclZTUCYSKgMdUqs+NPjsDi
         rKR6i720nWSNyqneNAkP/H8KtsY/+TQ+KFJqUIiQjETUOO1ksYsarVuoplG2NH6APrgo
         SPxw+4LdkitL5qruDoL0sdgmKltsoi78h8tJlYRnRszHzMmYMgzk1RDdzk38hMlM5l12
         +WjMhE2ohchDL9OeUoZDMQCIWT/zg1LwewM4fIWp2E/4nlbiqxZpC5yHclyFNUzfVC/o
         c86JwiZhgvlhlVGyjIfRdJLNOpHF2Df0V0mPpKjD3C2El1DfWLm7luS6ZIOIfEzts2Er
         t2Mw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=q85zzRZX0MZhu91OHcqz9cAWyPqNPmq/FubhM7VcwzA=;
        fh=8JuWBL1mREmtBDKYSvLfqaOZoifo8KmmQzD55rPkSx0=;
        b=ksZCEKpTcSU1/+fceTLEKKBL1APWFCjtMSFIYXcvkLbRsClwB8cZl38A+YViW3RU1w
         hmxEo0fHImJ18Krt+7DXAZmmqsDwNREmL1TfzuhAHvpZ+uBmpsz6v2xyw7vmBGBbWRTE
         hEHat6AYr4dmOfGGyrW6y/OigovxaI9DvEGh1NgvylXOg23kd2EzPXUcPX+ojSqqSQlt
         EfNvlRedLtsQjvLEPXFNFgd1p4+Xs9o9DXLvydhQFhaOW6UMDv6jma0c8EassdJWmkdk
         wkPQu8Ykbciu6YQZgTfIhltymCZZ2teXlSR/p83rdjukALo1HcBx40nqaA20co5Qziax
         9GFA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=MQs3KgpX;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720197154; x=1720801954; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=q85zzRZX0MZhu91OHcqz9cAWyPqNPmq/FubhM7VcwzA=;
        b=NWn+dktlxoMWgOMZBUztSXneokq2I0U6/+p2EXg8jJNUH/f59eJAkx08Zr1ZobH7xR
         pZBpOSdUxuk51bHpeN8SwOR89n0VSYoBNRyZ3J8L2aDn4q+FV6ZjKZ5IMcQ+Y60Uk020
         BymhvPKe8guEG+rISl7sV7QnIdqLNC0sAUOLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720197154; x=1720801954;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q85zzRZX0MZhu91OHcqz9cAWyPqNPmq/FubhM7VcwzA=;
        b=PDWLr/bGQ/YprUWVjmL5ptY2N1kEziCgCJQqWBWeB3THo7uN+gO391quwUZDqG0diT
         cfAoYcUc5VbCPEQoln932AvE9eWZAziQI0XcD91uY53biCoOTj54TyBN3nVFFTqR2I+G
         sfeaIx5daqXsNuedoqPUqpUHUfBMdtdvTt+S2xz3pxrhrOd4rYcDyI9oBMV4PIymK+38
         3raYYk6u/8VzH+HvjGFmFwR+UY0Zw8NZJrkot0QXOo7t1tAwV41i1LjYClREJQ/EoOGX
         xe8z5n8mLL0572MrgS88PhMFY4y+NLtX2P22Br4+HPrgJnp28lioAA+u5Q+vXLwR+ixS
         c8gA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCXykXphEDkumrbbs9H84x/Fu8dZpsOyX64L1SbBSv+UFDcs5FS/bZcKfmNT9XpFl8JcDQWriZj4+8eyoqQFM6MB35ng4kU5Vq+S
X-Gm-Message-State: AOJu0YyC5qZesXEJkfUTeI5PPIACXaHkqRjV1eNo/Ccb1bW1s1K/ukSs
	Q9hVbg5ZsW++NWzlEIBkBKj4awARYTpKVPIuDU0f9DMHuFUFyyMeGtt9OKKrGus=
X-Google-Smtp-Source: AGHT+IERM4FO8uREZ5SFL44PklpIvEhYqqeCK5bkTpyU01No0Pn2u7QuyRT3VnN0ZkQTLfN95MjZ5A==
X-Received: by 2002:a4a:b042:0:b0:5c4:4787:1d4 with SMTP id 006d021491bc7-5c646f488f8mr5194527eaf.5.1720197154010;
        Fri, 05 Jul 2024 09:32:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:2817:b0:5c6:5bc7:c568 with SMTP id
 006d021491bc7-5c65bc7e81dls338195eaf.1.-pod-prod-09-us; Fri, 05 Jul 2024
 09:32:33 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW845tXFHPROkjD60Av0UrE/XD4+VBSrYpCKrrAUZt49J5p8FDugfeqPJD8pJbJsYAHtBnu14JNWt6/HKDP5GW6Xw5PXOSxB0Z8ze5b211ze3/bMCY=
X-Received: by 2002:a05:6830:3494:b0:702:1b3:b7a with SMTP id 46e09a7af769-7034a80a825mr121024a34.6.1720197153572;
        Fri, 05 Jul 2024 09:32:33 -0700 (PDT)
Received: by 2002:a05:6808:ed4:b0:3d5:62d7:4fce with SMTP id 5614622812f47-3d852cc437dmsb6e;
        Fri, 5 Jul 2024 04:21:12 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWpT6kxowoe7d3VHF2cvBufWxrG1IBL9sKq7n/Mg20/URPYEMOROqG3dxJXAzxPNom53DFGEwmEkL8BVIIrc4nrDHlkBXnq+8l0PQtftX+rHDflSho=
X-Received: by 2002:a92:cda6:0:b0:382:8ae4:d292 with SMTP id e9e14a558f8ab-38398fce88amr58939435ab.13.1720178471587;
        Fri, 05 Jul 2024 04:21:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720178471; cv=pass;
        d=google.com; s=arc-20160816;
        b=ta2rMVE5PDSD+f0o9Lzs4GcNUqyaiaTzBdNyu/xAyW+1zKUd8UV9uLLN0KqCAJXpGT
         F6LYyHgWaBkyOZQrzbDPP5FABv3MHxPvTrW2OkXcA1CaaDZ/4Nfl4AG6jWgyyOou1ekm
         XPdDLBujhZ/XE3FphZVW1pcv1EdM5nyBQrpMUesZaDjGs8oqcaDp3LUaO0DLHiysAsAv
         UzPyq7pin/I6DOPr1CUPnFlckTjxaYoVZEPBQe3sLlIGRGNKjQTYc6pSPUk1K5667mTc
         LxPQJ3tEnDNLZHcvz5haznMkR/qNWJmX0gbVl2BdfR5Vx8wuLqdS7VFlg4UhPtQMojlz
         k2+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:dkim-signature;
        bh=ZXIekOKKIRkBWkz9TBaQ3jRxcRXC31sJlxol7kFnw1Q=;
        fh=1LywM61f5A++GgCZEfDkoCcEwOb6deif/MqjxnKija8=;
        b=ehI/ascW+yCzReDUUUKYmfJTjpJrkpsiyQbLhG5qphg2azMXxqyCg2ZZu8TVO6SGZE
         WxhS4NjVenvRGC5lUaYkLQyZWb+k8NeBv/XO618UoADuszZzPuPoycM3S1JUe0+e8Hhp
         Vz+Fnt8mHB/HA41dhlhCt3ysZMnEkl9fniPx/a89XD/bYSXLxinzkyF2TJE2RL5jqrDs
         yH1xjLPg3GvqIZS++nUXe/Gqf5wAWgmM4TgPbL3eKvURse2vKbfGFyjGY/BGsTqbiFDw
         33lik6zKPPFH6FW2NrIFL7+fbWK6y4aIE0GZpFG/0rrzZ5Xy+msPJPUPRp75R5V0nMZX
         6gRw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=MQs3KgpX;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20800.outbound.protection.outlook.com. [2a01:111:f403:281b::800])
        by mx.google.com with ESMTPS id 41be03b00d2f7-75ec39c0c99si3828638a12.2.2024.07.05.04.21.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jul 2024 04:21:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) client-ip=2a01:111:f403:281b::800;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X27ESOq0FE9R9xjw0psLUGoWPSH9lMYDiWVWMiv3sQ+hZi8PTA2owMsQELlwUT3cj31Ik18SmM67hWnekGJvNr9PuS8CFyCkLSpnpq9+ntUdsrt9V3Tj93JvRXCOqYvENAp56fRcd3giH35dsl3i5axWVWc5TBS18AHv4q0FTfu8vP4xArdk1JPU3WOfmAU9EGILfKtSxS3H7ha/+GQIVqDT5//gteT0o0eUF8IdkUW8kdMIoeFogs7gIQuubRHZDDhPY3wDLG5M0+cRGqvSOyMN5BEUnaTAeEPgmRlRFoTPU43pWW8810wrY+LvnvjpPAOZGIIPRyzRWnF5pGlLRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXIekOKKIRkBWkz9TBaQ3jRxcRXC31sJlxol7kFnw1Q=;
 b=jteogqHVydjCjILTXEurUSBVJKs+lpWR/loZqjd6QFmMwXb9Uw8+BcEnFF/kBoSRwlMjrscPTeL6Zdt27Ihi/7+iaxxu3e3Mi42NpLzqjNMFaEpqRV9wsZ1HPXEsZ7Z+OoGoxask+Jkcay5gv/TXrgCJQg5Gn00XpGdRqdDFna8H4jyYpsqD3fGt3cKNXN+BZT6F5C70bRchAMk3IjGgQRyehRaNsbvgZJv/o2NRUVp8rE+VWERKBECFzlA7BqTa/KOLGl6gTsSRymbHBX/xbEhjaBGzOkts5sdkP+4ur8TKWgZJ/XJKmUpmpOPe7B3ij+XPCT7puaDXdwkXNBoKeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN2P287MB0940.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:136::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.31; Fri, 5 Jul 2024 11:21:06 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.027; Fri, 5 Jul 2024
 11:21:06 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>
CC: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Topic: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHazs1t9chFUYSBMEexlQB4J+o1vg==
Date: Fri, 5 Jul 2024 11:21:06 +0000
Message-ID: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [HfcWuuMloIhumeMI3AVFLSw3fUg3ojAaJTnl0GkqE1zR2b+7x6/1Qarme6/K4xNi]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN2P287MB0940:EE_
x-ms-office365-filtering-correlation-id: aa1aa1f9-e67d-44d5-6b9b-08dc9ce48fed
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799006|19110799003|102099032|3412199025|440099028;
x-microsoft-antispam-message-info: YhfB6oeE6c4Bij2eKi0N1fQ+KVzdFJHj7mbwPVuXDWzRg/SCQvYHaTpwuvqSavpPuzusQbxZp6kEcZxsFaB/c6QPZnh0F6FarMPwOt7KYCXRLgGtVj86QnbTpu3z5osMJ29FIAuOlmbkx9k5kM2xHdseN4hGJ0QQPzbTrLzLJRDJ5qLIij7XOy6kmPe9u7JkiErqyVBoj+JwVstTAegfZjkoV/OvdgM3PJOtJXOwGpktWmmhvo7m9+9PzvBKnYwJhAaUuBMWV0fau/UJj0Yxtdq8Mb8bEEVYrvBLC9qS00iKL0A1IB2iqbD9YS79wJvjRubFTW/tjXD9Cdou4RSfPKqmFT9wKunmvO83V98+HvXNAPW9WWyvMI1/lZB0wCZGgZ4WYmB0SkAbb2VaExoGr+ezr2FGrbw9RXWBEZVpf4jXXkoSxJiHmu3v6sVx8pW/FDeDy1porwTxZ5OkULo9ymtm5fs2rEPwxbUlCkk/Ni3F8Ckez25YZStmpAYgQNieUrax/vp4Rjd3AtHO4YHhf8RspwO6img+5YCcUT8A6wHddSOwZJrAWvczCcvUVIOek60LT9nRcxa0hUwoSm7GzY8qqbhEugTd0fog7ykI/dd1cPyh6fCDDvsi4L04AXsu1wPNRHnvLlqcE1QzdcrOjw==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CBUlz52HZbzzA8nZOG6di8fd7azQQX73RzFR14zCxUYyMRY+zLBs+9XC8jEp?=
 =?us-ascii?Q?6+IwLMJljhSmDNClLx0lo+oQvP+jC6idmWZbmlomgtwEhZwjRVn10uJrE46U?=
 =?us-ascii?Q?RkpgTewqjoPqF/RwGQU2RnRzO+vnulLMg5lzlxxeRkRqo3cLXe2B5YMaofmH?=
 =?us-ascii?Q?abGqFiEnKgbhdNwjjJJL+ZschYwQpMnPmevgn817tMUseSFSd1wvlBDH5ZnD?=
 =?us-ascii?Q?IBkozmD3YEutvocAp3OuOcatya8BBJEVmfM5xzTaLf8erJtu9tyEcHuADDcH?=
 =?us-ascii?Q?iY22vvuse6ihaaVPP3GRS/piRYziU9/Svm5rxiyKLt+Olz+flJNK1yKtAqf6?=
 =?us-ascii?Q?+UlaE9eyT9h2f+NOnD8jvFgTsRrZTo4m4EfxZOvs8qMqK69TwJjvePJ6sjyE?=
 =?us-ascii?Q?Zj8sgPUMendB5/pCwxjoqqXkBR7xCy3dOfx/ABFPdGS5oLzMsWDc7uaiCXl7?=
 =?us-ascii?Q?a3gkzYWNk1M+xqZ+ZCPbnTWooXzvnVrnbcT7Qt1wvCx3nPcbTtnCrErDVXEu?=
 =?us-ascii?Q?OOUAgiyhlUCYv45N2yJxE9YFyuBnKh2xsHj7yJl9NrK7PdmdFxi5hTH62YHP?=
 =?us-ascii?Q?WATi9SIYQIfHFlYkn2IGcPP6UH4EkH4cdRHj1P2gmyZ+IwxknZBbVlOj6XTc?=
 =?us-ascii?Q?EcCHRcfR72Vo8TRHaJSPAibe/+Crh7V8YTa6GnygevYD//dbtQK7CCHDdcgZ?=
 =?us-ascii?Q?J+wd4CrD345B9BWXIQiF3hhiyIADGbWcjbIHsRy3goE8rzAwqnXfCKiwbOBh?=
 =?us-ascii?Q?F/HVM+mUifEgzjBOv7n2KGaSsXymUC5X2JiRkYSHxlCi2lOFmrpRiZpLNb09?=
 =?us-ascii?Q?QLGGDc2Wl66lJAL9M3nT24M8y0SjWAPuyI/INVGZVvx2ZurmthYWBACnweHQ?=
 =?us-ascii?Q?UUrNywRjCsxSaK3YM13FFBtYUHwevKXwRmwrVrTbctcdivSlvCNffYd7LPdE?=
 =?us-ascii?Q?CfgCjL9NvOL9grc4ct0HwboIoFcEV53g+Ch5VpvUHSOU2fZaMEfyvLtFh03e?=
 =?us-ascii?Q?koTs0WpJAgmC88Plkv/Wn+/I/lZBG5CYtiEIifB1wV4oupXcqS/SZLQgOGQ+?=
 =?us-ascii?Q?AtI7Cu1thwo6PPxqO/SAiqqVT0CFR6bWL+eSEf9C0RMu2l6MbtyNoMSXP/Ny?=
 =?us-ascii?Q?gBUpCyLdBdeTKnuDR0MXrLQeL3m8uC67Vg4XkPTndNntDa072RViXyg+8iBv?=
 =?us-ascii?Q?vAFakyVixcSXFhN+hthsbupRl7fBro6T684MEsF/BcpHhclyAyiPPCba79WK?=
 =?us-ascii?Q?ZhHJocL+oAaIOaJh7SC1XwvvxNA8UTM6weaMAZyujLKg9wIyP6bxETqQZ8Sh?=
 =?us-ascii?Q?9H//KKgcIFsgmW9x5Ly2eynp?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <61328D1390137845851B653BB91240AC@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-bafef.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: aa1aa1f9-e67d-44d5-6b9b-08dc9ce48fed
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2024 11:21:06.0328
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB0940
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=MQs3KgpX;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

This simplifies running code on shutdown for USB drivers.

Signed-off-by: Kerem Karabay <kekrby@gmail.com>
Signed-off-by: Aditya Garg <gargaditya08@live.com>
---
 drivers/usb/core/driver.c | 14 ++++++++++++++
 drivers/usb/storage/uas.c |  5 ++---
 include/linux/usb.h       |  3 +++
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/driver.c b/drivers/usb/core/driver.c
index f58a0299f..dc0f86376 100644
--- a/drivers/usb/core/driver.c
+++ b/drivers/usb/core/driver.c
@@ -514,6 +514,19 @@ static int usb_unbind_interface(struct device *dev)
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
@@ -1053,6 +1066,7 @@ int usb_register_driver(struct usb_driver *new_driver, struct module *owner,
 	new_driver->driver.bus = &usb_bus_type;
 	new_driver->driver.probe = usb_probe_interface;
 	new_driver->driver.remove = usb_unbind_interface;
+	new_driver->driver.shutdown = usb_shutdown_interface;
 	new_driver->driver.owner = owner;
 	new_driver->driver.mod_name = mod_name;
 	new_driver->driver.dev_groups = new_driver->dev_groups;
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 2583ee981..591fa0379 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -1221,9 +1221,8 @@ static void uas_disconnect(struct usb_interface *intf)
  * hang on reboot when the device is still in uas mode. Note the reset is
  * necessary as some devices won't revert to usb-storage mode without it.
  */
-static void uas_shutdown(struct device *dev)
+static void uas_shutdown(struct usb_interface *intf)
 {
-	struct usb_interface *intf = to_usb_interface(dev);
 	struct usb_device *udev = interface_to_usbdev(intf);
 	struct Scsi_Host *shost = usb_get_intfdata(intf);
 	struct uas_dev_info *devinfo = (struct uas_dev_info *)shost->hostdata;
@@ -1246,7 +1245,7 @@ static struct usb_driver uas_driver = {
 	.suspend = uas_suspend,
 	.resume = uas_resume,
 	.reset_resume = uas_reset_resume,
-	.driver.shutdown = uas_shutdown,
+	.shutdown = uas_shutdown,
 	.id_table = uas_usb_ids,
 };
 
diff --git a/include/linux/usb.h b/include/linux/usb.h
index 25f8e62a3..5f3ae2186 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -1194,6 +1194,7 @@ struct usbdrv_wrap {
  *	post_reset method is called.
  * @post_reset: Called by usb_reset_device() after the device
  *	has been reset
+ * @shutdown: Called at shut-down time to quiesce the device.
  * @id_table: USB drivers use ID table to support hotplugging.
  *	Export this with MODULE_DEVICE_TABLE(usb,...).  This must be set
  *	or your driver's probe function will never get called.
@@ -1245,6 +1246,8 @@ struct usb_driver {
 	int (*pre_reset)(struct usb_interface *intf);
 	int (*post_reset)(struct usb_interface *intf);
 
+	void (*shutdown)(struct usb_interface *intf);
+
 	const struct usb_device_id *id_table;
 	const struct attribute_group **dev_groups;
 
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7332D45F-9BD3-4D0E-A5AF-9845353415A9%40live.com.
