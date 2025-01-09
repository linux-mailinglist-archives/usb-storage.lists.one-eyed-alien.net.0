Return-Path: <usb-storage+bncBCD73EGVUMBRBXPB725QMGQEMYFOUBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B39A07481
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 12:19:59 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e535f2c8f7esf1820719276.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 03:19:59 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736421598; cv=pass;
        d=google.com; s=arc-20240605;
        b=CLy5VS+MDUVDsoy/CfOLx+XO2CN5ih/DCt4on/lK0e3w+XfZAHzyg9gwO7JS77hHvn
         RkeoCj41ViqiepkbIMA1/gmk0DTqwDC65jK5GTS4je7J6du6mpuvxr1dsieMzvtk1Ocm
         48kn3mSZzcyuDBnXLXlnZsTSymbglaEXvKJjOWVPsiDo8i20/bGGWOJMc2cE9sj9jClG
         pS8rtDr17eisp9THzLfGCvbf0AbXO5Wz4DCNExWV4euU0fAxCQ19ZENHJTpVyD9EY88V
         ZYrFYIfNbQSsffvOcfnYK0eGwLFgk8/XjksnpHxzq014WI7r503/BuW5/XUpOxdOMj93
         6bRA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=WM5L7uQhLnRyDSZ97EeWzIkzEXboi9GLMWu5OljZj0k=;
        fh=nYvHsv7LqOTBXDc2pxVsood2nPGbGTHnbnRTbYftlTw=;
        b=dViB3SA1nLoQ9sWxVuQs0WhOZyLfMyrFSePWz5RMa0/V8MM+fSzRMGVFU1hwKVuLcU
         EPtliBIQcddIMsXdGj1spLjsMLt//Lo1wCeH+1OdVOlXnKh+Zt+STjZofN48/ytP3s1/
         1V5qOvHPN8vSEiy26D+VpAXjDVgoMj6oHuaBIXwpLKyn3efdyuhYoJKNa0G9JMjzTBi7
         h4gunLnTi2YhTl5+ExPeHXOVPpvZswb1Wat7qB5r9dI4fpXqYf9regrOrf/E4vgvE8/e
         w5fT+5hjYsyUiUDxr+S5TotAOGM5+HQuItS3SeoxYeNjgh3/RR4EFFtGiTWY0RsFERWK
         kzvA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=BoYsoRf7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=q8GHSxr+;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736421598; x=1737026398; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WM5L7uQhLnRyDSZ97EeWzIkzEXboi9GLMWu5OljZj0k=;
        b=g+zl5IifUOf/esi66kSq6UKNmxfwjM+PDgvOdt+lJQ1eDFuXIPhQvXIg8b8/3W6pNF
         3mdvtKNDvIGwG4v6tw++PuOhjOL9OfazS/lINC4+SI+IL3uFvVFrzsWDSLyLdHqPriMo
         TbRUTZRfveWmeTcRfcUxKYTfzPwGJlghWujeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736421598; x=1737026398;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WM5L7uQhLnRyDSZ97EeWzIkzEXboi9GLMWu5OljZj0k=;
        b=bwC3Yf/A61Pn/M2C8uK2xNlfIPHz1mqv628xQfgB+ZMMUG+w0Y1+jwSQE83RQc2fV6
         /SXhiZEAgh/IbAmhSkvAlqaEu4LgkBj3MWIIRz9v73qONuH36QPy7BTkU9v3+FNmGE84
         vpHn6pfh+I8Q2BsPww4/OZjF7RjiQmFM/q3ZI617yJg6PU+VBvhyomttrlsYLYeEY4sJ
         i0O3k8eDNGh+qApYfm3gLJ5sNAOIzvGCepPhmlTNkPwtQHEOdZ3r0DLBDIb4FKV9lREe
         ByE3GYqJdvD51vg6z971yedG/KHouJdCgEK9CB2sBqn21SYapUbZaBSooRdJOp1UVD9m
         dtqQ==
X-Forwarded-Encrypted: i=3; AJvYcCVvxsvI2mdrvhzmHdZG2fX3o+O5JwhXn+omUZ7wE7ti96yORVdNA8hjuW99A6ssbQUdQdACpQ==@lfdr.de
X-Gm-Message-State: AOJu0YyIFGE6/fGxBMrxgT9Inw5r1x4TZSpyBnaIaYPY7sgnSEm9NBKW
	57ENigZOwGv1fgiqmuvi5hYU5mplmvPKwL2posJzjqtWyxJ/ODfs2CcEvtQGjEM=
