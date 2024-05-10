Return-Path: <usb-storage+bncBD4JJBHQWAERBHG766YQMGQE65VW42Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3BA8C2165
	for <lists+usb-storage@lfdr.de>; Fri, 10 May 2024 11:57:51 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2b3773153fesf1613450a91.0
        for <lists+usb-storage@lfdr.de>; Fri, 10 May 2024 02:57:50 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1715335069; cv=pass;
        d=google.com; s=arc-20160816;
        b=ry+uEa4v8ZM+hU47qrxQIon++K+aKzXWn5d3fltGR9/NFCzJKEZTP68PDwKQj7y24j
         kF1yJlSvBrbC45HAwrMK2R2RKH70CwdRVyLdqC3cSJZ/TdfIDjtz4V8y0Fpri8smB+hA
         oPklD/txBlW3cUZTcv5kVFEEQT13FyVq6MGpvOFYmSN6C38FlB/UTKBQ9lmbjNhsR5Yx
         V4w3A4QmAl7IJxnDX5wDAE8ez1SyF4Xjj8jBbhe25xyMzsA7kirGJpD9rTJA4GX7D1dj
         xqUuwEB3IOdqiaNDS7leNtdZWlWQnherUz3BZFGg/2wIk4N58jhraDvoTBoI9+oUEfJy
         gyUQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=bvJ4yVzIhF37uRZ2w5BrOhONM/dMWj10vOCBo5N/tpE=;
        fh=B4xVRGDuB4HmmV6f+EmOoyw/SMF+Oid8L+xQFDY5idg=;
        b=pOHrCWDvKat+Mvnb1bKvVa7y10l4CR51U4pt/JASTD2E54DsyXng6jhPfhLTJUcT65
         QlS5d+dwfHotqCdvYADp5e2uM9DZy5QM/eGUZVRLHejdctEEkk3Xnv6BQg5H14ZfEQCB
         RWb70QB64jntGEXxlApJyRw3fnZBJW2dPhhZNg76XQLK43rk+RVhmpSghctV9LvnQWoO
         xCWbm1LyopNhW8ht5UE9xg0vzWOA4wztgrFZyhWxT/bsSUleQpr2wD1DGqidtbmDaFI4
         mDiQC38CmYWsxRiBgHqMV+kETJXkQvFBQTvAjSAMGSMM4I4asfuKPMD6E+X32vOwaytl
         lWUQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=UgT0Yh4m;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1715335069; x=1715939869; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bvJ4yVzIhF37uRZ2w5BrOhONM/dMWj10vOCBo5N/tpE=;
        b=gX0HRVcjV8fTp6LmKFgeoZhEhTy552LA5jlDyReqPycVmgcQMv/0VuITXK+aCUIDGT
         s/u4iLrogDQzQXUhcoUXZK9XqLf/gLPoHSU2OB/aNEE0xntcVp9SOBMAJv/ArYU+djPM
         dIJT/OKitSb0ibmAHW9XLrQn39812eT76nU44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715335069; x=1715939869;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bvJ4yVzIhF37uRZ2w5BrOhONM/dMWj10vOCBo5N/tpE=;
        b=tSwRp6QQffWnweNpbYtC8gVpGYFIiu5rltnJoUV+qvfWtl1bxs3irzRAGuwA6c53dF
         IlAJkQRX4sK8n0nc9Jpe759Vyu8ndXH1bWkzXeS3LtclMVdNubkQexQZYb3x0oV6tBld
         hXOlIIifJKJw3qTaTG6bNAMcFUY5ewZRPOSMa60MZX9ty8AV6cDKNAiu5zjos8+gIQZZ
         htoVaAO417ClnpQzOPY0XYjFFnqTO8MFrQRyL3qLj3jXUhnRVzeTRez9n2pkv+xH6aZ5
         igkcPHXAp6Hlt++94Vv+D2c6UVkW6+qNm+MpHvYoSGgDJJAJEWWKbqX/jsoAvEG+9Ztu
         u3Iw==
