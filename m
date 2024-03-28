Return-Path: <usb-storage+bncBD4JJBHQWAERBBH7S6YAMGQEGXCTFPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id D5305890E94
	for <lists+usb-storage@lfdr.de>; Fri, 29 Mar 2024 00:38:46 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2a1fa1a83aesf1276697a91.1
        for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 16:38:46 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711669124; cv=pass;
        d=google.com; s=arc-20160816;
        b=AocCWS/EzLfb0Ry1DllmLDmrWHXvLNX7aPHshMwxlRFy/nPVjxo6lhW0ddi45zfEc4
         dG0tLvHRpAou5JzXvoGOAlXKU1dXv+EFC33um840G+JxaihEHhU8ylToFWWKbea/JUlY
         MMHCjp83kFypYmLx/jIYUNOWgREDnryJ51lwhs66Bzg79NeZZ3IXLPMTkxkvTwv/2hTk
         Ltb06Zjabdm9mrkfFfN68ZKvuhTFUPGaIXbv34m3LBd+s7WcmP0jYPCRG/Bhf7yDgaKI
         Cq3CbqpNZHFeD6nLs4Bj/R6X/XFccwaMGrI1uF60FqOT//0ODKFOXu9Pas5SRL0k2+FY
         h1mA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=/3o4m2hYWiQCzDg2YqrbIr4SYTzF5vRHm5Z+VTY8IPw=;
        fh=o37ECr+/6JRWzbQtAdgcUli+ybmMdru3oWc8+jdNo3U=;
        b=HwVfHBMhQcsV3obdjM7W8SY47eoR17IjJuSUbVcVKWVJUggNtLqryVlqD5UviW9ujp
         C8QYXvj75HaIghqNdbM1PU63zhczHIDjky+1IDw/ZAuBQe+OvBC0oYk0An88K3QsGSmo
         STJRmMi9teJFZGZDfyZY3jZ/kUaH0j1tte5PY/PfbPaybq0Otp8yzv4xmNp82eZR/6RI
         NB7TeKjN6tDWzQPk/9XpYjDjOdoCvGw5CxxZgxSsy4+7iQzooUoIkboW9VnWFXbX81hX
         QTL9X14o3P1YWSQw+rrQuYyh7yJxIH97Vljlg6VnWgEuHSPMY43Yu/enPvJTpwadY9Jz
         GfsQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=KatDiuXK;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711669124; x=1712273924; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/3o4m2hYWiQCzDg2YqrbIr4SYTzF5vRHm5Z+VTY8IPw=;
        b=GvyTGeUWWspte0n5rrH8lY3LQ+aZnvV9g4REmY2TQxnOS86HsMwMKu5h7BTb7E1Vbw
         fD3lSudLh8omz0zbxhPuzY9rlqiTEmLcQ2VNSIjH9ro/SVxmm6Es2cC9tzCVDg+muiDZ
         0eY5VFY6QnkmkxTddi+IfIhbeITk8oWeU0Z5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711669124; x=1712273924;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/3o4m2hYWiQCzDg2YqrbIr4SYTzF5vRHm5Z+VTY8IPw=;
        b=iIeWVsiuvuxnWjf/304IsyyTo+luK+yFzH9qNEZlosYxe6Vae5agvJPT4y3/dNsmgm
         X8hLGdsNCCqTmdse1Mf3zSePQ1KUbs1Ms4o3EZXYQKj9rl53CyBScp1rlsNTqltygkqc
         q3RYa+t2zsVFvCyEZfW432qYpsaY/orHPExEm4JKc+xF0SuUg8vjFwAKfUsblGoidNan
         BXPTCFsqXAiJwHG6/xDPgR8MT7LoOfambjvs0VqgLcERwMhXWSHz+B3rbq+tmMJFrhEE
         22tNgo1MVvG5KWC1vfoW3AgFqR9xclJFOnbUxkZmIwArkwjXXQPi89puVaZJZW4xFVL/
         3J5g==
