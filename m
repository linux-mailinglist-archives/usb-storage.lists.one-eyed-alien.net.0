Return-Path: <usb-storage+bncBD4JJBHQWAERBWN3XWYAMGQEPL6LO7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA3C899300
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 04:11:40 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2a27fa23069sf2068539a91.0
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 19:11:40 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712283098; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPVdRs/DE14V1aHaXP15ZQtBGVuE7I1mknMI/GES1LB7js/kqZ0rkpWPGv7O4BuGkS
         2ERapn4XtXqUb5tStzKz3DQxwIUj1BeqHXK2wciFu+DLM4mCRxgOZ006Bu25hV1Ezq3D
         xw4N08sC7QJ1Sq7392yyR1AT3QTFvo6sCETQDkIefKXnQ0Fa2vBjKVgGNDgyN0I5MPo3
         h71s7xhK2evosqvfeHUjx/04FmQLlHZ81YEI57jKuECTf8JduC3dXCA+3XfY2HHmNSWS
         V131vkbLbcy7wSqHvpsgQ6tYly/z8dtz9IV4A29UcZQHnC7pplHvlHZcceyHwsZR3DIc
         DvcA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=I5EPIJ4vwyoy3f1h9vBXsT8m3dq46s7SWqOy29XtHiY=;
        fh=r1bRHRBq0dKmE8a5oiNKmpJAqN9eOdO6ZlyDI3rPH8E=;
        b=E3E9s1+StCSo0MwaY0RFS3o48DGH453GgdAIvxev3WfwoHnS03/rHEnf4TlzTVcxG4
         JRuXBokUWOqObGjuMUophHQ6GjWV2Lpj7/+8oMspwioPHmtIDmaHe1NOWVUYd4oOfBv3
         7ZyVugm02izaHlgcrUn6n1if79AOcq8BnLJW+N0YB9ejmMGxjAkIc5jGQ4ZUdapjfAhZ
         davqpbGD6kH7Aq0Wj11uNYFC0jAjKP3uLtt1pjneWjJuoV6+xY9bv50tctTMsJeqmbKn
         FPpmfcuy8SqG9liDHYVWVX8Hy5qN7FV0ajaNvTDANV6dubXSV2HQ9IetuYqXRzsErNES
         hcWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=U0T544UE;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::700 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712283098; x=1712887898; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I5EPIJ4vwyoy3f1h9vBXsT8m3dq46s7SWqOy29XtHiY=;
        b=B8E0fQ/ascC4Qil7HnZ2SEVwthpoLVK2CmafXAChjCOVYC1YgnfVCu4bbS8dbFFPUW
         FFLfy04FiSbPoOUXlsMuE/fWgJZbBcxG5dgSe4xdTV9b7kEx2GIg2U00Uc4XXp+CTkIk
         /4FvCYiuQwQ3D2nZfSOJEPKzJA+1ZFqR0DfxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712283098; x=1712887898;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I5EPIJ4vwyoy3f1h9vBXsT8m3dq46s7SWqOy29XtHiY=;
        b=AuUw/w9zKuzGXKpc1igMYWqTDUOjmvHJJivQsqwDOyBxchvIPmV2aeSa50ypeD0n33
         X4tUF35Ac2wi5DsuTidKZq2hxntEP5QZuFhowe1HHDjX/9x3VJmXzZdPwa5xaWMbUJN8
         6X0HcybkWcdaxdRrWwQgSRGZm2F25VCdtpUVHM+3bKPSBw/uFMSt03zCf8g+y/ncRC9P
         N/a41zxYnWDevjG6v7ws7Rs8pAxPx7jPnPudvE3tM4aP9HBPpSrYqEVK9iZxh/XHhIp3
         BmVwKkKSwnNEFPxIvRKELg83D9jhu6ZXDKZ+ZHwdiybdAX/6hk/HJoxhrDAREn6ERczZ
         S6OQ==
X-Forwarded-Encrypted: i=3; AJvYcCV4mICWzvS0QIFR5+qFvPQdX+DiEPedaRLTgAVvGkpL6f6E4q1NM5Bv4pJqfOWstEjWX0KpMOw3T2DBUqdz4KE150tLjWarZpZW
X-Gm-Message-State: AOJu0YxrA0F0mutb9t5HtFh7wNwD/m2TtXm1XMigpbd34usCeVSvEktx
	Ebb3kyuHWdu81ri6XTy4lrDWewUcJ01E6gDbEoDlsmR3Yjcq3Vk9PVgwBG6S77A=
