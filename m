Return-Path: <usb-storage+bncBCD73EGVUMBRBT4U765QMGQEZDSSYJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 188CFA07682
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 14:08:33 +0100 (CET)
Received: by mail-io1-xd45.google.com with SMTP id ca18e2360f4ac-844e3943987sf68041539f.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 05:08:33 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736428111; cv=pass;
        d=google.com; s=arc-20240605;
        b=iB0eKLDYhcu45IH/tuPpfkz+K53I3L6zV8LMwVBt11JpCFij0sHqYgiMgo6anI6LpJ
         2ylMHF/WEcVhDhCsM1yfF5ODMlyg6jRC7kDhg3Km4Bzkcdz0FVTnGVyle1vBw+ljousF
         VzIxLgDk1Xncr9CtmtqJS63qOzy1AYS3lNf0EHMTlyJaO1Afozk8MdLpJgdWcauWE8fh
         D34CJP8M0QY5kjphHiKFRGFp+dHLuTvQrP0nrMGYja8eh08UuAGCcvZdqywlEezHM4+Z
         VihlpK7XIgRuUz3bL4MHFe7AnXWmjmPBPyPyWhFiBtbCtW1I2Oq8iPE6PCO76N0M2T0/
         1SvQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=cl3ik9mCY+BP1f2BvmV5AqTMG1Wu9jbyOh0/yxp4wc4=;
        fh=yMHqoUKTQp06iqWlJrdYmSRMTpyUDjURl3MY6zXTJM4=;
        b=Gny5H5zWphiBAthdsyIoIZswA/XJXWfZehlSGyr2F/VpgvG8FvmxqsVMe8EJGKIX2C
         d7fCA/IY9MJGocwavpPYIV+nW1RPuvi1D7k2vCTJn5hvDXfpCViA/wDJhc1sZpd4zNhE
         p+AD9YER/uRh8FeT6F4vW85wwzRQW9Kc6zKVDOA7nm7H6kURmqBRWIzPSDmUd1rAAv9A
         ++xHBY0LaPUn3BlrK08UcECEoHQ/cCL56jZx9p/NaMubWQ9epVi8FBWvaj+4U+uF9oFq
         Tq7CR1veY/B9j8G/0Ug4VoXQnnZEJilH1ymNi6ASgRWFe3AzB4CRhhhZas0a1i/n3LD+
         nWXA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=hSJ0GIXe;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=fs1uIpf9;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736428111; x=1737032911; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cl3ik9mCY+BP1f2BvmV5AqTMG1Wu9jbyOh0/yxp4wc4=;
        b=ZYJdwTMbC89cuA+31ppp5m/pnziIgF3mXZSwjCaxScXTvpR5xYIfj3tlEDb5h8+2HP
         CfVwmOW6s+2bLb0xz7YY8hIa1Bz5XCUQxR7M10hFRsPgRWg0ABGW7SBLbPcAu9amMCH9
         Ueu1gN6Y/krb/rToqOYLV4+2EDNut8pQpmztA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736428111; x=1737032911;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cl3ik9mCY+BP1f2BvmV5AqTMG1Wu9jbyOh0/yxp4wc4=;
        b=mAlcyQJ2NNCR5cfzKLJXNVUUkB2vEURqHuDOHJ65OUk3v2KTTdPeBN7h6lxem5hjZl
         UmSnz5IRxGepi7oD85ABkOnnbZt258NoM9vfzaRr32NX/VYAeNVKbv+Whka5qeub96Gw
         bIaEW9FUwVen1c9/LxG7Ol/BSPEy2e2IOyQ+GCHE/wiSNfcMKsIJ058BiMPo/hatu13E
         ToPa2vnaxYkDZYMxvfwpSbC8huZXtQ+X0V8Rcksf5ip4quj0MEknuJaXihEPh19DX9Ug
         9NddU5XIlee9TyOEldUuioG+7wkkZD6IDxj31CYpC6VikYw2zI+ZRejuTq0zBHZRfm4k
         L1pg==
X-Forwarded-Encrypted: i=3; AJvYcCUtzX4g1yOnGsb0dINUy/nMo2hwnIGgpERRATMdc6vU90jwUk3qrWl307Ko1rlXc30YfPHqpA==@lfdr.de
X-Gm-Message-State: AOJu0Yy9Wq7+2Guqh3QFqKz84blt5J58H2nuaqNMzULMQ119zXP3oO42
	aRKPDHEqiN8p6LqhEB3jkUXsANgVPeuIpHBby7w6c8UuFXgCeqY/BX0jbGRLSnU=
