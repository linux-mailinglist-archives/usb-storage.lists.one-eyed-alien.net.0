Return-Path: <usb-storage+bncBCD73EGVUMBRBLWKQO6AMGQE7HDEGGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 958E7A08B14
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 10:15:28 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2efa0eb9cfesf3572354a91.0
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 01:15:28 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736500527; cv=pass;
        d=google.com; s=arc-20240605;
        b=eGrlcGNb5dXV8TvqS8ZZu7xpbZXGLhU89YELuMkX+4Jan2rmwfgbAX3c8lto2hwrkB
         p9gXVoiimQI8YTeN7RHeQ9QeKs0WRWqJMcPisjXHP0HKXAkNyDdhzekM1x6TWP+XtC9o
         +SHW1lIHvxkVxoThCpbKK2HDpxkFRBU96BHFlbHPwSRluYXWWuCXOB5PC8iNTAeWpQik
         ZOWTWf69SNtxvoOxLtm3vipjYSxjN5tzvEVtOj98MUYX/cqoNtRlsm0PK+Lirr65Sfy4
         LUpTYugq9Fk/pxeufLMQupd91MaydXgaIwQmCTlm6cAtZmZRVPfLFnrALmPlCqRkuLLQ
         v0hg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=giMwjNvUXITUtd53WAkbLYLRzebmyyt0nWu5t+Y+ipo=;
        fh=f9IJSjxnl8HoloI7+Ubo8z8vUd/tUC5ooczZVNBYIz4=;
        b=PByB2fer1KsCZNqLKX6yNC7Q4JUusQ+YJ06dxwMkJeRznrzbcVmGMVKtfoHYi45IfD
         dOwVTVm1d2yJKpnqNgnn+INf57CuiLdZ+T7R3CD7lg5EVgBIOINqNC2TW0XqEmEVP/tc
         reKvX/Td2pgFK1810KD2/IA5Mf2CpU6qAqrYmlKmGpYwtEi8Fi9x2iI3txKZ3VuKmKmP
         RQgIBqHGMLyOBbA6wHtwFYXQQN53TnbyYY2ka7wD5rwuie7/yov214xE3ma1UPKFlsLU
         +d0HWLs5pVP3CyGCmEIToiY9YXcsdHn5oFPSvBYbmdRyQyDKa5QtIsBrQjsU4zXML9S8
         uW/Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=gwhozbXr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=bzhY7yux;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736500527; x=1737105327; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=giMwjNvUXITUtd53WAkbLYLRzebmyyt0nWu5t+Y+ipo=;
        b=Xkum9DfU4tt6Ltt0KxWwthVRioB/L8jXt7eU6/wrG/PA3QmCGTVsRAYxnvmeQCeWuA
         oczdD7hoH9c4e2kuoPy7MsLR9ldu0w0BSP9ucuqtgSCjnk7xgfoxahzr9cKgoQMOSKey
         Dn3Qn7C9XSjj2CMrVxFor1pEc+0sQyeSXw3FI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736500527; x=1737105327;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=giMwjNvUXITUtd53WAkbLYLRzebmyyt0nWu5t+Y+ipo=;
        b=UBxFB3A3JKJbnClXdirfpB6QGHM4XuOxbcYibuuifzfcxsnsAd1Dh1ZGjLap5ztSgF
         evP/x1ohqzG4oR4EA4RmO3+3Ke+gQ0s4Uh8Akwt2VvvH2IaV+JIu+1f1Y/FphrCak0lw
         TF+/Qu4UEAg0QAXqEg/HuJyOPeZ2+EJTsvP1UA/rvdbfSm9SYcPDrBWfL7sHtpEuk7KR
         iyd7L8XJBJP+FxGEz8CdWKWSdAsBsXt95z5mPdJsAPy4zac5IIF6sSQwp+qhg91D5CJ/
         bl9hmqxVqWk7hUcpyED75+hTioVT1hG8q+mcsv/eU3T9cCVSrHkIpzGJA8f2DIyEcPD+
         hOZg==
X-Forwarded-Encrypted: i=3; AJvYcCUbWYQFry1yrqFvi938K8hxjFaxBDOgqkoCrwdECe6oc7ifV0KC8zal562Egk8qzM231LvCEg==@lfdr.de
X-Gm-Message-State: AOJu0YzX4n9Uvugp5awZkrnfDDCUaM9sFp8RjEerPpWFypLLEla2a89u
	0XgOk8WUjhmQc341jhxMwXafM4PJBH2+q6MKB5Uo3BR+2OjSEwe3CNbNNnv7J6k=
