Return-Path: <usb-storage+bncBD4JJBHQWAERBH57UGYQMGQE4ML6CPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x945.google.com (mail-ua1-x945.google.com [IPv6:2607:f8b0:4864:20::945])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8658AFDCA
	for <lists+usb-storage@lfdr.de>; Wed, 24 Apr 2024 03:25:54 +0200 (CEST)
Received: by mail-ua1-x945.google.com with SMTP id a1e0cc1a2514c-7eb7ca62201sf1441931241.3
        for <lists+usb-storage@lfdr.de>; Tue, 23 Apr 2024 18:25:53 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1713921953; cv=pass;
        d=google.com; s=arc-20160816;
        b=B5tCbnl3YO33qYFI/fypBxW7AueskG1sd4dxgAe5PVcdATGQXuDcLexWCv5AW8mwIS
         Bn/MSkZJr6TLIb8HtW0yweWJNmPhzHQmWGaMb9HpwMOEcedxD+O17Y5IJUnaqBv/mfaw
         AmyGjG+qhHhcFxSFtnUV60AagsNMNjeumlRcjhbcBMqTRnALReOLRyOl5ZzSiPngVGZe
         0n89yOXzT86cBgS15dEXNO1odLCSizG9eZk9Ls6yFoMPEVGbRRumS5p+DqcnFPf5rPIB
         eWivXtKFdHG0tkdq/O8zjDFyUrhR+JDNULwgI+y4XdROgouD2J6uZ39UatL/SUZ2xw3/
         1upg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=PWeasQHfywyAkX84kRv9o1FDiHyU3wAQV1REsrNMZaA=;
        fh=rr2lLXg95eBYZYPIqfR5cpI4Ml6O+97xIua0JLXcJsc=;
        b=AoQi0S+1OGn9uszSlLcQT68GMNDMu8iOHH3IgFweQ3EaZIIMDY+WwcBpzOdVMbKwZ8
         Wp+R9dTl7Yq9aBTm7jDvhCwm6UJ5Cx3TQm57fYmBNgCNcaOcVrTJ2/WoyUhkLke3BX8e
         /rngUqdl8w0CMIyll0QlfYaTUGhvTmMPP/hT3cyUDS9syz9344zGyPvly0I7Sose8FTz
         lpseqX4ImEW+/eY0M0p0zDgtknIr/oQgTfth/ES+LuY/j9zzmdFBZChPsab8H1Dq5Ext
         bX3UIWxGAyWBWLvR9oRsix+7Cu9lTGJ43zZ9MK9JUXB39AWPKdkTlefIqzue/Y2QxTu/
         QDXg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=AX2RcKR3;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c407:: as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1713921953; x=1714526753; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PWeasQHfywyAkX84kRv9o1FDiHyU3wAQV1REsrNMZaA=;
        b=Zpd0PaRTWqTpikhjfoA7HMY1ev4IjzAhr47L5zObWSPXEV0OTWTjVq9vDDH9yBouXV
         u/lgS5oq8qPaJRi0YYafm8lTo0wf+QmPF5z8oU0W/OA6h37LQ10mqwwXDC47xXTK9Tm+
         ieHlHAf9HQsfrjq7j56gT9nairpqfTHmXYeXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713921953; x=1714526753;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PWeasQHfywyAkX84kRv9o1FDiHyU3wAQV1REsrNMZaA=;
        b=Z37o+5WJQWPAUFr9ek6wZ3cuCkPu2cSgN9QFk8rw3kudMJqNZtRvzp5ymsatYCNxYT
         KfSZysSuGYKuPTB03ydkPk01bedIoYCj7KgR677OLbXfgunqC5yvSppHuZJYKIHlrAuR
         uOkr3DF9U3ehAPNfXR7xp16SmK3Xf6FfngeWSc8A73vKWry/jTFNvXkYQ8iP4KJU9oya
         sqslhrS7rlGxPcjweapTAKhKkBoYHsx6d3v45BcoKzZKumyj+jfTVs7iDosmkyYqaH54
         3jO7tpy3Pgr7T6Dei9k1gT5WhteN1tNQczkCMHwfF3ht8U8zFM9x/fKvu8XG+gESvRkw
         bC1A==
