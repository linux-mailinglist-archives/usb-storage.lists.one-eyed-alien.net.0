Return-Path: <usb-storage+bncBCFP7G4HQQGRBK5NUS2AMGQEDMF7BBI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 659BE929262
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 12:04:29 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-447dbe5672csf16524331cf.0
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 03:04:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720260268; cv=pass;
        d=google.com; s=arc-20160816;
        b=N3LR9/zqbmjl6UMOTwv6B0qmKEg6YqGRzgPSHPnfiO9LpVx7R+6djHajhUdn8CJgcs
         37c2fK4psDfx0Z8uCnpERFdH5FLFVfkYLXP864aPxGxa5R56QZ5I7btHl7D7IueAZwRa
         9x39Gn/5asuhJt88eMr99ompVEap1WOUKSxBQxpgW+tGmWByfmWZYjaEo/+UnjkFpcNe
         4YF7AIJEbzjukur9YIbysXVSSqoguqT/naeoPxGL04ZVQIUFQ/V7kIYSrFz+zplrkKQd
         0FGTT+4PEOXAMVZzMYuQsHYCxu0y7ZOxtLMmTPm24A7liYmPMVJRKXlO0jVmJ40FlfEv
         ghjw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=JfbUd9tvSjhmuPDwq578XtMIiO9wgvX+557U5OYa/TI=;
        fh=TJzqnx23doold4+QA2XmjSbqrOBQnZeEr85Ub4uMLk8=;
        b=iROgfiASaqsOzWaXuqgR0XJH7U6cJ6JHETpyEJ3es5Yp5YWRL3iC7TgcDN9EKlxTpr
         j7vfi4Y7zbzPAvocb4yFbqU19WUJkxh7Cgv/VxHnD7TVLaPEvCoJL5yyQFgkE/D0GRa8
         MLwa0UEM7CtlZ1Tii0bYj69dz2BD7sX/exqZUG7OhyNtxkdXThgsOasWZLdXqJ8jOD4Z
         EjuE7EZXNxy7zAVQM46ddZigyIAUiRqF2O3eFXXBos9RHejeiTp+4woCP4JoMrt7BFKS
         Idntobhiei/q4EwsUoM63BxDn3h3CImkHC3/2rwdhwflKg208iM54GNPSQ+A2hu1uCaM
         MSJg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=KebdEoiG;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720260268; x=1720865068; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfbUd9tvSjhmuPDwq578XtMIiO9wgvX+557U5OYa/TI=;
        b=QWap45sLzXns+PpC//GfbauNLM0PBUlzcvz2aXidKcyQPjYcVKqfskkZCf+P0Thqc8
         MuMfbhZoCfEOGJSQe5SpBb4V6EegauH/7Yska1xux6wKfvsDqIBQi8Z0QEgpc9Xu9XwI
         pMleA+RGA4iPZ41FBP3yFv1S2E7EEnh3IrID8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720260268; x=1720865068;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfbUd9tvSjhmuPDwq578XtMIiO9wgvX+557U5OYa/TI=;
        b=Uskxmm4JLYpOASfR9RhIFAZJvvkvY8AZY1VjN1yT2r6kXN6uQAsE09ZdFL4ZBC6kkG
         cWoKqaUAIl95jObyEVQxF1sMwPXgXyo2i3yseXe/p7v7KaCdU/XN0eYWDOqlBn1Ar+LU
         0FO+lWuQg5Yr0fggVfBKTId+4Yjad2uXJP9UHgz0rgsFMCX9IJREOf5Bq+tA5wK1DOYC
         Lb4OeXTY3DbnPvgmKuaN0/pLDBCnuKpNjlsacbeKrtY7xSSCHmG35CZHSd4nfOjbbHcy
         Wjkl4MNGBKxw47FK/JAdN1FbmUDkyXYbEpxk+Y3RUENVMqRTw/mAfLhv4XqT5wUTE3wa
         cJSg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCU4nX3+zljMqNKfobUSrpPlxHw4NB7qGnh0dJr9mh6lBKZYiWH8qs8v0HcS+mrZl7T7v9GFzDBSwtbHMHqIgbQXr/HTsCk3LTrf
X-Gm-Message-State: AOJu0YwSxEytIv4Yf0TrdoX8c9TscRQoxel2Vq1nMVzI/60DRk1RlMzS
	uA5l1zSnqSxEAx7ffof6If0VwPvkqIbpCcchgmVtAPav2LSKdg40GCTnXLAwA7k=