X-Forwarded-Encrypted: i=3; AJvYcCVclz4AbUSjR8RHYgh8jCZuGT6gmEi1lI9TVwV1Fag2NgswfOHEJGHzf4jz1W6qZsaoLAqumRv4yCPu2rwjBBHUqS1qlOy9GAaZ
X-Gm-Message-State: AOJu0YxnyD7glcv8Mnk6K+YtLDXc/d5SUEB/jiYQQWzOhBpTbBYu/mvM
	EbzgS+H3Cs2af3w700PsrpCdBfoKddQx9yI9WjgPgFge/btJPXLa+1uRpA52Fx0=
X-Google-Smtp-Source: AGHT+IEZovlfGy5FZzki3HTMXFsfkYEEoW0MBYQLPkzK/rcj+npZtXKIYglIasbU4Bc3PsYgwuL8KQ==
X-Received: by 2002:a17:90b:1901:b0:2ad:de9f:f4b2 with SMTP id 98e67ed59e1d1-2b6cceef17amr2025020a91.32.1715335069255;
        Fri, 10 May 2024 02:57:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:cf90:b0:2b5:2485:a59d with SMTP id
 98e67ed59e1d1-2b6614854b8ls1243517a91.0.-pod-prod-05-us; Fri, 10 May 2024
 02:57:48 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVUgESFTpTnTUiLhqq5U6Ewn4y6UYLQcSh/RfGS8LjhueicmxxKYaxvv6qBCaWABegNRAngwritLVIgZm2akpuS8MMTaqRa6fvWkWhjiyCZDSFNpx0=
X-Received: by 2002:a17:90a:ce16:b0:2af:5b90:c7f5 with SMTP id 98e67ed59e1d1-2b6cc566c54mr1919774a91.3.1715335067899;
        Fri, 10 May 2024 02:57:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715335067; cv=pass;
        d=google.com; s=arc-20160816;
        b=m1TWQ7c0IK1+MhZug1IzqUUruxesvoT0mivLcjXGGtLu+zjedOhDOI/MRgQaarokLS
         rWj3RY3wKZuDRMkELP13P7b1jXgam6JW15aQF4Lsv88+p8FNyaSoMA3o+99JMpnfINJw
         FJBUl0TXLri/iWS4ENceTk+sPczdO2EMqfhUoAaWS4Q0NA6EbFTAVzJEJunmiXV0xFeE
         i1DnhO9mvQPRCMHiZ2EnpML0WpPairL8hkvAL6X4RTJ4TEkTe+BtdRuL8V4dF4wx3lOL
         xnW8yGmawdWne4QqtfVOXNOgecmUbVtSRGhYei6OO/e61gXhRNGxvRVaIcO08Rieg7/j
         vajw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uA0lmFbpHL0BE7fBEe2T5vqjkMG3zvIjhCsCVlZGrgY=;
        fh=Ki7uo1aunji59xu/uSzF360F8EICIUQGOQBTTlaqWJ0=;
        b=dtRsAAnh+30zFX/ThZshoDXd2usLQLROrg5UYu+SShFSZvopLlvYupiFGdL+xIEtOy
         SWVj4IwtJr/dZJQ5/lWRUk3ZV2LZDvVt6a4gAVx0LEr3fzQnRZUU5KfbbNGBh3t3+7yP
         OVHlTokODE6aVuUc6n86VnyVVb+9ZMeHw9JMgBSkKZEQwJKtM02Q5SOdkvbNf3H8leb8
         LCXSEMy2a+2LC2OHrIceVqTJrvxO1p8LxTy46inwGihzlbc430v468kJHc3dprqxQmFO
         00ExBkmDHghqIkd608BikLGRkwNffDpdVY8SC+MPcU+p0e0EzG6yKQ/W40eMHAKbpuDM
         AGaw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=UgT0Yh4m;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on20600.outbound.protection.outlook.com. [2a01:111:f403:201a::600])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2b628868789si3662083a91.6.2024.05.10.02.57.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 May 2024 02:57:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::600 as permitted sender) client-ip=2a01:111:f403:201a::600;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JLRfsJebLinvkQehD+Z9RaRwfosEbFImqihE2DUx0XVjobkYVrjRm7rvHPKqAAQQba+DFtZxV9xISGYyI9WaXItqBzGkeMH7g26EklBA2+oazxFUM8dkYfz2DMlO94cje+zWI3Yy8Err8LwEzgXPITJoDh4HZV5E5HgPuVOWiM/xSGAEcBPnu1aqo+iF2Tmd/XKzmWx3MT+lNe4y/rqvNBxWz1ILe/C7HcIYndLSeMMqJ6rFtppfNM1upqVddbERuvtzMdk6CMWM4lJoT/CLUGANM3FUHY4ex14TG7LD42GEuqFyfGAaUsC/DOf380rjAwalYzx7ongogXFoSovJeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uA0lmFbpHL0BE7fBEe2T5vqjkMG3zvIjhCsCVlZGrgY=;
 b=jgsfM+ZpmqMHMLwwgDAEzhoSmmVkXwpEQFfWdQ7rDUsfC4jIS++y8RHzpSPZ1W0+i/zUkIoH6A9oMSJ9w1hjMvbfwFx6KyDNIqKHqLec4fPXxppMdy7ewviwhp/qtkzuhiWSdE+a7xJylCSTFF1Ept74cn/uug0lj+aZS31VFdww0+hvRDyebFwKd+7IB+39D6Vp42AJE4E9LRmqUwB1n0Um1qlqJDmC8uZMw1H2KmjroHtPdZBU+GQaR6MEVhfFCebXh/5BmdlXfsdGHDWlEaMDgj0EMPEXG5Np0DPvSrP+5+kJ5j+oJdYSA7RPElr/EprqMl1QWoFsI2kCmmXvwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TYCPR01MB10102.jpnprd01.prod.outlook.com
 (2603:1096:400:1ee::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.49; Fri, 10 May
 2024 09:57:42 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::fe5b:1283:68a6:dacc]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::fe5b:1283:68a6:dacc%4]) with mapi id 15.20.7544.048; Fri, 10 May 2024
 09:57:42 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	corbet@lwn.net,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH v6] usb-storage: Optimize scan delay more precisely
