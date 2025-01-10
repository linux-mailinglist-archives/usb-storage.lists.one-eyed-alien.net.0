Return-Path: <usb-storage+bncBCD73EGVUMBRBJ63QO6AMGQEFEP5D3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6ABA08CE9
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 10:51:37 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-21638389f63sf25182505ad.1
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 01:51:37 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736502696; cv=pass;
        d=google.com; s=arc-20240605;
        b=OF3ue2JtgF4YgUVwiSzBMlFog294jH2OycQylhHsbu73d+YTIi4CXPnCCLOGgZR92U
         fK1pzzs9sV1PdrgyXCHGwzAFxPbrOJmTuCTGjVNyvMEqlY9IAPMhTLr8efuDiLYO8hR9
         Z8Gj95O2JTb5IfceJiA96TBrgZwqovbHqHekN9fmxX9doDCloArGiqtWfbpbwws/bvOA
         lAaCGpCLVBIFV/6pIjS9MP/woQRM/g3pkZFBU8kZXkEdyGcSFHd0FdQWG60SL3lM3hy+
         PUXr9XGuSQHVaL/4fErJR6ixubjtB2DhdW8SmdSlkvYTpJSQ8U/7HKkVWfw5moupQl81
         mLxw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=+dROyZtfCklkH0nYwlffbN+RdlSVLAA6gVyH3swvWpE=;
        fh=P8V6WOqdkjepV9vaebs6pBF2hYC5VPBg9V4kRHm6uqU=;
        b=QBBvuGBx2k8TPk95a/AJtZIYYDGV6sK/al0rjB3CdIUly4OAp8pq3iT7H6j5C8m84X
         sLlCGkJcWUcU1ZUHYVfGOqHYszHuoXN+N01nB8flmtvIjLNB5uOoQUxeBcHFSwRxhNCO
         hr5Yl0XimNbuQvlIvUGaBKXv0tk8kdRDsQgdwCk8EtI2l9l2VnPVNXP6USBhzV7mt6OC
         SCqbnvAj0Nx1mP9cB7bWcK8YB3/Sr4Ii5HGo88dWUhZ3xe2WOKUQmEj2Lpteg7rZnWQH
         s2nWzG61Y+fzfHZnq1Zgp0gaRPO8V7M5/pUWmIu62Kau99Cr9Vqg4ZID/K1rZzKjQB75
         xfQA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=BmTSlDQ2;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=kLp2l2KG;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736502696; x=1737107496; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+dROyZtfCklkH0nYwlffbN+RdlSVLAA6gVyH3swvWpE=;
        b=GCocs5FsS6y53fFMibiBLp867iaY7gDk+qTak6sf5ibeT/yHMBy5TZiJEBq9o/ajjx
         KRUJjwGpCMcUTnDR8QxaNZMpACp9RX27K6wYkIk1TrfOBXYTqKfQEfWKUjyrshPIWmC2
         wdp3MzVnJcqPToDaSMiXLKbCqU02/zmDMcfLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736502696; x=1737107496;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+dROyZtfCklkH0nYwlffbN+RdlSVLAA6gVyH3swvWpE=;
        b=s/dSZQY+D6GA6rJIVJiIouoj078D1jOwwnSkWZIXJR0eqTvb8iBl0zlN8hZ9Rx1Q1R
         rFof+bs7vXuKae9MSqfLwczyhE+Q0AzG4XCORmaNu4K0bSO10AizUecNzwQr0qUiYqwV
         xT076W3rjLsQp1He51T95UCtmSaA+8vm3Y+hnkU9Wi2rGk98ZuGj7q27yo1TdWtwv1Ea
         TsUg0SiF8S63LMZyzGVmNVqSaS/VvV86ikIUBcqlsOSUZEUXKA9P0TYu3LwbvY2kWt/Q
         5kdnqScSZsEpwUhFL2ysPiJJVDVzM9qLJsrRSJv/0IOYr2CorXaVj45H5KQtK324VvMq
         9l7w==
X-Forwarded-Encrypted: i=3; AJvYcCX3euzyLtAPpUPdqivNClPLTNLmyKwMuXlJqJExOZneOfxB5fV8FKd4hnZMAMqYLAM8+3FQ1Q==@lfdr.de
X-Gm-Message-State: AOJu0Yy91xT6XZLR2HkM/OhraV7AZPYNfWScURuflIElO0h54bZHvi/A
	8Expz50TNMZ2eojfZH7B3KsJWmZtUANSTran8dppiGUNUZQPEU0sCkBjlVicMqU=
