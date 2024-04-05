Return-Path: <usb-storage+bncBD4JJBHQWAERB4F2XWYAMGQEKQCYVGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A258992FD
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 04:09:54 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-1e36b79fedfsf1748715ad.1
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 19:09:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712282992; cv=pass;
        d=google.com; s=arc-20160816;
        b=flJSduQ0z3GFEZI6S1kZFrSYFJfX5ZH2buGpBEf70fMSeRL2SHqljN+t4p1XV1xvB1
         U1AYeiFR4k3Wc4ej/bib7tA/PMyFEU9d+U9QTBlC1qV2akdxhzf2aYSUJQwq291psm/F
         D5Kec47kax8ueaP+uYSPJRTFR+To7cdvmCukvllWJaPJ6dx9lCpEYtHN3NueaqS/otyG
         GZ0NK9gXt7Gp4Z5cNsb/DuB0xg/MsH4sU7gpBN2hzWV5IY675+0vc6ZLuyqXEtWW28yi
         fBHoGQMMRoiWj0TjfNzGixWbnAPdG27DXGetSek1JJJX40dznCIPjaKTollJrTKxr2fD
         xIiQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=cc4R2kIJU2GIvYBdzi/xllpnI1Vbh+gkvOgnNzGdoKY=;
        fh=i2I49CuBBjUYy4g8SsdVOZnxb6N4WnCRGjZHmsoeaNo=;
        b=ZKeFGqEynTks+//Do0kqmOlPdO74rO1Qj1H7/5eQHQiWvxcR3uqDb/Z7LNrRDQ7QNb
         x1v+dJm+zj3HzSDfBT13Z/ryy38/wQoWlIz6zQAOyUYfnRlzsIOkZmccjACYtuTu3DWG
         ZKHwholN66LTrqPZwGMkxmcIudKG2Cc2wW3dBMF8tB3B8H/+P3efyBqRCRNA23uBYbiq
         5AGZLM/rZNlKuNwJiql77s9NwnC00wgSbyNhQheIKp/XFe+y7ZbOB9cUeKAeKh37Ua+S
         UuJLMQ/FO23ZWAyhG9DY1xEJN3Cg0pYCoXYaQydrdlVLgYz4Vi9lpC7ggpHrdl9MiJzq
         /OWQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=CeZ3VXKR;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::701 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712282992; x=1712887792; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cc4R2kIJU2GIvYBdzi/xllpnI1Vbh+gkvOgnNzGdoKY=;
        b=L2WocmrxtZO2vk2+Exu7tsJTrFwKJ9KNAv1rQ1lrN2Epgbv0U1mQn05pp5JJPvRbzZ
         yxJMvfjBPu0q1H35Q24laMxVevT6i7vgmCLuSuXHwIeoHTohOKX41BtAY+mW+cgDo1be
         7uKaNzh6mkELHd4IOSoFGA+ICdIwRxjmVGLv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712282992; x=1712887792;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cc4R2kIJU2GIvYBdzi/xllpnI1Vbh+gkvOgnNzGdoKY=;
        b=YRw67qHVBYTgxo3g9lR2+yB4uP6EUAh1a6PipwK5CqaXq+uZdvqErDRKCiMgWv7C27
         WFEdOxGRrNx8pWPDc8Qn49ocGio2vWInaB/wFtKPlAgHuCufo3/VFTsZTxatqultDpEx
         nLsy86rc+BNqEVTx/OHQsPwifKhD+szkyUyp0VFKt2lByVAaErSoPKdMM/0CbhSCq6Ca
         9NTbipYyrVh4iLP/ehfkUw0/sEahFiEuNbvDaL5qbcGB6jax7B+dmT0ggHvwvpq3N3iD
         tEeEaYQqmp7r3jwSmDkkTVJ7iSGOZenf9+dyDvjb60AU1zJi+CuWccEenMnWiW82OoN8
         YyOw==
X-Forwarded-Encrypted: i=3; AJvYcCWX6mWeMzcKjwKI4/KZ9RjnVlEEVvIdudG5F5z3gWet1dY/2c+Xru43uJXlAdYzqGXjkupLuJNz9WDV8pNztDwaVlzKoP5Yii/y
X-Gm-Message-State: AOJu0YxycxXYJi81szvkd3UPR4sZUg2UskB6gvR4Fh197fIF0KwJ77R4
	1jniZhGhmgwyd8+1Js8NHTD9XT5NSGFONPsj18SQjKZrpky3UNcbAvhcgkVdd/c=