X-Google-Smtp-Source: AGHT+IGNtJ0ECmggL1sDX6xdlmPK9IutOT/ge9D8ylnoyNSzz99nIoS3Gz4BUmsUpSrpDTTqHZh2iQ==
X-Received: by 2002:a05:6e02:1fcb:b0:3ab:a274:d68 with SMTP id e9e14a558f8ab-3ce3a9b59b3mr51541395ab.8.1736428111353;
        Thu, 09 Jan 2025 05:08:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:6c0d:0:b0:3c9:9959:576b with SMTP id e9e14a558f8ab-3ce475fbd76ls4025185ab.2.-pod-prod-09-us;
 Thu, 09 Jan 2025 05:08:30 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUa+QSbjD6YrDOCd/eLx4CimAqdGsWnCRsKIulPLjpSAyhqWQi5mnZs684PVySWr1Kql5e09NktYB/VzA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:1988:b0:3cd:da4e:2a90 with SMTP id e9e14a558f8ab-3ce3a9c7d64mr41219475ab.11.1736428110265;
        Thu, 09 Jan 2025 05:08:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736428110; cv=pass;
        d=google.com; s=arc-20240605;
        b=as5+85IM1wLKwkBmXSO61YyzdiW8TkjUy76qOC5f2SXuWUWlfM++syFlWgSlGZ9bxK
         UIxVRKp9Uyz95FfFkmPGINhcVWwLzLUsq/V1koFdgC3YN1fAEBRsV8YgLjZb1gRKvO2+
         frPcVp7AP6puesDAfgP1yfFVceerqegXi0ZfWW9aiSLwMmOfB8uN0FwXotPPH6F7n4N0
         2OIli22skpToOv4ZQKX5c7ZNTgQzMLmWnth812U12RP/HaRqguh/5SzU9qWsiOdhP3QK
         Bo8072G+bATNKmcWvZnppMrmgLRbTrCHJEJY3jczXGHJ1QIju+zvqO7Gsr3/DNg5vjQQ
         In4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=JcWwNiwHyVKwyGuv2yZ9C2OvtyY3FHBz8xogp/iFqRw=;
        fh=T4calgeFzCD3HvNQU8hns2z6Dvhn2ksRLNh4nKFGWEw=;
        b=UEJbXOnNPG9NHjKqM/Q5nuis9uhlItg7eclTZ0XVjWe6K1MFNOmOOVQaDFT+qvuEZr
         zmBoSCWZL2o5ZEyHtX8fGWwbl+CS+pi/4+t0O2X8dLc6vcnG21DgPuLVfPV0YS9lyLFM
         XxOL+yol0pV1zS5DvH48A6KKI56Shfq6AY8k+JnE3nXhbt0AHtT1UhOKKlR79oe7r8fH
         xsVjidSlbH25K9AzeYcs285e/+CmzpgLD0s3gnm0EWVJgtp1sK6wMdYhepFiOznRT+6W
         NKIjb0R7um0CGbvaC2MITWYT4upSHbQiejSbRR7uovv6PrrVgrK5wty8zGS4XQRGh2+O
         boCg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=hSJ0GIXe;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=fs1uIpf9;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4ea1b6132f3si641422173.52.2025.01.09.05.08.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 05:08:30 -0800 (PST)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509Cfn7T025918;
	Thu, 9 Jan 2025 13:08:23 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 442b8ugc6v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 13:08:23 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 509C3ZD0011166;
	Thu, 9 Jan 2025 13:08:21 GMT
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2041.outbound.protection.outlook.com [104.47.73.41])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 43xueaw6s2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 13:08:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dPQny98b+6TTto8Gas3t7cfnUmrxp7oItifmOIXW11h0eaaiTW2xHcji0bB0U5LxnMLKWoE80v70N07rC7d9hlBfhhuP793cnTJqZOkAB+SkQF/bNmo9J/1D1PMhFLVP3Q2NSQG6wRSDBLyW/X9Jh2rkxjR6qJwcv6LKAy82dLkp27BmVVHk/obTzbXuht65GZ7C05Q1/crC3Vmzza1I8ldXWb+OC57lcYAoGfWIakawpwMELggOrOqTjwUPuUbxGrJDu6/mwMjLYdmj+/LIw+FFQ2O/4akdUrzYH3qf3bugsvzOMkrom+6YBGMJbmwbwALA44b4wHDz9l5/zhRpGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JcWwNiwHyVKwyGuv2yZ9C2OvtyY3FHBz8xogp/iFqRw=;
 b=i5OMUNFizlVbDYLzrO9gYpIYFzwg/sBLBD6IAuxNpL1C+UfxzJbn0mVUPqxr7c4bCPtTBSZWT8wqHrWzj9ff6eNHLEzulWJXBSxlv1+//L7CLqwgJWyJl9dP6798Gq/83RUvABlcNOaPXhvq265501/YUKa+bhwsjMUwwM7eA2PLTOX3Vy0O/yC50Lo/e/YlM1d5AZv5ag6v+ng/VJWHV0MzIdZW8OxzRaCiD5cAgaEj4tggU0LdHgoefe+1acGNgqD9kxAlNxg7Ps9j0GmuBPDqeVlXCuauvC3g1Et/6PmWFcvpUmYL8+OEWEYKcBUOKyaSMur59MMj9ZedJDHcrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by CH2PR10MB4246.namprd10.prod.outlook.com (2603:10b6:610:a5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Thu, 9 Jan
 2025 13:07:52 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 13:07:52 +0000