X-Forwarded-Encrypted: i=3; AJvYcCWzvPl0cWvcVT7C9ov0d4UexzW9KDyBlFAzBse/4NAALRt6pIFeHpMb/01TeJ3LrDMM+mlb2SArDC8Dq0+SsPpmTarg8m/LEyaX
X-Gm-Message-State: AOJu0Yz5U/Cw82VsdiTMUooY5wWkDAHE2YF63u+9WGrs8HRa/LTy7tUg
	6Er/mPqG+RHs24b/mU9DINYveK79JiUE/L6ZhJ/NJrJotLNPlwkLQd4GnMDNaVM=
X-Google-Smtp-Source: AGHT+IFAU8paNJbkau2LNl9FoYFh8IvwgFBeZKR7PT1y2nAyUxu5z/b3hpXCZiJzKeV9NzdIUl8Acg==
X-Received: by 2002:a17:90a:a084:b0:2a2:6a2:8bcd with SMTP id r4-20020a17090aa08400b002a206a28bcdmr914256pjp.4.1711669124614;
        Thu, 28 Mar 2024 16:38:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:48cd:b0:2a0:73c0:992 with SMTP id
 li13-20020a17090b48cd00b002a073c00992ls820352pjb.0.-pod-prod-01-us; Thu, 28
 Mar 2024 16:38:43 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXYMq+lHG/zbe4pb+7FVR8/Z9HKXqeMa1nAYEZQ0buGVZ4Zw33eIq+IENF6ugp5dAWaAmM+mjw106L1ZajJIUdD62Y7P3HIRKjdUWj4gRRFaDocDus=
