Return-Path: <usb-storage+bncBCFP7G4HQQGRBZVKUS2AMGQE4PGPREY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 3734A929252
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 11:59:04 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-447dc559df8sf13352701cf.1
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 02:59:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720259943; cv=pass;
        d=google.com; s=arc-20160816;
        b=b27SUQxJrtj2DySV6ORNZ1y20jYUcFh3F7S93e6DSyJb1R/F1/pWuSGsZI5F1q5uZi
         mo333UpabzR7rRUwAg9p/c6CLPj7tPdNdywhcLrU9isRf+eqEkwRkfYbwLk1ilL+dwHS
         VlJmf/JhzOOj79cVGWYIVUr/Jw2o95b9+TOguWbFe8QcABjtv4en4kUXc2gjns4H1C4d
         KagIPRDgZPHhPB4NIe2j8JKofk1uONY7SWAWvodeibN8AG81uTM0ck3SDckrb1FkOJqK
         4Sq7vWBA0BLG1q6x58GaHYm6t1bD262Vez+eDuw/i4QZI6F8+1gc+uHpfDjBjZG8G6w/
         ikYw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=iyn4/jIstnohhA1JELuNzhEzgIP7Pdbvc8FgnndLIwY=;
        fh=yf4LmbWlgdeJwbgsSR0eWx+r4AUGui3nPob37yHydRY=;
        b=Bp60AVFe79AFZ82U4CZG7CSSWGqq020VTtODpO6r3Y4CKSBopipNez5qh/9kEOvjRG
         hLsL9H8P2MpFiihOzYTifWrbeDv9s2BsDRdB3ttvKIQhPxWo4y5XmOjpjloAe0pd6NMF
         R9Qg3/RzFX8eTji7P8IXh66q9W5cFDq9OspWyxq3pU4/RdsMe99KGmZGnt1EeWhaw44n
         6er1kxDaZtfGc+c5ra+WcCFYCxdEHy53VFJ9qcXoE2D9UnUcH3VzfGPLaoYoO64NWPUt
         V47B7OCLslvm3kfumPPZ6UhUCKjFtZEVyfqpa4e6prtoE+6ZkK3CbRFj66tp6XyCy5FL
         hQCQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=m6UvwPZC;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720259943; x=1720864743; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iyn4/jIstnohhA1JELuNzhEzgIP7Pdbvc8FgnndLIwY=;
        b=MyyNsAf7vP74FfYdxV0UF0GCqcuzfiMOIPLM66Ng8z6z2K/lH6keFSylFZBt/L4X1+
         QNZaq6Eei6HIh0Y9L4pwkiRsBmSdos3/BBLjCBUl3eVALXrVU0BhhFaPU8kmcg953hqy
         m6Ymwby9Fy1H4CJnprPkf2MIluxXZj7vEphAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720259943; x=1720864743;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iyn4/jIstnohhA1JELuNzhEzgIP7Pdbvc8FgnndLIwY=;
        b=Eaiv7cCrPnXYesJWEIoftMPGSxlZ19mEF2TZcT2DkmE0PNkaJsEsdUL24z41numfVF
         3xRA5CVJd56E3jZBI8IUxyogMBV+f+XQWyjsz42AzFXaLkjK7rhJodLBsRrN6eoazqmO
         52D+ZZyzSOLHQpym+0fRMi66SGXb+wGmTYSyYbIU8G/T4zX1sHswxhM9LlpOtyVY457J
         qmu8OTxW9fKRBJ11urfKYt7tavAPRc6aDf7QxqEf2QXJg0XNzp0hgMBZO4kgu/FL66XG
         VwSKK2tz0stjKnwuOCtOgEFukGfExmyYIyqX4Fu0e6xqWvTdBPnFpesqjCNHl2f5zu63
         NPYA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCV/El7WWeH/sQc0HjcAM62cKSCaR4Ihl0DobjqnK3EmiPfcLTJfzXacLmWNHRfpGJi8FpmEHAw0v+l+4yGCtOyaQjKhd4+YIaB3
X-Gm-Message-State: AOJu0YxMut/xIeolrwb5JgTJmi7D4n14jgmWK/cguZEEXS8zAKg8m+Wb
	whjUAaQHKJXPQkqUZaA9jTW+bcLe//ofvJekhoYoiWYJ07pSDwvSEa7Sli0CoIo=