Message-ID: <8cfe7690-0101-42e7-ba97-6c6b717c4706@oracle.com>
Date: Thu, 9 Jan 2025 13:07:47 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 06/11] block: fix queue freeze vs limits
 lock order in sysfs store methods
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250109055810.1402918-1-hch@lst.de>
 <20250109055810.1402918-7-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250109055810.1402918-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: AM0PR01CA0180.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::49) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|CH2PR10MB4246:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ac6104b-6b09-4d86-1568-08dd30ae9fe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R2tRMHR6YnR5akJWSVo0cHorMEFZU1VxQkt5ZC80K3NzcmZJTEJMMGVyTVpy?=
 =?utf-8?B?STZsSTdJaXhzQzZVbFBySG5FT2Z4V0FZK2pJYnRjTU9pOThuaTg2U1dqaDVj?=
 =?utf-8?B?em9lb1NoNitWdklacjlDa2hnMGhSOUFEaEFQK0RWNDFVK003U3hUMXp6N2pm?=
 =?utf-8?B?dEVpRDdZVG5zWG83Tkx4L1pNVUpLSUxpbnNmeThZa1c4cjJxc29vbjcvdnVQ?=
 =?utf-8?B?eGpkRmRaT1ZsOUF1RGFRYkVObHVMak1JQVo2NWJsLzRLN1BkeGdDSmFHYmNj?=
 =?utf-8?B?RjlQK0cyUFpFbWNPMjcrK1B6eTkweXRYRE5PTDFLZnNpL0hQblpTSVJ0Nmxi?=
 =?utf-8?B?TXgwbjF2QlZTY2pHaFJtTFp3aVRMbU1pdFZEUWY3V2YrTTIrMjNzcWVmOEpQ?=
 =?utf-8?B?Q041QW1IdDMyU1QxVG9tTXMwdFp5RDdyUlJLOUtkWVJPanROM0llSVZUSWdm?=
 =?utf-8?B?d1RPQnBKSnlVZGU0MTNzaXkraEd5SFBFTlM1ZU9iOGhSZ0RwZG9KT3RoTm9h?=
 =?utf-8?B?MXRLaVpzT01rYlpBWWlnTTRONWFtNUp6eHFQYmtCdmlFcXh2akEzbDJ0RjAr?=
 =?utf-8?B?bW1iejRUSTBxWU5IamJPRkk0SytsVlEzSGtNZVdFMTlOQmZCM0U5eENrb1Ns?=
 =?utf-8?B?TkNHUlJLZTZnTm5DNUVyMm5HNkw5MWVneVdFS3RhTUdOY3Y1MWhDd0l1MlN0?=
 =?utf-8?B?MHdzNWhHbDdNbXNzSkZvN1JxWi9VbDJCd2x4Wjd0WmtwaXNHajZwU3QwMmdn?=
 =?utf-8?B?UDRiQVk5U0tmOHRpeld3NTFWc3ZqcE9MREhEUjV2bzEwb2xpbzhEdGkwTnRo?=
 =?utf-8?B?MExQc1B5SG9Va1N1MkgwWE92TFhZY3BWUjVOeGdwQVVSajlSdTBYN1NyMFpz?=
 =?utf-8?B?RnZMZENkVldKazlpVC81S3p3cXYxbGw1YlZaTVJDZEtYZktUNnBzTDNjUklJ?=
 =?utf-8?B?Q3RGVTQ3cEU3VmE1Qmw0TE5VbFYrdDFiVDJ5NUo1MmY3Q20xbU5na2wxWDdh?=
 =?utf-8?B?SVIrdEx0ZWxmb1RIRHdIYncwc2FEQzBBS2Mzeld1TG9Id05zSVJIeFNCRUc5?=
 =?utf-8?B?dEtxTytia1UwOGdFNm81cTZMQmRlaFpuT0N1dk9sdlVhUndDUkY5VFIzcTZ3?=
 =?utf-8?B?YmtiQUxoMzUrK2p3VUFxUDZsNkZJMzYraGZ1RVVCZ2Z6RWdRYVBrbUNDOTd4?=
 =?utf-8?B?VTVUci84L1BXSUtmaHFOdTJGNUsyNlNmWUM4a3RBaEszOUpyUWRUMm9ScGps?=
 =?utf-8?B?aTBZK2VERmhHS3g3QUpiazFYSVlsbWpKekllYlo5d0VJVThzNk1VRVN3YWtR?=
 =?utf-8?B?dGsyMmkybFMzeWZBcks5bDFKYlFMK3ZrVDI1NkNITVVXT201VjJIS1ZtM2RQ?=
 =?utf-8?B?VzhVTThJeG93emlCUnhhb25tV3lqb0p5aHF4M2JkbC9wbjRIZTJNckRGcnls?=
 =?utf-8?B?ZllTd1l4anN6NHVUQmxFSzkvS2xsWGVyV0lSWVNSeW5iTGhvQXJLTEVUMzhR?=
 =?utf-8?B?SE1hNFZUcGxlcnUvNXJHMWhtMDE1MG9NY0Z6emFNSi9aeVBROStXVWJwNDkv?=
 =?utf-8?B?ck5oQU9sLzFVVmc2NlVFbW4ySWl5aGI4d0FUM2VwR3FZa3VwSjJWbjJZZjd0?=
 =?utf-8?B?bFBwbWxJUHJRWjZFNEwreVAxSkw3ZGhMMmwvelprS1YrL0JiSXhiVzVLVkRT?=
 =?utf-8?B?MWYwMUVab1NpRHdXMm1TSFJpelpkVFRVQk5GTXVQZzNwNVo5TVVXOVllUE1T?=
 =?utf-8?B?NUxKSUtUdG91bVo3MmhSY1o0SGQxNTFDaUVCNzBMT01DY3c0ZVpNUmMyQU53?=
 =?utf-8?B?bGtkQUsrVDFvc1BUZk1pUmd6aXArMWl6QWJtUUZQTTE4cFJGNWM3a2tBR2g1?=
 =?utf-8?Q?GzspzeZ5b2eS0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODd5OW42bHkrNVBSNGFVWEVCUm5wd3JsU1ViR1BJcUJKNXhNYWNJd1ZVM3NI?=
 =?utf-8?B?SU1GWDRTamI4ZTE4eFpuaVNsVldZZzcySjBLNkcxZm95MGtXVGViajhtdkhp?=
 =?utf-8?B?TTVEdS85dFZmRytXeXQwMkJvalVOOXNPcG1hbW9HbkxxdXNYUnQxc0VmQUdS?=
 =?utf-8?B?NlhhM1F1aEJGQXdtQmFFUk0waUduTldLZkFWWitPcmxHd2o4bC9tWkYyUVN0?=
 =?utf-8?B?bXB1a25BUEM4amFTRmlvZ2JCb0RNa1ViK2pVdXl1K0o5ejJucVlpVkhLM0V3?=
 =?utf-8?B?MElqSUh5cE1Wcnd5VnpaQkFXa0phT2Z3cDZSY09UZlo4RTQ2WnBDb0dCaU9L?=
 =?utf-8?B?Y3JIM3hyMUhuVG1EWjZWTnliV0ZsTkwwT2c2Yk1OM3BMQjNlclBvWUNpbEtI?=
 =?utf-8?B?dkpoazFTRk9WWjdkZVdWM1hsYTkyUmYrM1Y0VnZEUlNtMStBK0hZYllLbStj?=
 =?utf-8?B?MDZpYWhwaVc3b2dMVlNjbnhjb1FVMU5iNUdQTWNPbXcvWGYyQUZwb0s0WmNp?=
 =?utf-8?B?WGlrREdJS3cvUXhVREQ0M2ZRUFcwVkR0T0RCczNtamtnM3daQXczcEk3SWZw?=
 =?utf-8?B?MGo0VkRmcUg3NVhBUHJYNWxsS0dXR0RwQmUzSzFuSDdUNFltcWwzd2YrcUZK?=
 =?utf-8?B?Tk00a1lpTWY2VEMzOThWaFNxeGZGZlNGNWFVL2lpR0pJZVFueFVzT0RJQjUr?=
 =?utf-8?B?MU92eHhLR2poWnhVUTg4dlJWaEUyY2NQYy80Zy84MzRTOWVCSXh0YnRlOFlu?=
 =?utf-8?B?NmdybWVZQktIK1JoemdqRlFGT3B1OHlUSm9sVVRCN1R4Q2JZcnVWenlxV2Jr?=
 =?utf-8?B?ZWhicmpoNnAyRUk5TG5NeHBGSzVwaGV2WlJXeVdJeTJqZ20vNG8ydTVibzdL?=
 =?utf-8?B?QUlEd0ErQmgvdE54SnJ1c2diSXQ0RUFQRmN2S1J5VkhaTFkzcG9LUkUwUUxZ?=
 =?utf-8?B?eURycS9HSlB1NjYvQzRIek5TOEh6VGZuSXBZRW9aR09MSHhQcVU3S1krSEh0?=
 =?utf-8?B?YU50NEh1QkQ3Rmd1RXJIVWtvclBXM3Y4Zi9aT2dPd0FCVTJjMlNkQ2RqZ1Bi?=
 =?utf-8?B?VCtSUHJZSm5ubUJVWlVxUlpjSFdhK3JmbVNGUjJtd05URi9yb21TZC9PNVVG?=
 =?utf-8?B?emFSd1puQkRWRm40R05YMmVVK04wbHRKTThjSTZJWmgrM1hCZmthMFkwYmE1?=
 =?utf-8?B?MHJSZVRDMUNWS093djgwS01yMDQ1S3ZBNEM0OFlpVzRIaGw0VHhYcUJXOUov?=
 =?utf-8?B?bTNHRlNjMmFZelZlSTlZVU9WUWFad1RJVkR2eGNkTU12WGZueFIrUXVncXJv?=
 =?utf-8?B?a1FLZGNwTm02UytXc3BHWWszN1RkZmNxRUJPMDJNOVZmZlVybENnTndMR1JB?=
 =?utf-8?B?OVZBZ1ZoMlJ1dGFIZUVuRUw4dmJnYlVqekZKK0g4dVZnRTBOTS9tVmRJZ0Nt?=
 =?utf-8?B?WGNNVzZ3SnNOQkdKN3ZWdVRsUWhrMHI0dkIwK3M3cVJBNzNqU1dxc3ZQaUlG?=
 =?utf-8?B?Tm9vV2ZHeUtGWmwyZ3A1WU5VdStLSDh3NjQ2dXVZYitLUWZZZE1ndlZUVkY2?=
 =?utf-8?B?NXFINU5KQzlnb1dBR2RSODVPeFR6R2ZQUXVobHZuY25oM3kvYmcxeVJtN1FE?=
 =?utf-8?B?eWpxSnBnZm1DWnBNZGdVeWdEWXVIQzMzUC9TRy9kdHA2SmN0aUxpVVRVRWJG?=
 =?utf-8?B?ME9HQVpNWVMxd01oSGZBaXFXQlJqRnMvR28zNStpSHloTnJEbFBnd2QwdkhG?=
 =?utf-8?B?dTRUckU4NjY4Z3F4dHIxR3lWSmRZVmpoNVNMeFZMcGhHUE5nSXgxQ2ZEdWtD?=
 =?utf-8?B?a2kyTVZZV3hEdndmN3RORHNMUkRRSE1DbFZKVlR1cXN1Q1lTdWpoU2pjdkEw?=
 =?utf-8?B?VURnb1BETStmQjlXRituZ1ovenlucWdNRFAxYldZWGpLUTVYNEZqL1UvdEN3?=
 =?utf-8?B?OFB5RlNqYkgrSWExa213M2VNYXJMemsrWFFTSzVNdk1WRzRSUk9kUlN6QXNX?=
 =?utf-8?B?Zm0xMW9HeXIxM1Q3Q3U5WkYvZ0lLYmRBamZSWXZKdzVLcXBUaHhPNFRSRmpx?=
 =?utf-8?B?S2tNanVCNzBNZ3lkYVdUWmpERHJ6alpCL2pNbXBhZ2syeE5GbmJpL2FXSVNL?=
 =?utf-8?B?QSs4UC9pZDQvSXhiK3ZtYkhsak1Hb0hzMnhkRzR6a2U5b3lOamxTb0VKRU9B?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: XS+3Gfd3r7JK6uf3vuXKpIhuwtY/f9zkUtdPEOoYAjJLossxZC9If5Oe/IIjcaY9dPIsYe9qmw3PiE8RfhldolbwiYyv2d6jLbqvKLGIArsSfo7ExH1h/huI102eUj4Txn4+S7Ml+iErCUciYud5RBuGzDpWx1qv6lToFad9+iUJYjELdm9MaYhrKqaKvfC2gmsz5dvfRoB0OlWY9qCfosbEN+FNy1+2OV/nzulxJU7klSak2HPzbQbS+B6PKUyjoRZzna33bhDS1oE0ug2iGVRnBps2H3dR6sqaiv7TWVqNkmvgxnFs4yy59zaSjYbxOSCDumRJOAOcoP7KNdAFVIMiloBcOIPadRsJoipVTbe5PRJ1w8IAGtPEMV+nTvtpwRB1GjEVj58yhLnIPPIshF0i4Iz6F5poxJpfRLtTqo8uKWNdi+6nAOvkH+QxoqErthcZo0hP8HE3ghon8NgGVUhgqKIuku00CbL4eafLIL6lfojJyEcpNMQT7Zk/afD8cPncHNR1Ev13RX5+SfZPwa8H5QVCzOoQhvk6vQUo4lEMBWl+Fxu3+J/GtaGia703RbCrZBeDNLZUWqNaUR2BBP8D3XZgKWjgMOmk1HDk0Kw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ac6104b-6b09-4d86-1568-08dd30ae9fe7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 13:07:52.3857
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pBDS0/6fXhQFM7ZJU2agy3jfPLk87TcrFyxu5Nvpfn0MuypLReWNntpCeoUa0Lu0y41ItwDXJ17nXTfLnZ2SQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4246
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 adultscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501090105
X-Proofpoint-ORIG-GUID: vWLadaaA67q0Fnfun_WlW2ZpCjV7PUfy
X-Proofpoint-GUID: vWLadaaA67q0Fnfun_WlW2ZpCjV7PUfy
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=hSJ0GIXe;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=fs1uIpf9;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 09/01/2025 05:57, Christoph Hellwig wrote:
> queue_attr_store() always freezes a device queue before calling the
> attribute store operation. For attributes that control queue limits, the
> store operation will also lock the queue limits with a call to
> queue_limits_start_update(). However, some drivers (e.g. SCSI sd) may
> need to issue commands to a device to obtain limit values from the
> hardware with the queue limits locked. This creates a potential ABBA
> deadlock situation if a user attempts to modify a limit (thus freezing
> the device queue) while the device driver starts a revalidation of the
> device queue limits.
> 
> Avoid such deadlock by not freezing the queue before calling the
> ->store_limit() method in struct queue_sysfs_entry and instead use the
> queue_limits_commit_update_frozen helper to freeze the queue after taking
> the limits lock.
> 
> This also removes taking the sysfs lock for the store_limit method as
> it doesn't protect anything here, but creates even more nesting.
> Hopefully it will go away from the actual sysfs methods entirely soon.

Do you mean that the sysfs_lock could be removed in future? I would have 
thought that queue limits lock could be used for the same thing, but I 
am probably failing to see some lock nesting/ordering issues...

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8cfe7690-0101-42e7-ba97-6c6b717c4706%40oracle.com.
