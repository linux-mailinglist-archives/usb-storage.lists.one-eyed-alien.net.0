Return-Path: <usb-storage+bncBAABBOXTX3BAMGQEO5FDPPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A55ADA837
	for <lists+usb-storage@lfdr.de>; Mon, 16 Jun 2025 08:29:21 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e812013dde3sf4608020276.3
        for <lists+usb-storage@lfdr.de>; Sun, 15 Jun 2025 23:29:21 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750055354; cv=pass;
        d=google.com; s=arc-20240605;
        b=Gt0ymDCnkGXgNGxF3WVLa+PKek2MyceozwE1NTHXD+XAaREMMpyEELM1r2V0TGNty6
         DUXskqnEnFOkZTXlCnh//UG/fXffWERy53omH4ehrm9AQatZ1I87YyqrpQ/qSh+PZzQU
         qPOwqG5oQPeYAfZvSHZHsonqHljZNSZr5pEedXWMwEi1EYI1GoILmgPB27mkbpDuvF/L
         RWpCAN5vGScZfDQgQ2grrlrCJgwczkJixlo4sAEqilgyeH5XdFDKR22dybeSD+c0jnBi
         3x2uy0p2v7D17y5ABFstTSEXHKbImAbUL0WqrF3Kk840pvTOv699ZzdmNzQzFybT1Xmz
         F8BQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=xzIRhTcOaQCXaZNllwXcEqeApA+W8it0WwhjBGAbVwg=;
        fh=DIkILoh0zOaWvRfEytFbRJAOWBC5Aur9QOZqXjEOkKU=;
        b=DMYsbBzZxSGAXpHJIAi1Hx3lPCvE1muXxoaV8O28c9r1osUY9tmlwEPARdHsH/2j6/
         JUCach1om0wO/sz7kvEAIzXU1biE2kQwFB7xHRtiv17WqkQAXHljUwMus/B2xTPsxj/e
         bZ5Q6CIGDoYsoaciM5CoBdI9CQ1Jq3Dz9dXssQrHuhEv2PQ9XzJTzLJD2JOy3TB7BfQv
         nEZ61gWNVczL4y1gk2K7rfKOfokyU7EEgGej0eEEGYV83HZau7NcLD2Exm4vXFF3tQ9J
         t2sadXFVhASiNkdabYxpH00aG0Gdidd2NcWcoPSt7kkv5L0ChMpy/r6NeuHqR47swhC2
         wbng==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b="KOF/xlWK";
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of liyuesong@vivo.com designates 2a01:111:f403:c40f::7 as permitted sender) smtp.mailfrom=liyuesong@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1750055354; x=1750660154; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xzIRhTcOaQCXaZNllwXcEqeApA+W8it0WwhjBGAbVwg=;
        b=clVHGRfmLBTikkF4nqyZcUTgkwzxH3jx/RvlcYkTF62DUZXhkps9a7ybU/SvHD/Ctl
         gLXTLjTomv/sfTOxNiJDNGHVavtSi+AWY1BMkSnmpSk7xuJHf3yWWoVb4oDmO+1RSW6V
         020B62SYfnb9cf48FWQ1Pi3eKvVvJdPzmdigI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750055354; x=1750660154;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xzIRhTcOaQCXaZNllwXcEqeApA+W8it0WwhjBGAbVwg=;
        b=tbY9rnOdTFtFreUZzKsce+TUs+QhK+pRP7IRyMv897fQLya3Q85qGy8gOUiJHlDZEJ
         aBzELXL3ROWJloFu7rT5x9MSd1UF7w6MHAPUVAV9zUU8GHnla7NAjzubDoObI9kBHz1e
         FmPJE0RIMq9hFWKZdnGirhZDCVlxTr+l3q1k34AwqCwMq5Ey37m73ol8RQfcYpsCoxFl
         ftFNrk5pCLCwpu6GNrPqJ1QdcI7i/BkRSr/f1PhwOnFsI7qc2P2pwoGxjv3UDocHqiw1
         pyXX4n0+aPW6aXyEaDgBQlYTZ+mglaSB6VF4M2+hbKxMoVB0cdBmLj5bQT9Gyp9lC7U3
         nIzw==
X-Forwarded-Encrypted: i=3; AJvYcCUqe1r6TUsfk8HDTgFyroU+i38lkhs5iGo7HMFo1joiSArPaiMWlf7z/RbIF/748/KlMt1FLg==@lfdr.de
X-Gm-Message-State: AOJu0YxT5KUhBfDmR2c9g2dYVaPjFpqWQSqJ+JXViEsewGc5gP+36Ycs
	2DFDdU79RZmUTSKT2Gqs1PGLRhm6VOJGEe97Slrh554jDggyLVxd1AXdnfHrNglVATY=