X-Google-Smtp-Source: AGHT+IFhc7wA6s6iUGkAEiDiT/5kg/McBEG1+vW+eQIJG5sK6ZW5B8YAJD8wR0iJOzJM53W3kXHssg==
X-Received: by 2002:a05:6902:12c6:b0:e38:8a7d:d291 with SMTP id 3f1490d57ef6-e5500fe1ecamr1876412276.10.1736421597895;
        Thu, 09 Jan 2025 03:19:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:107:0:b0:e47:56ee:7a99 with SMTP id 3f1490d57ef6-e55003f54a5ls301589276.0.-pod-prod-02-us;
 Thu, 09 Jan 2025 03:19:57 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUls4IvGACCXHZHjS/YnwbYXFAvhvd/AWQtWS48opx9M+qbnaEGHf92IrGWpfgsb1+bGA2mxXU7zN3srQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:2581:b0:e48:260f:2258 with SMTP id 3f1490d57ef6-e54ee23a994mr4210398276.45.1736421596975;
        Thu, 09 Jan 2025 03:19:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736421596; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZpBZxGOPP75fQXDK8gdD6DZgePlqaoGm7ccEtWmiZsVXNsJ9R6QfjytRkp02VSF4+e
         yySGR2LzcauGtZgGHIiTztRHC9eZuKZtbko0oQICjum5xduOFYPWMEccjpD9w/vCVGKb
         huC804jUooZABfVOlacdbevarXD+q0s7DZXABUFieynv+Rc8spnYhcTS3EC4Ows6ssrc
         2aG9gUQTtXm2SHiavlqMclsdIUOvAyk3acDdY9GHak9y89KkmBHM1tNN9qwIQot/35Tk
         4kNjoR9se08wljupDVBM4fjyvsCxd7pc0csp25lmYoAyruLDf519ayCNgzJSVpey14sf
         yxjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=89w91TQb8L2CFSjfWhB6i9kyMd8aKl8nh/RhKdSnsT0=;
        fh=v1iOF7wU2LGTSrOeQNbYZHRLZQz8Z4SchD9MvpWdaCc=;
        b=MGUziOc+VMutBC4PlMhBwoQi65hVACJ63ewjEQA/1Uoz8d8C/a7oyyiuZLA7Ct4LyT
         Hj06u9wXHQRyi1vuhXnSQF6VnFno1f0kGjfwkHBQ6s061PXw5Wzq3B1YucBZa4uRP/sA
         1i3nJkT86V4Hy/OUJ/JH9fYqSXaMftNeW4otH7RLSEEQLlWAVEEmquBMRbDncW/r7Oj8
         DpBt2uC0RNE1w0Y+P3jW8QDxxLxQA7qWcPWc7JNTQ+kmdP3U9SaiBZWYQErdb16F37zc
         v0i8paIgglu7sDfaviUcvZ3kdx4EKgO66q3UOkMsUE8Y3Ys//Rty/KN/hApRVE6RUzpp
         ZJaA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=BoYsoRf7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=q8GHSxr+;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e5512afe4fesi60309276.275.2025.01.09.03.19.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2025 03:19:56 -0800 (PST)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5094fqhs005682;
	Thu, 9 Jan 2025 11:19:42 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43xvkt0f9c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 11:19:42 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 509A3RL8011202;
	Thu, 9 Jan 2025 11:19:41 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2041.outbound.protection.outlook.com [104.47.57.41])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 43xueat18d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jan 2025 11:19:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s0434jlmeEE0daZtzCSmBHNz5na6edRi9ToeiG8czh+Dcv/CljheDoRIeLDm3WaMQe/Q3kCmF2fiOmzRYJrIocgnZp0YIIZrITQGSzPMuDdE1fr1iGEHinm32pKjxNg2uJQJiKe8XdRI6FovedI8Inot6kE7Ixh2Nz6e2xQl/BrZJvTTfJGGmdc1hJ5d2GGg7mfSf5cy5A2Dl7UY2yJI1hyX3PT5kTNI9g9vDGYigUwco8hwUrtVy0lY3FY8UNjs4SBVFp8ySiDK3+TUwRGjRwmRcJh4IuSishnjxfp0d+kDsVUPxQ7xTm0ZWgN2nlcx3SVeuAFY1HHKC+miEr0V1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=89w91TQb8L2CFSjfWhB6i9kyMd8aKl8nh/RhKdSnsT0=;
 b=S2nt4+bAhSCNBIKbOmUIG18Ef/FrgYr5ICh0NJ6QB4rtMGuCUwZESo9HwDEJe+JYjjDqz69OosF/AoJGtyaTJ0Q6dyian6Lm+j6pqHIAyqnmmguYLn6zy6BcwzcIs51rXmx4mZes25ba7RtWGRtz6uoRKiqfM8M6x7iIawW/aVG5ajnzPT3coS4YAQoqq6wbq9lLAOyIHuryXsv8C7xvftPFN9LTWVrKvjaMc4mG/4tCWH0CHupfrQzru7YY5C2XF+Qy0yaui8aCFN1X5eJAS0sQuq0qtLmrO5Znw6mUgIVb2Xja+PpN80s17shuGl5AX2we/yNJ5+StvayVLmPFQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by IA1PR10MB7116.namprd10.prod.outlook.com (2603:10b6:208:3f1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Thu, 9 Jan
 2025 11:19:39 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 11:19:39 +0000
Message-ID: <33386009-9d1b-4a7f-96a5-a2f0ed2fb075@oracle.com>
Date: Thu, 9 Jan 2025 11:19:29 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 1/8] block: fix docs for freezing of queue
 limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-2-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250107063120.1011593-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: SG2PR02CA0069.apcprd02.prod.outlook.com
 (2603:1096:4:54::33) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|IA1PR10MB7116:EE_
