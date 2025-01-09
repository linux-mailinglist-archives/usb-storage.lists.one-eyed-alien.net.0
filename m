Return-Path: <usb-storage+bncBCD73EGVUMBRBF7I725QMGQEGG5TWKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC5AA074C8
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 12:33:45 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-3a81667a816sf419945ab.2
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 03:33:45 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736422424; cv=pass;
        d=google.com; s=arc-20240605;
        b=KCkIZKDb2aoS7XPJnDn5fMsocHcv9qAWZgh7i6p30Vwv9heElvSIvjAy3AQqyzJiu5
         8h2cGhghVUw+U28pjscB7qO/ZIVTCWI1p+LvjKcezrTVJZTIz3SSbzyVYY1iOW4Te++s
         t4BWmGM7MDizyTaUEqlOvqfwsTEI6aRO7ZmcqugXVOdmgp11r6P3NGTU5Fb9FDxbMVyE
         WS+y40LCJxqAPSQ73+VZK937uETsId5X1tahqUL9JMQ97ezBnQUY51HHHk2k50gntWfy
         RtMNDrD8SNwRTr3OrNMz0pzIz+Zb2SO0bE78gKuQ2u2+WUhmnmhMzOeFTvllNUngnnQp
         vPoA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=tEqPBOhyxMrVFgbz6yDrMqkG24XDXxY7v/FzJRIg+EE=;
        fh=GaAhn1NiOfQb5q28MYQtSSXFbHTv/niMbMDqNyJPZnI=;
        b=ATamlOBX42lWXN/nTc8opigu5ol4FpUBD1wGEKHK73u7e4UOPzERHFbtnhDEl8ENxL
         mkto0fxFaoM9Ytxt2BmRxpYXtRsvah9YKyHRBSneLe0E+vZrRgGXzxTQC3ySGMyIohF5
         KqId0OiA+OYMh4xqqm7NKqpoI4F/lfmph5U24Wd/fmYzN/BEGUa3y7JFfIRTZ70KUUp8
         9P8csqTiYxtD6uJTfw9okH6v35vZPrwUa8keeLRn5GLQ0PZNAi7OKIHmHz/yQHivayPG
         6FH+0EHTbfm1k2XSym1rnuJLZ0suaOZ+lfVi5A3+jzl/k4jXnWuxobT2YebF6WCXak9e
         ACLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=bxjUHlk7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=fBJ10hgh;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736422424; x=1737027224; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tEqPBOhyxMrVFgbz6yDrMqkG24XDXxY7v/FzJRIg+EE=;
        b=A4JHVKjfpkvZYnZYWYWwaTxDdaPHTI+CG+mucyfSIjzJOW8SZy94ZwvEbcfvABsR/y
         g4BO4gOfvrE0w+pNJLuMBVG+nm6ILyoqpJ24NIoRJ/5CWZ5Ip15lTZEBHoWbx2r4A9gY
         yflFvets/6GgWnZumJfQUPzJijKFCTJFXs/SQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736422424; x=1737027224;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tEqPBOhyxMrVFgbz6yDrMqkG24XDXxY7v/FzJRIg+EE=;
        b=SAXIC3YnDkW0F7E7paorYHVygeUw4gNB9P9v88B7Mr+2GPDjWT1NLS2NveWLUq4vs0
         Fod1/+vALuh2Xr3IcsqIatB7Mre2+jvP0J8i6Zzlk3BF3Ghd/D8ENwFm0qjYhyyAnUHa
         yWZfSWFBEHEMCMNYVYYpr5VkQqIOPSn4/jXNffDf25aSJdOd+ViISwliOeK+euYfvMk3
         HSXhjPfGybrg5uNgu+BaH2ctFR8FPHjiM5h1LC/b09ns1pAkOeFkbJc1TGEDMibGdzcd
         sld9SivGqPdR4YY+nHTsnXEAZ8cqM8D52+JiObBvy+dMRpCPsOY9I9Bs77L3ddAY0Rud
         EwWg==