X-Google-Smtp-Source: AGHT+IHzdJsx93nomvewcBBboyJ4qG5wrgjs7WWB0njo/aOM40PLSVZ7bUfRa5Eh7gIfKmuqd9JXkQ==
X-Received: by 2002:a05:6a20:4393:b0:1e1:aa24:2e5c with SMTP id adf61e73a8af0-1e88d2fc6a8mr16615284637.38.1736502696169;
        Fri, 10 Jan 2025 01:51:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:35cd:b0:728:ee84:5cc7 with SMTP id
 d2e1a72fcca58-72d2fb462b1ls2118351b3a.0.-pod-prod-07-us; Fri, 10 Jan 2025
 01:51:33 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUntpIaeXqBUyV11Td2BtM/IoxPxscWBBHvINRWyei94PdeJyqsHPHGC0BrtmXQBWx07IHQNWLo3W1jrg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:8407:b0:1e1:c0db:1530 with SMTP id adf61e73a8af0-1e88d0a29d4mr15411824637.6.1736502693303;
        Fri, 10 Jan 2025 01:51:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736502693; cv=pass;
        d=google.com; s=arc-20240605;
        b=hthl6JmQrTe4Q8IoZoV1lVcTPq5najayGyMjUyxBNCDYl6z3aGBl3YnyvgWrAoBkoL
         uUurvziX2OU+BerAB7ZTlsK2l0kxYemi2UAKtw0Z8aiiorQ+98QOFyHKycLU3HAqv4c2
         vzKhcj68MYYHl+JZdnVZhCJ71/v3+U6IKVR7rH/A39vVpweg0KxMmrfCVSj12qszgU6j
         fEiQvFrPUCc1UfZ7H+b96/lwJ437q5leNIJ42KSmlZGkLbWU8T1NKg4Kaz96QzwirH/B
         PIpYyCoejzigQS6v7Q/6mXLoIRdh2ajsCUPSBt0msgwosiGKD8Wgrccgxey0Mgk3S9lC
         vQ6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=8Ak+qnEYaFOxwLuLpsEjH1smgBMPoT79q+3iR+zek8g=;
        fh=XIzB62uMeXM3r1VslZuPuK2rNz7xf8sI0ctR1Pp6E8s=;
        b=jRi+u2hkQT4+KN/ac2+8OfB36hiQnCAZfhnzwIfPqp28SCzldo7tMzES7Hc3iCGPl1
         J6sDKVMX//tHFRO24xLh2rbCI1WWWUdDU+VCNElAg9bsPa5QSYeZf0IrF7SndhsBuZay
         t7CXEA34sfm+GRXO3NSHt6h++I4pEIqb+GIw6oh4l0HGLi8sMY1bJFOU+pEVmjfkfPin
         JUI33WX3NI9ERnbdoCDyKRGrlxa4pLaSn7EXM5IRj0ao4NtWzFOI5KjMXAcoy7DUKSv1
         xiEbMo89VnH7p1v2HxArsv7i4Z1Z61xcpwS8JMFd4Zp8VPOJV2pYgEJQGR8TPliDfc8o
         yLLg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=BmTSlDQ2;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=kLp2l2KG;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id d2e1a72fcca58-72d406fff4csi1826701b3a.323.2025.01.10.01.51.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:51:33 -0800 (PST)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A9CHKB009638;
	Fri, 10 Jan 2025 09:51:26 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 442gy5skmy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 09:51:25 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 50A7e8ga020119;
	Fri, 10 Jan 2025 09:51:24 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 43xuejm3dy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 09:51:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gwP6/Fm4VSmtlOwmA/nswZkdxvIoccW9FGw7zjMBEfSMQniM5obZlJhZlr6zVR2RIrkPV7bsjTIb9C1E/pBYx+MYuP+tLTIRFc0aaEmWjOJWukI40Y9Vmg0q1cG8lB5MGg0xGEY/68NC9qeeGupZhYWkV82dMY+XnnwzzjdAXQmt32Mv38NMnESZ6rszZ+aqt1VxUZQ76agDgBgOQAZRU/Y0joTtjxHqQThBBGYzPpq2HvhYmWNqWjp2s/PPMbL85j8xYGRPl+A2+L78D0oGpwLa6NsDXNdznnBPCshflPdIWU9Mxry/6BfqqtPh+4GXx0WRTlcdVpS92DndbGappA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Ak+qnEYaFOxwLuLpsEjH1smgBMPoT79q+3iR+zek8g=;
 b=Qt46d1fwZf2iUyYLKtxZG/lJZP2eTGNRUYd1zJrMVsgZQ6AROWaEYcck4V5JOC+Wh5REw0aayFqYoke4he5z14MNHh71wxidBbsVG5nVdzyk/P9QO9bD2vb0kuXulIaUbkvMYwwkdI7R279Zcpu6Q/fsBLvR/VT25qz7fU5GODB9wuhZ4hSOXKAJMWptIcgzGQfMXd+khnd6fhxeY2tH+S7gbvXSo5e/7kda1JohOcirLGtHgF/h5jaddAKVzLKJIkrL5uvfvddfWO9zdNDd9Z1m2B0QzEfIZajd9Ap2i2e106MbHDocLi+sGPmNnedtLToiGb8yC64PaGPy0liPsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by CH3PR10MB7504.namprd10.prod.outlook.com (2603:10b6:610:164::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Fri, 10 Jan
 2025 09:51:23 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 09:51:22 +0000
Message-ID: <68cd5371-f4ca-44c0-8ac7-c734da04f877@oracle.com>
Date: Fri, 10 Jan 2025 09:51:18 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/11] block: add a store_limit operations
 for sysfs entries
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250110054726.1499538-1-hch@lst.de>
 <20250110054726.1499538-6-hch@lst.de>
 <e7177a33-aebd-4828-87b0-f790b4fb1306@oracle.com>
 <20250110091859.GA8373@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250110091859.GA8373@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P123CA0055.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::6) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|CH3PR10MB7504:EE_
