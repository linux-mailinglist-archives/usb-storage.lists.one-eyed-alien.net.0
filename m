Return-Path: <usb-storage+bncBD4JJBHQWAERBTN4VWYQMGQEG7QCPKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id C61648B31C4
	for <lists+usb-storage@lfdr.de>; Fri, 26 Apr 2024 09:57:03 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id d2e1a72fcca58-6ece5eeb7c0sf1923767b3a.2
        for <lists+usb-storage@lfdr.de>; Fri, 26 Apr 2024 00:57:03 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1714118222; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nu6g718S7AxFrUSYk/bYNmkHoi8kG2Yk2WoCzMhLkWquoUFlx9dlwUPmchD0LjWWyk
         K04rqjl2ZJz9bNU+CHqJfiGe672FccZTb7o0UecDD7wjhX/ON7xeEkeMO3I+wfk6JXmR
         GYxmmNYK3lVgMCsKHYfVHldbd0JG7jrTpQkE7EubsAz/ldsgN3Iw9GzULL1aLf9Y9wXQ
         G/h/dB/6ggxjpKNk/kQbNYSfaos+BM/zQMP1rwqnuwVLx4xIu4+PZ8PLpLJCao7Zldu1
         nh4R9+lGS6LveWkvpJ0uuTuwHVoLnTqXip35mheUAFfMjdhmWGb6a6VwZKtMBcGfrLDW
         paoQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=QDtzy76v8enOElxK4EC7EmY5elNkJyLIwuE7KqWVEQI=;
        fh=Nu7Oox6OP7Wm93+jOFpiqwLh4HjDDPE0MDWUmne7gQc=;
        b=MXNKn2j3GFf5s4q1xGvwrpA6EHS1+i1XglYD/3x2LueBIM8exHTG0pIndzU+WIQByP
         YERPX2lwgUAlFoR4kV7kzXriMJoyouV72eUT5KXqZvfa51KzCw0EcTOQIjztkMcacHha
         xLojdy9CtVo7MoLxsb4ZzJTrFkYXw8YmOY/3r/Xzx4ysJI3x06WOb/qjkBIIJ683P8oq
         OJrvTgplUpnsS7/2nZGNNJ1ccLlkEY1+Mk+ytDzgiYVfSWuu1ap6WJbpHqkfSZoRrtr4
         6rI+tUX8heaElN7sDs952QgDPEiA7PraPaIgUZ6yMkno9DPpZbTrm7wDTQOpyp/uoGaX
         zxpw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=Q2Au9oRS;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1714118222; x=1714723022; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QDtzy76v8enOElxK4EC7EmY5elNkJyLIwuE7KqWVEQI=;
        b=gElO3gzeeRJY1Sxw35NN0JoCXCTOGU6JpRqZMGsOUItSfZQxVYU2FJmC9L6+GGGRvi
         K423U0BwnrkgecnieIghAnE3vc5x+r4GW1GO5SpjiiU6ZAg3SE5PobzLIOzqk4gOvhVd
         iezt08MIAQOX+qSc4rh9xIJWBaXa+4TI8VWbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714118222; x=1714723022;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QDtzy76v8enOElxK4EC7EmY5elNkJyLIwuE7KqWVEQI=;
        b=KzvAQB1y8OvCXwSVi6YlSHze+8oZAMYi3bR/8ym9CkM58+x13ONWHFj8Pp7+D9TSKA
         AeglJjCCZUGhoiDKVX7LR2CwDq13xHIWOFkjiJ1tgm6Ge+HUlHma5ModCy8cFYwS6GZ1
         d09WFGpf4pptdUi69KhyPH3huY7Bp8Ok2jwJIh6IQ3DCymIB2U6kPD0S6g7i2q3CjSWd
         MGfd4nGFNro48TwDYcgHeTHdfnSkYB2HDP8gqP/nP4GhH8JmZo42Z3g5RO3URKm4WX5I
         6PqsGCsBkI4ol4a3+2YYtpsqHghQe/x8/Lmic8tBK+KrwdTo3UVKq9Nv+a8rWVoFD+fx
         MSrA==