X-Received: by 2002:a05:6a21:33a2:b0:1a3:c515:202c with SMTP id yy34-20020a056a2133a200b001a3c515202cmr674058pzb.62.1711669123394;
        Thu, 28 Mar 2024 16:38:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711669123; cv=pass;
        d=google.com; s=arc-20160816;
        b=JPqpd3fjqZsQmSmVcSNTjpKv70nIAKYPcywkKbNpi7oUzssIEY3CpOiGEOBoHqD7Wq
         eeI0FDSPeGkNubTFTe5WiNbkJeb2GzhfwhtkhnyKFmBEs3pd3BSjNEapgsWX5I+rN9MX
         oDO/Gn7nezzR6FM9ysiBBjpxFwBUOARDQQ3Np4zqewBoCB2XJgDSNSCQw1urfpTkFN0L
         kZO7mB5isqNqThnIYKNn6QAbjgqcRQ/19sUPwOQ0hsctaNeXRioTSSX6eVG82/X1+z0W
         ha+cFMLaqsiP+EmzynCa1uHIdMYSFVYrr2PAsfplMoi9I4JQ+InoMQPUYNmse/WWkfis
         rQnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=DZ94iaN0ow7vQ+UztB1LuKe70e+0ZrDMkvhS+11krq4=;
        fh=5J9ke+luvrMukPA3DN6Y3y6xoFak6TGQyhzhppnXctE=;
        b=haU0pN12DkBas4TYclHu2IrDCDjnP+xWR6Ce1raiLDMDjXM7IcBmDSF0/IZvVmb0Mw
         0obb/0SQPGumwFDrzPSmUdNQP7aXeiY9i8hu2M16mBZz8y5Dnh5KDTDkTcxcZ0n/P6Rs
         YfEd3qVqPE9HiOqK3fHjvwp2ccjOiyPNIYHcpCavMN0BZigesUTlsik6hYV+zSzKYdvW
         1VT3clWoyYH8V5yULjQk/H9FEgdCRJD5iNf+B7R+2ZdDoJY/lPN9KqesMul6Cad9Ls5J
         GELT+fxk4nVwjrjP1R0lUtqm6qBmVx4NPGTzTtziv8gkplzV38fmhblA3Lfd1jLdiodO
         M1xg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=KatDiuXK;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from TYVP286CU001.outbound.protection.outlook.com (mail-japaneastazlp170100000.outbound.protection.outlook.com. [2a01:111:f403:c405::])
        by mx.google.com with ESMTPS id a24-20020a630b58000000b005dc504e597csi2309820pgl.513.2024.03.28.16.38.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2024 16:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted sender) client-ip=2a01:111:f403:c405::;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cDPaOXmKlKpLA3HsWOeIvk49dAjEf7IMSRlkMTaIBORtdN8UepQQ6XvNuaISfakDa3dGqrDs5+8V3CcKETf1qg6rIeWuD1qWUYUX5A9UjTRFwVEQlqxCQ65NZC4bzmU42MKiI+5YzY0s/p+jCK3XXEO30goNIOrZNAiFGxi4HyY7Mqe8m7QCgjuQGNA5sMQ+XYnv0PFzZK2z/8eA6XH+M3Kju0GPNBkLFBk7fDPIx5Ccd3CjvFn36az9y8HhhtCYT2q97sReDeD5JN8mtIe9Gqpsk3xFztEpIK9fNEbV8c1YCy6xEikkNjoXk89khOBATa9gau7YBiPURMANbsgPlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DZ94iaN0ow7vQ+UztB1LuKe70e+0ZrDMkvhS+11krq4=;
 b=D9leNROErwWre/mXXcZPiDXCjF8UOSaj08n2KDpUMEmz78qUEyH26MjzgDRkqKoy/nd4Fd0LulnhvIMBOGEcpA1kziUxOERS6WUyRxaCvc+9g046KFYyEypTkA0zGC/rQM6B05OYp7YmkjSf8NDeYeGn9WU/tKXJluGvXdWH3gpeDxYvg1eUdHM77yuZYXgHsO6QTxk/XkdzMFbyPEQZ1MA9i1hiCdneJAu498/y1x0qUJy0CK0888lTdr4ArUvmsLpuRl+ixBdeR1oGvPCkeDfu1+ceG7SFRPpeOdk6YvIgEQPf4WwHWEjOhd+R5Qpvryq1yeutoflQ6SZ1tv7xUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by OS0PR01MB5761.jpnprd01.prod.outlook.com
 (2603:1096:604:b3::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.40; Thu, 28 Mar
 2024 23:38:37 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 23:38:37 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>, Matthew Dharm
	<mdharm-usb@one-eyed-alien.net>
CC: Greg KH <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Topic: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Index: AQHagSuLspWlvFs4ZkGDPqS33FWwALFNzt0g
Date: Thu, 28 Mar 2024 23:38:37 +0000
Message-ID: <TYVPR01MB107818669DF1EB88BA7D9D2A7903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
 <TYVPR01MB10781AA8B37E147E318597B46903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <0c99daaf-c727-467f-b8c1-ba8846d8a9ab@rowland.harvard.edu>
 <CAA6KcBBcpug-rOytgnbb=c4O54m-Pfy=divqp12qOMrgmQrz7w@mail.gmail.com>
 <2483fb37-8939-4723-ae8d-7a7a7dba3322@rowland.harvard.edu>
In-Reply-To: <2483fb37-8939-4723-ae8d-7a7a7dba3322@rowland.harvard.edu>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYVPR01MB10781:EE_|OS0PR01MB5761:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Oxog5YQ7dwy+Q0YFJ9S1GKIK52fVM2U1ZsJF9pVBaF9O4QS3AlbTDW8XuPxCzBcipGsniNuoW2Rar89n31yWjwjwEQorCENoubqU2JwglSE6mtgCiLfgEHSZy3mOxYGXekyV77SDHdkoOVXb1AnEC2BD5Z0XR4npKwaGbBXNt6453N/9rlvKpP2TG9AnC7/U7m4atKmM5vBlQe+obMfUFjfp7VH/YV3vbbIdwvjYxMGYFJ+WS9xpVPNWr7oMAJOciQC7bLlUsb794cPbqcKk8DG6XWsuT9j2L7IPeHIo4ja0jnlcrUbpOOU+209PRWvN/PaddVJWov1apxOhO/+Du0hp3ikGl2jjsv1JEKOAkyqXs+eR/oc+kZ6BkbbvWlFKDI8/1wpYlkHeHUF8qYoG5CUc7P3xrYidACiTWWHFnLykmwjxR2EmLWfxRdvHRyMuUcewCvRRhViPz5mSv2T+qslPDMhaBgsLJAFMeGHnZVgbFLG2ahWeu8J5QacBwUPkSSxifb6KCD+5EWFXZcfra6tGN4h54WDyIFYpU5DDumQtcXhp7WCGSNQ8Kx2XE3EK9lXabfZ1vC8dzbxS8G3Nc+MDnofqIj+lgN7N7R6ar3ifECN1OODrFMj4vDE2nrSIjKB9mO7Bk9vvqP4tRE9AR3L5PmQYjUlFHQzCA+eKtE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-7?B?bVIwa2tvd01zcG04OTZoNVBHSFcxZmRHQlFtYUhORGliYUM4NkJMS25waWNK?=
 =?utf-7?B?ZTNIdW1OQWxZYXZIMUVDZHR0ZElhNG9iQUhvM1ZtOVlzVzV2bjl6NTJvQ3pE?=
 =?utf-7?B?VmFINXAxRzlvZ0daWS9heGpCOG1SaUtoODJNWEtzdDFlanl1SDhmcU5JbDQz?=
 =?utf-7?B?OFBrWDI1UXpkL3h3UUhSRkV3VVVqWG83enozbWZRMjhLQXU3bmZ5d090VEh0?=
 =?utf-7?B?TzNRYmtPYTBMaGZlY1Q2MFpZWmFGU2pMZ2lQbnE5UnBSUENiT3JIQzRtTVVX?=
 =?utf-7?B?a2tKdDd1azQ3bDBQWU5obkR4ZC9sckpZbFdIejNGblZzUTQwem9LMTZaNVAz?=
 =?utf-7?B?UklzMDJzMUVWNHN0MGN3bzRJeFNvUWFURHg5SGhwUlIrLWYzNUpwTTUvZTVM?=
 =?utf-7?B?WkRoVGtXU1VkOHo1dGd1Z2YxbGNFWVprbzVjNDBTaHlOTjljdTVxVE52M3Vt?=
 =?utf-7?B?NWFyYnJIbUhYSVhKd056ajNoRjZhY2M4S29nMk1BUCstTkZQZW5kcUxWMHJP?=
 =?utf-7?B?dzFIMnl0UWxaUEI4YzhCTDRsR2VQbTJlM2ZRVlJGZFNWRm9CZXpNUkk1RHM1?=
 =?utf-7?B?d3NJYXZwNkRaUm03azV0QXRXMUxNcDVUeGpSWDg0Y1ZmU0YrLS85RmJ4V1Ex?=
 =?utf-7?B?WFB2VDVlalI1S3p3U2dhZ1FGSEJPdnN4Vlh5S1ZjaU1BM3B3aWFreEVXMkJa?=
 =?utf-7?B?SDIzM3pkcld4M0NMVnkzTEtwM0thbFkxZjQyMmh5cm40ZVB3N1RvdmU1bmRQ?=
 =?utf-7?B?Z09QN2d5MkRKbXdPWExBR2VLaThFSi9DMTJnbGxSMW9JSjZpY2FyeEtkbjNz?=
 =?utf-7?B?WnhqblE1ZmdPdVBUYy9EdzA1TjRCZlQvTDFtMUhhQ29KRE1IMC9md2FxaTdS?=
 =?utf-7?B?Ky1haGhtY00zL3hXQ05kMFEvMXZGc2FiVFdjM1FxSThSdjFiNExlYzYzM1RJ?=
 =?utf-7?B?MzVqWktMNDZoVVRnSUdKYWlZU0xLY1cyWExoMGhVRVhtRWZ3bk5TMGRGTUdh?=
 =?utf-7?B?QmR5ZFBRYUZrNGROTnZNVFJsWUR5UUZjVUdYKy1INHNDZ3hWVUJ1OXg2R0pR?=
 =?utf-7?B?cXFoKy1CT1E0S3UrLUtBNE94aDgrLXZET04zVzdtN2M3cFJJOFpMcnkyNllW?=
 =?utf-7?B?bDByTUQxNlBnZ2ZFVUJpZU9hYWFPeDhLNTc2V243RzZkWWNrVzl4T2FtRHRt?=
 =?utf-7?B?R2F0MnllUUtvaG9xcnhmb2hwdElTRmdQeXZNNUIySUs0bnFWSHdDeWx5L0Ey?=
 =?utf-7?B?YystR01aY09YL0RoTU1xUCsteGNPSWdURHJhUS9mbDEzSENFOHhhbDNmR2NY?=
 =?utf-7?B?YTZWaHFPcTNwTTArLUJDWXNlVHJTZUhMS2traW93ZHI2dWd3dVBjdlk3Ymdz?=
 =?utf-7?B?b01YUjM4V3oweG1zNm4wTmRHTVlVM1NuMjZoWTRtMHR4NlZVT0dBSWZmcm9i?=
 =?utf-7?B?clNkKy1MMnIvT3A3b1VBWTdHRVBDQjM0amsvNDJFcDd0M0NMZnp2UnN5ZFFk?=
 =?utf-7?B?Sm9HV3lWWWIwcDk5ODZLb25YTm5COERrUWFYanJxc2hiY0o4dWtiTDE4aTZN?=
 =?utf-7?B?d2ttYkwySzcvNWZCUGZTcmljZ0JkMDJtSW0wQTluU2NFUHVmSmJaNVc2Ukg2?=
 =?utf-7?B?RlJvOEJWVmZ5WUpOVi9lOFVGTmo3YVJ1ZHV4WnUrLXRKVVRab3lOMll6TlJz?=
 =?utf-7?B?ZnR4RDdXbW5iNnhJMkw1RFNNenZLOUpESTE1U3FHMnIrLVpSem9QRHdvTkJ1?=
 =?utf-7?B?ZlZiT1RsU1kxaDU0M1gvRkRscE9Jc3RnWmNoc0hta0s2NlYzMGpiUmw1czZq?=
 =?utf-7?B?YndLbld6WW05UUFZRUhHRjJKVFpINXdVRThKWXcrLWIrLU84VXN6aVdYbzY3?=
 =?utf-7?B?SFp3VkJuSktUVUkrLTR4enFFNUxuTEcxKy1aUGpZWWN2NlIrLXI1b3BDNDNp?=
 =?utf-7?B?akdRQ2FFYS96NVJ6MXBaMHVIcUxLTGtZNlVYTXMvWkhrVXF2Ky00UWY4Zkk4?=
 =?utf-7?B?dW42R1dESWFkTG0rLURJMGI2ZzN1NjhEbzBva1BNajJNWGJiNkx1NDZLNS9y?=
 =?utf-7?B?ZlV1cW5hRk10ZHBQRlFIODU5UHBFM044NDg4VlQvSlRubkNRNHhLL25yRnRr?=
 =?utf-7?B?WDFkNEFBMnk4WURnbk9FT3ZpT1ZzamJjcmh3S3B6RWk2RFVFWjI5YThKeWp6?=
 =?utf-7?B?cA==?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54c3fa4e-a693-4679-cb2a-08dc4f803122
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 23:38:37.8001
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3tF5w5cGrUl3/973/hizyfxPEdkUs1KO7ytUxFhVjzu+JzwiZlwj/RJX/HJrfSx2edEBNbr5phbdzKUHcah7tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS0PR01MB5761
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=KatDiuXK;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted
 sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
X-Original-From: Norihiko Hama <norihiko.hama@alpsalpine.com>
Reply-To: Norihiko Hama <norihiko.hama@alpsalpine.com>
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

> > > Here's an approach that Greg might accept.
> > >
> > > Since we already have a delay_use module parameter, we could add a 
> > > delay_use_ms parameter.  The two module parameters would display the 
> > > same value, but delay_use_ms would be in milliseconds instead of in 
> > > seconds.  (This is similar to what we did for the autosuspend and 
> > > autosuspend_delay_ms sysfs attributes.)
> > 
> > What about just changing the parser on the currently delay_use 
> > parameter to accept an optional suffix?  If it's just digits, it is in 
> > seconds.  If it ends in "ms", then interpret it as milliseconds.  This 
> > would be backwards compatible with existing uses, give you the 
> > flexibility you want, avoid adding another modules parameter, and 
> > potentially be expandable in the future (if, for some reason, someone 
> > wanted microseconds or kiloseconds).
>
> A little unconventional, I think (at least, I don't know offhand of any other module parameters or sysfs attributes that work this way), but it would work.
>
> Noriko, would you like to write a patch to do this?

Thank you for your advice.
I understand and will try to do that.

Best regards,
Norihiko Hama

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYVPR01MB107818669DF1EB88BA7D9D2A7903B2%40TYVPR01MB10781.jpnprd01.prod.outlook.com.