X-Google-Smtp-Source: AGHT+IH1+41rVgX3j7aio/rqml+6QAIVdl7eXHv1e/WOFM8TgYAGzpmub6pfxBikfTjqpGV3PzmzAw==
X-Received: by 2002:a17:90b:1642:b0:2ef:e063:b3f8 with SMTP id 98e67ed59e1d1-2f554431b45mr9498775a91.7.1736500527077;
        Fri, 10 Jan 2025 01:15:27 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:2709:b0:2ee:85e3:3bfd with SMTP id
 98e67ed59e1d1-2f548380ab8ls1965291a91.2.-pod-prod-00-us-canary; Fri, 10 Jan
 2025 01:15:26 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCW6zTc0i55p2Q6Zv6QC4zeJ/yf2aSqej5ZZeBAdDrnAFWgdrDb9S/A877BwaH7tJz/a3bXbbs7NvnqoLg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:9150:b0:1e1:9e9f:ae4 with SMTP id adf61e73a8af0-1e8b15f7db0mr3863446637.13.1736500525708;
        Fri, 10 Jan 2025 01:15:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736500525; cv=pass;
        d=google.com; s=arc-20240605;
        b=Xllx1qyexTkP7HRCsnv2yCazNtEJ5q9vz8SRR8TiC0IiA/9jEZxPuO7d3P34NcgPPC
         l498W+5dm9dZuH2c7DVqIrKis2GS4fvWf+yTRJtC2wdkAPDPVUF6A1DwCjC+B5uyJCid
         /8ZwFUXMl/yCXuTQRLl9cITGnXMLbNQOvFLwspRvTCdJtPVUABJMTcHv526jO4HqCSyW
         e/SlDabddDsujupYxXEZ6mUsyRODsaeRl/XXMqEQNJ3VUny1XiVJllsgLWw8eFYVn7rr
         or8+0V5uUZ+9a7Io96LPSZsDABczIk/us2l8qohncmiZwrcHN+/9RsZ+AU+0oHjqeqyi
         4KlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=Hi8tCagu44SUaYVEl2t5gui7QuO5cd1aCtgESjrr+50=;
        fh=XBmFFBb3dyshbw0XimyMhhmgbd7dmCTibR3Erp/T5zI=;
        b=bAdVfJ1WnkIZ43bLbYyx9PKiyK86D+CPXFp8DuNLsq0HZGAvIhtjexlXWUzK05dO/x
         X+ubBlcWiBCllHRWC28S1yLThJk23O+Y4GQosajKMLpcPeTC2WZPikOsl/luSswgshzh
         YqyQhZIWoppzrSUJY+hTQHxcX2In/NOi47qbWm0p2D+Kyr63nfZQ0+rw+Rsmom/J98P1
         XMGDybMKLFkisnA0LfLbGffNCz9tnuse8AtSBWhvUOWXOmOgBM1hTNZsdRZVpH7EBqJr
         75mGkgAT9fwNRP9T2JE6JkUXXb0DGjPkZEuVpGZUhHPZ8+FuN7rx64cpkngNfLB7MOL5
         agvg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=gwhozbXr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=bzhY7yux;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id d2e1a72fcca58-72d406ffc4esi1815698b3a.301.2025.01.10.01.15.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:15:25 -0800 (PST)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A9D0N2001608;
	Fri, 10 Jan 2025 09:15:16 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43xuk0aws9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 09:15:15 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 50A80B2L002809;
	Fri, 10 Jan 2025 09:15:15 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43xuec6wm3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 09:15:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QHu30TbumOuhdDoS9UqgtbQUpYju8m7zEKKA03tcDCi8GcsoWEoK99oxno2c+Tgi/ipXFP1Nqje/ivSK8dk/7E6B6iDIM2/5TQTLDObpr60/1jNSH3zqKM+dcU3KwvzLL9ETrf56bhy3lmIK8oVzUjR0ML8xn1F7+19iIVGKjq7rdGJXHSK2DuBdzh5VnKGrvC6Joltj3qIGsgQlLZhY+bYBEuP/dZbRY+t1+UG+WEP6Qs8rjTFriCh52T9bTePdaAQiUw8L4FBAB+D4wRDeswBsi3V97V9CsbtsHEAWkRDcBakmvdv+im3XgE4cSmabJ1qi7s6+UiFdLfMUmmm8UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hi8tCagu44SUaYVEl2t5gui7QuO5cd1aCtgESjrr+50=;
 b=yk5l65DrKiWhd1zJyXF8DSCzwwmBWl+LgPc+KS5axaIZxe/BBDfyhLZqqoHzu07xHYP3g2ftGotRkmNQMrdatfosThMJBLsHyU3q/DQJPI4ZT2/Kzi5kz9UXnB3n04IEWLzTJCpR+kJHJCwvbkEIqqrmyHyLZN7aSAtHTXhPeREzWtT+nRZro83GwgrtfKHIMfnD4HURraZul5f/Ns3cJjEpAifShFoJvq9Et0TS3S+NZ1xZ/6Yo+cIve5hwpCAJzAVbHBGTyG3+1HnhEDeBszBT4p0PmUt86pbWroSrGxzvVF2aJEg3Uzl7Ld9RovbGDT/kGcyQsS/8al10Lss92w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by SJ0PR10MB5672.namprd10.prod.outlook.com (2603:10b6:a03:3ef::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Fri, 10 Jan
 2025 09:15:12 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 09:15:12 +0000
Message-ID: <e7177a33-aebd-4828-87b0-f790b4fb1306@oracle.com>
Date: Fri, 10 Jan 2025 09:15:09 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/11] block: add a store_limit operations
 for sysfs entries
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250110054726.1499538-1-hch@lst.de>
 <20250110054726.1499538-6-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250110054726.1499538-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO2P265CA0231.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::27) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|SJ0PR10MB5672:EE_