X-Google-Smtp-Source: AGHT+IFJpQbhQcsNF4n6Njra1ATEtFAGOZ1m6VUGcDo2CEfg20xwYPmyHhzwAHk4zaAE/WwuN8GI7w==
X-Received: by 2002:a17:903:1206:b0:1e2:9205:5254 with SMTP id l6-20020a170903120600b001e292055254mr201714plh.7.1712282992400;
        Thu, 04 Apr 2024 19:09:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2342:b0:1e2:a401:68ac with SMTP id
 c2-20020a170903234200b001e2a40168acls1221687plh.2.-pod-prod-08-us; Thu, 04
 Apr 2024 19:09:51 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVY/EuLKFt3WdEhiRJAn2tC8wbSfh430wzRf+c5HqRPTzQOcYucASr4V4/o2PiDWZuB56FAyAGiv+ebdiX3+kO9uVIFnLncTEJXBj7MF47sncxPKBY=
X-Received: by 2002:a17:903:487:b0:1e3:1542:91e2 with SMTP id jj7-20020a170903048700b001e3154291e2mr119303plb.46.1712282991236;
        Thu, 04 Apr 2024 19:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712282991; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sto+D97vEjL6vW8+yyOXrUH1khrt2x0Ns65dPVSD+D1ij7snOwq60x1g4bcz1xJjKP
         Jt8seLTypJyqJ5siEqaeSqDcmoZB4LSArY5oNXRhr2E1iqpw3ga+wbn2BOslbRyliMYt
         QTipUhloUAR20dibHDUgsR2QQNI2/gfbX/6AhKaiSTpkvgmlw0fERfElYpxyfz/70f+l
         WK9Jpf0MxkZtQ4SgADRh5z7+MD/3p9ur/LsP3hmC1a7zi7AiE0tdQDBQI6nOdaC1fML+
         IsCQQEWBXJ1sh7fQNJVFl3nhO3TXT/mf6N9/Io0YqcKjoqJGbnIDTeeRAqob6ZhbUHwR
         35Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ADzFUyDCVU57rKOPiguDTxNErXg/pv/LfMC26d+/oDk=;
        fh=lzVKBgfUucGLNlYxUApGyVh/lpog1RXhseK9qMXJIbo=;
        b=smj8K9MwmWaIpuB/Yr3kVjHwHPOgAklmAk44OTItIfB9Lt7fDJxIHG1x7/qJrkJZMd
         qRQub9usr5PquYiflhBDSs1MZLjm3kIOJNif42lkzVQZwk95qaJM7y5v+kwMcrTAuDpS
         lccfkCorQXIutKdF1VJFahWRRhMX+ObI8boZ+8we7zwGWrkMFPsDKpqje5NbAVb+zAcA
         DTKv2muJR5rmDIlaCj18UNDhz4x/vuMT7LO0uBUA1hpujzHE5bH4EZT0VhCl9QJ8BHpy
         gd+f9tC8s16T6iyenZQ194SjZnghDw5RQn8ShOgNLzifSQRvrt7OQPh1snl3m9G+cs1B
         /nyQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=CeZ3VXKR;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::701 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on20701.outbound.protection.outlook.com. [2a01:111:f403:201a::701])
        by mx.google.com with ESMTPS id p1-20020a170902e74100b001e2b9262eb7si464440plf.636.2024.04.04.19.09.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 19:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::701 as permitted sender) client-ip=2a01:111:f403:201a::701;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cjzb9acy605pou2HKdMSiE/35Exv0QK6YQeSe1jlYHCKIBje2D4WTdJaD6BVLlgxFgYAH1aFKGvy0sgf3Gz9HNZB3LZfeQKTcGu8CHHibzU+qIYIvh5lIMV4BFYiIDE5zKB329G+s6mTNWz5jKdUPbLY7RhdjklOMGIXpit0h+CsK3qRCFweoSEzv1khCs/ERAMWQ4+2elL48fT4y5GiLl1OLPFiXNBj9snW1Y37a664pXB1ZM1uXHvZawgjXGb3u/UKYDl/MB9qrgr7hf3ZKHx0e+avK1hijf4F9sGtnda5WE6iWixBX8UcSic+b3ylZ5LwGs+7Z3pRbPQCa6OkDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADzFUyDCVU57rKOPiguDTxNErXg/pv/LfMC26d+/oDk=;
 b=YuVdwLeIuFGBldOUAngc84Dbr9zMGR8M3ogPeXbygzA1bcL8cy4FTPR2PuJ1UO0bLtvfG1rT7csZNnG+Efqe1lkSEPL7UFlnRz1WlRFngsOFCQaBZuE8vtqMu57pGA+H/LcBXeLwmgFlQCIYgekmb1AxvK4m/2ubk4eadhhVbH6PUrO66uGeMpxJPNCXHiB9JWLxIsZyDSPersvA4PhVqA7yTTlz/EmYIJ+w80/u0qyyLhtGuYi+teFBXlWpbXOqRct2PNxI8TXQeqdAfv57lLHgZhzXHq/0fB09DOj4qJNVtOSlgtYrXwyaB3V/mozbfOWtCzHc+Q2uPkBk3wz1wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by OSAPR01MB7325.jpnprd01.prod.outlook.com
 (2603:1096:604:11c::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 5 Apr
 2024 02:09:48 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 02:09:48 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	mdharm-usb@one-eyed-alien.net,
	gregkh@linuxfoundation.org,
	corbet@lwn.net,
	linux-doc@vger.kernel.org,
	-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH v2] usb-storage: Optimize scan delay more precisely