X-MS-Office365-Filtering-Correlation-Id: f34ff254-d2e3-4908-5a78-08dd309f81b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TFBaT2dSRDFnayt4ZnpYb25CUERSSnFSdytDdTYxbm05RXoybFB6ZHA2NjdO?=
 =?utf-8?B?cDhMQW1wZWp4OGNGMGxUbzFtdFZNdk5HaGZXcC9Mc3ArSjhIcGdBb3BiQ0la?=
 =?utf-8?B?L1YrL0tZU09ydzRuU3drZ3RLbnJERnROUjdPS3BOd2VXUFg3S2x2WTdtL1Z1?=
 =?utf-8?B?ODNmcVhaM0RyZWdKMDRXMUhnZW5GQmp6bmlxalBHV2psaERsdkVqdkcrc0Nn?=
 =?utf-8?B?ZEdkS3o4alVGWmlWdXJLYmRZV1ZGc2taMXpyRVJDdTQwVi8xV0YyeWFEZnY0?=
 =?utf-8?B?dW10TEJhNDZHNVA3SUl4YU9wdCt3N080NE5ZbS8zSjFBZkFnYUEzZDgwQ2la?=
 =?utf-8?B?TXR4R09PQnJaTlJaN2JpTjM4WnpJRFZIcTcwN3JMbEJtTnhBdCtOL2Y3MVdE?=
 =?utf-8?B?ME03Vk1TZUt1VGkwd3FtVkdXU1FDT3dRbWQzUXkwRnZkam5hN1VHOERUM3RG?=
 =?utf-8?B?NmpabFNkZmNsemhKT0NkQlREbDI3aTJhUENCTnk1ZCtjNisvU3RuL2FWYlZG?=
 =?utf-8?B?blZVdHZsMzJpQnFDWXZWWCtxTkQ4d1dEdXhiWXIxWWFJTVY5bGxWcUI1SFlD?=
 =?utf-8?B?NDdqNjJyR2c3TDRFdzJGWXk2NWxwbk5tR1dpQ0YwSm8wWUZQTlBzSDdHV21s?=
 =?utf-8?B?WUJuL0tOWS85SEI2REc3WUp4Q3ByNFR0azJZYkRYVFBySEpxa1k5MUNjWTUy?=
 =?utf-8?B?Q0d1bDd1SEgyM3RHUnJIeHJqejhzNGUrUkFWdDNSSEJkSFdoTlJmSTgwd0or?=
 =?utf-8?B?YTJycm1TK1pOS1pvajVxYllJU1dwMXpUVVhscXBaUmpWMyszRlJHWlIyVlNy?=
 =?utf-8?B?VEV1QXRlWmx0TUhhNWcvdTlXOFRramoxNmxtckdhQm95Ymd3YU53aThYMXNa?=
 =?utf-8?B?Wjc2RFVleGdpb2JNQjEwNkhpOU1vU004OThZcjZhdys1T0JjdldZNVlselhM?=
 =?utf-8?B?aTY1RlFBWDJKWm9WVlVjZUpsRW0zMnJ4cUJydVR0ZnFXQzhmUUs2QmlLcWlo?=
 =?utf-8?B?UGNCYnF2Nk04NnRiRktRZzN3bjdET01welRMQVB3SjJTSnZZbEhWWi9qTEMx?=
 =?utf-8?B?bzBCRHFYZ2ZMblBKd2hraTNQU1dqZ2FUcjVmUmxPVFhmYnd5S2tHZWF0Y3Qy?=
 =?utf-8?B?TDRES3Qvd3lUUm43VnA2MzROb2ZiS2ZLV29MQ25qWVVneEtOcjc0aVdGSVpP?=
 =?utf-8?B?NXQ3am9NVjFHN2xDVjRYT1BvdFFuMFR2TmdQaWJtMzZYaGZ2TlVtSVFTRi9N?=
 =?utf-8?B?S3FSWnViWmN4WDliZzJQME9lTU9TNlZDM1VDVmxnR01haVdTdUQ4Tno0cVE5?=
 =?utf-8?B?cytpK1YyZGJpWVkxbUNSQXZ6cE80czA4L3BKcnYySHljekxhcXVyUUJWTy9F?=
 =?utf-8?B?UTYzdmJWY3cvQVlqMHN6RndURUVNVFpHT3prMlRBd3ByUlJ0aDhkUVRDang4?=
 =?utf-8?B?cm5hSzJMcVVlTlJwelZycDQ0LzJJMHgvZG03SStYWEN3QkNhcUNjQnVhMG5B?=
 =?utf-8?B?ak0zWS9hM3B2cDl3YzVqd3A4a3M1UnBTZGZLSGQ0Z3lTeGI0eUZUYWVIY3dU?=
 =?utf-8?B?ejEyRys5SXllUFdPYjlTdUJyaXlKQ1hPUTVPSFd4WlRiR2RpQmVpeEh3SlAz?=
 =?utf-8?B?OXNzYVRHZ1hlbnRoYW1ydVo3RzhoalB1YUd3MUhTNFpxZzhmbVBhKzZpWmEy?=
 =?utf-8?B?YjNYY2tOdXlHM2ZQNEM3dnlIVUlab3FWWmdBcFB6QjJRMlNuUGtWekdGUFZ3?=
 =?utf-8?B?NHE2b014VWF2alF0NG42cEtoU2J3ZDhnU1FEV2l6bnRONU52ZUJnd3VnWGlE?=
 =?utf-8?B?ZU5NOGRpZnhBU0t2WUhwNGF2MlVvL0FwTVNHQ0lXSFhKdlpTclRmYXkvK0x2?=
 =?utf-8?Q?WpeHiaqqV1+9W?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2YwQWw2bXdIaU9oOWd3VGljN3F3b2I2aHJKUDBWV09YODFTN3RKZU5LeVIx?=
 =?utf-8?B?OVNxMk81VUhRUWdWTWNNRWEvTUtrbU1pVnpaa1B1aGFya3hWSXhubEtveExR?=
 =?utf-8?B?c1JvQ2dnT0VDNHZtRGhlMURid0dVTzlBaWVLNUs2RHNLbmJlbkh1QmdGcTdk?=
 =?utf-8?B?VHZ1bmJxbHZWdnIvYVpkODNram5VclVpeXhqTitmb1oxS2NFSThZZlZJNGY5?=
 =?utf-8?B?b21NUnJnMlVZYXZDdUFkSXFZTzh2ZmZDek1sbzR1c1BTSHM3ZFozZk43bVNT?=
 =?utf-8?B?VFByM3B2YTl3ei9kMVlwZ0YrR0N3Vzk2aTVHL3RZZlFzdG94OHd1R2I1SDJK?=
 =?utf-8?B?TmJOL3NCMnpWQVpzUStLN1FsVnpINnM1UDV3Mm5sRWloVWxpcVF3VU9wVG54?=
 =?utf-8?B?YnUwU3BkMS9lZVhvOFRLZEp1K1IxalZvTDhIaklLUE8rWHpUMitPbFRqaFZn?=
 =?utf-8?B?VnpHSCtjeVBaV1dnVmoxWE1uUHdUVnd0OHl3eHcrTE1QSWdNNkQxdGNWUWx3?=
 =?utf-8?B?N0tKVEU4TFV1RXcrWXN5VXBhUXF5bFFNV3BDOXVuUzJhblF4T3lsaEZEODFV?=
 =?utf-8?B?bjdIeXI0QlJpK0ZDajdOTmY0aFpHUjhJOVhnSmRvV3U3VWlON0tGYVRTaG03?=
 =?utf-8?B?bEtLZ3c3b2NWQW44WVpOVDlUSjZxOTNHL2hGZ0kvVmZubFRwczF3QkhSeFl0?=
 =?utf-8?B?L1NzcjArTTFuVXRkSXJ4M3lWVDZYNkRsemp4bk51ZzZLcGp6TzVTTXJGZkxx?=
 =?utf-8?B?T2F1bzZLZUJJU1dWYk5JWVNsN09uZ0lGd2tVZVZnc1gwUE5hZys4WGtsVzB5?=
 =?utf-8?B?NmNsVllKNTB6NXZITDQ1NmkvWHROUnM2QzJ0cTR6SGd0N1ZCRFZPY3JoQTlz?=
 =?utf-8?B?WitPblF6VnVRZzI2L094Z3JZTlc0YzJNZlBHd3VHOWY4a09xV0RPV045WWti?=
 =?utf-8?B?R3NVbFIwMDdQcUhCUW5kTVNLMlErQnArK2V2eU11cE1XN2czaCsrczROZmND?=
 =?utf-8?B?ejhiTXBmK29lYnhVTG5kNTNIM3ZDYW5Pa1F6TzRaQm1FQ1l1N1hjbkIvdHVF?=
 =?utf-8?B?SVF2enk4aFA5WjlUd2F0RW5sdzJGVU1iVThRdGUrWVp3K1lmTkI3MzJ6U1RS?=
 =?utf-8?B?UzBwRVhxNitodGFmdWNsNkRkQ0M0bGxSR3pHNXhGMXlLQUF6QVNRdlRFU1cv?=
 =?utf-8?B?VGNYQzdVYUg1bmhyVUdseUpGS3dyczV5NXFDQU5iVlIvUXdzM3d0QkhycVNi?=
 =?utf-8?B?SmJkWmlOT0pPcU4xQlZwVTAvQjhWTHkzL1pwd2VjalRmb3FPa0t0RVZWUEtp?=
 =?utf-8?B?ZWFVTk0zamVzdnBNTzQrcE1SNFR4VzFzNjllUDE0VHhnUzN5NHpKS3dIUzdM?=
 =?utf-8?B?Q3F1aWF0czlEMkM0VHpjY0RkVUZOdGFsamNla090QUc5QXQvZFFvcUtwcUJV?=
 =?utf-8?B?UDdpM05zWi9wT0JDVGMycE4rQXBQRFc2MEtuem5mTVFENHJ0S2djVXFtWW9R?=
 =?utf-8?B?ajYzNTY1eHdpcWJzUE1palVneHVHOUpFK3lkM0phSmUwYmhHd1BldkhZeHZH?=
 =?utf-8?B?QWJaMjU5cFN5ZGZiekcwb2hlR2YvZWZKUlRqbTJoTUtnQlVMN1o5M0xHNmxM?=
 =?utf-8?B?QTFVZWdwNVZGSnNaNFVVOW9yVTVvZEdTdmJJcjgzRzI3ejd6dmR6M3lFZStN?=
 =?utf-8?B?Ync3SVN5Q2xXY09wcys3SkxTRXZyTUZ0QlJnNHZmeng5TnJrMm5id3RqNCtj?=
 =?utf-8?B?QkZyRU15K0hqWDgxZDJBUSszYm5qOU9QcHBYZFR3c0NlWlRPOVdqMmpteXdn?=
 =?utf-8?B?NElkUW9PSEhxbDQxYnZLU0xmMmpxbWtKNXdOZ0tYSW4yWFVLNVlQTmJuSlhs?=
 =?utf-8?B?VWxnd1R2NUZoUWovZUtyakFtaXpiNE9Vem4ybldhaVQ2Rk0wOGRkQ2tJUkk5?=
 =?utf-8?B?WDAyQlJXSFFhQTB0cEZvYW8vajFCL05FNmdtZmdmQUVHaVF4TDRJdDY4WCtz?=
 =?utf-8?B?YUdLUjRScmlMd0xqcXc5Rm5raUdkeGFNTnh2ejZrWTV1SlJxalZuNThQRTBr?=
 =?utf-8?B?OXhRL25pdzNHUm9EM1RnN2dOZDY5SWs0WlFBbzhseHVIZ3NDblVncDQ4TjM4?=
 =?utf-8?B?dmp6TGozeW0rMWltcHNCOGJYYlJ3aGN0RU1JZXpkbEZVM3BXVUliU3dKdTFh?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: JcI8w/d4EONXMxCeqrfmt60K1+vIZ/y/9uLg+t8+dQZjvOBKSw3nZlH/AeJeLlNOanZpGcyx3RaOn+Z16/Rke9CzlDTdYW8fssWSJQmMJHr1o2JZV9Ot9L8cYTb3vPy2sjCAfL6MOGppHD1AU4Uy22kY+ZXvLxu6LROc+hklC5f17BtmF4W92zcK7TikUiIn4n3LF3Wrcc4LVYqhVYg0eKagYZ49rdrlmXyRVuR1GYtiV2HObDfepT8MAEo7tkYbF0YbqkVj3ymAqaIt8ZD+S4SqnmHubN64ODvl/d9rp5HqcZ6sxhtWN81Eyzc61J/E8cXzVvfuaps7b5e5RHex6T99VWdyV+iIB4t0XFC6Jx404TGdjKyddLrAXbgVI4Rcx2m69bpxlFPT+MgkiM5D87FdczSGxchYpOmIngVgYJV9oNALOwAQvR5m6ohOrH5RRZsKe0DW1ihq6ex+uS+B5nbv/vyD/751p+u71J9y7paeBmQk7Oifj9teXit0CPhIRuvVmwrap0jMgTzcabYr9nE4gglR83OxFbpkzoeYFfU3gBSuKYBQq0o9CTve+AR90xxECANDs4CEvt2WtBhdSaTe8yLWzHt2FvbX5w2hv1M=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f34ff254-d2e3-4908-5a78-08dd309f81b4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 11:19:39.3728
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MizIjK9YFoHz9lLKn1y0oeemDPQr/EIdnqWuCrah0sKGruK4/w5mUYVnFk6RHehjWCm1JhNqjfRZxftvREX5Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7116
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_04,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 adultscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501090090
X-Proofpoint-GUID: 8HaDfHwP4499YPjPCgy3IwNFAw60PmiE
X-Proofpoint-ORIG-GUID: 8HaDfHwP4499YPjPCgy3IwNFAw60PmiE
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=BoYsoRf7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=q8GHSxr+;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 07/01/2025 06:30, Christoph Hellwig wrote:
> queue_limits_commit_update is the function that needs to operate on a
> frozen queue, not queue_limits_start_update.  Update the kerneldoc
> comments to reflect that.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   block/blk-settings.c   | 3 ++-
>   include/linux/blkdev.h | 3 +--
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/block/blk-settings.c b/block/blk-settings.c
> index 8f09e33f41f6..b6b8c580d018 100644
> --- a/block/blk-settings.c
> +++ b/block/blk-settings.c
> @@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
>    * @lim:	limits to apply
>    *
>    * Apply the limits in @lim that were obtained from queue_limits_start_update()
> - * and updated by the caller to @q.
> + * and updated by the caller to @q.  The caller must have frozen the queue or
> + * ensure that there are outstanding I/Os by other means.

is that a typo - /s/outstanding/ no outstanding/ ?

>    *
>    * Returns 0 if successful, else a negative error code.
>    */
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index 5d40af2ef971..e781d4e6f92d 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -944,8 +944,7 @@ static inline unsigned int blk_boundary_sectors_left(sector_t offset,
>    * the caller can modify.  The caller must call queue_limits_commit_update()
>    * to finish the update.
>    *
> - * Context: process context.  The caller must have frozen the queue or ensured
> - * that there is outstanding I/O by other means.
> + * Context: process context.
>    */
>   static inline struct queue_limits
>   queue_limits_start_update(struct request_queue *q)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/33386009-9d1b-4a7f-96a5-a2f0ed2fb075%40oracle.com.