X-Forwarded-Encrypted: i=3; AJvYcCUaYqPfWqspoim8csSTC0y3VihX2mWupv1YCiiXZQ3MhIvNOO4w26bn7stdB+vsPVNZ+KkOAQ==@lfdr.de
X-Gm-Message-State: AOJu0Ywa89zkbvCyNskW01w48Bpo3aBYhoHvUCssT30MQ0f2m2qtK03K
	nvHZqZvQtciW3Y3K3LUE5WfTcYWSYNc6ulu7Nrrv83K97y73tSTVnr3sZ/F6DN0=
X-Google-Smtp-Source: AGHT+IEw+1DVidqhuY/LWUjQ+o6rfU3Ynsi+ihpD1zfycegGszCwq6rKJUtlZelqFihWBar49Uo9Pw==
X-Received: by 2002:a92:c548:0:b0:3a7:de79:4bae with SMTP id e9e14a558f8ab-3ce3a8f2410mr12880445ab.6.1736422424115;
        Thu, 09 Jan 2025 03:33:44 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:684:b0:3c9:9959:5767 with SMTP id
 e9e14a558f8ab-3ce475fbd0fls3557515ab.2.-pod-prod-00-us; Thu, 09 Jan 2025
 03:33:43 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCV3vo9O5lKTM0VnQ4ug1e79CBCmEv7LJ3TXfMCo/CGLjSGjNNSM3zLzO7uPyXnoiANIVpzfAgzkIG+hlw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:4015:b0:841:8345:5eed with SMTP id ca18e2360f4ac-84cebdb57b1mr187474839f.0.1736422423326;
        Thu, 09 Jan 2025 03:33:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736422423; cv=pass;
        d=google.com; s=arc-20240605;
        b=SD17o6uwU0kUmBKmu17bIXflNaRmuT6mEn0Y5J2u+nAxUJGT86wdXz18oYSmDBPNFM
         heKIbbJlUSWBRtOzWrdl2PvnWsYhovDziRa8wYTMQPkf2hXSQ5vGBVzSLFsOpSTr2jVC
         i7VnRbJqw0bZJQab1+VbNRODYSlkI5OALNSUPYknHcOhmvmyT+ok1ulkF/YZBF7qlPdv
         HN0pXaR6etQLc4ULlxkdecQlHcZEpAin8UIaZtHFhvIAEuUvLsKv3Ws2c+DQy5g0VP4u
         QJCIPM3G7KFbkcNh49C8yErheyBhP4kPMM6gKYJqgkA049ZWhwFYOF7N4yscat88Ghkh
         0xvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=IlooJFjtA8P1Hbc8h9aJHMel0zTEhZC1NZCueFsARMg=;
        fh=T4calgeFzCD3HvNQU8hns2z6Dvhn2ksRLNh4nKFGWEw=;
        b=iPsxawJY1hGPmQoSBa5Db0DLIAPmqxJATSUwewEvX+eYQ6tRV8papD/j2WRlH6xD2v
         4F7QLhaCfiyCDz2uYdCyxYr3u/IKS/LJQyBKvg/II8REJkBMDKS1fSb8OK8B4AV5bNfL
         fpOClfUw3cpUMpPKFaB1d7uzhTiTil3Y1esP3Wyu/UE7yXgeYQPpIxfcomRjLudSiEWF
         Hm4lrgoOjDyvFrSMzhDTS28WgkRdFoIPVVSlOMuWvQVSW7nVrB+vIXrDHuy3ZR1ThvJx
         wLA1hi+mDGnmKMSUw4J+ppox4sh4eCNNvhofRGNTVp9J22+tZXLB5qc8B1PqSAVbNjhM
         DZ3g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=bxjUHlk7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=fBJ10hgh;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id ca18e2360f4ac-84d4fc362f9si62787639f.109.2025.01.09.03.33.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 03:33:43 -0800 (PST)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5098mL1s027356;
	Thu, 9 Jan 2025 11:33:37 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 442b8ug7wr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 11:33:36 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 509A17x2020955;
	Thu, 9 Jan 2025 11:33:36 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43xueayd68-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 11:33:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wDzebqvKvAzbLp0CRmn/TnPtDzKXoBsv5rKif2lzsi2R2JKu1P/dYwJ8cu/OdXiFN1ZKyQieShJ7LF4ENYuiKnKekvhNxWDErLR1eH0l/ei/6ijMMa+Ait1VhrpSb8TaZzSfQ9Yblij3HUP4qVNJBD4d3sj9EdT/FixT0pEiQbn0IhPIFUBKV6jyimsuzBzm+RVCloG6iLLF04hJjkA+0VQ+ys5hgrLERj4CVfnsdlu94z5MJjk0mlsQK6w18e5LGVSNkBKWylEBk6cWlOwiXdaTBl+ald3E8OcLKRQ8brZdFr9WFHPiv5eD6KBzgLcDpGmFAgYDx+ovhsjQ5km0xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IlooJFjtA8P1Hbc8h9aJHMel0zTEhZC1NZCueFsARMg=;
 b=ObbD58I4BqmghO64TXph/EQ+xzlGu4L19AMh9suT0+R2jD5Sj7pJWhsRbHO5CLlH9YIvOgLfORaUs9ao1FXHpnYQFiLb4DqjgdBt1dSDdXtPpAk3uRs+20xjUkQ8bCl0bOlz2NKSZf+0JiVrgKDb6PFKH56WhcTjOpm6QeUYI5nKKnRS4TzB4YRpOX/C6VUqdbLHcrz58gF4f5Nvj00wnZ3J9nPvTl4eNrPzFeMuTNz3/NSw7POUHm3t0H9zs4SXZmJONKXWAaE36OBit5qZYNfZ2MbO6BUUsO+oatuSXqKDxGtlu4b/SBqcg/HbXt5BGxPNGWOxTJidjIDjBJy3ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by BL3PR10MB6067.namprd10.prod.outlook.com (2603:10b6:208:3b6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Thu, 9 Jan
 2025 11:33:33 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 11:33:33 +0000
Message-ID: <fd048cd8-1c81-4346-8f8c-75c7dcd29008@oracle.com>
Date: Thu, 9 Jan 2025 11:33:29 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 02/11] block: add a queue_limits_commit_update_frozen
 helper
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250109055810.1402918-1-hch@lst.de>
 <20250109055810.1402918-3-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250109055810.1402918-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO2P265CA0235.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::31) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|BL3PR10MB6067:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b4c48b1-3d3f-4c43-4778-08dd30a172c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N3pxNDUxeDJ3TEpYY2IxOTlyRmVpUmFVOEh0aSsrY1pHNytZR2ZDVmp5ZjNj?=
 =?utf-8?B?T0pBSUx3VjVFYjdpLzRkNG9MWjBSaXN0cmRENVNwMnJsZzhzb3kvQ0hZdDRn?=
 =?utf-8?B?eVpUY1NqRENLdDFHNE9tdlIyRDlLejVKNTVvRVNjUG44V1JRNXhLbG9kRHFh?=
 =?utf-8?B?UUpMWllKaFNVZHdDS05xRENsSWVwQjJFaUNYRmRiMXNCOUNGTXN4aUgyVXNF?=
 =?utf-8?B?YWRkN0FtdkUwekp6YmVSV2dnc1NTSU4veGxYcGtSMmhTUWFySFdldmJsTHpB?=
 =?utf-8?B?d05rUDA5aDlKYmUwS2tYS2d1T3JROXZJSU8yTXdBZG1ZV28wd0Y3VXpDa2tZ?=
 =?utf-8?B?NTBKYWZjeWxhZXh1b2tFR0FKVHgvR3lYUzZpWXpNNVIxWTVmQ3BvYTFaeEJF?=
 =?utf-8?B?OFdzOHh6cTZrd2VHQVFGSGVQSWFHY0JtbENicVRFYXZLa1BvOE5rZmxOUDBQ?=
 =?utf-8?B?L3R0cWtUV2xVdFVNT0ZBNnA1T1lWU3JVeGlHR04rSXlaeDRlTHRtOVV6dHFO?=
 =?utf-8?B?RDluTmEwVGc5YkFlRVNYQThOOXpXeW04a2xrV0tMWE83ajRVYzI0T2tSS3lW?=
 =?utf-8?B?ejFtVXZJbTB6c1I1azB2T1duZ1phOUtZZHI2cGtpYlpZOEFvUWZ6NGZtT0xI?=
 =?utf-8?B?ZDVJSGRrSjEzMzRyNlhqWklTTHc2aHkwYUZrV3EvZWdQczEyMFNPWnZubEhE?=
 =?utf-8?B?ZkRnUjNhVVVyR3NMdWlTV1cxUGlNbC8wekZpV2N6SDhLYnBPQzE3T0hzV2Vp?=
 =?utf-8?B?Q0V3ckkvS0ZJOWtqSU5IRnA0SVhTaWxtUG02c2FuVjhwVDVyZFRFU0lFbFhj?=
 =?utf-8?B?RmJTb2Y3dUFVaHU5Z0dodXBuWmlpcjdhWDYzVEJINGhlWll2cnk3azdEYVNN?=
 =?utf-8?B?UUNqelVBQzdGdXFablFzOHZlYk5DUDhLR1VtK0EwZG9HOGIrL3NNQ1NOZlp4?=
 =?utf-8?B?amZnQnRVTWkzTUU5MUVPMWlSdUswSXZLZTB6OHJ5cGhmcTQ5eW9VdjN3VUFn?=
 =?utf-8?B?ZmI3UnVjT1FEQ0lPUzZnNk9kTTZYM2hrRkpXRE1CeUhJKzhuT0c4SnpaZlB2?=
 =?utf-8?B?VENyRkRPSlprc1NXTFpUaHNvSDBJa0FaU2g3aTVIWG1mbzF0ODJrZlJLdWx5?=
 =?utf-8?B?UXJFNlFZM3FnS09qZjRlazFoWUg3dkNhdFB3UVlzZkNRNG9vZEM5SytWY2Ju?=
 =?utf-8?B?ZzRYUXdiMlAxWnpJWWdNNldHNFdISzlwUWVkdjc3b3NBZWx6U290M3BORmdM?=
 =?utf-8?B?QXQ3MHhWNHhqRHR0SHBYSGhwbU8raWwxMFpHMmJNWnJMbmxVQ0dvbXp5bFZ4?=
 =?utf-8?B?U01pdUFDS1dNV3UwMjYyQ0dQeVhZaGhMaVlmK1VMNitGZkVieFBQL3ozWjdG?=
 =?utf-8?B?RnBFSW50WWNYMjJ1QkhqNGtpc2o3TUFoMjFUd1JmUjZkeWtCYVA3b25YMnhG?=
 =?utf-8?B?MkRrOEJOaU9LbFFnMXA2bHdvQUVOSnB3ZVdEODlscnY3QXYyMHIwamloVU1T?=
 =?utf-8?B?YVhqdGpGWDZ5ZkhrRkZzMlpoSURVcnRnOUUzeDBKMFVUa3hBdXM3Vllic1lq?=
 =?utf-8?B?eVFPRXNMQmdoc09KTHlHK1J6aVRaMC9HeVlpQWFLL0FZS3Q3RlBBT2JZYmxt?=
 =?utf-8?B?NnJ5QVJTOWFaNlZ3ZUNSRGlOS0o1ZlJuaUZ3aks1MEVkMW9SeE1WbnhLUFFJ?=
 =?utf-8?B?M1VaNzRLdUZUL0xJTDN4VytRSWw0b2VwR3M4eXlKR3pvc282RFUxamNXYi83?=
 =?utf-8?B?ekE3VnBmSGNVaHhVWlZ3aU1MRTUwczFsNm5pcXMzWFZ5UTFVTHhRM2xmendD?=
 =?utf-8?B?aTgwOWQva3ZSQzZ0YjUzdWN3NVl5NlFaNmdLNHhnaTBlOEs2SnEwWS8xR3FR?=
 =?utf-8?Q?KPLbkjACXWwU2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXFUVytTQWdHWDZGeTI1RWNTYVRVZUlUd09aZ01heUh4MGEzQzZTVGpFZSt4?=
 =?utf-8?B?cURjcGpLRVFqYjlzTjYzeUxxU05WRlpEYmlVYkJtM1dNRHoxOGZtZUV6T2Ex?=
 =?utf-8?B?ekRIVEU0bjdVVm92a2NBWlJ6WFQyZWR5OHpUbUZ1bC9kZnZXS0hKME5FQURu?=
 =?utf-8?B?YlRTNllnV1VQTEI1YTg1aXdaZHIydUVnb1FCbjJEUlBubzAyOGxDMHF4a2h0?=
 =?utf-8?B?blRjYndFR2MyWWlVWTQzbW1NSVJlZDArVUtjOUhncUhnQ0pVMUhaaWxFcEJ4?=
 =?utf-8?B?TFJKVWsvc1lWMHJyanpQbzlMOTEvM2hJUmlGMkRWdDBwYmdBZlJTTkM3N2h6?=
 =?utf-8?B?cStYNytlOFZid201cys5TFN4NEU4b0hNZG1LRXFTaEJCU3VaTG1GQVRuV1FJ?=
 =?utf-8?B?MENMS3puN0ZIeWxNSjJmaHpvdDRKU2w2dWw3NzJkbzRRS01MajluWUorME1q?=
 =?utf-8?B?STVQeXdDMXMyYlFZemo4azdTVndYM0dEZTVOQm1jb09TSis3a0pCSUozSjNM?=
 =?utf-8?B?czBoenJ0TGdUbGhrbE9kVFFnSS9pUkdqc2RBZkxrcHVOYzUrd1hHQnJTOG1U?=
 =?utf-8?B?NGQzVUo3Smk1ZEZiRWhnb042T3NZd2gyR3BNcDJXaEdBMzRvZVJvODh0RkFY?=
 =?utf-8?B?b2dLcDNtcVMzVU5teno0bXpBZFVvODF2cnJhRkEzL3hkR2NwRmFOdkp5Y2o5?=
 =?utf-8?B?TEJFcktEc21vNmh6Sy9CY3BERGhhV1dwNTRFT2FnVUR0UnMxazFlK3hBQjI1?=
 =?utf-8?B?dVhuTXdXUmtCem9RRGdzNHRTczYxS0NLdGtPdmd6cTUwcXVIbUljNWJndmZF?=
 =?utf-8?B?M3pJUmduTU9uODdVTVhYbkRwRmMrOUx6N3huNHUvY0RxRXVPRHJueHhzVytM?=
 =?utf-8?B?RHVjZnJIVlFRN2xPRjdwbS9BUENwMzZ1TTk5R01MVGhkTEUzY2hndnBMK2wz?=
 =?utf-8?B?dktTVHIrNitIU0h1a3Z5WmFoQ1ZoMldMZGhKRkdJSUUvRHQwYUhXbkNMWEF5?=
 =?utf-8?B?MmpkZ0hoQ0dTRUdZN2lwcm5EVFJkRkpEQzVQVFpIZjZ3WmxnVy9PKzVFTU1m?=
 =?utf-8?B?WnVyeVMzQzlXbjE2bUlHWVpaait4M1FPQ2kxOXJ0ZHZreVphOFY5c1JVQUVp?=
 =?utf-8?B?bmpBWEtSRWwxektyZk9yNTUvRkxiMlg2c1owbGp4YmJXRkZTaFgyVUhxcG84?=
 =?utf-8?B?NjNvUVd5eTV5UXJ2ZVpqaE9meDFCazJ6MFE3akw4RXg4QzFvaWU1bXIram5X?=
 =?utf-8?B?dWM2eW1hU0pzdW0xQ01aWU53cEFuYUplV1d5UVZaVTQ0bURpaVVoMmJpUXNZ?=
 =?utf-8?B?dzY5dG5DY1NZL1lvN1NoS21yakhrb0hMU05FS3UzOUFPc2MxUHNOb1VMNzh3?=
 =?utf-8?B?ZWFpZmdCVkVwdmVmVytySStwQXBQa0xGc0prdlE3SURSUnBlNkJxV1RqUGNU?=
 =?utf-8?B?eEZNRlh4QzlidjNLclBoUktVK2w0NldHZkk2WmFuSmVqU0tKZDVBNCt0dW5x?=
 =?utf-8?B?T3pMQUYzczlCZGIrRkI1d1RkbERuWVNhZUtaQ2JCcjhFTkdqcXdaS0M2MS8w?=
 =?utf-8?B?NDdrMU9zMitERVgreUtIVms4RG5SWmYxeklnVFVPSHYrY29HajlhZlh6ZDRV?=
 =?utf-8?B?S3JVMnZ0VHQ5SzlsS3F5VHM1SVh0N2pvc1BpajV3VVRaT3RzYVVQT1MxSGYx?=
 =?utf-8?B?Ny9SR0JXMVNZMHczeTV4YWVpM3U3NXZBdktIdmJWQXdHNjZKVyttclgvMWow?=
 =?utf-8?B?SVBmY1ZWZXp5dmVPN01YaFFJUWlYc21XTzdaS3VnVythMjcxVUxMMHhYNS8r?=
 =?utf-8?B?TzFTOEVsbWlnN3JYSWxEQXRpVEphN3JBQkQ3cUlTRktzTExPTEFOcDBPeUp0?=
 =?utf-8?B?aThzaUJrZWpWRUhNTUE5VXJNb3lZanNVRThmYUlxOENHaGRKc1lXZitvU05V?=
 =?utf-8?B?YzkwdndaeWZqUEp4SXN4SjRRcTExQWtvTEtGck45NjF5S0JXUGNLa042MU04?=
 =?utf-8?B?aXJhamR0emVoK25IUXRmTnhDVEZQVlJlaXZjQzdNeGRGYUVwYkQ3SVVUS3hM?=
 =?utf-8?B?Z3dVaDgveVhtL3JNY29mMzl3akJsU3pSMXlTY2l6blZTWFBsK3hJR0J0UEVk?=
 =?utf-8?B?Q0IxVENlcWFJY20rUklHd1M1WVFCaG9PQ3hRQnE1U3Fzc0pteFdGL3ZJTys5?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 8ViHisXx1K/iFMYzMSBa3k6RqN+URUHY2u2rSD0WpDzv+MfEVXDUASmoDFwfaHsMy+uov/uAstRTj3b2ABVFbtSgpIuXoN9M3vN7H3279LFVCOtS6YulCYnBVqK763JyShk7RIKdvttkiUb3HGNssI9cb7pgllk5hnrNAbBxgny5uJ31nv0nyI9QxBlGr/nzAvEhe8J9hdVqDm4kNgC+6Si6edRcfRkCLVZ8lR/F7lGer4uCcCt07TokBCbIZNh6ZgMeLRoZKCIAsZMWqdt2b5/9gcUUd4OvyVZB1rI64WyIEzuXwUPCycbyz15iCnxeSyr0uAE2Yd+ZyGWA7gMm1ANEnDahT0P5/tz5Z1ido6aO7sPA5aDVwtVtyxCvfBzHrR9O3atByNqgwo1//5HZ1gT3h/zL+8SlGvnDCjzX25lPC/BblISLsgsDhdgddhNgByuxNi0WFC6qIkI6Yc9LchoZm6BnyiwuDINYRe7Q2xC8Y9TaksdTmm7CbALdBG8g/0Y9U8eHuzKDtV8P1FODJenx5vwiwIsDZcLrM+LSFbMJiezt2ZeRreMMmojX2w/qUu6lv9OLY8tiZb9qlMMOVUoBnDnHraGX9ovFEgT4W9k=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b4c48b1-3d3f-4c43-4778-08dd30a172c7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 11:33:33.2475
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AjFibgg3LDQcs/LNHxfzxxkOxUwhkEedA4xvyg6kmgHu9yTM1yH3ZAbg0AhTNtVHIM/u5EGUFNbx0+t/wvYuzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR10MB6067
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_04,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501090092
X-Proofpoint-ORIG-GUID: tVNKaNFSwXQFDtnXhoSVw7W7dJ6K8Uwe
X-Proofpoint-GUID: tVNKaNFSwXQFDtnXhoSVw7W7dJ6K8Uwe
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=bxjUHlk7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=fBJ10hgh;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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
> Add a helper that freezes the queue, updates the queue limits and
> unfreezes the queue and convert all open coded versions of that to the
> new helper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Ming Lei <ming.lei@redhat.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Apart from some nitpicking on the code comments, FWIW:
Reviewed-by: John Garry <john.g.garry@oracle.com>