X-MS-Office365-Filtering-Correlation-Id: 27f72ec0-b9fc-475d-dfe1-08dd315c571b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V29kN0NZcVRRaXRlSVFremRPVU1ZZnVIdXU4dmU1b3hwRExUQmxsTlJMeUdu?=
 =?utf-8?B?UmdDNGNnSzlqdWI1YVBnbHNOdzBBNkdobkdyL3EyM3M4UzJyMzJHa3o1dzlC?=
 =?utf-8?B?QS9lR3JhRUlqSVNLcm5sT0R3eW91aFppVldjWG1FQSttNUFwMDhUQy9RNTJT?=
 =?utf-8?B?bHdweWpNd1BaYTlVc1pEQUdRTDBWT2cwVFNJamVDdmRxdU1wRVhJVVVLYWRi?=
 =?utf-8?B?b3JBUTJKbjFWWmpTajFELzgzayszZlZqQmc3bzRqbkVVbm41ZU5pQWFwL3lB?=
 =?utf-8?B?T25jOXJrNk0vbTlKcHJvY0ZQbWtNKzdvV1BOMlNnSTE1bVpmRzZJelZpM3Iy?=
 =?utf-8?B?OGw4a2V6SkdyVkc2TWJKM0pHVHB6UEJudVNyVEY0d0hqK1JuVnR5enNsQ3Vi?=
 =?utf-8?B?WFovRG54aktIZS9KVkcrZktHa04zclh3UmxzQTJmTG9mOW1LUzV2Y3dRRDJ3?=
 =?utf-8?B?YjNDVjh6WHZWM1dxYzU1VzJZSmpibzA3aEdad2txZ1Z2MTNpUWF0Z0hKM1lj?=
 =?utf-8?B?Rll6Z1dScGMybHhKampOU0VYanliQ2htZ3dEcGZHZDY3SWVuQm9wWVgzbEFS?=
 =?utf-8?B?T21QaTM4Ny9KYkNCR2lvSUNOaWV6RXJhV2FpaXRsM0lFbGZMRUU5Wjdhd1lt?=
 =?utf-8?B?c0tpNnU3M0RnRjdGb29NZ3MwSEtSTnlkdUJKTHAyS2JvRUtJcGY1K0FzRTRQ?=
 =?utf-8?B?T3d2NlBsdzNIeEpqbE16WnZrRm53SFU1WmxuaFFETUJQa3ZjejljSExpRWZq?=
 =?utf-8?B?cENIaDdabWt2TUtvS3Q1UE1tLzZrbTBDK2RrVFdNNVkvNHd2MDRGMmh0S01V?=
 =?utf-8?B?NDc1SVBncmJkR01FMkVnZ2NBWExpQ0FGVVFvd0ordEwxMnp6VmFNR0R1WFgv?=
 =?utf-8?B?eGVjQzFTODlNazl3aDBFR2lBV2wvT3dDKzl1MWhycUdaMmtGRXhIUkRjOEc0?=
 =?utf-8?B?OElFM2pIZytlL3VySTJ5cnZiZVc5SjFFSEZ2N0R5ZUZsOFg3T2t4eU5memFV?=
 =?utf-8?B?QXRSNXlVcllVRFJmQll2bUpqcWFjUHZRa1M5VVhVT0ZoSGtjUXdSb1lCUlR2?=
 =?utf-8?B?b0VTTDg4K3Z5UGRydUJsME9ySmp4WFRGU3RvWXgzVUluNVhWZmVTelB0Vi9p?=
 =?utf-8?B?VXR5UjJRQUl5aVBOUU9BYUtXcU9DYUQ5Y3dFUU92QlpJSFcxUERZSFRMOHJi?=
 =?utf-8?B?aHQwcE80Z1ZNS05wU1k1VkRlV3F1SE54RDEwSEpmckg3Nk4wdkdid21Ud2o0?=
 =?utf-8?B?b3NCb09oTElKMnBobVlNYiszVlJPL3M4ZWNYeWF1TGhsYVhHcnNkUC9NaDhP?=
 =?utf-8?B?ejl5bXM1M2VldjhMd0syVmIrNFpUMjZDNFMyZ0dPeFJ2V0F1b3FteVZlU2xN?=
 =?utf-8?B?VlF0YmVzYnFQcUU2Q2IzSTloVHBkcDZuMjluTHFNMG9XUVRuN2ljVC96OXRS?=
 =?utf-8?B?T3AxOVVibE1NbkV4THQwRUZja2NkMElGNDNKeFFvYkU5WTNmMzd3cy91dFhJ?=
 =?utf-8?B?YjhFZEpHSlZINFd1aHhLVndkTVVZZEFmRVViTXVMSDFpRWhJOFhrYUZWRUN0?=
 =?utf-8?B?N0tLa0tPSlNmSysyRjBYT1R4NE5nRG8wM2lsaWtuZlVFM0svOXhEMjhxenh5?=
 =?utf-8?B?MmtHS2l4ZStzMFcwQmx4Wm5VdlNBTlBkZU9GQjFQSWdvbFh1MEF0MDk0ZHpi?=
 =?utf-8?B?QnBMblkrWXEwNVRBeHE5R2RNNnhNd0NONExHOHFlcmZ4NXpqeU04aG9PSnNG?=
 =?utf-8?B?UnJGNDZMRDJyMXJ3WnJNcktFNlRocW5WUTNnL29zYkxPQitibndLTVBLaHBv?=
 =?utf-8?B?VW5TZlNqdk1rdlMxOEF1dVZJYkQ2cEt5WERtK05oMHBNN1hVb0F5Qk1SYmpl?=
 =?utf-8?Q?bdkZPKi+Ycj8Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VG1lV2NSZ0dKdTVDaG00QiszdDVDekcyVDV5L3hFQzh4ZlpPNE9CUmJ4QXlB?=
 =?utf-8?B?UDFlakFEZkYrKzU0bXRoRXgzTnlyVDhNYnViOVA4R28ydHdiYWhvRWdFMys5?=
 =?utf-8?B?cDc1WXpJdG40MHVkaFRFeG9hK0FsVTJZdTR3QnlsNzUvTW80U2hPOE80OVFR?=
 =?utf-8?B?L2xoTHkyT0NDMFlKTEV4dVlkaVJpN01GL2x1U2FHQkI3MHFSNkFLcEcyVHli?=
 =?utf-8?B?czljeGdlaC9vTXZiK3daZFdhUTRadUNXbkdyMkZJd2FCVS9nTjMrdVkrK2FX?=
 =?utf-8?B?WGExdy82TGpQRTE3Y052TkZSV0ZZZGhyWFlrYTdvc1U2UU9oaSswclNPc01O?=
 =?utf-8?B?czBMazNMTVgyRlc3d1RqY05SMWlac0REZkpXdFBpbGdHSUJ0SXFtaHdBc0R2?=
 =?utf-8?B?UVJMZ3F0VlA1MmJiSjcrRDdudjlSUWlWUkhFTWNWeURrOVQyS3lHOERIK21u?=
 =?utf-8?B?dWtVdFhOYzUxSyt3ampmTEJBbnduRDFJeXRZY3BUaDlaZ3VPd050YWRJLy9u?=
 =?utf-8?B?aDhZRE5qWWpCVy81b29kNTRzMUtPUVFkc09FRWhmVjdiQURrYnlCcmpYVkx3?=
 =?utf-8?B?REcrcE1JODcxcTNrK3k5Mm04VVNJTnMrM3hOZUlhaWQvWHVJNlBEUFVwWWFZ?=
 =?utf-8?B?QWc0Vm12REdzK2t3ZVVhS0NaVThRYU1GU0dydTFsd1JTbTM1WEN4QzNSZ2tW?=
 =?utf-8?B?emJhbm56Q1dJNXJaV2JTWE9aM2pwRHB6blVURk5KKzAybDV0N3ExWmduS1c0?=
 =?utf-8?B?MU1iUWRpZlQzYXhxaWFUMldITlFWYkd1ZzlvY0tFcFppemhGVkQ3MWg5OGg1?=
 =?utf-8?B?cXdCOHFPNDQrQjFCeVlNRnVJSmJ1Mkt4Q3FFbVZaVU1LZFFGVFJiY3lhdGho?=
 =?utf-8?B?S2VPUkY2WS9kZ2ZQaVdEZGtKYXJIYWEwUXE3cEliZ1ZJVzBzY1c2eWRSOWtD?=
 =?utf-8?B?VC80cXE5TVQ1bzFDU2hXemV4dDRPQ08yVGZ4S2x3bXh4R3FlN3MxZHd1aXJK?=
 =?utf-8?B?TFB3c1VSanVOemtuWmZMenB5eCtTRkErMWgrQnBneWplMnU4U0UrMHdybUEz?=
 =?utf-8?B?QlVLL2p5MXRyK3JMSGNIbGY2NTJQMGFMQ25Pc2lNSis5S0UrMDk5MmhOU1B2?=
 =?utf-8?B?QVVyYWZmdmhYRFdrUjFtYjV2U0ttZkJ6SCt4bDFJWmtWcllJaW9tU3VIYlFk?=
 =?utf-8?B?YS9qQWdHOEpFSW0vd0NPMFV3NXpKV3pwWkUxVTQxTFJtanFHZ0VnS2s4NmRq?=
 =?utf-8?B?UmZZOXc0WS8wa2dyU2VXWisxb09mVEFSRENjRDJ0K0dma3JTalpTRnc1TUFW?=
 =?utf-8?B?bCtmOHhpdXJrQmRQNmJVVkYwN205QWNvdG5XeDY4L0M3WlIzb3hUS0MyTXR6?=
 =?utf-8?B?bGlYeFBvcmdqbEFKMkFRb3RqR0JkcDc0WkVUNUFqMGdMd0l5cWM0czI3TnEx?=
 =?utf-8?B?RTNic0FpQnNkSmFGbkh1WFZ5cGMybkFPQnpPOXJKM3JyaU9PNVlzNVFsTGJW?=
 =?utf-8?B?V0xuVmFiaFhvRDI3eDFQZHRGUUJ5Njh0cVlGdEdGWStBb1VDTWRVT2tFQ1Vy?=
 =?utf-8?B?b2p6dllKcmNUTDZTQzFqNTRnbFNFQ0FkUUxQWUJKUHpjeU9GVXRJakxNMnVB?=
 =?utf-8?B?b1NiNUUvVU5JMjk0S2VqVzBrZGRRM2lFZVRWbG95TDVmUG5oK21hRjAzOVVN?=
 =?utf-8?B?eEUxWVlBVTZMdkx3U3liTWJnQm5ENGwzU011S1RaSXE2TlFHOVk1SUg5dEJF?=
 =?utf-8?B?Z2NkSFg2WnQ4eGNJTU13TG90NjBwRFNBL1ZrVWtWcmVvMWprT1lrY0Rld05Z?=
 =?utf-8?B?RzdhVm55Y0NFeDBiT2g2eDkxazA2TE1TZExYQXZJY0NWemdFSlA3UnB3bE1Y?=
 =?utf-8?B?TmY1eFB1SUlrM2xhbHliU0FHUU9uZnNiOUM3M09nRVBLZ01YUjVKYmsrenhl?=
 =?utf-8?B?Q2lHblljR1FyN1BEbXBxS0luS0JnOTQ1NWc0MXJUTHdobGVtajNuYjVVRTlY?=
 =?utf-8?B?b3ZqckJUdVJBNDVIQkZnalJxZ3luRlVzZTVRb283M01Ibm54bUdBVGFkVUEy?=
 =?utf-8?B?elBiV0VidmhEczZpbFZYREFOaWJuaHNDUmRMeHhkRTRiOWZYQzNzdG1vWUpx?=
 =?utf-8?B?Y1RjQXJrTjlHRmliVnlUM1NpZ2tXTWhBOW92WjlzNHduMklTcjBITGp1bnhi?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: BQkA3ek4Wp6kIg1RAHSTFo+cKUFuTCbLFlWPlcPjK+mB+yMgLzPX1O9uoCMLDR/LibZxgC+swG5LR3mCj2VIwafRwWytpfU69dXE61bYI9eC6yZvbhwZkQ4t4aC4jgSTfjyFoxkZHmMW9JZycUYchoef4Slgex0QGqdO9VhlA6VYwTEOEuGLZbWERX7ocKNxsKtn6esAkK2ws1IDRoe0s8jjRn8V507QAZ38/zcDhsZ67uEpb88hMe+bmTu7uP8PlMv92i7yWn8QXNRFJiyQJ4kbr0NQMcXaAaCh4iBFz9BDjLtOSQ64qBws7/mvcq1ftX4yhv+OUHozGHIqpPttiQ6EEcqhD9i7TK+WlsVs7cmr/fJw8sdzuplV0TwTuvn9LbQYnSgM5Bmr6MtuxiMKKU7SYAAtjeQQrD0CLA7AMp4k3pyr9oenyilFLVzr378xAY6vXv0n4Mrbm606uuAMz8SZ3Z6O30aUnfdQf3KtPAqAnaL+IdhfuDLoJRQ1sY9AceD7IzVlcisP6JvNoloIGTmGDdlXCADnmXH3/pMnCHDqTCfnaFpoVdxT80xWv3UHwBPtFN9H0UjtQx6Qpz3u4MAEv7eHFTgsxvvC94/XmzA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f72ec0-b9fc-475d-dfe1-08dd315c571b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 09:51:22.6745
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7VdDIg34/LPWp2/69PCkOxva6LSG+RXuC9VobZDnxvJKv54aF9H67Sv/ayLQwa2+/14kmg3Tcjegn3DDAfntPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7504
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_04,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501100081
X-Proofpoint-GUID: vmoiijcdikbYYYQcErAjYUfSDQCyxcjF
X-Proofpoint-ORIG-GUID: vmoiijcdikbYYYQcErAjYUfSDQCyxcjF
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=BmTSlDQ2;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=kLp2l2KG;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
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

On 10/01/2025 09:18, Christoph Hellwig wrote:
> On Fri, Jan 10, 2025 at 09:15:09AM +0000, John Garry wrote:
>>> +	int (*store_limit)(struct gendisk *disk, const char *page,
>>
>> I don't really see why this returns an int, while the queue features
>> callback methods return a ssize_t. I know that the res variable in
>> queue_attr_store() gets mixed with an int for updating the queue limits,
>> but I don't see that as a reason to use int here.
> 
> The normal store methods have the annoying calling convention where
> they return the parsed string length on success. 

ok, and that just comes down to the behavior of queue_var_store(), which 
mimics sysfs_ops.store

I will note that queue_var_store and queue_var_store64 differ in 
behaviour here :(

> ->store_limits uses
> the simpler and harder to get wrong convention of returning 0 on
> success.
> 

understood, so any reason why not to change the rest (apart from being 
busy)?


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/68cd5371-f4ca-44c0-8ac7-c734da04f877%40oracle.com.
