Return-Path: <usb-storage+bncBD4JJBHQWAERBYEHSCZAMGQEGR66EDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FF68C5E58
	for <lists+usb-storage@lfdr.de>; Wed, 15 May 2024 02:37:54 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6a0ff9833afsf128115236d6.0
        for <lists+usb-storage@lfdr.de>; Tue, 14 May 2024 17:37:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1715733473; cv=pass;
        d=google.com; s=arc-20160816;
        b=RCdwqNJrg4S2fRjv1B97IozlSW2t+D7pUzlNbFy/Khc1iBPRaLqbUA9fexxcQQla5E
         9x2fO5436PuRuwRG04qcVZaOQl41gY/Yi+J/UtyPN4aDcx8VLypcw3kC5XH22QfYIuwo
         6u4xgMVRLa7fqsvFrjZ+W7IbGsf0D3QOnf8skd7vcC3rhfJwEyOUQ7R5Yr+XvyKesCYG
         37t+MXnmxUc0Cu7sj37ffvHRQkhpMMjfKxb4ZyL7xfURy6x7F3NqB0Mlku5L2r2ZMfVF
         RttgmrW2Qgof4xO7SOf0L1af84qX1tfwTLKlryfnfYLulJE0lnC/iTr3+mHRZ3OGIopZ
         LfJw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=5s6DpoGJuKGEdnBJOt8EG0jR9+Pugf4SZJu/JdjAqEc=;
        fh=X6Z9o9foTIkKw74jwhgySTEKr9GAeS8ifYQXl1UDi9U=;
        b=aqRWXGq1xTpqgeDmqTHWvOROS4oSw+nI0fVaHKqjETtGJ3EdR0vUlzqINYHqG4FiNR
         JRvnHEJeJ8ftTooN8lTJJz+S2ycklXwCJC0kI4qwcnEKof+iQJy1908+FCb7qotqURX/
         8Epz5nsM0pfaKjOL/vT46zmZgOJ5nf9fLLji9uXYDLgwG3KsnRY7NhlEhiGEyKdZzQ6Z
         /4m9NB98wZQeK/+abfM4NHnO16nG/gcZ56kz6ayoqcEeMISVuaZrZ5LaTIsvCVF6Kz/G
         0MT6LVKRBjY94gCWlAx9Thvpg/zVa7imrI+IaG52i0Yg+M2NPLcLrUA51kwA63wY7T//
         qugw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=X38KXFsY;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1715733473; x=1716338273; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5s6DpoGJuKGEdnBJOt8EG0jR9+Pugf4SZJu/JdjAqEc=;
        b=jicHRF5Vy6UB86ZfZycTZkR0xtKCQyJpFRlcEGQRtwc83bkN0J52iZFOEGTiJhoh1I
         Y+bop/KgJGiyrsJSgknNQWc96dFkPWCUtFDQx1nd9BGIoczrAEIXMDJFys5hNhS0MPqC
         X7KYRR0BbsI3U3ZYFYvMol8uVad/QBYqXHxf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715733473; x=1716338273;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5s6DpoGJuKGEdnBJOt8EG0jR9+Pugf4SZJu/JdjAqEc=;
        b=Dk7xpYnbONpeF7pzFzM8CocjaV3wQc0ikrTgfPW883kzP1z0Ije8FvWeKZU0hcvf04
         RvY3C+umlF3AQ5x5VDEhV96RHhhomMMsXfSPrC5WhvN2DnHtChd3W3Lr98CYz3dBZ4YF
         IXEtGpUgSzIPwhiXsPG3rs9/fcr3dTm+O6hImQJWbAdYfCaESl3uPT6qWFggwRMX1wrs
         w2rQosIgogKaanYLdMkby7jkDBLWViTWqKmLF1eaKEyCwCrjoUKT7h7tmpIBD10vWdc9
         B5FiLf3fntpP5mZDtWMnhqEuwO/k6cSfL1VHbdOU7kmtFqf0RWfWobLcYDbTnUX8B1/H
         /MpQ==