Date: Fri, 10 May 2024 19:03:41 +0900
Message-Id: <20240510100341.51999-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: OSAPR01CA0283.jpnprd01.prod.outlook.com
 (2603:1096:604:2b::31) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|TYCPR01MB10102:EE_
X-MS-Office365-Filtering-Correlation-Id: 877ba6e9-fe65-4e5a-d836-08dc70d7a276
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015|52116005|38350700005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zT4idOO7cm4isfryzPIqcc4u3UsZr/Ql+rYL/FuIx4Ql6prnLxHBEl/TqINJ?=
 =?us-ascii?Q?ne42rwB7isOvqRqKC2KMjJ66WoNjjgEEu+vBOCSXYCr+QubsTnaUlrG6TCGl?=
 =?us-ascii?Q?nIcpoieZ1G/tHkzvSBICBUomKV6jCn35EmMzWXnD51jKCM2O2+dqtbCQqcv4?=
 =?us-ascii?Q?mHoiDYoicS+SN+GKfFzWSDkv0H9DlqICfuNPRqR6x/fVLrf8CF2aoBffsm1H?=
 =?us-ascii?Q?ByA5WfV+2AP0RfiooFUw223nesgCbU8YxUAruSa6rzRrWfdX3b2v5KAq2LaD?=
 =?us-ascii?Q?o1ImdFMrLu6JdSIdnKAleEm2OmfkJPJu0iJ4yIxjgykvcgWwKrzLrzbvLsbN?=
 =?us-ascii?Q?KZUu0Kt11NMbQd9Br3bbvOUDAzpwumZx2Na+GJ8bApNYQZVphG//4dYt13WT?=
 =?us-ascii?Q?HeJU+dTZmVRQ/ERIuXJIKz/JCVyXu4OA/XXxEHHo3qUD5TnwsHP0uv5BVf08?=
 =?us-ascii?Q?ydRaJhfNLDVNF309qPMZmMUb7oDMkGWp9Q6IpcYUjmk73reHKRiZXCQ3OgdT?=
 =?us-ascii?Q?mv9UXSJh46L6zvYxSzpl70x5W3H7p2SZ3El6BlYbGlEt6o2P3lJuV2G2c0Nw?=
 =?us-ascii?Q?JG3ICX7zRuXPQOurQUMzvodg6kSAfxPeypTZojq/fMvp9QDsYfZSWwZyRk7O?=
 =?us-ascii?Q?Noq0nTRYwzuFKN8vaR9eVI8c6pj7+gQESpBtxJNEL9XczDVqQbIQhuFV/iCi?=
 =?us-ascii?Q?aQlzqIrpdcCs8OBlUKruZUkaYImCRQ+rTRR27tVZSLE/ZUVC3XwrA1hHuCJc?=
 =?us-ascii?Q?eGuPfqlQxUMHAK6G7yUf5txKhF3ov1aOmg4udXvryNokJrJ65k8L+sUb8kmf?=
 =?us-ascii?Q?BAWim1UtUyrEgHLDgun3UxYSSGKa5e/Nx56PpO0wfI3ZbzR9oVSOXLAERsgJ?=
 =?us-ascii?Q?aWM7eKTuqml2TvqSWHMC5esfOsmKVgT6UjyaHBWMqGEPZkrCXzA7SHV3K8+b?=
 =?us-ascii?Q?VO+VZckY20E58fGVVaG/hWH9eV5o0CiqdftxUrY0rpxyUgQdXmu3bMr30ow4?=
 =?us-ascii?Q?6tQxetW8y1wX/4/UxqYBMuAYoPyc9WzMOLAk40TY8NR09V5rS5iNnr/jGXAM?=
 =?us-ascii?Q?b/xeDTD4tUg0BI8idGMD7MAR63ZfX6uv63PZYSuPs8ETD8zooqMTeXpHAd4x?=
 =?us-ascii?Q?81LBvlRi42QFGCukVc65lwvqAXg9UYlHDxa6iDEieuaaczsHoIkeFuxQxExL?=
 =?us-ascii?Q?WvQgOj4k6FhNES2Sri0UwtAXrgyQqdVWWP7ArGxYAlCuRQsVtt9LSONCOnvl?=
 =?us-ascii?Q?2TUypkgsgqG0zwr97GY5vA9SHPuUKk1965bkkm27A7UeWz1cZu7EfMZIZv+g?=
 =?us-ascii?Q?nNhBHjQR0zdpTYbrsmBEVEVwS5GWeKz+RmwgPdGPwK/9dg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(52116005)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f6BOXJWOOl5a6gvbR07Xfhq9OVstumznOT14rrK3isyWa5QcroJKAe20yI0x?=
 =?us-ascii?Q?mbMKF4+QFVzAbE6/vAQYLtENkfIwo/DEEpq2aIhBc2a0VY37XZHdpPQ+jwGN?=
 =?us-ascii?Q?hoogmjzdLHvuHwHXzlItp9MXvVekxa55dmt9IJFT9gq8xDCew54B/0yl150t?=
 =?us-ascii?Q?B8PI26r3Rc5MZx48TEHp+v3fXH12uk+h9ftr9jTrH1AI+TNi+Ge3oGlksqtU?=
 =?us-ascii?Q?Y8S5gT0W66HoY0gnFLwM4gS7PeBFHt8LzxD5Dme1hMO7FuWWS9HowjvEK+JJ?=
 =?us-ascii?Q?OhIlMbabUyt56qJiJT3SsH4ntSyAMS4Ipxe6PgOrJuHHSYbdvSDts2PHLQ6J?=
 =?us-ascii?Q?PmBSZCZy4ei2PoB5zLxYTzHu8qKfuPC/CxQJmqSea1hH3kteBLTElT8B2CEx?=
 =?us-ascii?Q?NJ2rqe3rR64nI87eiyMfqiLV44R5dVtd4YKLgp+5a8RIt6wuvu1+s7u7gVTo?=
 =?us-ascii?Q?TeQFhrthHNxG7WD3mfWEqUkkUDfL7b7VhgzWRD1DSs2+GdR1hRFxAvn2af7N?=
 =?us-ascii?Q?gnVBzYNBsHTYRwj2Mh9NrAsR3Z6yaC2QAwGFd9Qj4UpeHuwCTbYOTY0aE9nh?=
 =?us-ascii?Q?3MREo9Y5LFt9PYkeYi6OM7TCpR6PlW3TUH6apVs8oJXKbFaXhCG0eM96QhwQ?=
 =?us-ascii?Q?EXXGovEMFOwwUgZo9HCqhe5NbM34ij4dp1IQeNTktnS65k9Jn87LC2m2G+Ov?=
 =?us-ascii?Q?2RjZzYX+P01/sj3XGqF65/VMMJUDhssEwMsMBjBQSkf2j27g95bhA5tJ29F6?=
 =?us-ascii?Q?H//JjRXUsB0nKlizEa1teKEjborNBtu8rUkH12ZgI9945wxJ5QJfuiK3KIZu?=
 =?us-ascii?Q?mZBrOQY5sXGopbYNPYQJ/GCvCkKDxHHjQoLGwj9olur2qkjkmrDHVWh/Sn7A?=
 =?us-ascii?Q?wX6k7bit9mu05y+XZr/wW0CkMP72uQd5GNCZ+k+N2AsF89q5uJ3tcbDNTVaF?=
 =?us-ascii?Q?m/1juLxsjxMboIgeL56sQSl8jbAliK5mCqxn3lu/Q6kGgalCWldu4eDa5T9u?=
 =?us-ascii?Q?VT0eJkjTOmWouXLD/ti7E2l/U0hKlq2tOfSk5YELp5ftvMhHtnCMcx++LCdO?=
 =?us-ascii?Q?JmGUMQUSfEAHSbs3HyvDQ8n/R7wEt9Qpi08djuDwKH1eLHQgjKFWyoAQJZhc?=
 =?us-ascii?Q?SDxdnADUiqcNWfeLcXfJ3yhZh+7FqAknvWKl2Qhwv1iQTcQZesURfKLv1ufJ?=
 =?us-ascii?Q?5gXmLxUJNZAsznZcsXkvXE9ju73ZdzvNwFHYA+e9Q7sD7YYap00kUXg1dD4K?=
 =?us-ascii?Q?K6JK39kh9O1valFs4eXjwQ/Uomfqp+3KgbgnTnWbSzsQcgyOUDF5vKSiq7D4?=
 =?us-ascii?Q?oYV9skJpWlg/vol0dhm025vdGWTLThL126gXvDeL0zTmPtbNeolM96XoqwO7?=
 =?us-ascii?Q?TWD0UpUtd2/mhn3Yrv0VP9id3G8Xeuo4BVHCOsChWk0YXsJS0O9mUGHzN1VR?=
 =?us-ascii?Q?vdiiypwQhOBBwVgxw6hCDVYSp889QmiM0DrCb2AUOyawHGYUF1GdlcxCEZjS?=
 =?us-ascii?Q?Kzf1sMDOffMeNAf3XWTTNdlo0xxAioSExJXYDMR0MZCcASRmLq2FAmwHJtZ6?=
 =?us-ascii?Q?xuK8wc2Ncv7GRKVLYpYcSVLdrTbPeOvoPEJ8F5et?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 877ba6e9-fe65-4e5a-d836-08dc70d7a276
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 09:57:42.6796
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0C3tavjztifnYlFZj9wtDF3Us/HiZjmhV8fKSb16t4ybNaQsby/sWiDASXgK96J5KpCQQLLGAjQb2VIWDSGCoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB10102
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector2 header.b=UgT0Yh4m;       arc=pass
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
The parameter 'delay_use' optionally supports in milliseconds
if it ends with 'ms'.
It makes the range of value to 1 / 1000 in internal 32-bit value
but it's still enough to set the delay time.
By default, delay time is 'one second' for backward compatibility.