X-Forwarded-Encrypted: i=3; AJvYcCVSqXHBaeXCSBTYLh3dFGDuHbDczOIqeoeRqxgScjoxUekhwQ7k0GkQANm15IYr9IlJ1WSOtQ5folhmFM6pIfMWPCfh+GhZ/0cp
X-Gm-Message-State: AOJu0Yw68QVcqlx/f6ZUco7C+FUaX+GNW8m2lXSHLP7vAQot8O26MEaN
	YYLhx5X3v28jrQejGzAxDeI5EXVLyIrK7FtzYk996XbKRF1S6zpQbdXy5EQF9tU=
X-Google-Smtp-Source: AGHT+IG2QsWejT5cZc3N/+YbOEcxKn/XBfW9ZIiHOUkbkBrWEPgCP98Y4PubvgzLInARydWfPgUc3g==
X-Received: by 2002:a67:e456:0:b0:47b:6e61:3608 with SMTP id n22-20020a67e456000000b0047b6e613608mr1217205vsm.20.1713921952241;
        Tue, 23 Apr 2024 18:25:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:1256:b0:68e:fab1:8005 with SMTP id
 6a1803df08f44-6a05d47846els32134816d6.0.-pod-prod-05-us; Tue, 23 Apr 2024
 18:25:51 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVkkMIdYisR/YquIK8zPhv4dlyvxeUG2bjaCp27wOSMS/iECG+e6xpbWk2dDc8KMWI9m7gHBCLPF5Hom7eDcd4dadozViUETz5anonjUJpdis1t2WU=
X-Received: by 2002:a0c:c785:0:b0:6a0:76fa:a323 with SMTP id k5-20020a0cc785000000b006a076faa323mr937985qvj.4.1713921951126;
        Tue, 23 Apr 2024 18:25:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713921951; cv=pass;
        d=google.com; s=arc-20160816;
        b=l08fWukKN9/aYp0S8Q+bJ38mtYDkLj8PZtJuVWKeNG99AhSCDY7LAKTmGNemUTZxk6
         /JyhRyFduK4buqhOxkGct3Z5DhvT+2onLVnDlaaH45KBVJOsEVrUbbYOZzyuMR9wnu5u
         OyyTWtMB5CD+Ogfox0/MheQVnfd/Dh8ffbZDco4lv5iEp/LsfDvAW5IQjTb4zG0GV3kM
         fRlRVtHO7jsQjIT4dcgjpoeuL8CuPaOxxJ+9w9LeYFCaLeFor4Ui/+ytze0ed41RRqJx
         kATeiieZYq2/T5dHDUncvV9IEEiG6vQM2pJwinRo4awW8p9XjQr1MQA86+aajCqyZB8C
         j1Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JgHKdiSh8JEccfKjdKbuoV+upcSy5j+J4+/q6x9popE=;
        fh=Ki7uo1aunji59xu/uSzF360F8EICIUQGOQBTTlaqWJ0=;
        b=DieQ1+/FO2/ObuvaUFbvsUb8jseqZyHDHittjHwGkQZF64LZ2ONLk0A9gHUJVf8Z16
         QsjCKPEepxOfsoPhdqvm1gGv7e4ZBW++vfOX/HH89y6Hn+GlQkNatSzkIJpN/HF+E4DP
         3GmSAZ0YlcRiy9zOMGo5q1Uns/dNZIdNJj3j3zZ/MNDczsCfS6gxIldD8Q1RWTYW59dB
         dIJt7Ze0fMzTaokm1zkJi+ckGO3NkpyigVBwCmCqOdiEpRcx1z39nrF1e77f48YecDuQ
         B2P8N2YHBNiejSPRG364ZDvYRXhYvYFV72QKR4gITqiopAi6JZ7gu2Zu7rl+euvbqEpA
         DHDw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=AX2RcKR3;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c407:: as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from OS0P286CU011.outbound.protection.outlook.com (mail-japanwestazlp170110000.outbound.protection.outlook.com. [2a01:111:f403:c407::])
        by mx.google.com with ESMTPS id jl15-20020ad45e8f000000b006993eecb931si14592426qvb.601.2024.04.23.18.25.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Apr 2024 18:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c407:: as permitted sender) client-ip=2a01:111:f403:c407::;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6vmW8U4uoOs0txvBu2oAuGwmyVLpF9r8VC22ClJP5cFbKiX7Q6N87HJDDMvwZBVN07AnkseZ593aRvL69JB6/lbfBSu3zvCi3WK/V5tf2WM/QnmQMNa1TSmD3iVy4pYl9N6LnB4Jwpx3MEQvOk01nu6LYrYX7o7zjVFc0R6HN8fv1RblDYN20927AxCwlq/Z5+erl3FIMy2ReAYmBSP99IFfxyvlnCVZuqv06Enqv6aQyBT0zXYDrb85vD7yEQYS/p6XsxeCpVRixvZrkPoR81ftFnNOW+G2aw9lJ+mylScJ8ndPcrXIM6NIHiW4M95yipJOlomHl5n2oXl4eQjRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JgHKdiSh8JEccfKjdKbuoV+upcSy5j+J4+/q6x9popE=;
 b=amabBuwh5PtkWp5OhQ/8DfppwzcOPz3000JMDdhjSOM0Qh2CObmHAjuvzIIJMb/dvRcbg65xqfx7OQxSslYSd0sw+2jQVXb3Y2hK3PEZESlbvi7PuP+hzyL7RrI8KSvQM7Vsq9/NxEz/x/gxqUb9w9IMAxEIrkK/sNETC3rhhw2CFThOffdbgodBknXPWMN1WCEaEIKkXX7HoXaK9+PUxzyGz6D1pcRfjri915hhnpHNoYxDHEzS6BzLegETVdbn9j6v2hyaagrkx62/tBxLKzrCZtHtJZz7TzK8eTybj25Xt2Gd0d0GIg32XyzmLoUZS9yS1YKw45n24Dd/fFZvEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TY1PR01MB10657.jpnprd01.prod.outlook.com
 (2603:1096:400:321::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Wed, 24 Apr
 2024 01:25:45 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7472.044; Wed, 24 Apr 2024
 01:25:45 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	corbet@lwn.net,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH v4] usb-storage: Optimize scan delay more precisely
