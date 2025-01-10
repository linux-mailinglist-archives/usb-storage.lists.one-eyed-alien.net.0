Return-Path: <usb-storage+bncBCD73EGVUMBRBTV3QO6AMGQECVFXM3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A88BA08A94
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 09:44:00 +0100 (CET)
Received: by mail-yb1-xb48.google.com with SMTP id 3f1490d57ef6-e3a109984a5sf3637293276.3
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 00:44:00 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736498639; cv=pass;
        d=google.com; s=arc-20240605;
        b=V+v0+VJJYPf/hPAKa2mg7qWuH6Fqf8I/grz6+wAGGUjebTTcHrHbS7M4K4tFLviw64
         DpNo7AXqHBotHwTyt+zukdd7qEBDzzu44pr4Hl41Dpc1CngsvdSzSIJnqu1czwBnCeB1
         Sz7bfXLJ73CugM/sorBNrHKFQdLknyrliB/D8Jz4TPlVNgOX1gBrxAcJuQXsGBVMs7k9
         2ZOecPoSKnCVagyB3ZwVcFwHsSnagGLwXXpDv0no3fFNizA0Wwt0V/GfEye9gPKHikMT
         YPlp7CC8z24OgApUkplBRccfFMOdxN0ZsRoD6B6BoetRK6v4qmHNJeYiIOQZKkG8jm5V
         G1nA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=IjxpiWh/gtm43gJPxdytqeEr060v6KEjuJCJqrHU9z8=;
        fh=BlpaHU8zKXnUNN+725emtXZC3DDK94a+sqNJ5A22cqs=;
        b=dCdLZNE/1GyVZDc2QrWjS/IGaYZJ4exP+DUC+1QYmiQ+jOknCP5Q8Bb395+QgYoDly
         0TA2xq7B52Jd6DS79/t4se1K1leja5CNCOMqemvDLyfPlZ1eDfxLLPAyi1PLcwdOgUGJ
         C8iHGWIn0f5jMLWrX0a9XWv8rJIGcR4y+z0tn7JOxZp+YwySoK1Ndk9CsysiHCde9iY2
         mKIIYvI2LXNNJEteuFX9alpw0N8fguj/8K6ATn/1KWu2kRtL1GtCOlNI+/qfGflzzrub
         x+nOD7WqfXqnUvwCnfMNOO0lm1xhdYVHpcCPhQomgWPuzr5graYmy9qMU6WmAdJvrquU
         udjQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=OIpUGMHC;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="oqSJL2P/";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736498639; x=1737103439; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IjxpiWh/gtm43gJPxdytqeEr060v6KEjuJCJqrHU9z8=;
        b=iNoynrJWCEH3me2vjy+vP1kt3BQXQYBTtxCh+LCtX7i9hsFALAvUMK/93GZ7u36TLy
         LNsmBPuWXEMp6ZUJTybLx99qGBdi4YQtkNynv9WFsH+zwNo1TVXbNpD4KVx36Mh4fwOk
         6x7cHHK/uB7hd0SWLB7qAgsmlh5xsHaNmA9cY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736498639; x=1737103439;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IjxpiWh/gtm43gJPxdytqeEr060v6KEjuJCJqrHU9z8=;
        b=NyG9qjU/EeGsBG6Lxs87du9AvumOhH3FNpdGTHnTuWoVQsx9GX1ENIwXRsCMpG00zN
         v5hJSVF76ZErrJIf+/bHCYPfsJmGjQvDgv7sQh2VbMkwU28ZRN/4EQgbxET7LgZQ26k7
         Zj9fl73nADLIdWTLphYuZgkP2n3voYKLCxrocIBCqOGMG1dgLB3tqOVqWNQPFqBNxEbM
         tc1//inF+jgg/a4/bl8A0dIhVmoW4HIDwcAIeBQfSR4D6jX5gRFhPjRBAEK2rTFDtlBI
         2xn1GUJlAKLbo2UQ02gSe3cTf1bzHrxgoS9d4TLyrW4YFldEz7C714JqrQWTbnKhVtWG
         FrOQ==