X-Google-Smtp-Source: AGHT+IEPJ05DbeX8PUwjveWYUtXBGaH6Nb9TNv+/MolNL1SjN+WeIDeo0dFWEa4sZcmmyjLYnz6Ijg==
X-Received: by 2002:ac8:5a93:0:b0:445:229:3888 with SMTP id d75a77b69052e-447cce9c512mr105528221cf.4.1720260268151;
        Sat, 06 Jul 2024 03:04:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:11d5:b0:440:38e6:c194 with SMTP id
 d75a77b69052e-447c9cd8b67ls40695331cf.2.-pod-prod-00-us; Sat, 06 Jul 2024
 03:04:27 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUrJ7pSkWxTew4I3VP39hrESQYzro+CYUgfUeNDE6WfaItDE6MpUB0yDRmnlwl5nMrelEpv6mqI5/Us19y7vqrRGQOPtj7cIZhuf0qNhoyt+b/+KH4=
X-Received: by 2002:a05:622a:243:b0:440:21b1:f84a with SMTP id d75a77b69052e-447ccec0ac7mr87607801cf.9.1720260267345;
        Sat, 06 Jul 2024 03:04:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720260267; cv=pass;
        d=google.com; s=arc-20160816;
        b=hDcc1wdu709iUgXB+ltIAK3ajB74g3LVeGBX8lli3ii8cSnvgHehdKIKB/uUcPUhnl
         uWITATfOSCsADEchuuAdId2saxxODY2ed4N5iDgiLayBBuEsOmjrIBLWI1gmXpTFDEJj
         ow+ni1rhzwg+5VfZXkZLq6+co232VdseX4Clru+YyilsnWhiTzboBY+TEXMFoFcK8C2w
         2WsVgY/nLGqJA1wgpyB6OS0+TFsxuP2h/YO1HjiAcBMsslmfuSQ3TsxgxX4jsn3dqgU/
         u7KYcztnJBu0z8DYP2FXLbjohgd+pb9fhTTTWlfVYZjaKLaZpzDl76DEvfN6UsmJ/fZ5
         +Kew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=PpOLJC8VSaXjwvdkmdxbtT4n4G6cWnRzEEm0z37smUI=;
        fh=vXkTU5fzqeuR60fXNbRRyp7EdHvTShNHbrv8PHxSY3U=;
        b=rodaL+cFIungLBNb/dF8p6f0LI+jLedVAfFyA7aVmcHD13FG7/SkFwt+OXy2+xtZel
         njx1EngD/pBTr0W3aos3LdfCfqobCVAlUR2yYRSsxYPBf/NlHa/KnJOYEGeIgYZ8hyxw
         32lyQK6fdJ45giAIAl/ZYJsM/miO8rlu/A/aU5hcqSY7uk0lGOU1K9LcQppkKMEihrVO
         1FcQMdR8J03QwfHKCS+JrElaZ+kksdio+24Ao22Lg38obCqyJMRDIXmcNoC4iEVWk5dS
         c1tgeiHKCqvDY9k0Qed1wryRdBMPUJ33GzazZ20pZ9Ggmue/X+tEy8NGazrG7jQjSEUI
         MLsg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=KebdEoiG;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20800.outbound.protection.outlook.com. [2a01:111:f403:281b::800])
        by mx.google.com with ESMTPS id d75a77b69052e-447d86bd931si30610471cf.446.2024.07.06.03.04.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 03:04:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) client-ip=2a01:111:f403:281b::800;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJaevEIzfThGlCokaq1nNYO5mCQhy2EBK0atQy6FiL4ELQZUQZwi7PwKeeP2MtFZjiRR6IWGKYbLQ1255ToSeDogIlLDwRra2RqMy1STILJYI8IdGgpaNXBbsvAg8Do47J2TXc52ujTRUPZDz1BNurokSGOZRgz11Tf2tJ4OqYhb4S7ktpPHKeFkJNyAu8X0DmV1/viGEx90qNPRZfUi/ijlemz8AYHnXrgnStdVXANkiWJ+wS/2j6Hxn1Svdf/rG/RGk0bMEsLL3J34UHHLsf1bxM1Jke/3D/6A4Q6pSranPMXBaeElND/jtEg/+FEUKz6LAhyPswCLYsYQokhJrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PpOLJC8VSaXjwvdkmdxbtT4n4G6cWnRzEEm0z37smUI=;
 b=YKX1pFgfIFgpSkwsWdH1RN7I19feibzZk1Ui4yN+dgB0SXuRtlGpwrWNRJwOCKtq75qS8MO8F5JkJSWsfGU3wR3VuozcOiAGlxTfA5MRzuhqxN8mOdO3+b4JYYNNAF08jYv57BQC9Ilus0C4I9OBB7aTGvbQ0fZrN05YVAj94inRWKRsJR80QStr4yNYdvtt5nk6gFmdWOcSK2WjyKo1VJS2PE8S8Ihx3bJhTolPXKgn/F0x3O4a+ZUwlFpCqd3qFY7KDiYeBoHqMpZym7nQZoBCz66/+19qycGOQzI1LW2hIPHN0cTFXYBt6CYUY244B5kzf0Nn2Y4STbPq6URIJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN0P287MB1781.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:188::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.33; Sat, 6 Jul 2024 10:04:21 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 10:04:21 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