X-Google-Smtp-Source: AGHT+IFH/Hj0+eBRS6rKfOi2UBjRbnJf1CybhpqH4XxwjMPiWYC8k+9VkTh+qP70Lk+c2iiQ/e2g7w==
X-Received: by 2002:a05:622a:138f:b0:441:4d38:6406 with SMTP id d75a77b69052e-447cbeac0b0mr72478431cf.10.1720259943027;
        Sat, 06 Jul 2024 02:59:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:34f:b0:440:337d:f8bb with SMTP id
 d75a77b69052e-447c9b5bba7ls33440421cf.0.-pod-prod-07-us; Sat, 06 Jul 2024
 02:59:02 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCV0HOaBn7ykL9A2sp1I2qtm4L+gfmO4iZql9A9NUui2j8Vj51dfh7KkXK3JU1KePEdGE//xunG6OmR+aVbcs9iTqHqhzCs7T435aNDCc1VtrEg1AXw=
X-Received: by 2002:ac8:7d95:0:b0:444:f42a:ea3 with SMTP id d75a77b69052e-447cbed7980mr79053651cf.23.1720259942080;
        Sat, 06 Jul 2024 02:59:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720259942; cv=pass;
        d=google.com; s=arc-20160816;
        b=cqlvBSBoBnIRklcd9Z4srSG98SDOnDUaXb6ZCKZF/qNX9eMLW6Uc6yVnCO7i/PVTlq
         wUkb3Eh4rVD3mLm7nn0lOHZQaVRB2bHJb02uZX0jBqz79k7RjsF9FcTru04lmuJWT1O4
         jq9hbtAfq5Bgo+a7mmFN9rrKcHWelWmAZjjGUQHpRIUFbqPkSuoAbMHvV3k1JbvAFZGf
         kEEjQiuRDb1R+FmRwE+66Xrb9sCjwep5b9NipgC6wlkUNUUKNUdTm2je7lINe9U3+TLa
         xapMqaCyj6F+okgSEQOAWal4hhLz86wuaDmDCkv6HvtI9jtt9rhh9gs51JvoscDz0SBa
         h60g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:dkim-signature;
        bh=Wh2zNs3cKcVyJAC/F4M1zOnme3wwGIfjwwpyRNRM2d4=;
        fh=4HWS1BnKmyzr1jKtPfMCWRzQy1hmtF9bNCvfHraD4kg=;
        b=JkY+Y5mBBfSCFZRihocc1VQuPVa+m3LaY+1FeGPA0Ux61B2CUmGuFBtTOG/iXUf8Fz
         8a0JH5hL9g0l/T51gidT64nZGTwom7iyDh6lJ8XAjZsYpKaxY3d4uW+RP/RuExOs7srJ
         vDefNvYRL1WmWwQjTl7heCHAxmn8R0VJaI2LMPM9geIopSx6ynKUMFJkA9ON7wdVA6bb
         foG/sCFhciH59cIFFbTyxaWb/y7hntdyvPvAU/0vvtNMUh7t865EsnIGYOsfvLH4eJxH
         8bPo2Ck8Y2qW5w5n+A1XC6YKjenaKRg3ohM1Wzew8Ohp5j+1WsA2cawEe0toiFb1LLQC
         GdAQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=m6UvwPZC;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20801.outbound.protection.outlook.com. [2a01:111:f403:281b::801])
        by mx.google.com with ESMTPS id d75a77b69052e-446514e2301si187820411cf.688.2024.07.06.02.59.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 02:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) client-ip=2a01:111:f403:281b::801;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmQJP6fZZrH4zRGhToEDSvTIuc0T//O4LN4RZrZFqEEktGjATwyumCW79qbSw9vhs/8B2g65/kxvKIXL6ZqWg8DUDuUsZ6I/JyTp/vxn638V0m0LzZWPKLwIy6f3cWtLcQ2Eel1BBVDBwY4GCo44QqobOgR3k4I7Vk5ezbPs+e3YyYp/qgw1BroWHH5CZ9fLJlAzEe2Y+CK7MN0couAEcUqneAY2SjCIk1YKQslbpNuFDNX0GBWZ4Y5J9djFtZ+xwrG2s7d9TVCetQUerKSdWbSuCqI7IJMs5bASNMqCt2Eu15Jscu52Hr3rpTBtmmdWGUUN760M/wTxr9VhBraYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wh2zNs3cKcVyJAC/F4M1zOnme3wwGIfjwwpyRNRM2d4=;
 b=R6h2Esoh0BhbSpCDgWsTZhFqCFD/pepNtnelc3NhWNkngaeSHayOgs2nfU3w9IleeAsRLCRU77JpXx9GMsozcw6WLqXJxJC+wLlB0teMNbstuuV24F0RYe4knv2CPFrh/dMRQS/BcYGseTAXt2Gbms7evc5bfJlv5t+LujqY9lPB+IDkahmp+CFzxHCZGB1abfqBiPcABqWIH9hIjEl3bfkuwDG0JZZ28rZBaqjLsGEgyi67gT+mGlG/OvZ9R9+6KWntdp07juteAhfHrV7K0hbXFikeV58Gx/ocZFY8LFa5RFeFPus5SP+atNcuH/lLySwex1Wus8PgHwJFJ3kdGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN2P287MB1372.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:1a5::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.33; Sat, 6 Jul 2024 09:58:56 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 09:58:56 +0000
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
Subject: [usb-storage] [PATCH v2 0/2] USB: Simplify running code on shutdown
 for USB devices