Date: Wed, 24 Apr 2024 10:31:34 +0900
Message-Id: <20240424013134.17307-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: TYCP286CA0117.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:29c::15) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|TY1PR01MB10657:EE_
X-MS-Office365-Filtering-Correlation-Id: c6f422a9-17e0-4a71-b001-08dc63fd770c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|366007|376005|1800799015|38350700005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?i/pbox18JiQ35ieIZJ++iW7aJOPRysnTCg+7kDgRbO+JOhinWA9DmMJEqvaO?=
 =?us-ascii?Q?89iB+TyARpv59AvrlSADN4XO4yTRPUPm1zsZfu7dwUN06CsUYh79rhV0i1Od?=
 =?us-ascii?Q?1GOIVJSHrPD42TZ4BJmJsqRJyVn6W4EHbjC48fWIT4qPkS1Y+7egUxYieuQH?=
 =?us-ascii?Q?r+O4TMppTFVD5o4EWT7p/1C4Rspk6RXZWOb7dEEMpmAz4iBhJDW6ylJ1vQQa?=
 =?us-ascii?Q?XNrzsznEmm7kEMFYB98H1eJQ3zEMHSVEjs6n8+TADh/9ZW/v2DczyB2MLuE5?=
 =?us-ascii?Q?jPLVyx92hLIJbvn2aJuByAV4CMdLhtnkdXBLBoayA9NzvN0iqKqAyrWhsLrU?=
 =?us-ascii?Q?yn//RDBPycSpxsxtEafCHV0IE7YdnVZGcdh9pLmKZQDAuJMqIKDSpSJA+OxT?=
 =?us-ascii?Q?SGUsli2TPekNHg08ma5dany26b6FQ8svan14BlFpC5qBoQrS5ue75C/mdkPi?=
 =?us-ascii?Q?yeKXADjxy1+RmhKEFIbdbEgMr7/yKxMGkaRPoZDvOa1wQv/SyXNdzUykrZq7?=
 =?us-ascii?Q?5Ls0hDlfzzc/AgCJMXga+JXDRbUpCJwNET7LjFVW1zEE/2RFuZtrme3GCCHY?=
 =?us-ascii?Q?c/iYQwwrXQMEt2fR2oKP2Kuw6ydFuXf9IqebLe8aULu5yjA2i8ErHqFGAXic?=
 =?us-ascii?Q?Cgv0H6glggwSEkbOPlX/43dTLRJo4BsGWFCMWbN4QdNriMMsmE4XFugoXIa1?=
 =?us-ascii?Q?bVM+Ngb1UghflZBzku0SbUDNBWDPFWTy0NZws45JRZvjDkwIWwM9mk+skqP5?=
 =?us-ascii?Q?rtxbCRan51GtBRYNlZctyvsvjiMy2JiKLNXH8HPXKbAWwqAsBw5uWdJFdYta?=
 =?us-ascii?Q?SYrBPTWgmm1/nVTXYwAtTGLw/TBYBVlUkmFNYScaXOmhKfrAJ0hZBnEuJEZ7?=
 =?us-ascii?Q?XQggbBO16E7mFtn4w6TK0gKQPZT4VjHJs1wISugYJUc5v9EdSQHuh1AgTFfb?=
 =?us-ascii?Q?ec6VIlksBO7sI6zFADqiwW1vFW9R2gdrLiixv9l74iFVSjQhaCw+as2DRfbh?=
 =?us-ascii?Q?adiHFl++D/gRFEJEW0azi9nSdnBEuvAlIaYFebDVBGCt/sNU0fS8O0s0lPh0?=
 =?us-ascii?Q?z1IJFB63Fsb/+WfnmMDaye/br6OodSy1C8YuFPLjuovFQrqN+Qz11B8JOjI6?=
 =?us-ascii?Q?wPzQrCs5wmQ8PzbBL/bXJ3p6uFSuyXkuH7tuE69HSwbvrnvxmWWzp3qpCK3J?=
 =?us-ascii?Q?oGCOAPaiI8EQq0suZHDwD2XpbN730kNedWFT30gV1NBmfU80fDx10rLvZL1i?=
 =?us-ascii?Q?sEYM20v0gaedz5lQ3FcIi7IfoAaaK2cxjHlp1O2Hb5jrS833cemg4aymkaGC?=
 =?us-ascii?Q?QYV2OfPR7MXTUPaABMYnsFFnRHKIB+JEKt3Na5kOrO3esA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(366007)(376005)(1800799015)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BdLztK+H30dEtBWgmu2444nOEMDQngyaBk+6813hvAIFUfmsfIX3e7qkpq8v?=
 =?us-ascii?Q?ehMwUurgjsMsrDZ82kuYcSc5uroVFNufYMThqg3UZJ5xX+e8gaMlNpTNJeoz?=
 =?us-ascii?Q?5p2KvJyNtPrVvo1n9hZWnzAy4w1K9hXzlUp9nPk9KTFdo7M3cU8wZd6orCBo?=
 =?us-ascii?Q?WY0WnPFRjFn3lUzjbUkg4W74j5fJzstwldXSvkOzZFPSyrw8qLQXOdEuUU4Y?=
 =?us-ascii?Q?3cpMFsy8tQXuDAVrwINZaCI+Mry2iTz6lNLk56J21XXPZe9Jhm0yrw/ywvBN?=
 =?us-ascii?Q?AnHc3TTKao9AVser8hmGUHzEK8PdFgxnP9YZd6QTsy0Tj3M7zAJ2CCGFW4V3?=
 =?us-ascii?Q?QK6PaPXdHxCMdvZCLXdoHHzSIXiM6JgAZ6MHcPv5/AKCwiUnt5wA8q+XUCjO?=
 =?us-ascii?Q?bp09AR1zJxur4hL8TVNVlXLM1lntVM4vr3AfbtvFCYF8xcw2LGn8jC3X21oy?=
 =?us-ascii?Q?0quD0+RL9TGhJa7fQNcywUdH4zMjui7lUc06y/lpXJz/JKrzo9Yu/42qDTT5?=
 =?us-ascii?Q?pLkJzeE8ZDW0Bs/pXbCBX47L4puTeNQu2Dytq0wsk9reo4zT/9PSt4X91xxJ?=
 =?us-ascii?Q?XP9Mxm5dSZG9sY/yn4JAaXyAm/s1vkc0BrRnP8X0H11orVOo4peCOnx06p/S?=
 =?us-ascii?Q?3kvTXxGtyP/LIbC2O1viA0nbd8Zkrm8VNVcZ/xanNskKOSE/7JdgDQE2xl3q?=
 =?us-ascii?Q?xkQuBiIJ0U9isb1w66/KH5pcsx7UK5SFqJ428z6k+eRcgzQXaowxfBa29F8y?=
 =?us-ascii?Q?e+muZFjOjSXauS7GGRGc5Amqhji0t4CxY6PGvwZ0eQHbtYRSgnM0tOxGt/7t?=
 =?us-ascii?Q?lnVpp0qm486ke5b1ZBKb3ccVGBmbmdAAWtjj0T1exTIZi+I5eHho/l+ln24D?=
 =?us-ascii?Q?HWRZA7P/Hp4SARyhOWwujRqy3rs2ZeNE0iRIziibBGwQelOY6s6J03l0PkYP?=
 =?us-ascii?Q?j0hwxckjkDVfjkQhJNChcr8+YJCO0l4pdk9nFauGOTwcz0mQZQUFVGOG61LR?=
 =?us-ascii?Q?xOvgQf3y8jyUCjbVzsVPWy27GbDCzrgdrmwD/1DLJwDD+k1bpp1hs9UcKSyL?=
 =?us-ascii?Q?Q2tJyx4tkAbnGMFqEtpsQtx366PqXUph8mWMffpQmWAqqgqgL4YqeO7W/Lrk?=
 =?us-ascii?Q?Sh4+X+NFzQ9LX/6+zpKCXzB2ZAUoY+L+vJKdf0cuwRapkSfwbg8GKgZzoynC?=
 =?us-ascii?Q?RGz6Llupq8v4LcdzG7CY/YpH57jLqs+yGCMJz9bCGDINYxjgTsU6jhwzxgPs?=
 =?us-ascii?Q?KHmyMN2C1ozvdO0j7itPxfbDk+V208Le79slB2u0+B+4sbTwzo6oFfrOkhsC?=
 =?us-ascii?Q?iHMT3yhiAZB3Ms3kmEGZFANh+KEuLqtpo/vQfAXiIlExIb0nBd9OGGWz9sOL?=
 =?us-ascii?Q?JxvXUh2UYkO5cgtoyhSAK1ghq9jHCzKPI/Mj15Vux49TTpTo25VgbgM0dz6z?=
 =?us-ascii?Q?ABtnJ5KWhUI5O49adCi1SbEQRvF0eyRKuo/EE7GZg6ilyKcT6b28W6zP+RBB?=
 =?us-ascii?Q?nqvd6wUAD59f5eqXyEe38pnQXQf220NywZcQqb3Y1P64MDp8lkDivSw49sYt?=
 =?us-ascii?Q?qyBABgJjt6MNVr+i08XnCMO4URVKPY9Fb2afzqTa?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6f422a9-17e0-4a71-b001-08dc63fd770c
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2024 01:25:45.5973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mJb/fgy934wF0c+ug2EKTGGu1rsHkaX3kY7wGa6ymRkHen/aNh6lWOsfwPnOYazJwgkYma/QvtysQda2pZZEww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PR01MB10657
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector2 header.b=AX2RcKR3;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:c407:: as permitted
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
V3 -> V4: Separate parser functions from module parameter set/get
V2 -> V3: Change to use kstrtouint only for parsing decimal point
V1 -> V2: Extend existing module parameter 'delay_use' to support decimal points

 .../admin-guide/kernel-parameters.txt         |   5 +
 drivers/usb/storage/usb.c                     | 120 +++++++++++++++++-
 2 files changed, 121 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 561d0dd776c7..8248426524d5 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -6190,6 +6190,11 @@
 	usb-storage.delay_use=
 			[UMS] The delay in seconds before a new device is
 			scanned for Logical Units (default 1).