CC: "oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Kerem Karabay <kekrby@gmail.com>,
	Orlando Chamberlain <orlandoch.dev@gmail.com>
Subject: [usb-storage] Re: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Topic: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHazs1tjVgoALhhKk+BKEcu0nmxn7HpWxaAgAAL54CAAAHQAIAAEUeA
Date: Sat, 6 Jul 2024 10:04:21 +0000
Message-ID: <D568E439-68FD-48FE-8F9A-076F7D33C9B8@live.com>
References: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
 <2024070649-nuzzle-movable-f383@gregkh>
 <C5231A8D-C529-4BAC-9E2D-32F00321A294@live.com>
 <2024070622-alarm-kissable-f446@gregkh>
In-Reply-To: <2024070622-alarm-kissable-f446@gregkh>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [JuuZVz9PzNXhuGKDqBKLv4cYVOXSyy4LLTJiojoQk9NsYSuiH47KKQjlOz04GAPC]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN0P287MB1781:EE_
x-ms-office365-filtering-correlation-id: f26b63b6-066e-4f26-877c-08dc9da301d9
x-microsoft-antispam: BCL:0;ARA:14566002|8060799006|461199028|19110799003|1602099012|440099028|4302099013|3412199025|102099032;
x-microsoft-antispam-message-info: C9Zo1eZF8YAID+LJ+1OZBCYT2Xc0A5/3EvJcERMrlCnG8DUhId6KrOQFX+AXEuNIJhTTijHFTM8UYnqCMsEi8fV5HfhBUiQY6BetH8piouCyPxBDDlSCxkDM30phEA8dlpM97bfQtqbzsmWeH35G1ma5YkLp0quzBrvMRpTr3hFvCoKSU1z/wVSu8o8/9yq3BsOJalwvkTdb3XJiElqTjlqEm7ZFYF0HQQrSVt2uXaSbphGQ8c1heXkj2WYXGNq7BKMP3hSOty+Jlk8szIsSDugBM+pHUXBZ88U0JWHKIZwq0fHas8JsSA9jqwoG7BN+hcul3dhSGn4CCejh+Y80he3qog0UYPhDBWsY6LlSoZQTjUUc4CevljZ2oVnmWr7S6a85y5tpp83/7TUx93S2e6tgbmqEbctQcHTGWJ8z5MEWDRDzsJ4qllu423XW4SzlcYbHAV0rnURK8Q9xGn5DM8C5o72B3TORPA1Hw5fAI8bY+M3eMurz4WhvXyTgM/8Yno7XHAG30n+mGeqYAnMtCm295kQdGm7wt48V8TyOWjwZggNoVxcQ2f2wS5xuq9Rud2iVuHnOksxW0rMRhOGGGHiRQLsI0JMGWg5+Iu4E4Hrck85pYKg856gbkQKR9HGffsFy8k6KbSyKC/MFGJkkuXRgAw2ApZ+XTY5RfIBoWzH8AmX2CMrzZ5SE2xmSk0hwJmvTFef448kmczE0e3oqEQuqIs/Ic1nGdYFfZle510WpqUB0qLDeFclyZBuX+62L
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3BtAKEKnLYTuUxOtzq1xBsHKMlUiDSQq3WtSOtrRf0hSoNEmsSOn8UsBGBYb?=
 =?us-ascii?Q?DKO+R0hBdVtVTkoSfK5S84fDB8krywEm71vdJVl5Vt3KD+G/YDxS2RxM3ggT?=
 =?us-ascii?Q?fGJ4MqAjxOLixGuu4dSjkFUiJnEoijNhi4ptYhSqlE1tw2sst4avNNSKmygO?=
 =?us-ascii?Q?NUF9VzUk0fdCHl7WM4rV4Rl7bTQng/AhCJzh1hWzVG1D0DdR4aTULNJ2WSM1?=
 =?us-ascii?Q?Qotx8yqBs2LsfAr1qWn1uizptASwQ+h80WBcATpp1BQElxR30+PBDTuB5iJT?=
 =?us-ascii?Q?MHlStS9XvXLPZh09UH3HRgRXAyfWI4ovDRVB5Mr2LR1EFHk1BrhvPb4THMQu?=
 =?us-ascii?Q?D08mW+NnD/0UkPvVILKrfnZUYMHK889WtGsyPN9EaT6GOicmQbwnjVvC2hQg?=
 =?us-ascii?Q?X8R+Gx9hDAp9DSEFhnvqBXsJkLHqGvdwJzCgCQ+aWgup+zkFk0ZB98bHUmS8?=
 =?us-ascii?Q?AsveAynJNzB251cHHdv4F/ooo/FVcgbaKACJ1NW3aZnD0jNnXn3xIf+pCDgq?=
 =?us-ascii?Q?38BEr8EdpZlcCbnTiQJyYihcxxtItEEj5TWpdKMPIdILzxXZUAlA9jdfuAN7?=
 =?us-ascii?Q?1py/707JwdCVghctXyzmeE8kOv3OdfNK/CtR1NJmVINaOc0UErpPhv5guja/?=
 =?us-ascii?Q?yxlZNycr1lhJZkbTAL7VvpV7TBaZZDJRT+6i86lQ0efyov760T9HOpdMV9o3?=
 =?us-ascii?Q?9z3PK841+bzI5vTIyQRM+GL8PyIU7WwdNTD5SbV3gDBXAuLvBPRV4JVSdEog?=
 =?us-ascii?Q?bvdaXHKkuV9L757PHK9AiWQGHguhgKAG7rkqkpUWNfkchanKWtdt9eVR32o+?=
 =?us-ascii?Q?Jgz1Faw2Se189+mKKaQJ8RjBz4cpnwg/7QHHiwymuwzO+N6apYDBn6989Agc?=
 =?us-ascii?Q?x4MdxATHQkzW30a6Vx4VMMFCodmfRN0zDaaUPHpKF/H2NroZ23hRz38K7Zds?=
 =?us-ascii?Q?1uRmcdXKl31ygLt0zRqDRq4uysPGYR0arsv3FfWhCmW06slW45r/gH0+RIVs?=
 =?us-ascii?Q?OH6C6GUoUMKB0OmoMz4eXwwHK00HuX/UmMWGk9Ghsw4BgRSSBIyVqrco02CR?=
 =?us-ascii?Q?prYouEOJk8lpBV6M9bdyNKbPanOU0v/V1osc6sAcqjjLfyIuF95Mmgt9XI6E?=
 =?us-ascii?Q?vz8QQ3e5viydJ01oR8ThoakXG9bmHunqjz1YK7BICSmnM8kJP6NI4hFCIfC4?=
 =?us-ascii?Q?ktsOCErNag7JYD1CrSp8wrBplgQAsOAItplU23x6tJHL+SrpQVxVjpKgL6HN?=
 =?us-ascii?Q?LlFcs8EkjfjXox3KcWvIRjE80xTlm5VGl9MUOkTBlQrH5XkdnoV4SZA+WWu2?=
 =?us-ascii?Q?uWxKKflKAp/aSx/34Fvme9Ax?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <B127DEA5556EC94F91E7F6F7AC3C29C3@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f26b63b6-066e-4f26-877c-08dc9da301d9
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 10:04:21.5769
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB1781
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=KebdEoiG;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
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


> But as you say "also" that means you should split this up into at least
> 2 changes, right?

Sent a v2:

https://lore.kernel.org/all/A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com/T/#t


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/D568E439-68FD-48FE-8F9A-076F7D33C9B8%40live.com.