Date: Fri,  5 Apr 2024 11:16:07 +0900
Message-Id: <20240405021607.12902-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: TYCP286CA0247.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:456::18) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|OSAPR01MB7325:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N9bus4Kaf8dSi4Vkpun15K5ti1LLO3exIQxcSh7RekxxeSYBOxIF8Zr4w7VCAY96mz4CejQ47RAwmAtZOBmtH3g9X+yBzafz0OmlDgohV0RZY3Z+grysoLbHja557f8e7AUuL2odmLSZb1hVjJ3TUjuGP+4ihHsXetDUReXsQZOGitYK0yRy6SLNGWygDq/vX4LCEsbkPhKLC7CwlL2pNScc5fbIvEJh1KtDlWk+6Za4reCYCmwWyeOmTHcLYE6SjWGaOhTyktKLXF87wL1N8Sq9qB/O1oIHn/EHzrGsGyHsBT4ZxRZGB98fBURYS8R7P3RrOWsY6nCY+s3WMaVUkgqMHOJ7W6TFcVIR7eeP8C7gChys0QEM8kudtyRoXpAxIdLqwQ9XTj+0SER4aa5c1E5JCfUze8AzORHUKdZOXyGtWDVjiPte9mnyHXp0SXFxcSd3BzqB+HOH8/EmK1CGI7+b7aNgAuxzRBmFlZqHpENTFGqzgJ5twOQO8Zb8Jn4Jk1IyYPv0udyA4JxxWpfe1SKkSnup2QfYbh5DXxx2WRSwiPhrS8Rthjmx+Lgfaxl4nWjSXCbxHrC8HdqvQKYWhGA36HJhxKsf+Z28GI8tLSnIeSqu+LlVYsHKpTdEWTlMd3ixjr+pi5v2PhKOiqGFUCCda85HBX5ogTlN5RbPFeCNTihGbW5bPMFWEkRf/IUusM/YZIKVR4oyVpm1KQ3N9q/95IYGMciv225jq+qofrk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(52116005)(376005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yezclXiKLY5F5XGJArk9tt8uxSKPDXAZyKtboMJyvaQAau2ZpVGihc+LZq7i?=
 =?us-ascii?Q?GG+00IZ5i2O6ZQBE2eBnotwKOnzc79tqvyQZ5Zd3Socsb0sNCXBx+dQhyxvJ?=
 =?us-ascii?Q?MlzSSeYReKefJhgDgX+mRAt2pKySQ0nDmHZdzKATERPUFabNR3EsQejHD5Uj?=
 =?us-ascii?Q?gjwNa1GAGRewfzQgO4XkDL62jZdIRF/aXZdQ/WEtQC2jQ/Zl5ZbEOHkjJwDm?=
 =?us-ascii?Q?u2A740dmSxj9pdaZdJNTAjkMTHgJDB7AQ1lNBTFnm7BmjBdsmGb+yLns6B1Z?=
 =?us-ascii?Q?U6nkjzNgIxr/7T62nCA20QQc+mXh1qCIJvCKFhEvUhAxj2TCd6YCJwW0AWaA?=
 =?us-ascii?Q?MNpHHceCIrHI0rGh0RHozuSBhI8qo8ZVRD7QQ6cGytjQFms9J/a/ZX+AC7gj?=
 =?us-ascii?Q?X0stbphwCoh1e1ocuAhtphtlQwc5/JRSiTqN4w4mPiJpbVpE5FIfZQZtuWOF?=
 =?us-ascii?Q?QWFeSYAbiwNctc8kp7uYoXVBtRcn/NXBZeoK/e/RUD9CxXQ08EKV1TRA/h3S?=
 =?us-ascii?Q?2eH8w5nkXhEyPQ0HuJ4/EjLtH4QTvhZVSi28bP9fNkU6FPXyKbIOxrMOSJ9U?=
 =?us-ascii?Q?Hj3+3hSEsiT7qkGCIO1dMqes0v+9Cu5CqkgINIWuo05Whd3Zn61W+0hrIt5u?=
 =?us-ascii?Q?ytCKyA2+PO3qT0ORUR83ZlZKh2Ase32L5jvSvLZenWx/MF7hPgSSFiUfbySD?=
 =?us-ascii?Q?DGXK0494XTS3EczSReVsYTPI4gQBSog+gKdVlzAkwswxl7bUwhNvP4u0U3E+?=
 =?us-ascii?Q?KL0gWuP+Xg8f1RMBGfkl6lexLjvN5UWwxqxLOG5YgKuuQErOSWJ9d8u9XebE?=
 =?us-ascii?Q?dWMxqI/emXCeprQcV5IP0cFKyqfWgoLKvj9f+ZgIuU4gzT8ECZ+yXkN+9VhJ?=
 =?us-ascii?Q?prEDQbQjZTCrDjl9R+SYkHYWZAJ0mTR6KLnfisRGHjMCFFDveA3+V0z2mBuO?=
 =?us-ascii?Q?5n0UoTTY0b+82ILm09QOytBn9SI8IYFj2hoQlgFATHb0lYosvQZekQTytWfj?=
 =?us-ascii?Q?ZgWwEMyCBmFRh9cMRONh/1qqC+JN5o05NhJDGaxuAXHcZwGAHrzMSwruVVwo?=
 =?us-ascii?Q?n+VpLDmO5A3CYnBpVZtRc+BtQZftdfbLHi8dWRpNEwXIKiiUGruBe40tyQkP?=
 =?us-ascii?Q?39saLCZc0pkOj0uvtecGrfTVry8dtYMjrveUeBOG9iWkLXezQQA6ViYfVKtq?=
 =?us-ascii?Q?EqcrG7tXi3KEupCj2jC6Ir+0iQIlzCFi1ZeBjvKLfOHS8TFTQzH1OjRmJ+69?=
 =?us-ascii?Q?muzq5A5q2qE7QHiOSl4g4M8eFHgum86c6O277qvjiAg1lmju+YSrdiwvhHKr?=
 =?us-ascii?Q?92PCoitSZpP5R2B03naNMT8Q5MIZMhKsefihq+T30Ux5FwqVCSzfUogFcx3u?=
 =?us-ascii?Q?5odqtXXS+yXRkm0/s1wPdPFE29JN9Jep2dKsMrd31OVYkrw5HibLKrU6gUeB?=
 =?us-ascii?Q?XF4heCJ2RzFv74laeC6Nt51iYzeQGa6yFXGZ7prekNkl0MAGaAlVl8Wpypwi?=
 =?us-ascii?Q?az2220lDZuhgkzOGjOI+6hszlmPAxa+pUDhJh+qXPZJ3zXUTTZRFz3BT1oUZ?=
 =?us-ascii?Q?tWjizLxFqA+gfNANhck70xLViI8QREd+hDqZHcjj?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d9d64f-ddca-448e-7c24-08dc5515781b
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 02:09:47.9301
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OvGxd/whC8Ohg+mCIn16IJd9oXZe+IVIq16/l+67iUMpeA4WxvvSkVAwnWd6WJkH6OjFxsDS3G63HUduWth1eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB7325
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=CeZ3VXKR;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::701 as permitted
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405021607.12902-1-Norihiko.Hama%40alpsalpine.com.