X-MS-Office365-Filtering-Correlation-Id: bb587e2f-e2e4-4066-7aee-08dd315749a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGd6WkgvVUhSQVZVcHg3eXdEaDhCZWxTZ2RjakkwbDV5c2tBRmNaT2ZsZ1Vk?=
 =?utf-8?B?TWZnZjY4L1F1RzVjV0VVekFhWnZ3YkxpaTNPMUdJRTI5ZVZHc2NJZi9jVUty?=
 =?utf-8?B?UlMzWnVKaVFwSFFoWlBWaDdQcDFHYXBESGtidWJXbmgxdmRtRlIzTUNRczB4?=
 =?utf-8?B?SVJYUURjMnR0emlNVC92VHVjTXhWSW91cGI0TTZUcS9Wb2xtT09wVU9XSC9h?=
 =?utf-8?B?Snh6akpXelhBMmRVTGdOa2FjMENnMGd6aklSWXIzNUF2Q1VKTy9PSEpTbGk5?=
 =?utf-8?B?bmlvenlyNmg0QkJzcUZvQzRIVzdSb0R6RmI2dVRFOE9oTHVlT1dWTURwcEp6?=
 =?utf-8?B?RVlZZjhVQnZKRmRNNVoxOTgvVWREL3RMajVkR0EvVWRxakFoVDFVWExVU0Nv?=
 =?utf-8?B?ZWhRVlhCcDdjL3VibEVIZlVPY2djeE5NdnBwcmM3QlZZeHJaeGNjU2Ivd2RO?=
 =?utf-8?B?MXUzYmxZLzlXUEd4ZG5ieUZrc0ZPYjRYc0l1UzV3WnR4RVltWXZGTHpiZE04?=
 =?utf-8?B?L1JxeDJSZHVybmxIV2RHR3QwNU9QUytJUWNlSFE0c2ZZL0poK2Y0ZTdTOFVs?=
 =?utf-8?B?TmpTNG1vVHdNZkttdFVlK3NpTHowWmxyYVg0VHN1Y0Jtb0M5ZEJFdjY1L0k4?=
 =?utf-8?B?REVwdSthOHJBdzF4UWJjU2tzZmVHOEd4Si9uWU9lM3FhYVdXMERtSWpkTGJK?=
 =?utf-8?B?UDdzYkd4cEE5ZXgrcUhNWE91ZnA2WXRoVC9Ta3NHZStlNlZaUmlPelpYaXhu?=
 =?utf-8?B?eHUxTVRMaHVabmxnMEJOODI3QTVBSkJpZlVOaHlqNytFYkZwc1BsMUVPTFhZ?=
 =?utf-8?B?dGVsSjZ6ZE1ta05aeWZMSVB1MTFid05XcTBYYVFmY2NOZGFCRmtSMFNCZ21X?=
 =?utf-8?B?WG92YWEwcEpiTGxwcVdVK0hUcU5hWmFEaWlrMlNwS25iUjA1YjdjK3FhNUNO?=
 =?utf-8?B?ZWxRY2ZmU2trREVTK1dBcHNTWmwvY1BSdW5WQWlYRXcrc2pGRU5kaFJCRldo?=
 =?utf-8?B?L21lN0MyZzU4UGwrOHNvaGxTVHhoTEZldDNTVEFTV2tITzdDd1JlU0N1N0dF?=
 =?utf-8?B?VFRBZHF0ZEtHWDdQaU1pN01ZU2FvRVVHaGEyRU4xMTNxQUxJRkgvREh0QkF3?=
 =?utf-8?B?VVp0M1FSSFJabXhSSGlsVUYzRStNTVpRWGxWd0NYUkhvV3REY0RlR1gzZjJS?=
 =?utf-8?B?VGJLOTcxTG1TMjZpSlBlSTJNNkk3SXR1K0JRUys5cVhXalpOS0EvOWJqeUF1?=
 =?utf-8?B?NmttcU5pV3JhWDN1WGxpV3ZXVVFpL2pEdTljY05vYk5YRjZDbllWWWxxU3oy?=
 =?utf-8?B?TXc0d2RGcTZTYXk3OHZpK0hnandqWW81ZjV2MmJRcE0wM05GTWlxS2NvcVRT?=
 =?utf-8?B?T3pIMVRIMCtGejBjMWc1RWtFN09UZjJ3c2F0Z3hpZWFNdVhYVmdua1Y4UHdE?=
 =?utf-8?B?a0NXTkRRMTZWNkNSSjNFZ2FMeXRRandvRUhxYklhQW95bWtkZWZZMDkxMUNE?=
 =?utf-8?B?YnQ2NmlCTzhoVHUvSUc0Z1c2bVNUL1I0U1JLa3NpMjdLcjlPNHU1cWVFa3FH?=
 =?utf-8?B?Rnd4aWxoa1U5bkFXOTUwRENOcDA1SmtzTzZQbVd4T2tVUFNLWm5FdjJyT2l5?=
 =?utf-8?B?cUkwNHNoaUFPemZDSjZSOGtwcXJrdWNCT0N4VDlublBYaktnak5ydy8rdFBJ?=
 =?utf-8?B?THFZQWZOZFp6K092NkRNTUZ2N2d1TUtQYnBGN1JpSWxwUDl1ZVovTTRIYWt1?=
 =?utf-8?B?WmhvUkpxbWlEM09kZU16R1VtQlRtTVBRNVdiVjRHWHgrenE4YVdNTEdDOGFY?=
 =?utf-8?B?U2dTWEtPdmc0R2N2U0w0dHdBb3p5MzRGbzFLc0dLcTVLUkVkdHRla0Y5SUpm?=
 =?utf-8?Q?FDMp6u1mh7gst?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEJMa0JQTWVMN01uUXY2aEMwaDFoUHRDY29oWlpyT3BZZSsyM3dqUUw4Qzdh?=
 =?utf-8?B?cUNxcWRFZUJBV2hBL3NVOGh6TTFkbXozQ2dJMHJONnZWZVE4d3Q4Q09DemdI?=
 =?utf-8?B?dWRjbzRuRU9Ca0tWZ1E1bVlVQ0JPbUgwdUhKQnc2TjlNRHRnZWo0TEdIeVNV?=
 =?utf-8?B?QS9Bc29sTXl5cWNBUmZQSm5Rcms3YlFuVy9oclkxK0p1VlpWaWgzWitVS01h?=
 =?utf-8?B?emZuc2Zwd0daMXgwbS9sbWYxbTZzZFlxdkhoV3o1UGxVYkhCaENhclVuYzVV?=
 =?utf-8?B?NXo5ZGdoUHl4ZU1ZTTBHWXNUTk5HaUFCLzlxNXAwUS9Nc1hLdHZrZ1c3TGU3?=
 =?utf-8?B?cVRvdXB6UUsxK2VkTW1ZUkg2STlhd0dGYVFxeWd1WjFsR3VVa3VSYVR0NVBC?=
 =?utf-8?B?V09UMEJlUUd4RnlKRnBRV1hWSXdDR2FXb3p3ck1FOFVnSHRnbVhSb0lWWnhl?=
 =?utf-8?B?QlhvTWxEZHQwdU83dEFxTmQyNGVYL1NkY2VTZlI3LzRBdklTa09HbzhoS0lT?=
 =?utf-8?B?TVNBR2pOVmppVUEzRktSY1FVMzRDVC83SDJEZVMxK010OHdmWXN1azRvU09N?=
 =?utf-8?B?TDIvOWlaWnllYk5rTVFiN3RiRVRxbVF4R09IZjRjYnhzaTFsNm9seThQMXgr?=
 =?utf-8?B?TWJhNXd0ZTgycVpLWTBuK040cnI1TlBNdXlDbVNTbUppVGV0dkh4VitCalVN?=
 =?utf-8?B?cU4vRW1TSStES3NCTE9sNXdQR2JQWkpSRnVzN1QxczcwTUpZK1lGUitaMUZz?=
 =?utf-8?B?Rk5lN081MEVKOFlwS3FYdk5FTUljWVpoY3lsbzd4RklTN1JENldXSUdqWTZP?=
 =?utf-8?B?bnpoaHdsbm5NczUyYm5UTHY3YlV0ZU9KSzAwM243bHcwQVVBRDlKWUduNEpB?=
 =?utf-8?B?WGVGN09LRC9McXJvczJBMnI2VHdrck5ySmkza0pnWmZiZlhJRDl4Z09ZT2gv?=
 =?utf-8?B?N3lxQ1prSWhzL3FDK3hxbFUweklYMXpST1poRlo5SEMwUWYzWjVEallOVHFL?=
 =?utf-8?B?ZnR4TU91dmg0TUdhSUYrSjFCVWxWWklMYjJSb1ZVcHZTMEdvV2FzQWVLNHJH?=
 =?utf-8?B?ZTEzTSt3QTY4NlM0NVJhbEppNWJib3FyTEtmSmljUzgxYldxTk1DSGgvYTgx?=
 =?utf-8?B?UGxJZ29QNHM2UGhJRHJ0NldMRkJNVGJySnRORkYvUzRNdm5kR3Yzck16QTBo?=
 =?utf-8?B?Z2RyNTNoMC9HczJYelRYRmtoOGZqQS9WZzdDT3MxdGtNcXo5L0pUbTZLUzZ2?=
 =?utf-8?B?TDhPY3Uzb1g2VEV4RUJ2NUU2cEEwZCtqUHZkM2h0bWtqUzYwOURqM0R5YzBp?=
 =?utf-8?B?SmN3Tzc0RWNlQjlDd2VKc0ROOGJyTXFCWURjd1lYemdubnhBQ203aGhPUFBT?=
 =?utf-8?B?Tmo0ME1PTTVtM2hoOXFLSzZvU0RxajJjcGhmVllmK2NkNENEVWI5Z0xsc0Rh?=
 =?utf-8?B?WUEwTmxjSDF0cTMza2tzdWdSTGZ0MVZnMWt6QStrM2p3Qjl3cmthckJ1V0NB?=
 =?utf-8?B?UmUrK29mVXNGMlNQWWdpQytOb0daUU5kemZ4L1RydU9BTTBtZFFMcVQzOHBp?=
 =?utf-8?B?Vlk2U2gwV2txd2IrMU13UzRuWHpCTUdOMkZHdXZPdTllSDJmNnVMUVNubnpo?=
 =?utf-8?B?K2JIRFg0YVgwTytJWHBJQWErVU52cmhGRyswL3lHclJBYmtnRXV2Vk94VUYx?=
 =?utf-8?B?TndrM3YxZ2ttVWo3UEJ0WjEwbG1hTEo2MDZ4YWZKa3Y4WFJ4cWdFNkkyVWF1?=
 =?utf-8?B?aHZZNHdyM0pjSTdBVjE4SUYwYm15ejBtTmxGNjFaRHpGQWsyL2RWOXl2dlhh?=
 =?utf-8?B?cEpEaUI2QmhpYjVpbHcvUjZISUxjdmRXOFo0UG05a3FRSVpDMFlGc1hJWkcy?=
 =?utf-8?B?SWlVMDNxZ042eTdxTVFqT3ZxbWxJY2ZIM2JUMHpDblY3TG5iT2xVb2hoTnla?=
 =?utf-8?B?T0laNE50TG5VSlAremlIY2JRWUVYdGtHbkZxTVV1S2ZJcUVvUk5oUzRKenh3?=
 =?utf-8?B?SFNLQW5uQTNMZDlCeHJqQWs3WmMraDY5RlhZSXNZNWRpYmF4T2pGbW4yRkhk?=
 =?utf-8?B?cjBYM2tibmp0QjJjaE9qcjRpLzdlRDFXVUp6dHFUWmZKSDgxd2VDOEtCMXYw?=
 =?utf-8?B?Q3ZsZEZQTzZCbjVudGpaclVRM011dERSaXNVVkl2dVRkcjVyWFV1emoyY1ZC?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Rt9eJ2DOjz7p6GUtWBd032QZY6K5pVzS3bwvTBoPLhrJCDx/1jS1zyeJFp+Dyn9JjqQTYfLaiTagYXxdesCASEFuH5kXGpoA/cbE897b2m43qV/zMUMzB/ZGSpe8QYw8yTDfiRm27Pf4ly23uoBBOGq0seVfoVZfHEc9TrK5Futbal1XRCeOe+7f+FWAq1Dv+4JZILMddGJEKZWwIw4H+J8Toz7Q5Hjtc0D/RBlf6o53Wfa3GecPovmhIpsqYm/CHplPB7RYPpAfgTTEetLu9mx9jqfG/zkeTtBr36GjlHbwrl76JaUuXv22h5S1DbjbXyg/bBi+D70bxoU8CSZnCFOx+mFHdnCAEzuydNI448Ozp4iackI0onxqN9qhlHCO8sn1mOeMiJ2s89OSS7JTlgSKbXgNfyStJS9MfWRxqedlVuwpPngforRg40tT0pPS+KvA2JOk7Hq1UXstqn5u4Sek/VUiSAVYnRNssqYB03Pg345lvJm1ydNsfGAS07JrkIgMafezZ934l1jaOf3hcVt9VYZDkhtV6TOkRtLw7dKoe7vyZ2qAm6vXBU45hkMnTy8MV4Oh/c1uO66niPYoS19+rNyWnqYS6VAxLmGNqkU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb587e2f-e2e4-4066-7aee-08dd315749a5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 09:15:12.6212
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aoJd7aHoKZwtuyF7D+L5ebQvCiKRA0OeOQQyFQNe2gnU0HPoONjR/0FWz3zA5pCS0IyX/YXVpPCG0ErnT9PLFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5672
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_04,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501100076
X-Proofpoint-ORIG-GUID: QcyxYr1F3t4YTE_7pWILxFTRzUKpRl-4
X-Proofpoint-GUID: QcyxYr1F3t4YTE_7pWILxFTRzUKpRl-4
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=gwhozbXr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=bzhY7yux;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 10/01/2025 05:47, Christoph Hellwig wrote:
> De-duplicate the code for updating queue limits by adding a store_limit
> method that allows having common code handle the actual queue limits
> update.
> 
> Note that this is a pure refactoring patch and does not address the
> existing freeze vs limits lock order problem in the refactored code,
> which will be addressed next.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Ming Lei <ming.lei@redhat.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Apart from the comment on types, below:
Reviewed-by: John Garry <john.g.garry@oracle.com>

