Return-Path: <usb-storage+bncBCD73EGVUMBRBEVA4LAAMGQEQUCD5FA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FF3AA90B2
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 12:16:51 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-e742cabfcc0sf5947091276.1
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 03:16:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1746440210; cv=pass;
        d=google.com; s=arc-20240605;
        b=lqK7sDqeDOqxFBo3U0nQHb7+idGAnnHySfW8G7GM5WTOG+86YdYVad24aBh/HvfxEV
         p1c/F0cQVUlpznaTPDGJGW6KNgcY+huFveQDg4vcT1LA3Y59hBB9Nua0H0Y8AzHSxnKl
         dzoSEy6XQT5h+2hEuvj68cXRqnqkAcmqqC81rDAm1TgI5Ciegze152XFIhrNQxyTnhLf
         E0AKHFJAizXNSa5u6WTeLzcygjt8cEfLx3B2mJdFX/ifAUQuaSKsCSCZ0mYC4c1wtnE2
         tcEgq+SbwvGMCpmr4kiFjbFEjuZAeLMM/gnK1TgtknmBwavSpINk0Bz9GS9HASFK8bpl
         eBtQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=fxBVm4b75Uzmso6DXnTPIDIsYbEL/Hy1rYsJwJJgy1Y=;
        fh=UO+Mie+lMpaP1fPIyb281iiHIeXFGjxe6SPd9UzYuGA=;
        b=NTKCZOotTXMzc/EyS369vEzjG/auinNNDngRMPn2eOQquZSlOK2mO52GjE2cy/XLzI
         7+QXj3qU3OLUJScbRqdJuEZKEsfKvvgHVOQnaiO48ZuSFSKmGd2E16Mx5dAMYoqCluID
         AgERW9lD6r4dEqPm1yMtkCkKhqEs3FF3hVMyf6gX8vLCaxrYamI654eG/rcid8HgKHy8
         i2Ibxo12o8EZaFfA/PfwQ9Covvw1OwuuRP3xWWgIUdWJ6u6d5tNyMRtwUoEjjwvIkQYY
         7SNZDYOMhwt+SwdZ3yvcGuPPKe1Ad8X9sbJ9eo23KwMF6ANmJiD5fe4yXU71serscQV8
         tOIg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=Z4xs3Z8y;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GbwKtqC7;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746440210; x=1747045010; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxBVm4b75Uzmso6DXnTPIDIsYbEL/Hy1rYsJwJJgy1Y=;
        b=G/0W67AzlOL2sSIgu1bDvLPf+81EHOmx6k+kMaJhIFIB6XzSFqfPlgLRiO4Tupp3sh
         1K17coHOELW1cIpGJZg0ETYwh0/V5Mc6rYJpakRxtoys4LMMtEhe0uXK9Jb8262S5Y4t
         B3ucpq9p464RMEWEc4M0UIkADsaae7HCVVemo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746440210; x=1747045010;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fxBVm4b75Uzmso6DXnTPIDIsYbEL/Hy1rYsJwJJgy1Y=;
        b=LO/sUJbTmbT+3l2Vj2S0XhGd+4aobP41tnYU++2A90IXyOcotSQ5Uz//HZZakPm8oE
         tnucIFle/1TRgBklLJJ+PqriyRboqhdt/wvoJDCC3qk8eJ5zsisS1JHwfZ6VfdkUkcJL
         yQtvmq9Q+20ctjYZSkJ/1Jr/ucj1zpvE8RBTem5Lcc2dSqwOl4EtcSvtVcOL4UUC3mbR
         Y5JmiTGYQ5qZ2zDlJHePRdjLY51aT8JKuKHpvJJcRrxICxkhwAIUsTpBGr3WnyqumrVl
         GqnIpvlC9lo24/yNvLydl4VM9PHb8ENW4rcMloPB41zhbzVFLymqfCKnDpZXD5kxm4v2
         59qw==