For example, it seems to be good by changing delay_use=100ms,
that is 100 millisecond delay without issues for most USB pen drives.

Signed-off-by: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
---
V5 -> V6: Change module parameter 'delay_use' to optionally support suffix 'ms'
V4 -> V5: Simplify parser/formatter code and fix documentaion
V3 -> V4: Separate parser functions from module parameter set/get
V2 -> V3: Change to use kstrtouint only for parsing decimal point
V1 -> V2: Extend existing module parameter 'delay_use' to support decimal points

 .../admin-guide/kernel-parameters.txt         |  3 +
 drivers/usb/storage/usb.c                     | 99 ++++++++++++++++++-
 2 files changed, 98 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 561d0dd776c7..a56f906b960e 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -6190,6 +6190,9 @@
 	usb-storage.delay_use=
 			[UMS] The delay in seconds before a new device is
 			scanned for Logical Units (default 1).
+			Optionally the delay in milliseconds if the value has
+			suffix with "ms".
+			Example: delay_use=2567ms
 
 	usb-storage.quirks=
 			[UMS] A list of quirks entries to supplement or
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..bce146152151 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -67,9 +67,100 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
 MODULE_DESCRIPTION("USB Mass Storage driver for Linux");
 MODULE_LICENSE("GPL");
 
-static unsigned int delay_use = 1;
-module_param(delay_use, uint, S_IRUGO | S_IWUSR);
-MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
+static unsigned int delay_use = 1 * MSEC_PER_SEC;
+
+/**
+ * parse_delay_str - parse an unsigned decimal integer delay
+ * @str: String to parse.
+ * @ndecimals: Number of decimal to scale up.
+ * @val: Where to store the parsed value.
+ *
+ * Parse an unsigned decimal value in @str, optionally end with @suffix.
+ * Stores the parsed value in @val just as it is if @str ends with @suffix.
+ * Otherwise store the value scale up by 10^(@ndecimal).
+ *
+ * Returns 0 on success, a negative error code otherwise.
+ */
+static int parse_delay_str(const char *str, int ndecimals, const char *suffix,
+			unsigned int *val)
+{
+	int n, n2, l;
+	char buf[16];
+
+	l = strlen(suffix);
+	n = strlen(str);
+	if (n > 0 && str[n - 1] == '\n')
+		--n;
+	if (n >= l && !strncmp(&str[n - l], suffix, l)) {
+		n -= l;
+		n2 = 0;
+	} else
+		n2 = ndecimals;
+
+	if (n + n2 > sizeof(buf) - 1)
+		return -EINVAL;
+
+	memcpy(buf, str, n);
+	while (n2-- > 0)
+		buf[n++] = '0';
+	buf[n] = 0;
+
+	return kstrtouint(buf, 10, val);
+}
+
+/**
+ * format_delay_ms - format an integer value into a delay string
+ * @val: The integer value to format, scaled by 10^(@ndecimals).
+ * @ndecimals: Number of decimal to scale down.
+ * @str: Where to store the formatted string.
+ * @size: The size of buffer for @str.
+ *
+ * Format an integer value in @val scale down by 10^(@ndecimals) without @suffix
+ * if @val is divisible by 10^(@ndecimals).
+ * Otherwise format a value in @val just as it is with @suffix
+ *
+ * Returns the number of characters written into @str.
+ */
+static int format_delay_ms(unsigned int val, int ndecimals, const char *suffix,
+			char *str, int size)
+{
+	u64 delay_ms = val;
+	unsigned int rem = do_div(delay_ms, int_pow(10, ndecimals));
+	int ret;
+
+	if (rem)
+		ret = scnprintf(str, size, "%u%s\n", val, suffix);
+	else
+		ret = scnprintf(str, size, "%u\n", (unsigned int)delay_ms);
+	return ret;
+}
+
+static int delay_use_set(const char *s, const struct kernel_param *kp)
+{
+	unsigned int delay_ms;
+	int ret;
+
+	ret = parse_delay_str(skip_spaces(s), 3, "ms", &delay_ms);
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
+	return format_delay_ms(delay_ms, 3, "ms", s, PAGE_SIZE);
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
@@ -1066,7 +1157,7 @@ int usb_stor_probe2(struct us_data *us)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240510100341.51999-1-Norihiko.Hama%40alpsalpine.com.
