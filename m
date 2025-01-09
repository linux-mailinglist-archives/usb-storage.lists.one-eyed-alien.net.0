Return-Path: <usb-storage+bncBCD73EGVUMBRBHPF725QMGQEQI5X4MI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id B6118A074A1
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 12:27:26 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e4a8b40dd40sf1844701276.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 03:27:26 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736422045; cv=pass;
        d=google.com; s=arc-20240605;
        b=GgiI//9WW8xyc6F9zQjuy4xiDumr7nJc3E386G/D5Rl1G2HldilpwcHqTeogzxUH3u
         CfM53qkxmxTXCts0C4MBNr6KceO8saPiuM8ydhmX1BQ8JA/2k5qY4LrDvu4lcD0lLVQU
         ozO/cOOCIZR+ct0aQoV+3iydaHwYLo6D5y+AyTZ4MdpGHE6p1fO7W0lIpQvZOr2w868F
         CYbquYPLZeIboXFaV1Zr1KyKqljqa7i6F5dTsjgZs/c9HeGTUTDu/7M1cgNGhm4cVAPB
         35/TeNVqTGaV9ZmMTz1r22nMLv2nAl3IIIZmHdfGStEBeGXENREFlW/iu0sIgPrCo7Br
         FS0w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=QsJ5zjEbMCDGDC4SY6xvxcoBGfluKLb+vyEU4inK8qs=;
        fh=YN5PIn/HTmyTAk7QMHvpY72JlTe2mnf7VcwxxOVv6A8=;
        b=a45eVkCWQvgpa3tW2tBePBg7v/C6dgfseECTfFnUr0B/g8YJf4nH3ZdeUj2uIi3pt3
         VAX/WGQYeeOp5bE3k+Krv/jldiZWs0++psqhxHEPeYCMeN6fPkppTb/pbJpsx7a/ST0L
         NC5FJ5D6gme4/zj+j1/C2Qy/NYU4u2IJpPL6wutcuH5LlyvrcE/HrJfZ3hNBwogX6gZ9
         eT6EhMS7P4utIGlfSwO1fSlwKW62mtiiykhMhifSmQps753bVUpmPIj5u80mcK4Xkspw
         Ht99MvcIU7uxXzdKLCUXM59Y6Y23cJxuZKOuPru6Px9OgURRaI9BLlKmbYuQHq5b2njc
         gnRg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=KrZROygh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=JsT1CbS2;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736422045; x=1737026845; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QsJ5zjEbMCDGDC4SY6xvxcoBGfluKLb+vyEU4inK8qs=;
        b=EH6g+6KFwoubovB3Ev4CD9a4t8gRZX3ssTDXuobbje5Kfej+CESiekfJwzBh/m63Yz
         evnomWdq0ORi70zwa3u276VAQvtgQEC8EhxoVEA0L1MW5Ca5nVdA9LbZEEXzzBQQ9qIq
         ALGFU242JikjHvSKEiVHaQq+6e/vPjusbCPSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736422045; x=1737026845;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QsJ5zjEbMCDGDC4SY6xvxcoBGfluKLb+vyEU4inK8qs=;
        b=Z6vzGqE3lm/Ci9Gg15ftWwCuheLeA1qo1f9kZ9OePdizClue1obm0KETi2OV3+3e+s
         lwGXpLeprDN+Wr30HwYlF1UFKXwqm7JKPU0NsPSBGdH2jcNeey6TT6ZccHAYsrHsZIEJ
         zI3wql4M3IxaW2FAvW0MnYs1Oi4felT28BeMXHGbqFtLK90yPMNRxeH//65k67ynHM28
         Q7csZOnBeZ4WpM780N/2KD0a/mbCdN+Dqqip/rbysAVGO3uKn8yN6UwFRLbg9ElxGh7J
         07AW3zyv2WuME5xVMYWLj2ReRaQMNw/Ti51ZeaP+BTnCVcYBsPgaAQCTQlLLkkhkoew5
         U9mA==
X-Forwarded-Encrypted: i=3; AJvYcCV/R6YKwKc1FkEDKgz6tP2M3v5kiChPnyS/821G5eucvrMQRM/Bbyp5nmSKhl5sQ9V2vBApgQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy6gUR8Bfc/Oy0Cl6lnXeSxB1QL8IXdxSmCbI9jv1Fmu+SLFm6A
	2AemIfYqwaInj++4c7hqDil6cAuuR2QUIE9HB0iS/bNnLW/FJHnQ6Bk/3VwR4GQ=