X-Google-Smtp-Source: AGHT+IF7YEfZb4acmiMz1CsqtODizioWk6cpEt/p3aXXkxYbvxVhDIbhWj3YuCsxtesJ5moFO3+9EA==
X-Received: by 2002:a17:90b:fc1:b0:2a2:61a0:d1f4 with SMTP id gd1-20020a17090b0fc100b002a261a0d1f4mr420228pjb.18.1712283098142;
        Thu, 04 Apr 2024 19:11:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:cc13:b0:2a2:42d4:1e48 with SMTP id
 b19-20020a17090acc1300b002a242d41e48ls867199pju.2.-pod-prod-00-us; Thu, 04
 Apr 2024 19:11:36 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVVdPXV3rNcn3VEbal0hKKkUW4NEp1X8dFTpspS8MfJ+fU+hmw34i0ZpAd835th1mRT4dxcB7H3mGomXo7pytkYL0r65yARG2wKI2DPwU7dlSD/b4w=
X-Received: by 2002:a17:90b:8cb:b0:2a2:5f73:a578 with SMTP id ds11-20020a17090b08cb00b002a25f73a578mr422953pjb.13.1712283096596;
        Thu, 04 Apr 2024 19:11:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712283096; cv=pass;
        d=google.com; s=arc-20160816;
        b=gEIMDKsPFV5TM80CSxUtkpXCGycCFJtVSyY8p4xoEl9q6iqYsAB4QS4faurnDimB0M
         +xnMx/3xZEebvnoaGi3b5KmM02pZnmkb3tSXT3lcMVba1Lk2gS+be5vk2iU7+6qQFEf6
         g9Y3d/euFU1PDl6E47sqls5QG/IhbCg102s1BBo7mG3gz4avNvE2vurbTnLvenTCyjkH
         QnYOa+ITsOPlL7p7gsiqsrEDygLfIBfbODeAmcHv7INE9+pxbrnE9+SoaNAOKiNUh3Rc
         Ysypl9hv6gHOdhy+9i50gEbuXXWKSpzTGC/5Ov7isilqtllVm+diigV1cF4E6dFO8wD0
         uIZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ADzFUyDCVU57rKOPiguDTxNErXg/pv/LfMC26d+/oDk=;
        fh=XrDL2NAcrofxN420juSbCW7/3qP994hCtw4pZz8cJXs=;
        b=nCmcXmE+w9XCbt0LH9Gn3uFJgl1OD9NcLFxUpQ8Fj01WBM3u4EWYWPAmeyURoc6RPV
         5JhUBe+DjjWTa9kKfrhgHSgLUeWJ81HGMimv8RqudpE5bIQopN6dRFS4wxRLGNvCxCuP
         EwdrcUhe47pQAtDY2UXewQiLnSy0fpY+YtWdEAvMrC4IFtnP2uvYL0p++if/TUiO6yLl
         bok5+q5/t40Cyd51QCMKmqrj5efYnOFZX3ZKNbERFNfNynONOr7svvHlgDlovs87ofDS
         9kq6T7qrQ4ZNTK5AZr3nhPkSXW/3BMDEI6iKc2VCEBwbJKsecMF9AbpcEA2lQu2sholf
         QhYA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=U0T544UE;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::700 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on20700.outbound.protection.outlook.com. [2a01:111:f403:201a::700])
        by mx.google.com with ESMTPS id r6-20020a17090a4dc600b002a2fe298eedsi583333pjl.81.2024.04.04.19.11.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 19:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::700 as permitted sender) client-ip=2a01:111:f403:201a::700;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0b4LOUguACFXE9b6udgM2Snz2M0GDQ61WoXoPkAfOxsdk5z+WmtLlUEJD0bHjpdNDcNnjUsHFLFfepQEGs638V2s/siGJZb1cdKB9gsLShVkQphiSNMFCDYellFf+9lY4r5GlV6KYv7hoV0cOQtd6QSBHiLN6aYx1GSmLuZIS8abCChcfMzSpj20fQS2fcAvSAuVNQyyc/gWVpzDCIcvq8Ey37Sw9M3anJ9o1qWLsclhXI9j67ZH4G/OBCkyjI4nl+SFSVPLqDKivGpmVJ9QPgQdgJNVFkZ6jz6BtQVR83YXP8IotX7Mqu5mSEAhX0xX2L7pZJDdX/dykL04rQphw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADzFUyDCVU57rKOPiguDTxNErXg/pv/LfMC26d+/oDk=;
 b=VUavxl54w8reGuyMchcOX/G8Il2XkgLGzkEKpuuWn2ua3qSQ+HLX/GZbZPoprgkikBDWlnXaSKrfCL7qb2j1RNIC3rFT9gniZYTSNn8j7m+z6OgNs0/9YWKXN9x47SGcICvWIHTWH21usOPVxMRL7/UtFuMESPslawyMYDGDUHpwZUS9LQ7vB385d4/TDjWuh9aNjhRBSmHrEzQOpuUrYPRSZji3xJen7BZdygI6NXrnyJn3OUWz9Fog4d9qxNzKz5P9lFaWD5MgPkQDJ/GrIQh29lmyDKqntAJUPUslLaX9TFJiB4VG0s6T9+OI+RL/8L26Ct66UOeOsQln1Yfd4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TYTPR01MB11035.jpnprd01.prod.outlook.com
 (2603:1096:400:3a1::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.42; Fri, 5 Apr
 2024 02:11:33 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 02:11:33 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	mdharm-usb@one-eyed-alien.net,
	gregkh@linuxfoundation.org,
	corbet@lwn.net,
	linux-doc@vger.kernel.org,
	kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH v2] usb-storage: Optimize scan delay more precisely