X-Forwarded-Encrypted: i=3; AJvYcCVQK3KwUue/ouD4A7JXjVM0WM0RXcDOFoz1MMFj4lSXZyuDgFLkbTvrjAAJNWtfNfambwr8woOcpq1UuoLhdte2M8asifzVUG+A
X-Gm-Message-State: AOJu0Yz2DGa/yaV6X/RPUFaQ9SxhulhJdvxf4XqvZravUJ3u5ast7JgO
	2XGM/WVcc/j1FZyXFlzrb1jhlLxfnTSF3Tl5gznb8nHEXMeQQeJhPaDbYY+mwQA=
X-Google-Smtp-Source: AGHT+IHtvtBKtM7t7aULtWCZiDnDU6aCB3cQF+JhX26jbC4dpRZw2PoUCyTcb87tlcAXsJwxqY5lgQ==
X-Received: by 2002:a05:6a21:32a1:b0:1a7:4f8b:6439 with SMTP id yt33-20020a056a2132a100b001a74f8b6439mr2864954pzb.34.1714118221846;
        Fri, 26 Apr 2024 00:57:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:ba8a:b0:2ac:a20d:4b45 with SMTP id
 98e67ed59e1d1-2afa195a4a9ls1114313a91.1.-pod-prod-08-us; Fri, 26 Apr 2024
 00:57:00 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW8buFT1nmoguwVOp84pwAhw8EaDUjO+O1YGaBB07uzOCD3SABYkfVW4DWEq5cTw2LeNpNVPXt7nzGKGY4s1TLD7wJ2DTPJzPQN9fNFCdeKskcp0ao=
X-Received: by 2002:a17:902:daca:b0:1e3:e243:1995 with SMTP id q10-20020a170902daca00b001e3e2431995mr2600086plx.1.1714118220483;
        Fri, 26 Apr 2024 00:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714118220; cv=pass;
        d=google.com; s=arc-20160816;
        b=Chxr7zPZUaAJFuLEckFHQqeogCH4z56njq1f3kPWnKNzZoZVXGK0y921pPWbw0ncWy
         ztQbuUD3u0Nh4t6n/M1WIvyZVp//3rMEEwTboT/OuxJmOBXItxN6/Al+GJrdz4abReD+
         QTuKk9/Yfkcvh7o7oEPrMvw+7d9JKql0myyUaFlWUTpmBuTkgBO2+/1B4uGZ73h3s7aA
         hqQUsKpknie3ZkAomU2+svL7icO7iVFi0QkVKGVMKOdUH1IhZEOqDrR2axAXcti9AH0N
         LLf0P+0A204qIEZAlS1KnyritQ6nmDRZAnMg9amj7xSV/Lesoy+GJSBcLXOOOlEggDy6
         6J6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=20/4AfXMyYXSc5QyqccbGsJec3RXqadw1qrtxkA9Vi8=;
        fh=Ki7uo1aunji59xu/uSzF360F8EICIUQGOQBTTlaqWJ0=;
        b=kKqXEiMDvtyfDq0gVxA1Y9pwoupmYwAjFgb64Gld3uYGjTTbWs/ida4WYwzYiJ19Gl
         +0ZZXbV5xU/obfd+IKs9MEsDamlpVm1YiUjzdU1KgSfSaT/UFqU4OPuRQX6OZ42jjlKL
         6As3shO4tznyApYV9aTwDoIluj6h9GvD/2t60MGKvn77rJuNfXAA4vFLv19XTSDyEZzA
         XvdAKmmDf7v9LMUjUM6ZHtdS/F2V/zf8Wa/qw6z4ea9qvgtUwk1XsB3PYQaWzy0fl2kG
         PKRKWayvyllrmJwCZXVAgDvVP3qpJC0C+J9gZN3WtfBt/Bvt7XLtA7cuF2Bzz/rF4nDZ
         ZXNA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=Q2Au9oRS;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on20600.outbound.protection.outlook.com. [2a01:111:f403:201a::600])
        by mx.google.com with ESMTPS id x5-20020a17090300c500b001e7b84f0172si13920300plc.320.2024.04.26.00.57.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Apr 2024 00:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::600 as permitted sender) client-ip=2a01:111:f403:201a::600;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YP+4LsTmnlskisHFFiWibgGUE4Hox3P2HuwnmGg9+AiJ7mt8T/YvIbH6iDLTKdcFnnWfI1QPjFv71A9dCo85XVpammX/5kfFrT3zj0DhBMPBojMu6rGoy0yG+wZ91RRvzfBGq31M+TpDycNLU2dnlo/via+c63eGkKw0QtGQLXFEV6bSobIihhmTwpFiIQVNXPdvjsQtYbaV3aWSKul0VoRVKFques65zGeAGml1tX8Nl8BWkPDNLh5w9mwRlQngAeRdzT7Ssi6SG+LTqJZmD6geJ/N/qf0b+xHDq7RrTQTY8LV7yKk1lHPqQZUqgFZgxg34xti5zfPHOl9sd7TMkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20/4AfXMyYXSc5QyqccbGsJec3RXqadw1qrtxkA9Vi8=;
 b=lOL5D2/62MD7N3gYYgQuqpakBQuyo2cVB1FMKezwCg3mT8eZFOaT/A/D/3q8tmwqDa2QBFEmKc5VSlR37f9XfC8gR7HJiLBqcjH0kDQcOiPi3jxEh6HFYk5KScRn6Ymzac+RylOdic+W8THJkkvVMsuEHHHU3pUGqA7nKfU7zn4tsTtqkjaA1GdCt41RaqJbtquBrjnZhcuROeWYHcFfwKJN+0r0y7BkckjPdciZ7QN8sl1+d7BuhWPkPJPG0fkEIq4TZx9vRe7cv69SkmoZUo+bLHTIuJv57fw+gfJEqt/iV8xpFy5kWGezbsd1siEBQYLh0rQUfBPUHj+Qb+od9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TYCPR01MB10246.jpnprd01.prod.outlook.com
 (2603:1096:400:1ef::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.48; Fri, 26 Apr
 2024 07:56:57 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::fe5b:1283:68a6:dacc]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::fe5b:1283:68a6:dacc%4]) with mapi id 15.20.7472.045; Fri, 26 Apr 2024
 07:56:57 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	corbet@lwn.net,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH v5] usb-storage: Optimize scan delay more precisely