+			The delay can have up to 3 decimal places, giving a
+			resolution of one millisecond.
+			Example:
+				delay_use=2.567
+					2.567 second delay
 
 	usb-storage.quirks=
 			[UMS] A list of quirks entries to supplement or
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..c908cf2a8027 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -67,9 +67,121 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
 MODULE_DESCRIPTION("USB Mass Storage driver for Linux");
 MODULE_LICENSE("GPL");
 
-static unsigned int delay_use = 1;
-module_param(delay_use, uint, S_IRUGO | S_IWUSR);
-MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
+static unsigned int delay_use = 1 * MSEC_PER_SEC;
+
+/**
+ * str_to_fixed_point_uint - parse an unsigned fixed-point decimal integer
+ * @str: String to parse.
+ * @ndecimals: Number of decimal places in the fixed-point value.
+ * @val: Where to store the parsed value.
+ *
+ * Parse an unsigned fixed-point decimal value in @str, containing at
+ * most ndecimal digits to the right of the decimal point.
+ * Stores the parsed value in @val, scaled by 10^(@ndecimal).
+ *
+ * As with kstrtouint(), the string must be NUL-terminated and may
+ * include a single newline before the terminating NUL.  The first
+ * character may be a plus sign but not a minus sign.  The decimal
+ * point and fractional digits are optional.
+ *
+ * Returns 0 on success, a negative error code otherwise.
+ */
+static int str_to_fixed_point_uint(const char *str, int ndecimals,
+				   unsigned int *val)
+{
+	int n, n1, n2;
+	const char *p;
+	char *q;
+	char buf[16];
+
+	n = strlen(str);
+	if (n > 0 && str[n - 1] == '\n')
+		--n;
+
+	p = strnchr(str, n, '.');
+	if (p) {
+		n1 = p++ - str;
+		n2 = n - (n1 + 1);
+		if (n2 == 0 || n2 > ndecimals)
+			return -EINVAL;
+	} else {
+		n1 = n;
+		n2 = 0;
+	}
+	if (n1 == 0 || n1 + ndecimals > sizeof(buf) - 1)
+		return -EINVAL;
+
+	memcpy(buf, str, n1);
+	if (p)
+		memcpy(buf + n1, p, n2);
+	for (q = buf + n1 + n2; n2 < ndecimals; ++n2)
+		*q++ = '0';
+	*q = 0;
+
+	return kstrtouint(buf, 10, val);
+}
+
+/**
+ * fixed_point_uint_to_str - parse into fixed-point decimal integer string
+ * @val: Integer value to parse.
+ * @ndecimals: Number of decimal places in the fixed-point value.
+ * @str: Where to store the parsed string.
+ * @size: The size of buffer for @str.
+ *
+ * Stores the parsed @val scaled by 10^(@ndecimal) into @str.
+ * The string trailing fractional part '0' is trimmed.
+ *
+ * Returns the number of characters written into @str.
+ */
+static int fixed_point_uint_to_str(unsigned int val, int ndecimals,
+				   char *str, int size)
+{
+	unsigned int delay_ms = val;
+	unsigned int rem = do_div(delay_ms, int_pow(10, ndecimals));
+	int len;
+	char buf[16];
+
+	len = scnprintf(buf, sizeof(buf), "%d", delay_ms);
+	if (rem) {
+		char format[8];
+
+		snprintf(format, sizeof(format) - 1, ".%%0%dd", ndecimals);
+		len += scnprintf(buf + len, sizeof(buf) - len, format, rem);
+		while (buf[len - 1] == '0') {
+			buf[len - 1] = '\0';
+			if (--len <= 1)
+				break;
+		}
+	}
+	return scnprintf(str, size, "%s\n", buf);
+}
+
+static int delay_use_set(const char *s, const struct kernel_param *kp)
+{
+	unsigned int delay_ms;
+	int ret;
+
+	ret = str_to_fixed_point_uint(skip_spaces(s), 3, &delay_ms);
+	if (ret < 0)
+		return ret;
+
+	*((unsigned int *)kp->arg) = delay_ms;
+	return 0;
+}
+
+static int delay_use_get(char *s, const struct kernel_param *kp)
+{
+	unsigned int delay_ms = *((unsigned int *)kp->arg);
+
+	return fixed_point_uint_to_str(delay_ms, 3, s, PAGE_SIZE);
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
@@ -1066,7 +1178,7 @@ int usb_stor_probe2(struct us_data *us)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240424013134.17307-1-Norihiko.Hama%40alpsalpine.com.