X-Forwarded-Encrypted: i=3; AJvYcCXamRUm9C61FFpMkOa6wVFmrrhlQRw4ICk54KQ8qrJ0c16KF7nEgSkpr972Z01GMEWWTs0R4nNDrKEASsY6c0tafluJEtn1/Frp
X-Gm-Message-State: AOJu0YyqNc8ubwxlw2KjmJVJJWLT+Ep6WqQDWtJBTcaCTahjb60L/FYB
	KpzPhzJdxt0P7VAXwwCf8FCFwdmnXIL+1G5NmEEVfmbN1rzAskSu7L8kSGHHv6s=
X-Google-Smtp-Source: AGHT+IEspuAM4ta0FhYiMpwNTcy07vREXvMKqsHkMxbJPX01rF2WqGuCIYzR7ST/3eIIxl1eK0fArw==
X-Received: by 2002:ad4:522b:0:b0:6a0:e768:aa7d with SMTP id 6a1803df08f44-6a15cc7d637mr301261366d6.23.1715733472770;
        Tue, 14 May 2024 17:37:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:4107:b0:6a0:5da1:b6d6 with SMTP id
 6a1803df08f44-6a15d447617ls16899046d6.1.-pod-prod-00-us; Tue, 14 May 2024
 17:37:52 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXioyDH9W3CoMIfPXec9VGbz+Lc9MW91cz7uvX2qEQoPfbysX1TjkNbXYuu1aZHq/wGRBkJ2d4UIKh5RVBBeeql7L1PplA7ioBFK9zQo9g+LjQb9AI=
X-Received: by 2002:a05:6214:3992:b0:6a0:c123:8a78 with SMTP id 6a1803df08f44-6a16790444bmr274611936d6.6.1715733471757;
        Tue, 14 May 2024 17:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715733471; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJs7yst5z7FkHpoclz5fZAkvIEuvZXix+PGHjcVDV97aENGwROFgQfJIhRo9EUIvnD
         j33RLd2jc8pJQJ8TS21T5lUo2mbWI4sFUkvYwaUazyII5q+DtQ5FA8uiGNfn2z7miYOK
         tdp9mIHbIUhrf8PZN1N8SscJOJSIal2Z5QlUIsakn9sh/6m8sKFN3hDwC5S/sXlNt/cJ
         dVWDKmXA8OhENFYbC3iT4AfFRHWs7ka7G8DrV8r1jnoThwWtqTDJGZBcugFDkG9lojIQ
         A0JzbMdBQGX1LHmuLk06VQYZ6M8T0ByxB3iUBgO0+crfsa3ZIXyjdslZioI8P/cqd+Ot
         lLvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DrFL3DR5R/m9RPsEZN+F6ch+tKAH2aKLKMJ7Pt+lVUA=;
        fh=Ki7uo1aunji59xu/uSzF360F8EICIUQGOQBTTlaqWJ0=;
        b=WxiFunEI8HRhJQgvfZ9Ry9c+fGKDvB6uH7dr8yoZ/mCFjbPn3cYcU5Bj2SyP3gJmom
         pcHeLIxFYZhvZGqZJMd3aZ84nSv64RWlCiURBhySUnaXpIYlgRF07Lk0AOgD2WFq/waF
         cAv7XIMY6yaVVMCyMPr+xqVn7LIHzpdAO6vPZPPq1/0taQR1ht8keBhzPRs9RucHC0Ca
         E0xPsC5poGjEA7pTVvlqnf7ZKahmATkkJp624agcCrfglgD9e0GLr3Iz/RHyrMd4UVVe
         tD0j97s2nN7+xABF9BYX29+tVNvdcuHK22KqFAzA5rG4aVDkuS/ybkOGfPEcr1lnJab0
         kvuA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=X38KXFsY;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on20601.outbound.protection.outlook.com. [2a01:111:f403:201a::601])
        by mx.google.com with ESMTPS id d75a77b69052e-43df54b5511si130679171cf.216.2024.05.14.17.37.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 May 2024 17:37:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) client-ip=2a01:111:f403:201a::601;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d1RjE+I0m5pk7hTovzUL+QrY278AYdYmjnfhj+JuwppV0ytU01D9KJbBoUeRHzZB+B1ktEsmvKcJF/VN+4yTmdfTAlMF+zilPaPzkaKipguiUsj/6VYRufQt/wijO1MKE6Jeco8r/W4um3ytVPkGA3BA0JSjQQxlgHzo94rICRXqQC5CR5fsKSVN97pfAQeDcJd1WR5ynervpvwLJOqhD07kgVnlmAHBz10hTWQPDsMDoBrIcDquA+QWGlXdIG85S222o22GI5yEx2oufuRZCpnBOkwGqrRj12EtQF8zpNuEEYVljrdBLVJyXTktury5Ba7f8swnvbwLC/STdcJU+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DrFL3DR5R/m9RPsEZN+F6ch+tKAH2aKLKMJ7Pt+lVUA=;
 b=k7V345TF6DXlkVZhbK2X8mpikjvUdVZhVith1enextw0qX/q+ae1GnWNubJ1xpIBL8KZu11eN9Svn+A/6JVphfRn6aAepAWn2cHNRyMCkJyhS72/F0jrxI/CAyN7+cYwoQ97ln9N+bVuvGsCVHllSkfrSIqUF7t+Sm966G3HjvY7/jeq0yrkx7kzycj6uKLLpMo3l0xTKTo/IZKd9Yj/v3ke324yPPuQbKkR8NdM3V458BNp+moE7XLQgF2pnw++D7f0Ylah0hTsr+9tUiQLpPOQKGu1WLL2lOa2r5k0/MaD6GwKDkmtoVl3bP/vHBxELfyfjpMQ4e4+FQDxp5M38Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TYCPR01MB7701.jpnprd01.prod.outlook.com
 (2603:1096:400:17a::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 00:37:48 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::fe5b:1283:68a6:dacc]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::fe5b:1283:68a6:dacc%4]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 00:37:47 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	corbet@lwn.net,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH v7] usb-storage: Optimize scan delay more precisely