X-Google-Smtp-Source: AGHT+IGJmGZ3ks65b9Hb00AMB82FSdom3jT/zjP4SueANOF8qY4vzNzR9U5mX8BNzfZ+yP2YqXvtRg==
X-Received: by 2002:a05:6902:1009:b0:e39:c292:9f32 with SMTP id 3f1490d57ef6-e54ee138736mr4742690276.20.1736422045499;
        Thu, 09 Jan 2025 03:27:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:ae60:0:b0:e39:5989:6eca with SMTP id 3f1490d57ef6-e5500415f82ls778121276.0.-pod-prod-01-us;
 Thu, 09 Jan 2025 03:27:24 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCVtDXcxBcOCrOuXu3Zk5Y0jbrZgXpzhDwcK/1RKLPLfPqsfFj/ZtSlSlp47LwTLWYfm3OMzRU359aPrxw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:15c4:b0:e3c:8b14:e7ce with SMTP id 3f1490d57ef6-e54ee1f4a31mr4818446276.34.1736422044628;
        Thu, 09 Jan 2025 03:27:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736422044; cv=pass;
        d=google.com; s=arc-20240605;
        b=I1edn6VhXrkib9abKpIuLjJWGKqCLA1EL/iQZGzTxDpfr6/Uf/AMXDJKidCjlIJY9u
         J9tByOrSiy7bjUTYYMG3KRPzVzcupocw/G+xnQ/4n65NZ7aA5iBxXH7b58wlxqp0mIv9
         J2n22k8wUyrTFrUZHOw8PQ/j7IPtSnMG48jMD+V0UhHlqXTLcC0VL3Ay79nskoyWCErv
         pLxfADOEcTYGFoq1YpBRaIEiNl4Tb34Uf0+5XcDdid37XL/h1LMlsg/6fcZMP040GaOF
         hYMZBAdD71wOKCcZ2pQ/mhUdiliHEQYNxEn2STblJfrnj2EasRDXuSG04+/3kJzUEXZZ
         4g5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=CfoNfS4haZ+0xGUw2Q10MfoU1q2yioqSLkpVBcsn3jI=;
        fh=QAv8Uygx9RwTxXBQl1KbHacVVhIusIp+RNoKQc+tTS0=;
        b=bL4xFS0FeKqAMOqo1GIKbGh7OzvgEcdRrpR3iMdpd9aIIwGk58Tr3LkMwCxmFW7QTf
         FGigwoyLJfRl8C7XUdgW4cuWddnXsTyuMHjp1o3rg1lZWtbSslU+BuFe28um/8vgHPBg
         lhw7TlhQWCF2oCJaEGa4aZxVnObq5qfB1UQgiVG11rHIaNJbXs+EAngFAf4vmbh/uSP7
         NcshlMgFBdnZM4+HfbCdD0YghgM5b4nXl4PDmhX5BW5035AEd2OIscvxjBk8Ht36oc8H
         fAPJJgBxN7bchtS5UxqoNUpYHtM2C2r1Cp3aYF1htsXab0SzvIIA09EpQQjXZUFpr1gP
         M5Gw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=KrZROygh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=JsT1CbS2;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e54d1e53f21si3726217276.115.2025.01.09.03.27.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 03:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5094hEfl007794;
	Thu, 9 Jan 2025 11:26:38 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43xvkt0fkj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 11:26:38 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 509Alfet011977;
	Thu, 9 Jan 2025 11:26:37 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 43xueatbj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 11:26:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WFxLwv8nDNPU00AatMbAzao/ms5PLyWHpW93eZEjgu0rw0CEX2/xbo3kiYKMID0icJfeipHvZzZX+gpFNTo5MBnrhG2B6+/ohrhdlqsgHfLqrRr7DrNw4oNKTBycB9qoVNaB73TUJKWmKt+BdV+THsEfEX7kkzqxvQdxVwARarUYx4+AiUTgfGDTG+zGN3xa/J5FocJTH+uLgmuxKf93i3edC1UrVr0dn5bbx5mxpH8mADvq3WSQXvcI9oKAFhU+srPM6evmLRYehezUdaDNtrOuv+GC8oM8JOBHYRLtV5HUzYuIq7GPsEAtRSqp/51B8icNbAidHlr82WXvnYp4kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfoNfS4haZ+0xGUw2Q10MfoU1q2yioqSLkpVBcsn3jI=;
 b=bXTZ/fNlg3OrNFqLilaiHuLuyyaUliwlXlwsDveaH1WT9e8fl42qEsCuZwE4yhrOv2l814y6yjOT7GyuUaz7GAy8vC61Ylq8Z/6fNon1DW521Z0v6bOv0TLB+Zt3BihXqYhqXPs21oSwJVKDQLzLHiePhBMGllq/4ZnVmPrnmnLoosGDZelASkRRXRkp0+pT8wcdESn4HjcgIBNkZvsVfAjnTbIB0xi3s4slFqbDzcXJJzC1FRQh/NEpUyAkzeu6XD6p2dlEGIbB0wQq+MR7DTmZ9J1GstLzmU5YlpxLxPFH/hhbCguFcTpPpx8QLEI0r/XRvSXphYKMvNVBArStTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by IA1PR10MB7116.namprd10.prod.outlook.com (2603:10b6:208:3f1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Thu, 9 Jan
 2025 11:26:35 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 11:26:35 +0000
Message-ID: <230d9d2e-a86f-49e8-a615-99b4a733756a@oracle.com>
Date: Thu, 9 Jan 2025 11:26:30 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 1/8] block: fix docs for freezing of queue
 limits updates