Date: Fri,  5 Apr 2024 11:17:38 +0900
Message-Id: <20240405021738.13577-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: TYBP286CA0047.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:10a::35) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|TYTPR01MB11035:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 66OvF3yfHsI5XoNhzVlgX5LFzIKhRpAiJdLefoOh16ayasX6oPO1FYbq+iskTYuM0uxpUvRKEpTPVR0KUPp+Ft8KYrf7k790Jst3JzndLBqIC3wlJdUOvDOQt7WFQxkOC5vyKLeNKTLTkHKxmAbeiHqjzM4meriQ4K5c2HVXnS2pHhR5sdKgHaWePbkzmgCyQL+3uepqkfk0GmmBQDh18pC27nS0SQhvB/ldO2Dxom8p9loBZBavfESKUxioqJ2Gd7gYMOj/bgFm00zGvtln6ZPUuM2AMO7bj3HZ2NjrWZlfZM/P0HGJ03WDx+bqItWG/VP973uOv/AhTf6P+EFx7Nc7NfVHvRL6MguHQvLSeJiMpa+3TZl8Lz1UbCrXqX7g78ulw0zHph/iD01LLI5SNBg7l7kTTNfcviY45XhChBJXD1PtGFakb2UrSzK9ajl8lqbgRcnCyJGD9G68LgrF4cm550+DxRtmeuAfgTEVNuzlGFgTrzMTzj/o4xvbNQVWg6NpF6eikmWkMp2SUDS7D7QdtkIlE3Dvqxv79rRqU5uqhb2t3Beyjv7JR8QEgfE+3oT2m3/PZ9KN5pVYTa2kWRjh+oB3MBZ9Pvaq4lzB7NejjOkx0qNuSSwc49IAeUjJnFzHl1EZTJSMipjMWYBD5k4V5LCmRjXgSEwRjUwrWNLcIQOfglurwBC5aAft7BAQlcF82z6rNTsc2Kphq2SZ7Numz+j6XqcM1BNASU4RbV4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GLJx+px+DqxZIFVldrCuoPl8pDTnyIu156Gnq/YOrdfLxAhg0+cDJPVP8QF8?=
 =?us-ascii?Q?tedsrrcJYVSqiGJYuIzucoigrkv7kO6dATx1nv1V6cTtMEsGLNFr4xoltmEt?=
 =?us-ascii?Q?mSvoP+cAH/powg+ygFdjZCoYdNCZxA74tCWLutQKBxXvelBHd2CfxySzBrfn?=
 =?us-ascii?Q?UXnV+LtSWZHLNHq1MeZ/3G1/jsy0iYPTlQGRjPZEWBJQutU0fSbQ1b+1dyR6?=
 =?us-ascii?Q?TFa8NqQ8bi+xGZSxjp596HrIP0IaIvwqZs8gfUEuLxmgESsSODwSDE8X1gT/?=
 =?us-ascii?Q?cbOOojr0iut6pZXQSYrYxYRscDm83aMIfF6UXWoAdNLu/3o/JGcOKg12WSCl?=
 =?us-ascii?Q?4xvyBZvFtSMAPoskbZdm3iwCEgedsCZW5HCVjO5Sl/qY5x8nGsGwK1WXtr4o?=
 =?us-ascii?Q?/Me9myvB40RNue3XBQo35Ryqdja5DnCSszd2JOqc03YZgQeJi/zfKl/nJcMd?=
 =?us-ascii?Q?+lj1eTpQq84ajoyEPtZd/l1Ma2yRogkk/Q2Ye8TBrxrWioH9bAcF9Rx00Q2t?=
 =?us-ascii?Q?jdz2t8/P1jGpSgo6H8pzVhkWptbmj8THxKBPPX0OKxOfTT0kutiZqe0tQ6Op?=
 =?us-ascii?Q?yEZL/8SbrrZet3Fvie0qEKmABx7k3/RjxAMCaI3hwYnt+Hu5fzxd0tJMG5Ib?=
 =?us-ascii?Q?rsHLUiHQKr45ILe9VYPpCFqr3naUyYrQ96qR25zw/tksx5dWejHfp3kf8drd?=
 =?us-ascii?Q?vbQvdXRrH9+vjcMXy3wvqY1bU2MLujptBp9mD/GxNsPSrjAhl3OMB2GWjCmv?=
 =?us-ascii?Q?eutzGffMhwRh2xA7Ygcoa/Xy8xv3DoYNjlGfXiXmfK/Uq095iKicylie5OcT?=
 =?us-ascii?Q?I3vXyZSCQ9Ae7YaDTXGK2TPWHg2ovESYV2x8GjEHeu2CvTsZDSUfQWa9cr00?=
 =?us-ascii?Q?Y7GhPxI3oyLCR4q7vlzI4h6QzTlqqmfVhChr8eGDBZlNYnWSoZZsH6mpMSLx?=
 =?us-ascii?Q?wVPkLuytJzRQsIfoGIoFCQw9sTsWXlfxqOD2UlatV5RGWGTTMTKeKQ6fWyxe?=
 =?us-ascii?Q?WUEH3jLZiyLZe0QllWmbMFYLrxfmTDsFa3bcggDf+l4nC47pIl8JaBvl3XDy?=
 =?us-ascii?Q?f+At/F8ueyYwJ347cfEcwLtV5N9jXjKvEcHbuu5BvQh5LEIHg5Q+/HTw8ZEH?=
 =?us-ascii?Q?Us4tjwm9yjy6evMM42d6tiDJyBvd15aPoHu0KfWZ5rY+BPss5LTYaXf5hMrl?=
 =?us-ascii?Q?7N/etaOcm9b5k7jAoVYsP3pO4ZN5kZgo4+/g7nFejCBIgqsq4HDciXY7WJAo?=
 =?us-ascii?Q?IIfsoXDcxsL28ZXi40wau0arQdtNbcVtUih+LPGUoPEj3/zIYgIYHrThrxOm?=
 =?us-ascii?Q?TR/z1TbNZhAUZbkst+58FLES4FhbowgEDa7YbBZaYqxiFLiicrVLuhJiTlJq?=
 =?us-ascii?Q?YxXwuLdBvhu8dJGYbxF/RBDwbsgTe1S1BZ/CacpjUzxWW+hz4AKglN30l3wo?=
 =?us-ascii?Q?FUZhZBEyPa1P+OwuN38WlJ3DwDI6cI+q1jdelVjkHY9XKLEehnpKV0fVZLu+?=
 =?us-ascii?Q?VrFXS7gscc6qbiH3A5PDCmRr4Lovqu1XUJ8K2ZapC83Y8zSdZEK0rgZPjjyL?=
 =?us-ascii?Q?3gFcyZED4zj9+hsZBhhUhVSlKxbHYKhj+YDLsK67?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a41e31-39bd-4cac-0642-08dc5515b6bb
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 02:11:32.9829
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TaQ8nw0ilD+urPKOY4CQ63rzvVxsNu+gGvNBR6tY58+vA0Sr0IsUl/LSv4krllJ2x5WimOCcXsprA7z+jVa2zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYTPR01MB11035
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=U0T544UE;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::700 as permitted
 sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