> ---
>   block/blk-sysfs.c | 128 ++++++++++++++++++++++------------------------
>   1 file changed, 61 insertions(+), 67 deletions(-)
> 
> diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
> index e9f1c82b2f3e..d2aa2177e4ba 100644
> --- a/block/blk-sysfs.c
> +++ b/block/blk-sysfs.c
> @@ -24,6 +24,8 @@ struct queue_sysfs_entry {
>   	struct attribute attr;
>   	ssize_t (*show)(struct gendisk *disk, char *page);
>   	ssize_t (*store)(struct gendisk *disk, const char *page, size_t count);
> +	int (*store_limit)(struct gendisk *disk, const char *page,

I don't really see why this returns an int, while the queue features 
callback methods return a ssize_t. I know that the res variable in 
queue_attr_store() gets mixed with an int for updating the queue limits, 
but I don't see that as a reason to use int here.

> +			size_t count, struct queue_limits *lim);
>   	void (*load_module)(struct gendisk *disk, const char *page, size_t count);
>   };
>   
> @@ -153,13 +155,11 @@ QUEUE_SYSFS_SHOW_CONST(discard_zeroes_data, 0)
>   QUEUE_SYSFS_SHOW_CONST(write_same_max, 0)
>   QUEUE_SYSFS_SHOW_CONST(poll_delay, -1)
>   

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e7177a33-aebd-4828-87b0-f790b4fb1306%40oracle.com.