X-Forwarded-Encrypted: i=3; AJvYcCUEQntyulbMFF9pS+DhjhU3jd5G4VKzA/D/5GbVYkZ8tyj+++BoUoACUkvujQQJE2X+4lnHKg==@lfdr.de
X-Gm-Message-State: AOJu0YyImZyMX4bWP5CNux6adid6BWHPN9BRXJppcWPkdeig9+VpOJDC
	TWyKGDUjfKtwLLxlo+tyucu96yG08Op8s1XuMoPdTJ4U8CpjUi74lNIqXewcRVw=
X-Google-Smtp-Source: AGHT+IHrj0R7UntduhO3C1gNEcGnWMIM++SEC+JVktzWV6Xc/KZiS6TtEsNXeyEcw5EIG6Vg0SqZMw==
X-Received: by 2002:a05:6902:2304:b0:e73:298a:a0aa with SMTP id 3f1490d57ef6-e7571b52ea2mr10137611276.44.1746440210203;
        Mon, 05 May 2025 03:16:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBE7+EinWtrY8YJOZ8R+jZLut1F3MKmRHKbnJxUHRxDlEQ==
Received: by 2002:a25:f604:0:b0:e74:756e:8301 with SMTP id 3f1490d57ef6-e74d95944dels246781276.0.-pod-prod-03-us;
 Mon, 05 May 2025 03:16:49 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVQAWmDCLZ4GW8WmBw7hD1ksAVTj8rOAOhJfvcEM+LakJ27OysD1nMHS4f0xFXXgnGXDxy0blfjt1YWJA==@lists.one-eyed-alien.net