X-Original-From: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Reply-To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
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

Current storage scan delay is reduced by the following old commit.

a4a47bc03fe5 ("Lower USB storage settling delay to something more reasonable")

It means that delay is at least 'one second', or zero with delay_use=0.
'one second' is still long delay especially for embedded system but
when delay_use is set to 0 (no delay), still error observed on some USB drives.

So delay_use should not be set to 0 but 'one second' is quite long.
Especially for embedded system, it's important for end user
how quickly access to USB drive when it's connected.
That's why we have a chance to minimize such a constant long delay.

This patch optimizes scan delay more precisely
to minimize delay time but not to have any problems on USB drives
by extending module parameter 'delay_use' in milliseconds internally.
The parameter 'delay_use' is changed to be parsed as 3 decimal point value
if it has digit values with '.'.
It makes the range of value to 1 / 1000 in internal 32-bit value
but it's still enough to set the delay time.
By default, delay time is 'one second' for backward compatibility.

For example, it seems to be good by changing delay_use=0.1,
that is 100 millisecond delay without issues for most USB pen drives.

Signed-off-by: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
---
 .../admin-guide/kernel-parameters.txt         | 10 +++
 drivers/usb/storage/usb.c                     | 69 +++++++++++++++++--
 2 files changed, 75 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 561d0dd776c7..ae1eb5988706 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -6190,6 +6190,16 @@
 	usb-storage.delay_use=
 			[UMS] The delay in seconds before a new device is
 			scanned for Logical Units (default 1).