Thread-Topic: [PATCH v2 0/2] USB: Simplify running code on shutdown for USB
 devices
Thread-Index: AQHaz4sdXbd38Jb4D02b+7GJAoiXFg==
Date: Sat, 6 Jul 2024 09:58:56 +0000
Message-ID: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [k2F9qNdhN5r8SyyZCaaH90iIm4EJerhg6WV0wmQ4c+KlzuS2156GVHvEKpBI0uhT/8IeXutWSwQ=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN2P287MB1372:EE_
x-ms-office365-filtering-correlation-id: a77fdb62-ab88-4c4f-56f7-08dc9da23ffb
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799006|19110799003|440099028|3412199025|102099032;
x-microsoft-antispam-message-info: 94XNpBLdmbUU0pXUhN50qLnOGYHPm6m/HF3VjOndUbOrcKUZ1QtDVINVcA7UAK0ERRXPsipjU4QKu0wXsLCwuJX9ZFJah9Kg4oNksTrze0GmasgkS/uu/xIU2V/RsXCpIP4rcyjEA75BHgX4bjKwq42Bn1h+0O32VAWyPXOnqB4RlC4ZzI6C1o+/nHGKyMWfp9ErnQQjaqUt9Cz021dvsIjAU7WD/DYpu8Zkz0j0nGImwkre7NOB61kbxwEVHLJNf6aiqgXvkByDx6Y8ipSUbI2dqZv0rEsJ4gHq3A1ob51xaCKa86wz8Umg60plVWP178+wpQCxHa2ydOE38VOATGeNC0d+wpVDDyS3sK0Nz/1sRRo2p4rM20J4UP4zXC/7zWNWyqYd81s5dsRzuCR4HU5DHr06cxMnYfmQ2iDJ9iuweDDu4ABAAhg8UlGPVFrwgIcr+FoV0H82Mo6AsM8MH7R35+Ohqrmdi74xZRDkmG0o/P8PIt9tjDpTQhE0M1bFqxwT4R6P2COVBAjWnDm/UpESM+7NLYWY88qGKFLO0Qs+yObRmhAiucDbGkCTOiRjvxdJpEByjo2+YW3oKiNOeHu9v7qW2hrY3viU48N9Ngn1YF/JPHBoOrSlmjVcKYhv/5fjoJjYDqsUmo2fkB0AAA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cMOEM2nOnJPgamS4Y71u81IwwSrPRFumML2kJYsAjB7HkxFIIotttVAzw8G6?=
 =?us-ascii?Q?qC0TXlu/ts+QwVtDsjIK27KUE3QLMDneDMmBmSSO05E5ggE4qXl9ZXObSnU3?=
 =?us-ascii?Q?wn++pGwn/IOpsZQLfwBrV+XV51OSj+9DXCEfwGlXlnPHrCR8hnWLmmt4udMm?=
 =?us-ascii?Q?ye956U1dpulPzIhXkc9R4bpL/MEmwuHj8Z/hh2RzFiSS2Pyka/gxiwUBNScm?=
 =?us-ascii?Q?4D0gXcKxvZzigzPg/fZCHnA7Pwf6hRItxfjMrmtKAeYOU9qmVp8e23LpHEaW?=
 =?us-ascii?Q?ooVGzEjJF4+6RgubYr/XabH4NKmLbme+y+HoD6rMr9yQyVBIMOCE1B/Wt2ix?=
 =?us-ascii?Q?XQOzo7xVgZbJXnjoSSDkpr0K37ZB1BWINIHPc1UnVLAj5RY6VaSkvKaWXQNC?=
 =?us-ascii?Q?WpQRAJpBnAOL54e3j+CVyfPxkBa/Jv6wdacQX5WRooXee2O0lt4HCov1fD/9?=
 =?us-ascii?Q?YKBbxdArhcbwPOwIUUZ3daEOP8Df8bJnS5MM8MoIJy5HlR3gWH4KxpfKw9FD?=
 =?us-ascii?Q?0qKhkEZzib+gImS9JroOYxAtTxvylEK/Fc1moCAlLItOUfPh1wQfoISsOkT7?=
 =?us-ascii?Q?3KvWWwjlTE0lSz/BWWGAnpmvEt5+1gARmEM2l4d4ju0aO0iRDzmxdGI3JPMW?=
 =?us-ascii?Q?Un9/51/IgZq9sbDKl8mo9wC/+Aied1A2sdnnPa/gEjgH/v1pA9vZxKzJhMPI?=
 =?us-ascii?Q?VmGkQBsxbQRabp602UzItyiu7ZHNSDk3d04XhVPg8rl5geTx/xxQHwyPOERC?=
 =?us-ascii?Q?DF4C9xa74E2BpXjXZYccmy2jJIaJioVfvGWNgiJ+4D0CEb7iheguwnCfX+ml?=
 =?us-ascii?Q?LJPGP64rcMvgIqwo0IgMukCF/8+YNNibEMG6uL1GfBC2OJfEjuQSTU4q28Yi?=
 =?us-ascii?Q?RIC1LNZ5TUc7kpw6ij1SeL+/eZPSHQZQwu6xpkxzVO3DFGoqjgkGtS9VVdS4?=
 =?us-ascii?Q?dlZetyAwX7dJ/mm0JVQ1bLxEy81yvT0PdijTG6rFS9keZXZFfwDkmckZNfC2?=
 =?us-ascii?Q?/f9+Q9pGn8szmJCC8GhxWKfafc4H/G/0Q/Jf3XSyeq7fSk/XstQR0fW2eiHh?=
 =?us-ascii?Q?215QiFf28Wt/RAe50M5OLZuidkVqN0w758aJT51yrgtovRM+ZG/WVweRl/El?=
 =?us-ascii?Q?3fHdcswDmGGNs2z7tlxfOPsOVKq3j+iAKCFSCVR0cWzSgglKrNuT9S5++RMA?=
 =?us-ascii?Q?456BldywGBpmP7hDZBJK2Jzf1gTc1iwAjsxFFs6YVdvDAUmIKncCXhFaw0X0?=
 =?us-ascii?Q?FbSUAsrWjNDnu57697xOBE58c80sJ9l9IwTVBuusb83J2xn9xt1AI6rqWDr8?=
 =?us-ascii?Q?X0XrOVW8F6vvN+v0Iw+YQYBY?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A4CFE333EEA19A4C873E79AF9E7AB990@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a77fdb62-ab88-4c4f-56f7-08dc9da23ffb
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 09:58:56.3281
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB1372
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=m6UvwPZC;       arc=pass
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

Currently there is no standardized method for USB drivers to handle
shutdown events.

The first patch in this series fixes this by simplifying running code
on shutdown for USB devices by adding a shutdown callback to usb_driver.

The second patch implements this new callback to the UAS driver.

Kerem Karabay (2):
  USB: core: add 'shutdown' callback to usb_driver
  scsi: usb: uas: Implement the new shutdown callback

 drivers/usb/core/driver.c | 14 ++++++++++++++
 drivers/usb/storage/uas.c |  5 ++---
 include/linux/usb.h       |  3 +++
 3 files changed, 19 insertions(+), 3 deletions(-)

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/A6C4519F-852E-4B5C-B791-7396B515B8A6%40live.com.