Date: Fri, 26 Apr 2024 17:02:31 +0900
Message-Id: <20240426080231.3062-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: TYCP286CA0240.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c7::16) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|TYCPR01MB10246:EE_
X-MS-Office365-Filtering-Correlation-Id: d478ef31-0e50-403b-611f-08dc65c671fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mdqqsgxgv5NAQr4YFj7eZGBCqFKvHoUFdbkCkocmWcZt+74dDdpULP/3RiES?=
 =?us-ascii?Q?EUSZhmg83uEfkQZzQwHcMjxrG6zQwTOYFNNhf1gRD3bmIDSrPQ2+aCkOTXRz?=
 =?us-ascii?Q?fDdLTiZliqdHBxAe+4Sbu+E8nPoSjowkwdmjz2lbgI60IRjUrI3qPDRE3cLc?=
 =?us-ascii?Q?CvR8dX+DXmxQsa/6iRv0ZeSmrKHPigFr9He2H+liB+LSWdIOynK0W/1t/P0S?=
 =?us-ascii?Q?zrTVZgVYmOxaFBJCUCM1WtWK47pXr6W5A/H8JJqWHeV4SpLeD7LZcE9FmFRn?=
 =?us-ascii?Q?i9QZ6HGcKHPBko9xAQL2ppmgZ1l36qbznT9MzdB5xwKee/gP1X/AbOFzV47b?=
 =?us-ascii?Q?FJyuAH6tbDu3rSnXqllF34Y9zbQtmfsk242pRHA85+4sLgMWF0PqH0f0kspf?=
 =?us-ascii?Q?JeZb81Tq/h047Naew5I7zEadXwOsxMFePFKpRl3y6KuLFrrAXq6aod8TQMP5?=
 =?us-ascii?Q?gA8HyEcCQ18X8yvLYSB9EkLubNRcPKUk6iHhWzd46SjKm/FyAtRlMFjXaxy3?=
 =?us-ascii?Q?DjQqE+VE8cCfIQUi3JFrWrld1kOEABUoKP98LgRFMePfq0Lewki10JuqLDjf?=
 =?us-ascii?Q?3GixcBJ0ng71XKMUHP+OAFVmipRuVQHAHhXheM56YOG3bV/FiWHYRBy6o9QT?=
 =?us-ascii?Q?snvg0e6IGicmr6iKfoRuE78G6SCU9obAe8KJS/fBW77IPj1Zae+DQTlNreoP?=
 =?us-ascii?Q?rZGHAWHsNEUcuY16CscqPhuGIllEurKnu+WnFMrdYvq+8qh68P5KOyrYq5aL?=
 =?us-ascii?Q?n/14SayJvWE4LZkh+hUu6eOmnzL1vpIIXBOwcJIRKrAoUe3tSk3v7OLHTgRF?=
 =?us-ascii?Q?FbXADLg3CAEpobTSxO85j5lGLem4Yuc+Eky5UCc8A6XEADcC1FKZJEeGOREV?=
 =?us-ascii?Q?XijyGc5f1txGLNXNqTwbeODceiKDrGuM0id3tHg/5hp2kS7CbmVbl7WttQ2g?=
 =?us-ascii?Q?YTjnnig+1Ka1A7pkZ6UWncYLqHiTO/zAqXJeOY0/oUZMymthe6JWg4/enYeO?=
 =?us-ascii?Q?XOZVpVddUkeMAQ2BWYogLcH86H3kbhbc8anVpLToh5zoBrQsq7sICSsNoL+Y?=
 =?us-ascii?Q?/G1gerYrD+6QhwwCZp636RxVdegO88TRVWUbzQux4rYwBlb0fLCRTmfLCfta?=
 =?us-ascii?Q?k4rhXYqNCxemYrPJXl4BvOvgUCA46nvwvuS+qvaaNzLka7xpfZPdBWKBxYu4?=
 =?us-ascii?Q?mMvuy0rFKfWOdzm1G4OsyrQtSEGE8EwUTYvQz52SQCPlebXvAMHKlIDAmoPl?=
 =?us-ascii?Q?u0eQBG2576PJWPCf4m7wPJXQ2LRt7/uwX4Pz0JCedJaBxvrE+p9nj5wAEy/6?=
 =?us-ascii?Q?UGbiNAm/+0evH+0LiX0IN4S51bBKUWpcjgPUqAGMhnWXyg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(52116005)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wNKo7GKE29mNgcu0TWfVzHg8OIsqr5NjU/arW7hX/pN1ZcsSqGjZuJ/ERFbq?=
 =?us-ascii?Q?/P97GT9FFEvnyZKRizFkWPkA4bKyGgCj/X35gcfLrmSbXnrpB4c4d9ZTz3xp?=
 =?us-ascii?Q?FZ+l0cNXzQEwt1y6xCRmk5RweVAJXs3eBNYQrqKLYGdnkX+NKnS2DaJtssUg?=
 =?us-ascii?Q?F6NfR5qjinZJRy1/xdxjhC+bpzJIUxEvmxfkI/CtVrAcIt39KP2rdHuihnjI?=
 =?us-ascii?Q?l+JnLWQZ7n56hxUmKN2WnMBa+birZQLlVGpuN24XAK1mtK6vVTyu1p/rAX22?=
 =?us-ascii?Q?968yMmbqd3ZHSZDzoYqVpI6+1pHCTB75tygOfKIF8GWsrg7CGpwzWiNSpUl3?=
 =?us-ascii?Q?8X2bdld6z/wM/Zw/JOzVGFKVtqbTVXXW0JmwrVRDeorUUIw2KLF7ZCbZw4wD?=
 =?us-ascii?Q?+VmFUeXtdisVakasNe7b/f7X2rMXJzM/Wr3PogVeFHbrz+taWl+rzpZaCnFm?=
 =?us-ascii?Q?OFdNsd71Fwf7CkBZVkI7EdSFfLOOFZT0bz+xVplXfg98+7KwMqrg0L6KXzW2?=
 =?us-ascii?Q?JZ2hSZROk87ipyGCwUqPgZGGTzkN0xe99mVYcL3kBafxaANsDgVVd5NOPTNG?=
 =?us-ascii?Q?CeNk6iqe85zTMt9pwcP/dDlJT6B0q59xr4d30i6mJEEGfKG+a5Y7YVxB70lC?=
 =?us-ascii?Q?yHHVl4khAakwJV5JZJZ1jHQ9mUZvVSRoviFou1du7tLLPp4okayt1BQH6iIW?=
 =?us-ascii?Q?OEUhoEZuxbI9gvaAidcDRI2D1Y2Yei3Nle+w/w5oEn7YpVq0k4utbgIxuuEL?=
 =?us-ascii?Q?72eUHbxOeCwaMmvJkAJ0ZfV8W9R+hKOYELr5R6UeDq3xnIxAM/mzqf+qJmxK?=
 =?us-ascii?Q?3JkdqnGYkyWcwq10YD5R3skEODcSTxIAQf3EiwBH6aTMalsWzGXyRsm59B3I?=
 =?us-ascii?Q?gA77LKIxCkmRK53qDx04zlODixyIkopAo+tkmrtNbA2LODMiRgaLSZS6S88H?=
 =?us-ascii?Q?6u+9SlmLioZxmG8D1thcX7sabGiAliJDp2oVnUSiBbd17+0ciZ9booYRiSnf?=
 =?us-ascii?Q?DtXalJyOO4M6wUOhNCVMtcNx6QWNCvOhJ/6MY19Tj4kpikHdgA5FdsHTWUsT?=
 =?us-ascii?Q?pR+/9Lznn8DxsQJFuMGYRyvTIDIKg/5LmD6QQNXIqGIMSK3cfNRocOuiHbiA?=
 =?us-ascii?Q?qieyC9IRWGbVItnyigA9qdc0Gdjh22i4sYhu1eO8vOWrvhXH7f4+ueJZp4Pv?=
 =?us-ascii?Q?XAEVu9aaCMg56ndlwN9lsg30VtgUT6WFdDN2gEz6Ha3HdiZRD+f2A4gh91+7?=
 =?us-ascii?Q?XBUmrsgUsU2Oi4iJL0CZviL/OCWkwM18SPNmOKWpIYiPpGcmqnGYZgW9SebZ?=
 =?us-ascii?Q?WApqAiSCG0vAjZRCxiRWawawSPaDRA50/EfkDHqqgDsYnTfPS9uKN0VN31NS?=
 =?us-ascii?Q?9T+2vVXnmIUELJwnDz5HXSljIOb28eclOfdHCdpRF/qsTC8hkFOTquxVtDaQ?=
 =?us-ascii?Q?CpzDOEZXoEvdt2DMtsF0EkkBiAeuGCGL+ggIAIuST4KL5NuwNOI8sYLsYkHA?=
 =?us-ascii?Q?CKwHC8ahv2dHo7m2htbZqa5vNia/ndctFg7Ds6Zb4gkTHADrWJd02dXvkWcS?=
 =?us-ascii?Q?DfZJDLDKfpaKoBMgMoiHH0c9xKcXQVtg+mX1mboS?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d478ef31-0e50-403b-611f-08dc65c671fc
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2024 07:56:57.1203
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UtbsMYEek5H8i+E7nIRfOcFeSMA9Pz+FyTdeunA2XTXgjByA+PH3iOwG3WATAnEuBFap4aDTVofYNDdOc+ARSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB10246
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector2 header.b=Q2Au9oRS;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::600 as permitted
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
V4 -> V5: Simplify parser/formatter code and fix documentaion
V3 -> V4: Separate parser functions from module parameter set/get
V2 -> V3: Change to use kstrtouint only for parsing decimal point
V1 -> V2: Extend existing module parameter 'delay_use' to support decimal points

 .../admin-guide/kernel-parameters.txt         |   3 +
 drivers/usb/storage/usb.c                     | 118 +++++++++++++++++-
 2 files changed, 117 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 561d0dd776c7..1b22983b9a4e 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -6190,6 +6190,9 @@
 	usb-storage.delay_use=
 			[UMS] The delay in seconds before a new device is
 			scanned for Logical Units (default 1).
+			The delay can have up to 3 decimal places, giving a
+			resolution of one millisecond.
+			Example: delay_use=2.567
 
 	usb-storage.quirks=
 			[UMS] A list of quirks entries to supplement or
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..72dfe7ba3e4e 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -67,9 +67,119 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
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
+		if (n2 > ndecimals)
+			return -EINVAL;
+	} else {
+		n1 = n;
+		n2 = 0;
+	}
+	if (n1 + n2 == 0 || n1 + ndecimals > sizeof(buf) - 1)
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
+ * fixed_point_uint_to_str - format a fixed-point decimal value into a string
+ * @val: The integer value to format, scaled by 10^(@ndecimals).
+ * @ndecimals: Number of decimal places in the fixed-point value.
+ * @str: Where to store the formatted string.
+ * @size: The size of buffer for @str.
+ *
+ * Format a fixed-point decimal value in @val scaled by 10^(@ndecimals)
+ * into a string in @str where to store the formatted string.
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
+		while (buf[--len] == '0')
+			buf[len] = '\0';
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
@@ -1066,7 +1176,7 @@ int usb_stor_probe2(struct us_data *us)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240426080231.3062-1-Norihiko.Hama%40alpsalpine.com.