+			To specify more precise delay, supports 3 decimal point.
+			The range of decimal point is in milliseconds,
+			hence the minimum value is "0.001".
+			Example:
+				delay_use=1
+					1 second delay
+				delay_use=0.1
+					0.1 second delay
+				delay_use=2.55
+					2.55 second elay
 
 	usb-storage.quirks=
 			[UMS] A list of quirks entries to supplement or
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..f63e53464dda 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -41,6 +41,7 @@
 #include <linux/kthread.h>
 #include <linux/mutex.h>
 #include <linux/utsname.h>
+#include <linux/ctype.h>
 
 #include <scsi/scsi.h>
 #include <scsi/scsi_cmnd.h>
@@ -67,9 +68,69 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
 MODULE_DESCRIPTION("USB Mass Storage driver for Linux");
 MODULE_LICENSE("GPL");
 
-static unsigned int delay_use = 1;
-module_param(delay_use, uint, S_IRUGO | S_IWUSR);
-MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
+static unsigned int delay_use = 1 * MSEC_PER_SEC;
+
+static int delay_use_set(const char *s, const struct kernel_param *kp)
+{
+	unsigned long long delay_ms = 0;
+	int scale = MSEC_PER_SEC;
+	const char *p = skip_spaces(s);
+
+	if (!isdigit(*p))
+		return -EINVAL;
+
+	while (isdigit(*p)) {
+		delay_ms *= 10;
+		delay_ms += scale * (*p++ - '0');
+		if (delay_ms != (unsigned int)delay_ms)
+			return -ERANGE;
+	}
+
+	if (*p == '.' && isdigit(*(p + 1))) {
+		p++;
+		while (isdigit(*p)) {
+			scale /= 10;
+			if (scale == 0)
+				return -EINVAL;
+			delay_ms += scale * (*p++ - '0');
+			if (delay_ms != (unsigned int)delay_ms)
+				return -ERANGE;
+		}
+	}
+	if (*p == '\n')
+		p++;
+	if (*p)
+		return -EINVAL;
+
+	*((unsigned int *)kp->arg) = delay_ms;
+	return 0;
+}
+
+static int delay_use_get(char *s, const struct kernel_param *kp)
+{
+	unsigned int delay_ms = *((unsigned int *)kp->arg);
+	unsigned int rem = do_div(delay_ms, MSEC_PER_SEC);
+	int len;
+	char buf[16];
+
+	len = scnprintf(buf, sizeof(buf), "%d", delay_ms);
+	if (rem) {
+		len += scnprintf(buf + len, sizeof(buf) - len, ".%03d", rem);
+		while (buf[len - 1] == '0') {
+			buf[len - 1] = '\0';
+			if (--len <= 1)
+				break;
+		}
+	}
+	return scnprintf(s, PAGE_SIZE, "%s\n", buf);
+}
+
+static const struct kernel_param_ops delay_use_ops = {
+	.set = delay_use_set,
+	.get = delay_use_get,
+};
+module_param_cb(delay_use, &delay_use_ops, &delay_use, 0644);
+MODULE_PARM_DESC(delay_use, "time to delay before using a new device");
 
 static char quirks[128];
 module_param_string(quirks, quirks, sizeof(quirks), S_IRUGO | S_IWUSR);
@@ -1066,7 +1127,7 @@ int usb_stor_probe2(struct us_data *us)
 	if (delay_use > 0)
 		dev_dbg(dev, "waiting for device to settle before scanning\n");
 	queue_delayed_work(system_freezable_wq, &us->scan_dwork,
-			delay_use * HZ);
+			msecs_to_jiffies(delay_use));
 	return 0;
 
 	/* We come here if there are any problems */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405021738.13577-1-Norihiko.Hama%40alpsalpine.com.