X-Google-Smtp-Source: AGHT+IHaRfyZ5G3ncQ4rMn15AIX2VpqQyoKCR5MP5tsnP8T05H4lHAaMlmS09TI3FxaBYFKAulzDhA==
X-Received: by 2002:a05:6902:161e:b0:e81:4ec3:4f63 with SMTP id 3f1490d57ef6-e822ad5f1admr9709138276.24.1750055354392;
        Sun, 15 Jun 2025 23:29:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcAFU7UtI5MRPguBQBTfYPkWGiK6UCsJGnyV/gGs2MyuQ==
Received: by 2002:a25:d0c4:0:b0:e82:492d:12c with SMTP id 3f1490d57ef6-e82492d2c77ls793452276.0.-pod-prod-06-us;
 Sun, 15 Jun 2025 23:29:13 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWhmhrgLF8H0e2hZqs4X3hgeGfVTq/ZojGH8L243T5TGH1YUqdNuWe3iqKO1P4ZeHYvQ+nwNy/I5qpvTw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:b84:b0:711:7128:114f with SMTP id 00721157ae682-7117548944bmr111952847b3.12.1750055353767;
        Sun, 15 Jun 2025 23:29:13 -0700 (PDT)
Received: by 2002:a05:690c:2f83:b0:710:f35d:a3b2 with SMTP id 00721157ae682-71162ba21cdms7b3;
        Sun, 15 Jun 2025 23:25:53 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX1YGWSx3yiBX19t8LiJuv2hZcs1h/BRQaDKHmNRirtLEmyxs62XkUWOwJbUVWqd+gSG8oAWpswH3NX6w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:150c:b0:e7f:7334:3fa2 with SMTP id 3f1490d57ef6-e822acab508mr10834978276.2.1750055133404;
        Sun, 15 Jun 2025 23:25:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750055133; cv=pass;
        d=google.com; s=arc-20240605;
        b=U7FDBWu7ULnOXr1u+f98p+F2TDefj4jIJsb119T3PkKqTaGFIEPEllzwPihNoNTmY7
         8w1RInDgzS1vcmN5T7qPI3QfMMrDxY/0GPM7D1cE3QtroCSnFhZAPnREG+uJiCfabd1K
         1EogIew9GFH0w9bk0pu/l16vUr2HpCzl1OnBSmcZpUzwueJHT6/1ysMiqR66+/kzD1iT
         mGpFxz0IxNovHeQdsxcqvm11/YgdSNRzuKB1DwFOP0YJDZ/xOuNJUJdtRZpjjH6ZBVcC
         bAiNbdVKcyZ6vi52a16U75zS/ppA4ptFStWSrLoq7ykNxm5f5FDU+TlnV1p31mtni0NR
         dBpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=a4QeTLS3dg33I5yLZUNC6deCu8O/fBT9qjLsVzYfgro=;
        fh=9lMHHa7w/967qK9IGHmYeP3YV3O3YYYOhZ0LL+KC1Tc=;
        b=c0I3V5y4aITeAcuwWlhaiYc8ANfMb/XCszy/1kwF3td3GTkAVJvt7mtcICFoC+LMdh
         Qw4DMUI0jGIYAaRzr0/h+GyyUWgGMBzQ5oB7mjTbErIAwYuT461F12w+8uBeJ7k8BoeU
         oi1pe/KEclo1UNy/8FaLDpVHE2xQ7NyVpZzQiitfqNiqHVW08Ie2GX0CXV4EZ95APHVU
         UXzX4AOFwYqsVr8NG8tgQp3v/zCi67F2oN8hIpEzNJvrKCpwxw1GlFATPEf6FdodAlpi
         LF5ItosGyK121ZahBINfd+CotODP8rHm3aS1DAUMprySkGkP8j5asNrCG0Va6BHKDNu6
         BJUw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b="KOF/xlWK";
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of liyuesong@vivo.com designates 2a01:111:f403:c40f::7 as permitted sender) smtp.mailfrom=liyuesong@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazlp170130007.outbound.protection.outlook.com. [2a01:111:f403:c40f::7])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e820e1cf5e9si8874377276.127.2025.06.15.23.25.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jun 2025 23:25:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of liyuesong@vivo.com designates 2a01:111:f403:c40f::7 as permitted sender) client-ip=2a01:111:f403:c40f::7;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MvUJJl67Pa1XKSCTObo90ne4ojNCR9+E9OBQld7/ZJfNQZNQNUJPjwuhCv/SQwg2mIVTAC7S/2LJTRnEUEhKIV6tfaKazJvtNPMcRDz0qcp0kcewJWsHIOBgG/PwK2fPSlk+bnY9CfELkB/Ga/UixocTzX5db4dLeHaXwGd8Mb1jYKqc3HQdFENsCZ03So/UXMEazhrEpOcVEIMNKdP4oXaNYVHVUcBrbI+UCe8d2SoPgKpX8oIsaVIYeK+DJDRc1ZOK5sYiuHwSwA/Hql0KNIku9b9Cy0wogcWqUTYYe0R0p3D+kyt9Mdn+RSavZ5WFDWA6D4DN+K4kRhy+7fYh8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4QeTLS3dg33I5yLZUNC6deCu8O/fBT9qjLsVzYfgro=;
 b=urEb4FKA6pmM69YniOD7jlv7pbvxnybaBzftjjbMzClKytscBSK+Tb/No8Bst/Rt1v530bFrP6jFAb5TbIGdH0VZVBwws+BwdL562FWHUaHdGTupSnfc09ELA2VRcFu5HkqnhOy0djDPHfsg/Y55pezk9/lxAEEwPKw8JLvAC8FaMv4FHmGSQALGu2ga6UG6dS2lZtPUSkiykmNSBWggWzdd5wYsA1z3AHutn5HHX/BanjFk2o9nIJPyz9VPjhYdjZRXihRyLx9Qi4VRDV6vsCDnhBnAJKMs8MznuIswLS8m3UPHt+4TWCZR7Q/K0fiZ+BElKhq2IyfS/7Y+Sb3eQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from TYZPR06MB5026.apcprd06.prod.outlook.com (2603:1096:400:1ca::9)
 by TYZPR06MB6045.apcprd06.prod.outlook.com (2603:1096:400:33c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Mon, 16 Jun
 2025 06:25:29 +0000
Received: from TYZPR06MB5026.apcprd06.prod.outlook.com
 ([fe80::9043:7fc:2b52:535d]) by TYZPR06MB5026.apcprd06.prod.outlook.com
 ([fe80::9043:7fc:2b52:535d%5]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 06:25:28 +0000
From: "'Yuesong Li' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: opensource.kernel@vivo.com,
	Yuesong Li <liyuesong@vivo.com>
Subject: [usb-storage] [PATCH v1] usb: storage: reltek_cr: convert to use secs_to_jiffies
Date: Mon, 16 Jun 2025 14:25:06 +0800
Message-Id: <20250616062506.1074376-1-liyuesong@vivo.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SG2P153CA0001.APCP153.PROD.OUTLOOK.COM (2603:1096::11) To
 TYZPR06MB5026.apcprd06.prod.outlook.com (2603:1096:400:1ca::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR06MB5026:EE_|TYZPR06MB6045:EE_
X-MS-Office365-Filtering-Correlation-Id: f0265910-23ba-4cb3-0fd5-08ddac9e9661
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0LryLe32IlrDEngU0lm+WyOxa5yvqjIl8uYu811/fpt4C50QFfjE0MRn1Gse?=
 =?us-ascii?Q?zvN0ACMaQjoRtDGKMA6+jVnoeVZ/Vn68eB57JZYA6syYJzXFU/SsGTnUdHp/?=
 =?us-ascii?Q?nmlxR4CbqnoKTA9dQPjqpZX3HbViqWANpiyAxNTt9H+omKuJF3RU7SXWss3h?=
 =?us-ascii?Q?fhRGMBdj3svIwgB6NUBYfETJM62B8PKGdptppP67njDcCvTTrn72Z9ZMNHLM?=
 =?us-ascii?Q?Wkopnhrl6OQvzKbg3O0IT/yS2GLkYOKxXsmqUm1cI4yTn/N4uvA6LrZDYXPH?=
 =?us-ascii?Q?XgN3xTW2iiY+LkOgdAJKYSb4yVhUTM+YeG9D+NsNod78H3tLuSedS2LDJJMa?=
 =?us-ascii?Q?mDYP2VYnKRK+4bkXTGg3XMljPSoZWNQ/qSZLR7y+Z8gTpZPIfz4OOS9klMRR?=
 =?us-ascii?Q?cHrer7qohruXbqEUdM+EJKwu4gZx3cNBXHz/Bq6hxjTG9bLukMS5lOQ3Pvjr?=
 =?us-ascii?Q?MYcCfhcPxk7qQLbcz7m7ieKtDmlscNaAfAf428HHzNQuEHVe6mqedJbrjY4+?=
 =?us-ascii?Q?q6OVLFUkI3hyiL9EfZMcqA4u/2tT20ErQALVRXpdkfCzRsIWDCIxvJ+SWCIT?=
 =?us-ascii?Q?HUNKP+czQ08hXqjP7Vr88toYk1jPLN3Cd8H7ohDlUHaAnqfPTkPztGcnpb6w?=
 =?us-ascii?Q?TIDNY1EdwHaUH/qE4gGh1spYXODIV/Od32AUY0+UvveIORDUcq/7oYTQkjt6?=
 =?us-ascii?Q?3qBFx7zorPOtJkop+rbfXtPmcoYcrEKYRj7cyG6zKRRc+opQA5BSMCgEkYTj?=
 =?us-ascii?Q?U4TZ8+dVrlFKVLOLFhTQ40NepiHVQRaW9eFBPkQcExIp9UJxSyKT5z70EAxq?=
 =?us-ascii?Q?ArKIqQrhQNwCTsc13eVp8afpovoaizWly5A55pgtoFncJ50r7f9kvzYFewXB?=
 =?us-ascii?Q?3TkWjhUyttTJDlmt54OFR2fkcNRE3XGH8G1nfKPSPTc70yr4AHEMLqR1Mg8V?=
 =?us-ascii?Q?YCjf5UmCXry69IEGiKDLotY+Tw4MHH5AsWfDl/5VM2XW+eg6bM2ZKDtosRik?=
 =?us-ascii?Q?gpU6BGBaeljhf7EpfCO9w/0ASZIkCoyt8/v5e3aDtbLTAwvahRa/YELjxIJ9?=
 =?us-ascii?Q?P89ZK6vQrHrMNSVR2To7dqYIaPc6SdFhcXtN8sqGbMjrQcUUtWVvaIMdscY6?=
 =?us-ascii?Q?aBGA8DSqIWj9Rla5TK4/3x0z05d/aUwXBNgtnrIN4h9V9JrMnF9XUNDd9XMg?=
 =?us-ascii?Q?/zrHq6FtQi+v4MZJ2wCrqEtxDYef6L8XYjS1BI2pXiUDwZU9Xw564dhCdARW?=
 =?us-ascii?Q?vn6Kv4opRgQQPVcPTZ7+Q1nNo3Vuj7vpFZ2yTUF97R9n+0gQ/90vJ/0n/mhP?=
 =?us-ascii?Q?owamLz/uD6OR892WZjgs7bYpRpJWoV1CPpViKjUNgMmpMkxO+guM9IhneJOk?=
 =?us-ascii?Q?EocfRoModShCScBFo5PRbZwOgVUyhplF762rs1aJt31vNMEDXlVXeRaXSq4T?=
 =?us-ascii?Q?Y9PPz6QHFdDGJGaCZNEZCzQBr/gApOEUam8ahGCEcksVL+6QB34+aw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5026.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dmQg6TzGaphKLK9CwmEaZUDWpXqjf94ylk8vT3efUyVI6CP7w8qxpODq1eUh?=
 =?us-ascii?Q?e7iBjAcxShyk76gycPSvt6muxuyG/bY29DZEPRAhVnB3A0FSZ+wg3HIKLElW?=
 =?us-ascii?Q?54BeQbAmPNfztgwJgvMjagmH1u4MpAFn+qJySEmKT0P54YAGjIWuCLZNx6/Y?=
 =?us-ascii?Q?bkdk2SrnpoylW0XLEhZsK2n0SbewiyvOJy7GpOBFFDr4XQOG32am6JPkRV08?=
 =?us-ascii?Q?PSSq3K/jpzgX+magOy+/5a1h1plGeFVuxC0sNo4BitqYKP7f6qOOVC0vlKrn?=
 =?us-ascii?Q?0PdiFd/I+C4Rjvz/AdVuMUneXLONWsJLH87jPc3Yyx1yxoDSmx9587Z5/bnK?=
 =?us-ascii?Q?k8bjlVA41CEVq14Fs15yF3sqhPUacYaFRbpkT3F0ppyHkcPvC9aEh91tKz0Q?=
 =?us-ascii?Q?eK47e1nYgeG1fqQxX2iLIVLGPdhZ/+ITD4HBo9xtJOX79erJEaQDyYsv5pFK?=
 =?us-ascii?Q?V2FR7wKCdqhaZvVZVNpAqPb7T4DWoi2lMAVPeE2idadT8imb/RvVwigQQKhI?=
 =?us-ascii?Q?UjdJmRZxnWRfPomNgkwtgN194BHOdEsqvx+m+zZMCs+OBJYktK7htxv+Fjb8?=
 =?us-ascii?Q?YitPym7nHDgwQjMJe22h8frArac+wq0YqV5BT9rkJjKWxHQlCi+n7TXG6CL6?=
 =?us-ascii?Q?mUlqOB8D94ha3oxrYCVM/ZqGlDqbBjFTxZu8a7/w8uDwwf5iLvBRo2Wv93rF?=
 =?us-ascii?Q?yzn4tJnIMjA8POHHXGSp2TONQQcje15FD/tbvflJAfEZmXxcClLnw58XkX7c?=
 =?us-ascii?Q?gNBTAZzcN4t1y5SmwCGvr0BHw8YdZvq0rl1B2/Ch1YfSm78Q+0uX6s6ubKJx?=
 =?us-ascii?Q?WD3pT8xy3N4OvkqrY6FMnSQPUcRy7PJHSNNvcfL9kOjaLAZcNQPbG9cS0fEN?=
 =?us-ascii?Q?+7r4iIoFUH53Kr05qnGA10dD0igS3cPVY+dOyPH/N7jWi121S03Ise0aoxKw?=
 =?us-ascii?Q?DsMvPlp+Ngm/kK+L12brNgqGr/s9hLTcnMNi2MJGum9UXMZmu4oQLquhPeha?=
 =?us-ascii?Q?1eaxgNdpS1On1Icx4tRW06Ieo4U9c/Aga2PeHzo7H/fOx1XscK2EAc/8FVjb?=
 =?us-ascii?Q?dua8/Fy/0/eDQtBDSZEZ9DuutemdxNcBKcT3LQt9SwyHcpPemOKxxWNgFqh2?=
 =?us-ascii?Q?MtTgabaqt23P7e2gDIE+P2rlz8BJFfjZzxHFf8hyu2455OS0jnm3f2K+hAOj?=
 =?us-ascii?Q?DUGlYeeUFnDd9Q7ny8k1KgSCNyZuaShhy8sXF7r0rBale1x8fEWI8shLUvvQ?=
 =?us-ascii?Q?8bi/KcSlPdHQM/IL7shHToegJlzdqzbRCxeFueeMMVXdMwWDzZtAMPnt6+j3?=
 =?us-ascii?Q?LzA2kC9mkvCTqApDBYToRdPjzMUhupPCeNB3PUnRqsU+p4UglugV+5TsPhee?=
 =?us-ascii?Q?ed88UqG0Y+uwt+X+c1G70e0Z6T7aLMt7SFseV2JM0mjSVtBdg4D8oE6LjQ9T?=
 =?us-ascii?Q?WWXQt2eh6gevhP860gKunoesCBDsqum9oVh7aAs4pBPHvf+N4WK411YHPn4s?=
 =?us-ascii?Q?/MNpX3AivcaMFGb43E/VqKZlAzxFUTy036HnUptFZg1uFVoNR/AvmxZ2OH6g?=
 =?us-ascii?Q?ZJlWc8DCfJXpmwlrY47yqxApDK+XHXy8HYuUyb+d?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0265910-23ba-4cb3-0fd5-08ddac9e9661
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5026.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 06:25:28.8002
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xoGymnUoBAlr6eF1hkeinY99fhcuN/hX30xDr2Clky/kGLef1qWhN7ZGy9FZFVN3e7j2s/JqCeRPKJXqEXKViQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6045
X-Original-Sender: liyuesong@vivo.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@vivo.com header.s=selector2 header.b="KOF/xlWK";       arc=pass
 (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass
 fromdomain=vivo.com);       spf=pass (google.com: domain of
 liyuesong@vivo.com designates 2a01:111:f403:c40f::7 as permitted sender)
 smtp.mailfrom=liyuesong@vivo.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=vivo.com
X-Original-From: Yuesong Li <liyuesong@vivo.com>
Reply-To: Yuesong Li <liyuesong@vivo.com>
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

Since commit b35108a51cf7 ("jiffies: Define secs_to_jiffies()") has 
been introduced, we can use it to avoid scaling the time to msec

Signed-off-by: Yuesong Li <liyuesong@vivo.com>
---
 drivers/usb/storage/realtek_cr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index c18dfa2ca034..7dea28c2b8ee 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -748,7 +748,7 @@ static void rts51x_modi_suspend_timer(struct rts51x_chip *chip)
 
 	usb_stor_dbg(us, "state:%d\n", rts51x_get_stat(chip));
 
-	chip->timer_expires = jiffies + msecs_to_jiffies(1000*ss_delay);
+	chip->timer_expires = jiffies + secs_to_jiffies(ss_delay);
 	mod_timer(&chip->rts51x_suspend_timer, chip->timer_expires);
 }
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250616062506.1074376-1-liyuesong%40vivo.com.