X-Received: by 2002:a0d:e304:0:b0:6fb:b1dd:a00d with SMTP id 00721157ae682-708e134b970mr71209407b3.30.1746440209116;
        Mon, 05 May 2025 03:16:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746440209; cv=pass;
        d=google.com; s=arc-20240605;
        b=G3KqpEFUOOadlVvj/xA9VRmy+xTFgBLUgf26YE9z0pqregwiQcvmcl0Dqlcr3eOgPb
         HYLrunKSo4qyLB6tzztnVMeNovWM4uZ5XfkVjF/Plu9X7BGPx3jnXwvvN6a78iwibeWQ
         42Sxnj+YyLaMRXhhCPg8JaJ0AhWQB4xZ+WCKynB5+86UlfGZ9hF8tVAZ71r7t0bZIMfu
         bbOFk3FegFi3ie0GrO+gFp67ajXNrHxJrDBmfZN6LaVeYdgBrp4HmWLIpjsMbPJ64rFa
         6/S1nxOhd8/4fhBkzWSC71yczI67WqbVg0ppvogUgZw1MAmxEJ2UZ9GfaqjtfsO8XDti
         UwuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=HI9BRUiq9Sy1HfC4WfZOkGEHoXQZKomerwtf3Hagy8k=;
        fh=0Re2g52XJhW2jE8GdHehtxDE6H2fm+fRnSaLr579mt0=;
        b=fw5m7WKKvxeADqG5XMjix3H0apyQAE1RY8hpS0Dq7hnecbunILVukQGzIfv+DoScJZ
         xpCgvqtTwiMjEg4RLLcz4Z7zzoz28UA5v5LGcPlp1i5Y0GdKrUto68+JKLekFAzLJwjT
         3pqDJlG7g1Q/UyNeoG9cxd7R6Rq/yZ6mcIbsyRACkk9im3IyeHMIfgP3Nbp+gDdTJC2l
         yqNC84rYsNDn6fntZdvE4FLelX3KldGN0OgZD/+Lq7cnKNVaUu4qOod7nhPP9mF04KwC
         nXGZ2mAXQcUX58cQDHhkNUEY7YB+3ax8TsZayBgWg1IFPwpzPTwPUTtBavpVBynAhjAr
         DiGA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=Z4xs3Z8y;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GbwKtqC7;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 00721157ae682-708c466e735si74082897b3.199.2025.05.05.03.16.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 May 2025 03:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5459levf007526;
	Mon, 5 May 2025 10:16:44 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46eu0gr1gd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 05 May 2025 10:16:44 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5458kP74025042;
	Mon, 5 May 2025 10:16:43 GMT
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazlp17011030.outbound.protection.outlook.com [40.93.14.30])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 46d9kdrku1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 05 May 2025 10:16:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r/KMVwXAacKoH7yy+XFV8caIJPf6Dnu2j60OexWVfecypsAeyAamPv0MyovB2gFxxN2jvT+dHTacbyrj0T3wdachIEp1LpjQjMzUFAnn//nznCxBtVLznPngNMeOr2g5xApR9QLDd220rH+JeOQdMNosd6tXM39uc4g+Vru3tEr8QptzlTzbspKhkGCBjxxwTQ1inr4UT5xmmk9ZZxrm24GFI0qPTpKSRG8O5WZpMTGLYDT8wRjvCBOQsaOymjsS4tqrTS2d4I39ZL3vNF0KtqZ5GtGDOErpSydocddL9KcVMCi1L+dFsDP6ULbwG2JpNZAQXdIjUtK0gDWdqH4gXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HI9BRUiq9Sy1HfC4WfZOkGEHoXQZKomerwtf3Hagy8k=;
 b=vxB17JzjE2ogln/o5brNDNTuIU9xE/69doSTqEaiGVmYZ3AF0cs70F5MX2LwfQUjhs76lW93wlBcbC86Z4oSiOMSR5ljzw9Ac4ZHTZNSFVxHGTIkaRHAns/2KGqaILvpTH5P0r0AmHjT36sZNY48x/nrCUJLvy72VDDCcEyOlJ9Z3vNj8hjD7Cq6LlBXgRCGL0gG26PCAWQ4qmEp/gvMbc8U8RrRu6van8v+q5WlmB1Fz4HzkdpmflCfMp2x3PepztI4D5Te2U07nld9U6rXzQxIhs4qrjHRRBNBGWBm+41oMvgfiyaVB1r4Me4nNtyEckhK9W30xMRx81+/1pu86Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by SJ0PR10MB4782.namprd10.prod.outlook.com (2603:10b6:a03:2dc::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Mon, 5 May
 2025 10:16:41 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%7]) with mapi id 15.20.8699.022; Mon, 5 May 2025
 10:16:41 +0000
Message-ID: <0cfc6d20-d5c7-4dab-9108-1c985e77c3fb@oracle.com>
Date: Mon, 5 May 2025 11:16:36 +0100
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 2/7] scsi: make imm depend on !HIGHMEM
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
        "Juergen E. Fischer" <fischer@norbit.de>,
        Alan Stern <stern@rowland.harvard.edu>,
        Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org,
        Hannes Reinecke <hare@suse.de>
References: <20250505081138.3435992-1-hch@lst.de>
 <20250505081138.3435992-3-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250505081138.3435992-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P123CA0156.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:188::17) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|SJ0PR10MB4782:EE_