Date: Wed, 15 May 2024 09:43:39 +0900
Message-Id: <20240515004339.29892-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: OS7PR01CA0109.jpnprd01.prod.outlook.com
 (2603:1096:604:258::15) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|TYCPR01MB7701:EE_
X-MS-Office365-Filtering-Correlation-Id: 871c35c1-e0a4-4a73-2767-08dc74773e73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|52116005|1800799015|38350700005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HF7dEFphRsEkuCiZ1C/OtAvt7/QQDNJbPR5OL2GeuLNC+XTCGDoxi6lWg+ZG?=
 =?us-ascii?Q?FM0FzYQ2vV5zUQ57N+6mekdAwcss+RiE8BY87Azlj4oBiOtNh1vIDWhcHjbo?=
 =?us-ascii?Q?abnonNBYjL3+fAwpHmgXnQF9ipoz3O/1QHmbgeaV8ickjvksQc7sejMeBqfe?=
 =?us-ascii?Q?Cg1DZrAd0Qg8T4O3IGxBq71itEsKkwc5WauJPectNEUDTBqlIAbuBASH2yQh?=
 =?us-ascii?Q?UkpH4hN3Xf/kz5Bicvj7XIYkWFKNqEqkSLoYLHctxbESE9hW52hIrT+U6KT0?=
 =?us-ascii?Q?uiydET5rquaAjxGK+CIFzu2Fk2OWyXBWkrZ2dRPodDidiks25WId+/5b4Izk?=
 =?us-ascii?Q?XYNmPHlGRb8BhAp9kFkIfbla1Oi9wJD3x8EOt9/MaBShomoCUgn2dgATfTlZ?=
 =?us-ascii?Q?zJLUTDur3xD5QsQRipTyBTiA6vFNzZSkWn/VEWRtGNFwUzgwgXa4qtfvaJyw?=
 =?us-ascii?Q?MSVfQB/0+3/PH1Hz00E8ERtJ6ZqXnD3Bj1O4J6ph+l5CNtKdyo3KAoFfn4Y7?=
 =?us-ascii?Q?MuY1JNGQRbpNzjqsqAPmRiJi49xY6RYiGiO7aeov0R2B2Sy+j36k6Env86pv?=
 =?us-ascii?Q?59ij2KSrW7moulEQusd/hgZj15tWZQKMETekBnXKIrwSWAszS62Y2G/mHnJK?=
 =?us-ascii?Q?DJdVQGVlizWebw1X6BFPciafLAKXBZ33crJ0cxIJAOayfNdoHmAYkL6bpFZX?=
 =?us-ascii?Q?xJn8SW60lNIVVlN/fUFG4tLPKpF231ummsQnQXVCkCTxCA5NyHlF0z4cuhL1?=
 =?us-ascii?Q?OgL/5PR3OFtgj/HRbUAZSSw3R5IQHc0KYUjI1EPHWaFbdtULfaLWfB/eMV8n?=
 =?us-ascii?Q?HdX23hgRM2BvfRFfAQIQSeRlWbY7EyyQbVG9SA1ygGGc2bVbpG5A6zwEpEG/?=
 =?us-ascii?Q?B3eLL1nfP0C9kGT3TUz8a0AYjzf0kNuNdT3xFOJB0BeJrWK+YjZkqjrH9ez5?=
 =?us-ascii?Q?V7Gyz1D4V3HlzgMn9vHBCxUzj05ys2hjstS6qi+Mk/ZhJNs8SF2Efq+OVn11?=
 =?us-ascii?Q?EVnWI+VRVnJwP6ZrkzIsgfvwGMYEeH3yBiP/vqkFSfrt09r8ufo4VfcfwLjy?=
 =?us-ascii?Q?bwU6zizte9xzd1N9vn6ySNZRyrHEczmoez3hKV2WEwyj3neik/GnCvFcdhm6?=
 =?us-ascii?Q?bT8Kdr5MfQ1AxTsPXImaZVsrGfB6XkZC8TTJpz14flHuuUE606G+ZS/NU9TO?=
 =?us-ascii?Q?XcfZur2HF5bbIVkzo0EiCA6jawq4hvze5WSZiBMLA6Y0YAlNDisNbXj+sj9m?=
 =?us-ascii?Q?m7aEnDLp+inIE425F6nN9X08Y8VY+3ZF/zqNmkwchsaUHb5eWD37A2Y4GqFz?=
 =?us-ascii?Q?emB9tZF6HkiNyURv2WMwCr9y6UEn8s8lO21Ep1/VLAUSIg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eDTO8eSJG0HR4/7ec9es4GIAC/O8BbPtt/4jUmsfcM37kLts+RPDCY9Z2dd2?=
 =?us-ascii?Q?Jj0H0Nsv2HDKwYuhZIQMyDPIac1Hg8S8zxdA6/lPC09bUFH8nCegdo4a5E0e?=
 =?us-ascii?Q?LL233hhZvPe9bAVPKU/Q6Hb5P3nPghQCyL3x22fWEklbrMiVQVRkntWoyjOM?=
 =?us-ascii?Q?/wYWWMJiybZYc8f/IVJcYJG1Ec3Ebi/o7T8oA883q6bd3x34HKS6DpFDtWx1?=
 =?us-ascii?Q?4IjGd8nF/RU4tM32tLIdiUv0nCRt5t0mssMOc2nzim1/JwSFoJfim9qOHXXC?=
 =?us-ascii?Q?hdowE2n2IpkVc+jF5YULwKcxlPdzB3b53Gw9IdGMy59WOvO5Tt5eHkeCkVDn?=
 =?us-ascii?Q?FyN2zGOd+9OOpLLMM3sCDaOq/86wTDXaJRuvnel/UGqZ7iiiYzTIPxKYxkg4?=
 =?us-ascii?Q?xmEHyqvHIieomuWAzAVxMsC33ctpQ+H1ziaXEvS50I1wz6rkxHM3yli+ze05?=
 =?us-ascii?Q?hpvY8Cdm694zAv02w/cOoljTw6GSYO97hM3Kjp7gXfpi8lHWeuE2TqQPJmOr?=
 =?us-ascii?Q?+izh2/9DbNvXqHs8DDRWDAdrd/Z2CZUBy02RqD6bMXdiMvubAt8lKZZfywCJ?=
 =?us-ascii?Q?x2GdULrB+0EYbACtrIhSXPtr40vxMfbZ0yrX4VClzTQriFR42heT++IQOsyb?=
 =?us-ascii?Q?FSMeV7c3jgZixz04EjNJqu6FvyQzPSvF7D1sfs77gaa69+SW+rmm6E780K/c?=
 =?us-ascii?Q?DCu+nJ1/nz6Bh0Mng1ihQVXnXG80xJIbX62winyiSL36/YHufjCtGqpka7/J?=
 =?us-ascii?Q?Kcts9jm5awjT+h0EOKyfpPKgEYnVefXBOck5oOL41MobugRYZ/goRkzvuy6S?=
 =?us-ascii?Q?5QQTwbHA80Yl6uVERDJ21DHT34evAKboThkDz/DYJpr2u/Kiz37kLSD5xZKH?=
 =?us-ascii?Q?lp7IA4TRK/nD1LCeAJ9JcvaJSWc/OJP450sHXYnaOhcY84dkkDNLhfm29Mit?=
 =?us-ascii?Q?4EksiQu/0YGhJZwCLTe89V073mNKTIfnFQnjRBZYv113J3rCo7zv13u20PND?=
 =?us-ascii?Q?5+79I2lFxrdwIl0DkZucAoXgAWoVo3V97eNlAeDhoXV9OXJog1Vjh2UNkjYq?=
 =?us-ascii?Q?cIZ2uecPz/kbt9XFwlKoGgJnlTaSMD09qZLL84aaofiSqitMhjQwZ44yQZFV?=
 =?us-ascii?Q?Vt34xDOLUo00iEzIhuY5nuKF1fALkekuYoVbkm4X16FL9OWKm46nRM97tiCS?=
 =?us-ascii?Q?Khqz7/bSVqPTihX1r2qqViKQ+YY7eBWgdjtq8BuWvo6NeZRQPvbkWtRelp5l?=
 =?us-ascii?Q?FHiyMIaqKPIM7EdxPyr3RxlzmStlZprkRe9axvlvaUeXwcf8VPLxweY+yLSY?=
 =?us-ascii?Q?Xcg5O4LSjoCaozCRkeXTQzRRoFsNFgMd0OEeqRIjyfIh8/OY2RgEwJonTduc?=
 =?us-ascii?Q?BoxNP2/fKdjGXEsSVxsMZeagf/8/7QjfB9ohzr73mgvuCTHvf2at001nSVTC?=
 =?us-ascii?Q?KcXpC8yYjeAVzgG4Fjk0EMq7+dD0Rn36Iq6SDej0Co1lGJvDDPueKusDUzKh?=
 =?us-ascii?Q?bFBhub/oJhObdagCcI0wDa6BE7Onkgy6jwjxgCM0arasZmmpFqEmRXt68yrd?=
 =?us-ascii?Q?GsOH4jfGpttEc2ZInxxZDvlrPMEOti8y6Clm0vMw?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 871c35c1-e0a4-4a73-2767-08dc74773e73
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 00:37:47.8847
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zhvlfBOnFEWUF+Q+K5JqZmTWYFeRx+9nvCf6CXZONKFObxkIR0FyxnoAjKhn58Zo/51lVcejrBv1NXOg/DCH9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB7701
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector2 header.b=X38KXFsY;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted
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
V6 -> V7: Fix kernel-doc warning
V5 -> V6: Change module parameter 'delay_use' to optionally support suffix 'ms'
V4 -> V5: Simplify parser/formatter code and fix documentaion
V3 -> V4: Separate parser functions from module parameter set/get
V2 -> V3: Change to use kstrtouint only for parsing decimal point
V1 -> V2: Extend existing module parameter 'delay_use' to support decimal points

 .../admin-guide/kernel-parameters.txt         |   3 +
 drivers/usb/storage/usb.c                     | 101 +++++++++++++++++-
 2 files changed, 100 insertions(+), 4 deletions(-)

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
index 90aa9c12ffac..0b5e86c731ab 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -67,9 +67,102 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
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
+ * @suffix: Suffix string to parse.
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
+ * @suffix: Suffix string to format.
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
@@ -1066,7 +1159,7 @@ int usb_stor_probe2(struct us_data *us)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240515004339.29892-1-Norihiko.Hama%40alpsalpine.com.