> ---
>   block/blk-integrity.c      |  4 +---
>   block/blk-settings.c       | 24 ++++++++++++++++++++++++
>   block/blk-zoned.c          |  7 +------
>   drivers/block/virtio_blk.c |  4 +---
>   drivers/scsi/sd.c          | 17 +++++------------
>   drivers/scsi/sr.c          |  5 +----
>   include/linux/blkdev.h     |  2 ++
>   7 files changed, 35 insertions(+), 28 deletions(-)
> 
> diff --git a/block/blk-integrity.c b/block/blk-integrity.c
> index b180cac61a9d..013469faa5e7 100644
> --- a/block/blk-integrity.c
> +++ b/block/blk-integrity.c
> @@ -218,9 +218,7 @@ static ssize_t flag_store(struct device *dev, const char *page, size_t count,
>   	else
>   		lim.integrity.flags |= flag;
>   
> -	blk_mq_freeze_queue(q);
> -	err = queue_limits_commit_update(q, &lim);
> -	blk_mq_unfreeze_queue(q);
> +	err = queue_limits_commit_update_frozen(q, &lim);
>   	if (err)
>   		return err;
>   	return count;
> diff --git a/block/blk-settings.c b/block/blk-settings.c
> index 89d8366fd43c..7c099d686dd8 100644
> --- a/block/blk-settings.c
> +++ b/block/blk-settings.c
> @@ -444,6 +444,30 @@ int queue_limits_commit_update(struct request_queue *q,
>   }
>   EXPORT_SYMBOL_GPL(queue_limits_commit_update);
>   
> +/**
> + * queue_limits_commit_update_frozen - commit an atomic update of queue limits

nit: this has same brief description of queue_limits_commit_update(), 
but it does not do the same thing. I know that space is limited here for 
the comment, though.

> + * @q:		queue to update
> + * @lim:	limits to apply
> + *
> + * Apply the limits in @lim that were obtained from queue_limits_start_update()
> + * and updated by the caller to @q. 

"updated by the caller to @q" - this sounds odd

> Freezes the queue before the updated and
> + * unfreezes it after.

should that be "before the update"?

> + *
> + * Returns 0 if successful, else a negative error code.
> + */
> +int queue_limits_commit_update_frozen(struct request_queue *q,
> +		struct queue_limits *lim)
> +{
> +	int ret;
> +
> +	blk_mq_freeze_queue(q);
> +	ret = queue_limits_commit_update(q, lim);
> +	blk_mq_unfreeze_queue(q);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(queue_limits_commit_update_frozen);
> +

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/fd048cd8-1c81-4346-8f8c-75c7dcd29008%40oracle.com.