X-Forwarded-Encrypted: i=3; AJvYcCWJSTgJYEkj3N+6HRQ+thHM7lxTA8fWPyLN+RjHlnUTcAEFbscV5SSPykAGZeGXgKwixBOGEA==@lfdr.de
X-Gm-Message-State: AOJu0Yys19aldZm+IODvZAZ9CxqvI+hpmAC/hCPZRy9Vn0ckJMYlfhai
	YMPQfTOy02pz1jELERV2UIyw7Z+IIsMZBjp0KVomgY+cDSdrk0KTjmwyiv3+IRE=
X-Google-Smtp-Source: AGHT+IGmKXHPsQVaQnbHh8AnOTh/adguL51lh/JmngVqqyQ7PDxSgZICTYsH3H08nI4hpNa4erWTFQ==
X-Received: by 2002:a05:6902:12c5:b0:e39:8507:17a7 with SMTP id 3f1490d57ef6-e54edf39bdbmr8358178276.21.1736498639132;
        Fri, 10 Jan 2025 00:43:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:df8c:0:b0:e28:ee2b:34fe with SMTP id 3f1490d57ef6-e550081434dls1756383276.2.-pod-prod-04-us;
 Fri, 10 Jan 2025 00:43:58 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCWCH8uvXMPcK4mgY/oVbQV8xdk48cVzBgLBwAkLa507ps+vckUsIx/fwUSgcB5RMPvmJ5WRQn7awi/DGg==@lists.one-eyed-alien.net
X-Received: by 2002:a25:1643:0:b0:e49:e085:c0b4 with SMTP id 3f1490d57ef6-e54edf14fa8mr5551780276.8.1736498638089;
        Fri, 10 Jan 2025 00:43:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736498638; cv=pass;
        d=google.com; s=arc-20240605;
        b=Vg6r/hZzRn6mNm98aPAvF9UOTpxzXL1Q0f7tyN2vf9dkvdCNFMidz46wF8PThVfj65
         QCO8s1lYfLD5a16DPe4WHvQFHvj9Xs6HEQbzRNepHY4C2JP0NyCqmWkKmkN0Bco6MlPL
         eBX5tQsTeNRPkP05nj0/D3RG9w3mw2kxbmjTb84MPbeYB7gCIemFeARkLLeqfgV462Nd
         LCQnkIV8HUHeUzGldMsvPRNBQaq8p2yVsb2YsVd3DEGBGC1A6L8dHH5HvUW0eLpae+nl
         STUwLrVVWfQrACPjuEZfPRY9S6t5ZeKBuFKmdgT5NG1w4c5b+wWsil0iOFDtyo6AKDnF
         +Q9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=CjTryJvcvl80fKK4zh3QdAuX260pfjeaTeTGSqZEO60=;
        fh=XBmFFBb3dyshbw0XimyMhhmgbd7dmCTibR3Erp/T5zI=;
        b=fA8GNUUMxkzMtxK4LK4ZD5TTLFfoKHlwaP/KQ3ZBjskSBXJE2toiSa8wnpvtXK7Ka4
         Tk7iMWqxRuFuUB5TzyiQs1P6d5F2u/gMiT75KEi49axNawaFQvtZSrrH9O0dELrI0wct
         eabsFQ04zcMCkbXkGy6LLnBF/UNt6UiKl4a+fAG9L5Yoj66e5590F7V+p4WpiEmdBWwe
         QEOAascp3qnAHx6SxBtzuvGrLUHiUul4J5DzsQLbkTT7Xnxyovz71MtKUjkXL8XOex1A
         ZS17MVmjxbiSHYngDxE1X+ae3Nd7GJkGtk9oIEeNHTGdGE28tLyi2c8qxsPfIpgk04yv
         tQIw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=OIpUGMHC;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="oqSJL2P/";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e55be2b3ed9si791520276.544.2025.01.10.00.43.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 00:43:58 -0800 (PST)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A7jSkH021291;
	Fri, 10 Jan 2025 08:43:50 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43xudcas4j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 08:43:50 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 50A8K7pr004832;
	Fri, 10 Jan 2025 08:43:49 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2174.outbound.protection.outlook.com [104.47.58.174])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43xuec61da-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 08:43:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y/LYG+Vc3g97RjXTs7npcCoQ6MdFJ/f5S7u1F+d6axnW5YtOx76U60yMErU2RIFAELfMMIiiL4NhPF58vHOMOwDVkHhnzMX4HROWptMnkCLdfej8ohg3Noh2MdOPly/DJEyy0t1gIqfSaQuoHbSSAaiI64zUvD4tImgyB/LqUKcxYq96iAcR4iWACTydnFdYeYSvMcHlMV62C/4MXAaed0A5Xez5RlMUtt3+IEEAqCQyh06kACZp/NaiGz6XF4z6m2w25mxBqT18dE5mzl+TgxivHObqdvk3SQ32V7B5WUgey9gNK1I6xecrmMdQhH7BfTfYCZz3PkaSn6BD/NzCCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CjTryJvcvl80fKK4zh3QdAuX260pfjeaTeTGSqZEO60=;
 b=bqqQdORPVXSo+kvEPuq1Iet+4YButru9vBxQev3L/ksVf3QgnVgKNHjl1dfHUlVpvXMUsVlJF8tCYlNXWxJ17FlQQlSg+4N8OtVIxrw70tep//Pipl0iMVhlmgT12HiAVY0dSgqL73RDGjtGBgx8+ukMJ4rQn38cIFtuneKEMg1+6Su94x3D0puiKsf2ovtazWk8D8tf7EEFAIsbdvifT6O5Dv9d4aHme4yrjOWgDGEOdlR2WN3eqUtesYQ3lTY3obmEtdliNYacyPGWUvKpDrheIhmsBq/18E/1mnZGSFgGSPRQZ4OB7D2dg7BeNBsl/v0feeCBizT+tsHoFqvH7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by SJ0PR10MB5835.namprd10.prod.outlook.com (2603:10b6:a03:3ef::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 08:43:46 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 08:43:46 +0000