To: Nilay Shroff <nilay@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
        Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-2-hch@lst.de>
 <33386009-9d1b-4a7f-96a5-a2f0ed2fb075@oracle.com>
 <279f282c-1fc3-4771-8460-c1a980fb0517@linux.ibm.com>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <279f282c-1fc3-4771-8460-c1a980fb0517@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P123CA0157.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:188::18) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|IA1PR10MB7116:EE_
X-MS-Office365-Filtering-Correlation-Id: 30d3a52f-fbaa-4be6-b250-08dd30a0797b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXh1VXNmN2dhOExvcE44MHJpeU9zZ3ViTFJmcStOa1lLV1NTR0hLZlBydVpa?=
 =?utf-8?B?aXdtK0ZKN0FHOUc2TFE1NlptZml1aExQU25DRWsvWkhzUmVtd2gyVmtqRUU2?=
 =?utf-8?B?Z0cybk5KZ2FFN2E5MmxoOEs2Nm9OSEQ3TDB4bjdSZG9OaUQ3ZFI0RndYTEFv?=
 =?utf-8?B?ZUV0UHdybzJMNkxIUzNDUWVVYkcxaEY5MkMvc2hrejd6RjFBTTExc3JBak1U?=
 =?utf-8?B?TUxNQ3FmcEhYSTg4RUYvOHRkQVJsdTF6aTByTEEyWWZZUGlEYzdFS3YzbHh0?=
 =?utf-8?B?ZXY1M20zdTJpQnVlcVg2RkVScmtaWVpUSUpuKzNuejJVWjRlczRGVUl4UXVX?=
 =?utf-8?B?QUNPdXR3aVIxYnpPdzE3UlhNRWhsUlh1VTJ5UGFuN2srSklRaGFjRnArZG1B?=
 =?utf-8?B?WXJLampWRHppUzdiUUtCQkRGT3RRclJ1S2h3RUZSTWk1eUZUOEFIZTRoamhB?=
 =?utf-8?B?ZTFvNk9uYnhKMW1PQ29JajFtZER5NUNJbWZkSlY0NFNYa3F6SEozaSs4UGpP?=
 =?utf-8?B?b1NCZ3IrWWZmL1VsMndad291UnBNRWVueVUxTCtPQVY2WjBZQVZTblpIT1pv?=
 =?utf-8?B?TmF5dlIxRmdsbEpLZVRubWxXSjJEdVJtRGpwbU1hWW9HSlBIQ3RiV3lCQ1Fv?=
 =?utf-8?B?dXRuWS9rWmZoTkxIMzZYOVNPZHRtejJwOE9ZMmVlYk0rOFRmNmxYc0Z2bnRq?=
 =?utf-8?B?ZG9kQTVYVUhyeHl4d0duUnRTSnRDdWtkNlRvZXovdmNCdkFlRThlTGFRYzJN?=
 =?utf-8?B?dXVRdkVEbW4rOGZYM3loQVBaSERCNk1FZjJoUnZQOTFkajlFTWZycGowVlRS?=
 =?utf-8?B?Qy9IZFNybi9qSGloZ2M4RWlrc3NCRjVVL3JBRThPRkVVTjhXU2pjNWJjR0J4?=
 =?utf-8?B?TmJPRXluSDF2YVQvVGdpRWxzZUppMjFiTnlFcS81bXhlRVB5bERhOVk3QzBG?=
 =?utf-8?B?LzhnY0oyYVlXSTlrd25PMkt2SjBhNzVGSjlFM09jYnI0cGNreXdENHBjbEg2?=
 =?utf-8?B?S0hwNGt0RnB1ZzdkbGcydkRLaWsyTW1mQ0pKM2hXekI3UG5uandqV1FiL2ZD?=
 =?utf-8?B?SnVrRTRiM1Qwd0JpbWE1Zm1mckpBenkxZ2FzSEhZSUNmNHNyK1ZPVE9GRm1W?=
 =?utf-8?B?ejV2WC9naUNTOTlpV0M1TklmeDFORjVROEt1Q0sxQlNONzRCNkRuMlJxbklu?=
 =?utf-8?B?WVB6d0lWKzdvRkFCQ1phTitOYXVWaXRzMXNoUnd1SjFyWVd0ZjhTRGRtRjh1?=
 =?utf-8?B?b0dPeGFHRzdwMUNWOGNkNitxY2lDQjJ1dG5KWjBLNHp1QkxGZElmd3YrYzI0?=
 =?utf-8?B?Q2RvR1BNVUhxQWd0bWZ0M1UzQmRvVnJrZzhSZVlPSk9FMzlzSFhuSm00bGJQ?=
 =?utf-8?B?YVh3Q2cvbW8wRW9sbzZ2YWhLNUswcjZNOERPMDBJdzZJZmdvZ0JmQ1FURUlv?=
 =?utf-8?B?TzYweDF3UnpqaWM1R2JBT3lhRittUVZuS3Q4TGhlaHQwaUlVQWowZVhoSmFQ?=
 =?utf-8?B?MUIva1QxRGZmeFlrYy9vZ0ZaZmYxR3d0c0hOOXVKWkhnOEJFSFJxdU02TUZy?=
 =?utf-8?B?Zm9OWC9TNURQaVZsWDNGMUNqTUFtMElIY3ZMNkJsckVKN2YwZkF6dkNBeVAv?=
 =?utf-8?B?SlJKWmZDK1hCaEFXOGVDZ2ZmUHJMbkRSUnFLTWpUdFNhZTFUQTg4UWdUVVJS?=
 =?utf-8?B?NG1GZktBVmYrZ1Y0R1JvU2N4Y2V1K1daWk1Ja3dmTW5CT3JQUm14U2JTNUhs?=
 =?utf-8?B?ZG1QQ21Wc0FtOTVHYXFPUGVMQWlmakF6alBDQjdPRWlWS3JVNnE4ZHVLcjhD?=
 =?utf-8?B?djNocmZaV1lMdUdZR25GQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vi9qNmdPRGhLcGtTUVBZNHcwRzVJb3RNSFozUld6VDZnMkdBWEdGR2NGT1Nm?=
 =?utf-8?B?L2RxZk4rSnpZU01CQ3dWNkVIRHl6Q0NIRVdzMTNId0tlZmZGK09HcWpLZ2Y4?=
 =?utf-8?B?a01HN1AvNWoyMFJ0VURMSlBoNHNnRk85VEhqRGFYNzNFZzlkQnYySkVMcUtl?=
 =?utf-8?B?ZVJRZDd6UXR2Y0JZa0tYa1UxditJb3d3RUZJMU5yb01kZ09nRXNlUjJNWDJ0?=
 =?utf-8?B?dFFCN053cWhwOGlQSTYvNVJKWlFGL2ZFS1dJb1FJQ2ZyRk9JQkpGUE13THFY?=
 =?utf-8?B?a2lXcGU5bitzSDRmNnZoVGhxR0p4NzVVTWRjcGR3bHJxTnNKR28rb3VBclpi?=
 =?utf-8?B?RTdTVXFjTkltRHFua1ppSzRLV3RpS2RrL1l3QU5CbjhPYnlISU5pQ011VHlW?=
 =?utf-8?B?T0p0a3I1U1Z3QTlZVE1CcnVYQUQxNUFDZEhJZE1iVjVyUGMweFQwekZndnI1?=
 =?utf-8?B?UzdXN1pCQ0l6dGgyS1dJWmt5Zm1sZjFiZUE0WnlxcW5rUlA4QXZLS1V3bDZK?=
 =?utf-8?B?U1c4czN0ZEwrTmlvSE9PYVFuRVZ0R20xSURzc3JMUi91QlNkWW9Ic3BCK2w3?=
 =?utf-8?B?ZDk1Y2ptTmRDdHBaTG5HUkI3UzBQdWgwR04rZ1FFbmxnSXREWERuRWZzU1pl?=
 =?utf-8?B?eDI4Y1R1UVN2Nys0azZ2RmhYRkdhcWZOTEJPekpFUjJ5OSs1a3gwOXY2STQx?=
 =?utf-8?B?ZXowNmxqU0MvNDlobHFJMkwwTjh6K3FlaEVHcFhzTk5ESWtQZXhTTUFBT25r?=
 =?utf-8?B?d0hDNUlkaGtPYUt1MUh0MlZiMDNYdjBId0ZLcWpmS3IzTFlnWHZMd3JtZ0hj?=
 =?utf-8?B?Q2sxNHFMQm9FMjlnTEZoZDJOc01ienNpWWhxZmJmMXE5TUVDK2hvWjBEUVp3?=
 =?utf-8?B?Q1hXMnEwSzVwdjMwbjhGbU14Und6T3U0OFZCMXNjam9ieHFLUGlFRFRqK1hP?=
 =?utf-8?B?UlJQZDIva0l4OWFTM29EV2NEUVYvWHpIdklaTHpMN1M3ZloxZ3VlWVYxeUxK?=
 =?utf-8?B?eGh1b1cyanBpcklmMTE3QXAzeDRYZ3lybzNiM0FYQzFHelVIREF2dTd2T0pO?=
 =?utf-8?B?T0tOWjdHdEhERDhqZHFlbEZ2T1ZsR0crd0RpMDh6VjlTVG94aWU1Vm1GSmpN?=
 =?utf-8?B?SDg2QkNjanJyN3Bhd3lkOEw0VXVvSXpmVFdIOVVJbzM3NFZaMVhaQnhqdlgz?=
 =?utf-8?B?aThUajRSVHZoYUF6aVBuVFlaV1pxRktVOGdveFFlMnU0eFAvVm91YlhlaCtU?=
 =?utf-8?B?WUlXZjIzblRjcGI3Zi9WSXE4QmJNelNucWh5S2hCRTR3ajdYTGJKZnM5Z0hp?=
 =?utf-8?B?UG1sQ3doRElFWlNmZXFQU1ZvZ1pyZytBRmFNdVk4dnlYZkVqNDJmYnJwMDFp?=
 =?utf-8?B?bzhvanhiV3Rvcnl5N2NwWkpmZEpmMmVQdGZwL0xGZlRFeG85SzZPTlFWM0FM?=
 =?utf-8?B?TnI2eE5adlVKZjR5aE9DL01mUlprOEowNTRrUDVXSjJOZS94OXAyRW9GT293?=
 =?utf-8?B?ZEo4U2hXOGdsblNTWHUvcm5oMTlDYTRHTzkraDhWOE9oeWVFQStIVzk5Qllk?=
 =?utf-8?B?b1hjZlN4VlpZS21ISmw2a0w0SkFaeFR6VWlrbWhyOG5wc1lCd0JDWGdBT1Q0?=
 =?utf-8?B?WDZ6c2tYaHYvUy92aExaUVpCWnh1c0ViUVZrbStYTXhtM3FCTStjSzkvUEJl?=
 =?utf-8?B?U05Ib2drMFA5TXBrUFpFYUNXTmREQXIzMUNzQmtMaVhyRGxBVFNMYUxvRW4v?=
 =?utf-8?B?bHUzSkxPSGJBam11UWVLdElTN0JwSmZHWktxU1RIa09EOGR5Wng2THoyRjZx?=
 =?utf-8?B?Ymk1SExBSEpuSmJGV3JiYjE4UmExZ1hCZk1KNTFTZ21lc2RTZStWMW5PM2Ew?=
 =?utf-8?B?K1hNNVliUjB5S24yWmFhampEMW85cGo0c0FBOURKV2lLV1Z4TUMrR0w3YjRH?=
 =?utf-8?B?VUJ6WXpjbnNmTnlKU0pRN1l0U2NrT2xxaU8wMXJWcnpiL0IvYXUxSEZhTE54?=
 =?utf-8?B?MU95MEdkendNekNRL1IxN0trbEFRRXcyS2dkekcwem9mWU0zK3VlbEU3VkhG?=
 =?utf-8?B?K095ZURRdC9hZFhGOEpzMEpCcHRjb1BjV0s5d2JrWnZ2bUVmN0xxNjRJZnVD?=
 =?utf-8?B?ZkdpVU1rMDIwc0J1MlFZTzl5MlREVTZDZ3Z1NTB3NTdvVnRSZ0RzYjVLNndm?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: pRmZNY5EDOlZuNav9hmhCnwTAcnG9gUOAD4eBM/07PApkpfkdZObgBZKMkDP3gZY5jh618hYplEiz+v4KN8zkBy409ywvUrSINbC9e/2naQhH2Tdg9plW+3+f5aiSiAYrxAEydoNVl8Ujx0d7hdAfESlstMwmKl483BoiFiTFtDai1me6Y+ym9788OslThCjJ1PdPBD/nVF8HzWvw8QLmr5bRBbD2MltwAJ9eftfJKka9J3Yw/XThdMarCYEiCW7vTxOT2yahjiiXOHin5Ot8L6YTolhmg9bimvnAb9JVvzWDSIGNWChH0Cv6vrXw+J60QkgJpGzNXkt+rwyXCG/kBTseT5bNIvOYIcxhTsS9RIdsiNxwJ8Ic8tnk+93eh0TmbjaNwZGfEBaNIB66GY8vwD9DYYrVRsSy2u1GB3XiHbCoALdPfqJjfNU1n3f8BAm+0QGlDamQ59CTwhO+I1OHogrBAx8DvNHOS73+nCcTR17/MPvIFiqg3wcmY6IB3txaFP6crcreecpD4QT44pi/JbhZ7BQW89ZYMjC/2aRLFggcHIxLmfNxFtkE+VydTb7vghis7je8t5dC1UQAZ4PHW3iLj/vMlpn0rB4OqyMEv8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30d3a52f-fbaa-4be6-b250-08dd30a0797b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 11:26:34.9611
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c55tfaANrblyNpmxoYNoHg4M8J7Bwi2Yzi60WvEWBULBKxHxAO1Fc+HDw5jndcfDT0sr1izy5BjHCRv5AW8dhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7116
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_04,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 adultscore=0 mlxlogscore=933 suspectscore=0 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2501090090
X-Proofpoint-GUID: OzdmvRizpg2kdswGhnGiqI4HsIM3QXCJ
X-Proofpoint-ORIG-GUID: OzdmvRizpg2kdswGhnGiqI4HsIM3QXCJ
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=KrZROygh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=JsT1CbS2;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
X-Original-From: John Garry <john.g.garry@oracle.com>
Reply-To: John Garry <john.g.garry@oracle.com>
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

On 09/01/2025 11:24, Nilay Shroff wrote:
>> is that a typo -/s/outstanding/ no outstanding/ ?
> It's already fixed in v3 here:https://urldefense.com/v3/__https://lore.kernel.org/ 
> all/20250109055810.1402918-2-hch@lst.de/__;!!ACWV5N9M2RV99hQ! 
> IYos3CWlynlAtnimomFwr9cZ8nYQLZJ6haZCdjSYQp5lpMaD1aJRlX9OLTuHEU- 
> XlB8R5BpZJQazJwzm2XQ$ 

oh, yes. I thought that there was a v3, but it was hiding in another 
folder...

cheers

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/230d9d2e-a86f-49e8-a615-99b4a733756a%40oracle.com.