X-MS-Office365-Filtering-Correlation-Id: cd5092c7-4776-4cd1-d0ef-08dd8bbded90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjhPVTZsUFVrb0ZkVGlWUEFEc3hjdTNabUxqZ3c1SkNEU1dEWHNUSWFYY1ZU?=
 =?utf-8?B?MEh1Q2RXZC9ZZDJiTWozWityTG1zeUI1OS9oSzFHV3J3VFpUVndzK2IySXVI?=
 =?utf-8?B?WEJBanZsM2t2cjZNc21lMG8yeHoyOTdVdWdLblBZM0F4VEF2SFRaODYrcmda?=
 =?utf-8?B?Wm9SWWE5OE9ucitUVG9rUG5tSE91cjg5cHh0ZFU4K3NMd09ENHZyVytWNGlC?=
 =?utf-8?B?eHprQ3UvTUVmT2tzUTkyN29PbHF3dDVXTGludExVaFpyQmQrQk9nSmZaQzZo?=
 =?utf-8?B?cWlONG5CUUNEWUk5bzUwc3drV1pCcXFMUGR6SmpLT0ExN2liQm9KVUxCdzNI?=
 =?utf-8?B?NUFaRW4xY2Nyd25iaUZyYk9jQzJzazZsSjJaNGNleitHWUxkQVRvcVZxYVFh?=
 =?utf-8?B?WERYSmhqYzQ1aVFkWU4zRVV6YmlCcitVTkdXQVJWOWVxSXZRYjF6b2piMWhR?=
 =?utf-8?B?OWFzTEl2ZDlHNHZJREF3Q2IxaSs4eVZ6cUpuRlRQQXcyeTVYQ3pKL3h2N05J?=
 =?utf-8?B?RHoybzVjYWlURktEeW5YSnZIVUV6cGF3dWZJT1JMQ0t4a21CN1IzTEpNUGJW?=
 =?utf-8?B?bEJBUDhudkFGc2ViVU50OUg1VmVvUitiVGxQSTUxK2E0U1ZiVGh4TGdLQWVY?=
 =?utf-8?B?T01wTzlHSXhZT1Vxenk1T2hHcFBsZjNxcXBGUDR0V1BFNXlGRW5kdlo5Y01p?=
 =?utf-8?B?YURIL1NiV1I1ZUw0M3JILytLVUF4SXVmV2dpQ2VVNFQ5SEl0eXBsZ0xlbEFt?=
 =?utf-8?B?eTVoc2dvOHgzMkV1MjR2ODBmODlrcExXVFBQYVdoMHRNN3M1dGV3RG9xeU1t?=
 =?utf-8?B?cU9nOGUybXFpZ1NsZ0NXM054bTdKUEswbUFDM2k0VEdKQU5RcXh5MnRmYWRt?=
 =?utf-8?B?OHJnSnQ0SldBU0NnQWJseWxzbUQ1SWw0VDZCd2owZlR5RkdueTQzUkNFeGRt?=
 =?utf-8?B?NHJrQUR5bzNUL09Xa1V4V1FJOWVtMkorVUlYcWh3aTVGOU0yakRRS0wvU0FY?=
 =?utf-8?B?VkhTUGhyK1Z6eDFIWFNDbzZrZnJOUFNKM1VaOHhKbEN2Z3VqVjh4UmZJMzc5?=
 =?utf-8?B?Syt2RWV2R3hiQUF5QVRERnhQSFhvcXBzYkhLV0pnVmIyV01tbVZUaFhyTVB1?=
 =?utf-8?B?S0M4YVBYTkpEKzFHZFU1UU0xS3N6eGRuS2F3VlhqKyt3L0RnREovWllnZEs0?=
 =?utf-8?B?MWVYUlFqSDZ1YlBlM0M3dlhoZzNOMEVYcmt0emFpSTROaGhncG1OY3lBR1lw?=
 =?utf-8?B?dXZSWDBNZ0dFaU42QVlldDNEcFdLbjZiOGltQUJualg5YVRzZExWUFpsVEFN?=
 =?utf-8?B?ZU5wa2tJYng1Y1dlU3ZuVWUrWmdSNFgxK081L3NiUnZoUUJxZndvY1ZKcC92?=
 =?utf-8?B?OWU4Z0ZCcGZZNk9JOGpHWVROa1RQdnJ6SzJ0RFFZTFBTOXRsV09YbG91aWxu?=
 =?utf-8?B?UFBrVEo2YmZLMFZvclB3ZEMvZHV1UTl2enRuZEJHNmNVOVpJRjV5bUpuWEFZ?=
 =?utf-8?B?dlhoRE5zdG9FV1doVU5JUkR5bGFrbFBZd282QVRUY09nN3lxbUxPSHFMdHhm?=
 =?utf-8?B?eHNqR1pIbWVWMlhOaDc4L3FzMSs3MGovc3M2UDREWHVwcjhxTVVzZ0tqa3BU?=
 =?utf-8?B?MHYyNlVaN0xueHZmcGNsdEx1SXBEdGVhenA4d3hRQ2o0U0had05tR3c1Y2dE?=
 =?utf-8?B?TWFmYmo0Q0lYcXd5bTJoS09hVTVXckRkdTNjRzBtRU1EMktvUTRxV1Qrak85?=
 =?utf-8?B?Tkx3elJaK2s3ZjFzT21nYThhV2xxdVlYT1Q4U2t6eVFDQnJieFlabDkzblVR?=
 =?utf-8?B?bkMveU5Bb25BaWRUSTVseU5vdk1RTlQ5RXZrN0ZuNGZPOCs3QUptNUN2WThV?=
 =?utf-8?B?bVZCTk02MWhzWTZGdEVoWGZmNCs5MEVidGtKSXZsQjFVTGhhdXhFN01Cc0lO?=
 =?utf-8?Q?epEBALj6ebE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnltS3o1VlN1WXlBVTU2R3AxaUdZNGlLOGlSdVV0ZTFLYjNpVEluZDZ1UDFB?=
 =?utf-8?B?SUxGeHRHVDVWalBIUWl3NWxGNkF1VzltODBzajVjTjJwc2tQVWN1eTBMcWFk?=
 =?utf-8?B?MXY5bXVwa1V2aXNzbzUzcjQrM1JSQjJ0dkIwUjhwVUpwRW95OGVsV0h4ZWR4?=
 =?utf-8?B?Y2FzWHRoU2tDNWxidkhwb2JyMTRkLzJVN1NRM2o1R3QzOFZkRk5WQVQwTjAv?=
 =?utf-8?B?VUhyZUtQbFJnQStpZlJvNEwxdUJkeG5WNVd1dXVwdFkxTGVBSFRHems5T2FB?=
 =?utf-8?B?RG9PdEVRNGx6R3FxeW9CS2MxU0FRanpvcXozSXUzMXlCUkJCMmtjbGFxR0hQ?=
 =?utf-8?B?dFR4WWZIVUQ1NTNpU1R4Yms3RGFGMTYxRk9UTE9mZE83NnhIV2hXb1FUZFhK?=
 =?utf-8?B?eTRPaUlPSncvb24vRGpMTTF6dTQrYVRTWGlWUUt2dDBLbmJPUDBPWHJvLyt4?=
 =?utf-8?B?UjhYM3hXOFdvUis3c0xCY2FDYXdTUzBaWG1zWWhvbU54RXNmUnNCTjlMMTVK?=
 =?utf-8?B?ZzZVd01nOTFXNTRiditOaW5TZ3BsdnNDOHY2SGVBZUREUEdML0hCWWF6L1dy?=
 =?utf-8?B?SHN0QVdsSFBmZmtkaW00WktWV1lpa3NqL0RIS2MxaEFtYUhoTnFFUTdPa0R0?=
 =?utf-8?B?azF0QjljYTd1WlR2WVRoZkg4TjZqT1VuZ0pXMVNkK3hvT1pKM2lOZXA3UlI3?=
 =?utf-8?B?OXJBckcxRjhWamJJSENlL2c5R2tmQ3BLK2llN2w0TytxdGVTeHgwTmdPU0ox?=
 =?utf-8?B?SXNXNjFKMUtHWEtLUHg4VFlJT0dpM0pCZkx3S09mb2paYit1a3RqOVFhTXd3?=
 =?utf-8?B?ZllDRjlmK2xPZGZSZzlkUzlQMUNhOCtjZ0VDSWlvRlcrZEozNkhpaWVvUTRN?=
 =?utf-8?B?QjV5UXRRc2lPRmhURlJqdndnMVNIZURtamZIUE1veUprUVZLYnVHbzNtME9t?=
 =?utf-8?B?Smd3WXFISnNuNlpxUEFybTlSWXZvaUVtOHczU1dWYnZKTWNlazJGT1Jnb2Fr?=
 =?utf-8?B?MUtVY3YyWHRJVEFwcEErSnVRNDh1cCtucS9zbjRJMjVkOHlzaXBOQXpUL29n?=
 =?utf-8?B?Q1NNWGZxMEJiY3QxeURrOFNSOTBOaEQ2MWF5VkJ5NDJxQVBtY1NSaFBtS1Bw?=
 =?utf-8?B?MDF1U0dzRWdSUnovbkI5aFp0OHZ3RUJwU1p5OWZRWHBRbWRrQ2pDNXgwWlAv?=
 =?utf-8?B?V0g3RjY2dmJ0VU1OdDkrMXl3Y29QZzByT2EweXByc0tackF2YVhLYTk1YTh5?=
 =?utf-8?B?NUdvbkJlMjdXQnJIR09HbEpKZFZmMkUvWmRKV1pzRGZyZEt3Q2lWcTRQc2xx?=
 =?utf-8?B?NWtCYTUraGN2SGNlT0JQeUc2TnpEZU8ycm80UElhRTNHSzdma29tUXdpWUFP?=
 =?utf-8?B?bFN1TlNkdnFDdWRla2ZIOUNFcmsvS0kvUE1NYzVRZDlZallEdUJ0YjZ0ZWM0?=
 =?utf-8?B?cm53TWNORmQxRWZDdkRVMlhhZWMzbzVwd1hYbXIvRnlNNGZUUTkzZ3ZHcEh6?=
 =?utf-8?B?ZWZRL2JBU29xZEZyQkJBaEVDU1FVZ0JvZlRtcEM3bUJUaWpZYyt2c0ZzeXh4?=
 =?utf-8?B?bHJ0RUxKa2dWZDBzVGhJeU1vTEdQdUhYdGVvMDJzVWlvQk5kRDdrU3MzaTJE?=
 =?utf-8?B?TmxpQVBtVTVyc0tteCtzODBHRkdnMURmTlBoK1hJU0xvbnlNenZXcU02ZGp5?=
 =?utf-8?B?aHdTTDhnZXJVaWMyTmJ3UlQyK0htdEd5VjRJUEVYQkM1WHkxdG1XcEtVcHph?=
 =?utf-8?B?bHk3RFRhY1RSaWtrc05uUm5laHZJNjJsWGU3SVZWbXFYTkE4ZDJwNGtQOW96?=
 =?utf-8?B?cGhFRm5MSi90ajhHenZ5ckZLdUJadHVxVERUU1FaVDRYd0pzWWtzdXowdGNz?=
 =?utf-8?B?c0RUZGpXK3FCa0I4OWhOZGRoSmN6QkVVa3dpbHpKUG5FZUNXc215amc2eTNs?=
 =?utf-8?B?WFVHeVFXRm5DQjFEY0I3N2lRM0Vzai80bkxDaStWa1lHak5sL2NGUDFlakhQ?=
 =?utf-8?B?aHp5QVJ2dWNadXBNUTZpVm9jSTZtcDNvTE01UkZ6UGJJUmdDVUZScmhYNGlo?=
 =?utf-8?B?UTN0RWo5U3hIeTZkTDdHMWlnZWlJVFF6dXJWSUhITFpVaHgvWTBIeUxTamNF?=
 =?utf-8?B?NnAzcXN2azJLZ0xYMzJ2UU1NZURoanYxSkJGTTlMZld2blYrMW0vc3poNVlx?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: f4e3Z+QtM/DN4q07Q9Q8w5veFpLCOWujx655BmJiA1coAjNCmjURsfE/ZUi9RYUU+QVX7zawavLPMTZiZ4La3Ir14Kw3u8d8Abg04MoHe40L1C3/C+mZEkYBiJy0MXoiXUE8en/vAsTpHWQV1Ilvx2bRldc8C36RVxEjQ7Ma5iprSCgROMV9Uu3/k+bBmXtHbV7tXtVruXzhCgOZtXSN8AjBdmvkJrP86iqlrYgCWjulYN8IFAfiCD/5hf+R56Vmc3LohYH+b96jAFfm8zOqQFrb1R8cgKSWyo2oADV/gksfQ9m44k3tq2FkdC4C5PnPoBm+aCgD/NoOC2sweeNj1k3whK7SrcUD5IKK96U5V9ELR2PZQSHnxfnUU5mwX0+1VMkUf4m9P9nF8SKz3OHxPY7KYoeemh6flbpC4C6CDYPm42rxWX7zWdZ5jjwFXTn3ByR4Mmb6B2p8q+NVbhSeTTNAumJqk3WDpFwE7LONn12urF/hSIhehdKcghZ2Y0tf5dUmS/BCebsWKgvR1OrzcUKyfb7X1UxJLOaVgRYTuQLSDXruAacLiBLX3S/SJNXBbJavtZ3xxKDl7L1RrIfH/9r1BA2un2yGyv4Y5GvaNxA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd5092c7-4776-4cd1-d0ef-08dd8bbded90
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 10:16:40.9980
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PX+aO4nKmUx1TJP4mFlTlOZS8ZiWtx+MUL3/sVhhir2B03WihSM8QkbopFXWH0bdTabA7NY0VDJXY+yG9aDzgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4782
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_04,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0 phishscore=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2504070000
 definitions=main-2505050097
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA5NyBTYWx0ZWRfX9SVLEYP6yfec QiQk/dWNY9RaxcZc5SsREZISvUCBMEsWlGiFB5hYyBzLk3shMjSemxZjO9mAh0Zsl1ZDNPTcp4M HhKQ+LJnh5cKsaWBeEaltTshOOiqpCKwDvQkIifMihl9ePhknh6GHgE3Br1YzOwGONX/LHlNYOl
 jq+/kmxIoWo4fXnVt6X9ctgnRkJ4rl7jMYmGEX4WPzxad97MG2MEjh+JDwsh9tjQNHfCrvKnyHX m1nZTcTj8TqO2X1RM/oQ5/patSgU1J8LNjwvZjhgN/a4zeEJMM6iCkc9wtCMvDxzysArMFLufQH 1oyPIfeb46EaKzLvVxnUuxH0kiMQ6Bm0zC2n5PvY+IrLagTaQSKtiq93JBASuflNDfoBvEO+z+K
 h1nrUC4YT3HdD47HE0sV7r2ouWmjtp/R1i/LjzF3xYpHfWcXMScxs51x4WuWDsz4poScrEDW
X-Proofpoint-GUID: MG7LvGxzsa89SXdg4HUgfoKLC66p4Es8
X-Proofpoint-ORIG-GUID: MG7LvGxzsa89SXdg4HUgfoKLC66p4Es8
X-Authority-Analysis: v=2.4 cv=M7RNKzws c=1 sm=1 tr=0 ts=6818900c b=1 cx=c_pps a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=yPCof4ZbAAAA:8 a=_MckG_xjt8bSkswAZlMA:9 a=QEXdDO2ut3YA:10 cc=ntf awl=host:13129
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2025-04-25 header.b=Z4xs3Z8y;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=GbwKtqC7;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 05/05/2025 09:11, Christoph Hellwig wrote:
> This is one of the last drivers depending on the block layer bounce
> buffering code.  Restrict it to run on non-highmem configs so that the
> bounce buffering code can be removed.
> 
> Signed-off-by: Christoph Hellwig<hch@lst.de>
> Reviewed-by: Hannes Reinecke<hare@suse.de>
Reviewed-by: John Garry <john.g.garry@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0cfc6d20-d5c7-4dab-9108-1c985e77c3fb%40oracle.com.