Message-ID: <8e0c6ad7-a043-4923-8a53-121f13660608@oracle.com>
Date: Fri, 10 Jan 2025 08:43:41 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/11] block: fix docs for freezing of queue
 limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250110054726.1499538-1-hch@lst.de>
 <20250110054726.1499538-2-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250110054726.1499538-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LNXP265CA0038.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::26) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|SJ0PR10MB5835:EE_
X-MS-Office365-Filtering-Correlation-Id: a2999b64-82cd-4bed-8112-08dd3152e53b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDl4emE5Sk9rZG9sc1dOS09UaWtsNkZuTit5K1dKQVhtdjJLVVNpV05QK0V5?=
 =?utf-8?B?TFkwQWZPc0twOFUxMG5qeXN5QUNYQm5rZFhITFEva3hiWWpocGNwSTJpSGdn?=
 =?utf-8?B?RXBaSVZPV3M3cjZoYXBxRm5BSzZOY3lpcW9MdmlDZ2VQbXYxcHhrcjRMdU1r?=
 =?utf-8?B?LzMyNGZFZTlNY3hYY3lhd0dUYTBjci8vdXIybE5ac29hS1dveUtiby9uNGFz?=
 =?utf-8?B?eHY1V3l2bGJnWGtHTVJvMDcyU1hMb0FjYUxYYUh2NWdiRmw5VFA4WmZieEpa?=
 =?utf-8?B?Zzc1MG5ZSllSL0VpbGliUnZybGRPUG1yeGt1N2lVN0N2VDlqcy9YWVYyVjVT?=
 =?utf-8?B?bkVoMnROZC93c3hweDZ1VFhTb2FGSkxTc0x0TTdRTFJ3RGlGcTk0UnFQcDA5?=
 =?utf-8?B?bjhnY3cyQ3RVbCtwQmJ4ZkNzWWd0Yk5wQjZtMWUzZlhqZk8za3FGT2VlN3JQ?=
 =?utf-8?B?UXV6RjQyRlRSSUFRd2RaQU5CL1lQYWFkRzhOSWpxZjdiZGF6Y0FhRjF5N1Jv?=
 =?utf-8?B?blIwR3NIejJxUVVFR21DdTY5SURMSFJlVUNJUWZhS1VnS21PMHRnRmNkbTQz?=
 =?utf-8?B?WngvUVA2aDZSOUVoMUFmL2s5cHo1b3JKWVBWYS91WmNpcHRHb0tOL0pwaHJm?=
 =?utf-8?B?ejdUenIxVVdzV004TWlLQ29wdFFLa2NVWElOZDdPMVhBNS9rTFFiOFJNVGtY?=
 =?utf-8?B?NTIvL1pIV0x4dzdLTmcvb2xYdEduL2xjVTdyWU1LdjQ4bS9QM2NVMks4eEJ3?=
 =?utf-8?B?REFJTW1XQ0FORTZKRkc5ZEtNUGRHSXIrclc3NXExZzAyRE5XUTlYaHFpVk9D?=
 =?utf-8?B?enVNNWYvaHpqT3RZQW1FVUJpQjdMbVNtdDkwb2M4RXhqNjBoeEVLcENvSWtr?=
 =?utf-8?B?YzRGWVBhVXdycmxVSW9qaWJnSDR2ZTA2S0oyUmZzTUpTbWVHYXN1NkU4NGo3?=
 =?utf-8?B?WFl6TWZ6cXFjOGVsM3V6T3ZNaDdYNmVvR1VrNnp2T2JZeEpmRmwxMko1MnZC?=
 =?utf-8?B?SkFwMVZDdEoxb0xkSmowcjk5b1czalk2RFR0WVowTTNXLzl0TG13TWFDZWlD?=
 =?utf-8?B?ejVrWTNQMCt6OXJzWGxtUW1BZkFKcjVQUmdNSEM2dkVlbC9jNncvZDcrWjBE?=
 =?utf-8?B?QmhXWTF3dSs0cWNoRzRUTFpURnNBYUIrVmJBSmVRNlhxSUVLbjl4VjdBbDM0?=
 =?utf-8?B?cmM0dzgzMnlza1lYQ21QcThxbnp3Q0pNbzBYWWJXM0RMM0FkWTFZZko3enZS?=
 =?utf-8?B?R2ZLZWtKczdzZkJ0alNIQTY3Qmc0TGRNVVdWRGh5enJlYTcxWEhRRmc2T1RT?=
 =?utf-8?B?UWo2MWhwV3Q1V0UrQ1VTdFN4VHY2SXdiK1A1N0ZYOWNWMHFlSFdtNzV3NDQ4?=
 =?utf-8?B?U0ZYTGdHWC82VzlXVjMxUjVucmhzTkZCUnVQeExDT1dRb0FBM08yZnlINFAy?=
 =?utf-8?B?dVhpVlFGL2xIRDNHK1hFL1pPbUdaUkhsTlJ2SElTUXZWamRBbzY4a1hDdjVl?=
 =?utf-8?B?K1ZyU09TazNiVWNSSGJxMXZ6Y3NqZ2pkdWtCK1lCc2VvK01wcU12Y1J4TU1O?=
 =?utf-8?B?ekJQMGpDM1BOamt3RHEwM0g4RFJURFBtOXZFNGRzb1crYlJQaGVDekNMdDFl?=
 =?utf-8?B?dnZMdWM3YmpmcnlUa1hBVllhRElhMk85RnBvSVQxMTVvemxNREx2U05WWTZC?=
 =?utf-8?B?eXNpcVJsWnA4eUgvRzlxYTF1VmlBLzJzT2FzSWNZZWpZaFNUUWQyWmdFUlFN?=
 =?utf-8?B?cTgzR1QyYkovZytxRnFmRWxVMnk4TGpHbVV3cGZzc2RocHhXcHEvMnd1Tjkw?=
 =?utf-8?B?UjVOeVdLaGUvcXJzSXNRREt2TXo1V3dzdEoycWFkcmFKZDIzUk9wcUpqV09v?=
 =?utf-8?Q?d6ZLuFG2NRq7m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUdSS2V0L29kazRmMHpQRllWT3NVaml3QUNkeXNINlI2bG14amxNT3M1TXBU?=
 =?utf-8?B?MktwVzIyNE8zT2xSa1lOZUNaOWl6WVZGekRxeEVWci82eCtjZVpWejhVUVNF?=
 =?utf-8?B?SlM4YkdSaGI1Qm5LVlZkT3BYamZlREhPcXFMV3BZOGVjUTFzSEpyRFB0cUFQ?=
 =?utf-8?B?Z09tWklrQjVaTXFqZXlWdE1iT3h6ZHpCYkZCV1VDQkdBbXB3VSsrMkp6QTB0?=
 =?utf-8?B?RWZLUlRhVjZKUjRHcFUvMXc2WE0xRGNJRzRLTU05bjVoTGcxOXl2YkduZjA5?=
 =?utf-8?B?dDJNVlFyM3RaRzhNb2FIVkFzREIrQ21iSjFteHErNWpCK3pDOVcvQkRoTktQ?=
 =?utf-8?B?b3p4U1lMdEFsUGRmYmdtTWVrN1VNNkFFVTNrLzFyM1JtUE9wVjB4M2lNemFM?=
 =?utf-8?B?M2tERGtEZHVwemM2RExhZzhjZ3JBRUl6MVRVZEdvcWRpK1F2Y2hRSTh0RHBP?=
 =?utf-8?B?QjBZUVI5dDgyOXkzWFdnTEFSWVpzVklMUWdVUzhReENXb3MxcFlDR2huYWw1?=
 =?utf-8?B?MmdGTkpQR1hKTWVXM0JHemtRS2FDY3d4K2N6TGxQTzRyNkd2Rlp1YjJhNlB0?=
 =?utf-8?B?K255K29rSmxZQnZRMFBYV3ZEUkM5MWpBSGwzcU9sUlVaMGZUVENyZzUybkto?=
 =?utf-8?B?ZnhWcGMxZlBuSGVLVGRRaVlLUHVhVGM5dTlmbk10SFJqSzdoVDlqU3l4N0E1?=
 =?utf-8?B?S0pJOTRYWk51ME05dXF1TnJYNGRIWVgwdVE3S0VlSCtERGNXd2RzVUM0YW0w?=
 =?utf-8?B?Z0V3SEFmMWx6aUt1QkM4cHVqdlVhVUJvS3BrVm8zbUZyYW44YVNDN3lZR29X?=
 =?utf-8?B?YkFmeWJHY01aWlNyc3VrQkRSOXJRMlFRL2oyKzhxTXJJQ2E4OXpZOHZ5Q3dS?=
 =?utf-8?B?WmNZZEdidkFmNjIyWFpUMTdnOFVtK2FPbTE3V0cvcDJ6MS9tSUtza0loNk1I?=
 =?utf-8?B?NU9oVDdCdC9NYVdrYXI4Z2xVeDRnaHBPbkZycG95NVBwVFNLZTdEeXduNmo5?=
 =?utf-8?B?QXkrNS9OMHZuUWNTR1RsbFAzVVR1L2l5THp3dUY0Vlk5M2RwdFdYK2ZacWNX?=
 =?utf-8?B?MlhSZ3BqUTNVbUJHNjhZZ2xQYWZ6MTlVMEN1K3VyNG1KRTRiUFJmM3Rmck5K?=
 =?utf-8?B?cVJKTTA5RFZ1bllMY2FFK0JMVXdXSktXNWl5RGlOY1RpOFZkSEoyRXVDRXov?=
 =?utf-8?B?bUkzSG5PTkZ1dFUwbVc2dVFoMVozaWp3aktIaFh6dUV1b2t0NmcxUmFkK2ZW?=
 =?utf-8?B?SmpvNlR1L1hVc1BuVjBYTm5EeEVaOXR2SEdiU2lLd3pHdHBUWWJraDZsYVJk?=
 =?utf-8?B?eXhqdi9zT1dxbmE0blZDWE5xV2t5eUZNTXNGQitPeGRHN04vUm5jUGVTUlZQ?=
 =?utf-8?B?QzEzbHRVSitQTGFZMGxSaUJmNStsVU9OdXhyeVdoNExaWjdwVXNOcUxhM0RT?=
 =?utf-8?B?ZHlJNWdkNktNZ1J2ZnVmNHhZQ2ZMeFZ0VUxRSkZsRmJ1d3cvaERSamNIRVd2?=
 =?utf-8?B?UE9LZFEwUHFZV0t6bHJHR0lxSko0MzlGMFNhY3dCbzRPd2xhYlZqdWRGQkZx?=
 =?utf-8?B?bUVNTzV3R3hWMUFHTkUyNFRtYzloSGxxWjNtR0RHNXhaSlpWbEZuYU9qVU1i?=
 =?utf-8?B?d3lqR2Q4T05XUkpHd3N2dGlxRDFLWDk3MjBwSFlsUUdWcFYweFF5SmN2TXNF?=
 =?utf-8?B?Tit4VzNMRHQ5K1ZESzhCOWRSczdXSUdUejNWLzJRL2FjRVo5TDIwdnFTSFJY?=
 =?utf-8?B?OXFNUTRoSUNCREZIcjRIRVczNWlJQ0pyNkFZRDloWGRYQUQvR2hER2hiM1dK?=
 =?utf-8?B?UVVtS1J1aTA4MlNmd2wyaHp5NExlRnBGTytDbFBQc2xFVFZSZkRuQ2V2M0di?=
 =?utf-8?B?UW1mVWEwK09KN2hlV05McHQzRzNxRHZsem9FVE1DWHdDeHlGZE1zNmQ0em5T?=
 =?utf-8?B?dDhaQURWUW9yZjZVOGtpdzVHTHhWZHYzUmI4OUV2Nllpc2tTVU9haXVKYmdh?=
 =?utf-8?B?WExpR1lKN0xJbGxXblBFeFdrK2IxSE5tSWRFc0FRSXJzQ3RWdDVWN1JDelUz?=
 =?utf-8?B?SVRRSkx4RXU2WklnQU9jUjBkelJ5ZGdaNCszbjArZTBOT3M2Smd5ZTFScDNO?=
 =?utf-8?B?SGI1Zy9RaWUzRXJYc21zcWRyODNWd240NFJJYUVYeFEyVk5XOXg3Rnp2M05U?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: vGYJvVBHhjqJvmgaLrBm6AjDCoyVz6AJHAWIHFpx/pYGDHc0VZvoaM/Bf6tVecIlQBEb5HAj8k9Ziv3TfBg9DzNVK+4EQ9GdPD+m8TVTO6DHT9YN0XL74mDOTmDp/QjZpX5X7aldURH2ASwT9emQcSYwnEkVkktCpiUrB8Ejzqsme1hoGFWqPNjjYmgEMv5QbFG1F7pW6qe9Kpu+XaXwMVhYctcMp6Ob+gB5WoBKNbQTTx0hYXRFZM3hcwGTR4mlLz31moWlF1ZE35UAa6tUiAbWbpMvk0FFbQyMm1Ac3qWw8H60AC/ciBgIg4bA6hZm1Hyj/X/AyO6Ah9U5gJ/oFFfjrTmiDpUPc3v8J/COCNkV2fzi6Ks+phSd6t6nXkcyaRP7/yj3L1meQd7FoWR1rtNkFrLNdmCaEbd7s76kWk8W3cmaCHZyVYmUkSERiSkUavTmgcKj6QRb/+VkFZZXMBY1q+3XM4kzEGZJauYi6GqeUhCQUf9Fa4svc+qafj/oG/jMBu6audtqvUhZyCrQG0Wp/9lMDJoqNQsFAocVC7vxmidQag8H0wp7667lJzMksGl62SQQad/iP02NS6pMDrUelmU+P7mXioyH/5vCtGo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2999b64-82cd-4bed-8112-08dd3152e53b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 08:43:46.2128
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qqt2Gu6R+93i82o1ed+xXGT5DG/BGX3rj416R8EgygENM89T9sCgnnEjrMe6yQnV7bTySpdL6clHdO/YTGo75A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5835
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_03,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501100072
X-Proofpoint-ORIG-GUID: uEQGqaYhKaLcfklxC6I9GCCdcmGieil_
X-Proofpoint-GUID: uEQGqaYhKaLcfklxC6I9GCCdcmGieil_
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=OIpUGMHC;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="oqSJL2P/";       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 10/01/2025 05:47, Christoph Hellwig wrote:
> queue_limits_commit_update is the function that needs to operate on a
> frozen queue, not queue_limits_start_update.  Update the kerneldoc
> comments to reflect that.
> 
> Signed-off-by: Christoph Hellwig<hch@lst.de>
> Reviewed-by: Ming Lei<ming.lei@redhat.com>
> Reviewed-by: Damien Le Moal<dlemoal@kernel.org>
> Reviewed-by: Martin K. Petersen<martin.petersen@oracle.com>
> Reviewed-by: Nilay Shroff<nilay@linux.ibm.com>
> Reviewed-by: Johannes Thumshirn<johannes.thumshirn@wdc.com>

Reviewed-by: John Garry <john.g.garry@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8e0c6ad7-a043-4923-8a53-121f13660608%40oracle.com.
