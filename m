Return-Path: <usb-storage+bncBCD73EGVUMBRBLVI2WYAMGQEJ3AU7TY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F20C89DD12
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:43:59 +0200 (CEST)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-3689678c5efsf54685805ab.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:43:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712673838; cv=pass;
        d=google.com; s=arc-20160816;
        b=jFoj+06t4JADzUNSSODwzAtycvdoLfSH4rdqlVAQsWVpD9JKq2dqEeBlUjiG7sC6v9
         un45lLFdpHv8PHTAGvUn66EQhgLt1xBOJVOnDdpFxwl7MoIoHIzlHtZ5w2s25D448sYO
         gFcInCsEqjkKmd0iEwV0I/CJIUVjPik0SC6hab6ySHt5E0/b9zuI9ambf14O+UFRaDY5
         cyoHI48HYju4pJyHR7IOXKb+Xbq3GRq64znnQngEsG71jpD4aDlWLXJHL3aYurTArDbB
         HsyKxM7kcVibK4rKDYIEXRGM8Rpa8RFSbXQ7J9lM0CEfNV+6sG5icRE0u456fpsXGqVR
         +PzA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=NJ+H+Vmgqyxp88bx0dWH9Dty1BgBgPWFYj/yUawrclg=;
        fh=64hjRwVMM+L8a5h4Kv0BcUvDgv5k45rMYwoiAjFY7DQ=;
        b=NP0caOnpEd6IHaoMnE7PnoGCmzDQo+I/DdgDbnM7g+fCQhOKSNFV4BhuIKndnqw+RG
         +H1gZiQ1gt9rWz7AojkErVOEZ7KE5Xd3OLd4ZSGdnTAwDPDOzocayUm8u9kmuappC3qy
         XmamHtUsVVZWLjiemQZxpUmzF2qAjGIuBiBOt/WOV6SSYQUkfqoyuj/SeMDTiQYvZnvz
         JmiMVw5ZWdgDXX7Ix4wLO2dHPpb9nrdshijJtWOxqVd+6UCOHgwyv83eJVE09B9RmhxU
         GmvIXi9sgHorjjyVJ/tvd8QaeOvOR3pC5QehXjCpKmWaOXwqKzaDuekml4c6FQR/amXa
         OE4A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=Xxu8gnjW;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ckQTghvk;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673838; x=1713278638; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NJ+H+Vmgqyxp88bx0dWH9Dty1BgBgPWFYj/yUawrclg=;
        b=DcHOuQqba4wjQk3d3r8ohi9rLsDY4jvVTgG1/rIe7+2rG6Q3YghMA2j4ElvCyXtDzc
         z4pA3hZ+XVgdxVU40p2nGyguIWXG4uxp23V7BXwYF4LYJUs9AQsnsJ67PEE1iSukg0Mn
         xRFmQcj6ie/CJxnFxjX71cQYRS6XFnB4BPPQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673838; x=1713278638;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NJ+H+Vmgqyxp88bx0dWH9Dty1BgBgPWFYj/yUawrclg=;
        b=dDSVME5dUjRyio8xVgfkmJis3KJOwAjOJ5D5QC6qjiYEaGJWBcCEjGpGBkyZSh/EJB
         EDpD9Z2suJ2mkWXyedT6OQjmWzTx5m0zmpwwo0PjTz/RY5m0REAq2eEkvF4PaAKQkiZd
         tcieEj+kUjdADlY5uJaZnDgl5SGQ43ryY6aDcgi9qPpoz2bnvYYM/ZBvdWyVH0/kXKUR
         ojT0mNXwpASjwdhDIXlpSnXR6yS5GwhujdZeaZ+ILtZS2PeVE0Bv2FgBlG1fXZDlXhYl
         0UahsSNS+s7TH3cvN3XCtc76GSpGqn2bYlGnZt4ZN9SNCToVmmJR35Eyt9bjkKt8jHev
         kJ4w==
X-Forwarded-Encrypted: i=3; AJvYcCXtoqrDycQDr9Jr/QRR19hBOGbTZmeVvYEGvkPAO/7kTXemL/OZ8GJd/Uh4tvqVyD/8S8oQtF6Rpb81lfGwClWLTx1arKeUYS5T
X-Gm-Message-State: AOJu0Yzf8ymBn2PNXOm43zQPkGjdqmnkDapstzcKqIm9y1LKHJ/Kpb09
	oFUPBUIca/0yDxKjGx56Kh+5t5KoblTVUUt/XJxwXQ71BcG/DTYk3lWv5aymaMw=
X-Google-Smtp-Source: AGHT+IEVS2Bi73qmubixhI8ODx5pTK9LIX2s9l0PRZYqBXSN/+9Aoxoyk9uCFNUYLiQLZE86qHHJGg==
X-Received: by 2002:a05:6e02:1c27:b0:36a:32b3:55d with SMTP id m7-20020a056e021c2700b0036a32b3055dmr50660ilh.2.1712673838372;
        Tue, 09 Apr 2024 07:43:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:339b:b0:368:589a:3ea0 with SMTP id
 bn27-20020a056e02339b00b00368589a3ea0ls4319126ilb.1.-pod-prod-04-us; Tue, 09
 Apr 2024 07:43:57 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUrC7lJCArn8NKkmrpfjNK3bUC0xqpN8wCmJjB1uyriLz2S+dGcjVFFIs4bbVaY+dX1SPaLTOZ3mdtlCiUUASSXdi3F1ZPRHzdiqqGu0BAQknvETvE=
X-Received: by 2002:a05:6e02:1fe2:b0:36a:2ac7:9491 with SMTP id dt2-20020a056e021fe200b0036a2ac79491mr53242ilb.6.1712673837386;
        Tue, 09 Apr 2024 07:43:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673837; cv=pass;
        d=google.com; s=arc-20160816;
        b=VmMhcBfF+Qzau6uHKpnDIJSb3w2IdYWYzxkFFJZTnMkISS5zf10BdlKcxSUdcWk3Sf
         whhaY7sXQc9IrCkaL+YmZrNy1mZy4UzGQytRVVzqwQ/zMO8EXR87697s8/RR0mVuh0CP
         sHGPMGjCj5Bh9zCjY4c9RxbfmwO+O6dgsMGnVOnMoLJCMNsNfCZ7MDba5D43ZZ8FwdQY
         JShChoDaanExpuRhqCytc5TX2deHzKpj5eams6AkF+WEYF7L4+v+EBXHODhSStyIRqMU
         2FZckFsxoxCV1i6jEZMyLBwV4iXlfUBbySbjYbw3OWQRGMWptvgpDDr3aGMYcyk9ODUU
         +ZxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=qM5Dmvsup6HfE2E+4Ybaolxv9ELbKUztVFF/r9DRtz0=;
        fh=lKSo0xrafm+1wUxgEoEQJiPRz2tEH6OtrDKtFI86ofQ=;
        b=Syvnhbh9vkyXbjsFWEO+Kzy61t8TzOvPrmdKJZ2mhoiMp+/zuWq2ZKl3LA/LQKc9Gt
         xL1Hek3b/k2WCQdtXtBkLid/qpsotJ+JT4Ta+rm0F/H28xvQ50cYgmHFxbZlpWKwLs5o
         fBBiYspWbzXSTWoksQwbgBL82Hw8J3VTnY9Wt3iOEgbrd4cCKI5cIthHvsT8KhIhPs7C
         l/GfoqsoMFeITYDb0Qv3qbn4Qxl1UEnOEjezpATK84JV3lwsb3BMgmtcGLiu+Z2gYRNV
         cSlT2NgegdqUdbOQVz2ScJrmJISDaoiVJHCZ8Yajzo4a9vTE9ls8Fd988aqrF4d2tJ2c
         4YRg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=Xxu8gnjW;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ckQTghvk;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id lb14-20020a056638950e00b00482b26a5662si84218jab.156.2024.04.09.07.43.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Apr 2024 07:43:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 439BYsXu004450;
	Tue, 9 Apr 2024 14:43:36 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xaxxvd4j5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 09 Apr 2024 14:43:36 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 439DW0dd040814;
	Tue, 9 Apr 2024 14:43:34 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3xavud38te-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 09 Apr 2024 14:43:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnUPjrzLXqDGk5uhCrHHGB10cPjF07fHc1XsWnk5xUDlxlFzz6zbAU8kJ5PZyWBoC+ophHA3d/uy4yiPbHXeNBJsz3BTfFX/raU5xzVcLqxuAlLDGf90TBnJi4ZicA3pS5SVGgOmzb0dWeUHfwA/UeA66gs+m/t0DkrIiX4oUaS7uwqGDd1ZYj9cnUk8ftPbBatoaE01fZCveDQ758hYWW5XIcrnB7ukscN1gRHHLWspGW07SfFDaIdxI6XVmqImDJ6crbO3U/zfc2nsv1E0/wdY12RK1KNQBLFdtJrm2sKnxSxWxha1Q3rpxwSUq2BbE+03p71RfajVh7oeDnNjHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qM5Dmvsup6HfE2E+4Ybaolxv9ELbKUztVFF/r9DRtz0=;
 b=KFvB4AOEezoUosNG3sScXMUmQQHqAjojPAtzy8iyCgZu3UnFlah5RkFuEra8OZ5dfL0PRQCKV385c0dMsLqAKru/7tecPLyzizrNHOUiqq1JwY3eRWjnfCET6Kk3ZKwb6Dd4RnssAqlCOMi1f8MCG15c91W4fywVppPiD3YmxgsIhMjOr0QCNPJJrxj6RXzrhILmRhdPetKXisyGQucJaN0nk0N79FHzelF4dzsB+9/cgIF3ePF8/vYiavBbi+T4s7MvRTxXLBfr6rqJogPXNiNnpoho14diUzevxOVUvCVm4wgXOtarguo0+sDryHpbADluW+3Ncrw6i0H2GPbYww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by PH7PR10MB7730.namprd10.prod.outlook.com (2603:10b6:510:308::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 14:43:30 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 14:43:30 +0000
Message-ID: <9655ea04-6f5c-4e9a-8d3e-00cfcfef4bd7@oracle.com>
Date: Tue, 9 Apr 2024 15:43:21 +0100
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Takashi Sakamoto <o-takashi@sakamocchi.jp>,
        Sathya Prakash <sathya.prakash@broadcom.com>,
        Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
        Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
        "Juergen E. Fischer" <fischer@norbit.de>,
        Xiang Chen <chenxiang66@hisilicon.com>,
        HighPoint Linux Team <linux@highpoint-tech.com>,
        Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie <michael.christie@oracle.com>,
        Jason Yan
 <yanaijie@huawei.com>,
        Kashyap Desai <kashyap.desai@broadcom.com>,
        Sumit Saxena <sumit.saxena@broadcom.com>,
        Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
        Chandrakanth patil <chandrakanth.patil@broadcom.com>,
        Jack Wang <jinpu.wang@cloud.ionos.com>,
        Nilesh Javali <njavali@marvell.com>,
        GR-QLogic-Storage-Upstream@marvell.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
        linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
        MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
        megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
        linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net,
        Kanchan Joshi <joshi.k@samsung.com>, Hannes Reinecke <hare@suse.de>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-2-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20240409143748.980206-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P123CA0376.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18e::21) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|PH7PR10MB7730:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i5bMxs9i0phSauKvQHgypdpMTxNbzM8tRu2WaXrhBH4iqsJecdl3O/mEXPTXepIPVaX2WHnpswIVJGUA3OKtIzyG8jqptzNDYostzT8F+GWyf6KZCYWq5j/u7+/Ot7CPrG+oyhFfniT0VZLFzL5dWGLe/aZTz1ab5DMnj80BtSqWUZz80rbZ6EUou3RG4Lw3JvGqMx4cjSkbNCJZZMBQjRG1vb5kTvcG1k0jMaYBwNvrXTilv/xuxILkKkXnPnevVLQXmDFrOf8S0KoZ+SFlEaiXU3TwLM0Tbb+/ju1TgwN7ThHNvpEV2XMOS+talkvV+AZlPXTgNsQVzOr/DVedjWQRnZOfLEPx0WshUQb7O7sIka5c9Wr1cBbPyAm+3AllKfFu0GGL/pdng+KQZPyKfVksG6HW3mw8uhqsr7ASskc8LjObtKYwG9w5/EG+Jh43r4fgD9TSdZnz/tHTA3Qsrw6KN3Xj7t/sux5Dx+jlcP6QrbSQBCMx/w6PrQj/LBWED7970P/VQfLQfX7DwZpdFPPq1Zc/VAk3+GC23OfOitMsSr2Sh8xYUjVKCin/P9IjeNpuEIzM3gJCX2p2kg9okTJFRxySgHBkb61Z0hnjsTm75Ihfc3LOc/bYNX7VIq14eYgDFCkQiyk8ymiNonZJtl0C3mT+zD8luzBWiYzHjF8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFRFNXRBM24ybXJpWHFrZk14R0NkTkpaV1pNeDA1MWFoeUM4RUU0dFdFenFD?=
 =?utf-8?B?U3JlNzlZYjQ1aStWcitMdXlhOFYwN1VDRCtmVEJxY0w2ci9jN2J6OHZZVFpY?=
 =?utf-8?B?YkNOM1BrQk10RkZKY0Z0K3JWWG9ySEM3d1VRTXdSazhDcG1CdmdPUTVNVU82?=
 =?utf-8?B?cWRIdEo1NHFOUDJYVEF3bGR3SHRTdXZ5ZXBFYjlXbDYydWlnSENJVDBMK0NV?=
 =?utf-8?B?T2I4UHNmUDV1WkxmaFhSUEJPUlBZam1DTzlaTTY1S01FeUZUaHFhYURJd2pY?=
 =?utf-8?B?T0JjS2RLcDF3UlMrUlBnS1R2R3ZibnE3UnpYV3gwVmxLSy9oRThTWG9lc3Ix?=
 =?utf-8?B?Y1V4aFUwS0tvcDRQaUhyc05WbHFITFlZZHBOZStJUFhRMStBZThoMmt6Qlhx?=
 =?utf-8?B?YkNtdjV3a1hySHdBWGFuVjVOZU8zb2QremhIS1pkMkw1MUo3TDhjbWhqbUFH?=
 =?utf-8?B?OWo3SSt0ekpMWGhIVm56Q3g5RzR4YktXdE9PcHJwbm51WnZHaC9VVXFEenF6?=
 =?utf-8?B?ZldrY3NLWmRrZ3BUbUc0V1AwYm1za2luRklvRm5JOTlkTHR4MkRNVTFBYlB0?=
 =?utf-8?B?aGV5eHpSQ0l3NXBhQm1ibm9yTStWbHhzVHk0aFhORG9Vb1VXNTZUZXNmSEZi?=
 =?utf-8?B?eUtTWWk0djlOdWdBVHk5SUJMUGRmNmh2dW13dk1ORG5seGZxWlFWTW5XVnlT?=
 =?utf-8?B?K2cxeDJET0hVcERUQ2tWc3JSZk1nSFNnV3lqYnhsYVhnV05CQW13S1lEWGNE?=
 =?utf-8?B?ZFhPVnpSZDFVRzZqbzFOdkVFREZkaFRSNDljVTNoZkl5Q1RyTE44Y2ZvRzBK?=
 =?utf-8?B?NmUvOWJMQll0YWt3L1BSMHF2VGxtbGlJOWk5dDFQdGNoNExIUXZpVXMvbmtn?=
 =?utf-8?B?b2J6UHJabkpEcjA3MlNjZ2FtRzQ2eEYrQlJxT3FPL0JxNm8vZ1B1bnB0aDVh?=
 =?utf-8?B?YnhWT0d6Sm1Fa2Q0YU5uTXF1eGtnQ21seHpyNThaNStVdWVvOFNiOFo5RmJm?=
 =?utf-8?B?SmJDL3MzYVZWYWtrQmNjd0FHTTZLcUQrYzh5aXdsdnpsbU5scXE5WmFEbVhh?=
 =?utf-8?B?MVJxNTFrN2w1aGVRakh3dFYyeEpjOExSMHVuc042bE1SOXdnM3h6bGU0eGVO?=
 =?utf-8?B?T3ZvcUU1WDFocTI0TDhnbWE2RktDb1hnM0wrNTZIeHRRM0N1Z0M1VDdDdmJW?=
 =?utf-8?B?TW1hZHNma0FrdlhKYzgyV2l6T3JnMTg2WUZLa2FlVTFhaU1NZmJIdXduWU9a?=
 =?utf-8?B?VUZuSjJiOXRITHdRajZRb1ZuVWR4VWxHQWtvVW5Odi9yeEN6OHRORHdKTCtE?=
 =?utf-8?B?dDNSaDZ1T3BzTnI2MXFJbDRCWnNQRC84bGRDOTNYakFHcEt5UlJpUU5qVTN4?=
 =?utf-8?B?OGVSNUFJcXFLb3FJYmVsWlJTY3BCZXdIeTE2VTY4SVJPeWtYalFTSFo0YXNm?=
 =?utf-8?B?VlJ2ZEpDeG5hOFJDeHkyNzhHcnMyY2E3UXhlQ3FJNldyUmg2Zm8rRjlaSE5G?=
 =?utf-8?B?aWw2SVE0UFpYSUJQQ2E0TmRpTVdGYS8zVHRvU0RmakpXczRlQ0JoMGI5VFUy?=
 =?utf-8?B?d1VhYXFSdFFSN0taR3gyWmp3ZzdZZ1kvS1U2WTRVcGdwVE1MMGFnRnNQQWsr?=
 =?utf-8?B?MWFscFBWbjR4YUdhNHRYV0xYY3E3UDBCWll2emtiMnp0Nmswckc4Yi8zVkVl?=
 =?utf-8?B?Vld0THByMGRpMmsyZHRlSFg2a2RaMnJrWVZ3YWZNSllmUFFla1VxMWdqeXEv?=
 =?utf-8?B?b3IxWndJSkI3U0RUMmtWMkV2RnFsQVQwZDVKY2RiZk9xdzlPOGNmbnN2ZEl2?=
 =?utf-8?B?L3ZZUEN1cTkwVk1kZVp3c3dJYXhPSUlsUUtRNFpjS2daU1p3b0R5Um1lTTdh?=
 =?utf-8?B?TW5JV0FuRXZsNGI1VngzWkJFZURyZjcxc2c2VS9IOVJCREd0eGZ5Z3JhbVpL?=
 =?utf-8?B?bmViRHNTVnJodUwzMjJQYVZJd3gwUHhyMS92ajF3YzNETU9hTXFGRTJQUnpW?=
 =?utf-8?B?U0R6bm4yZ3Vldzc4V245RytsNFF4TWl2YlBRNG1WV0FBUEtuWDdxSWFVNE1R?=
 =?utf-8?B?TG9ZUUVYcW4yYlEyTE9FUElCLytMckJjTUs5WTVyTkpiQlJUeUF0cVdoVnRn?=
 =?utf-8?Q?UmGs6xjAIH7gq9w+ecP5Vi0MG?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: dIulhvzlPACagdlbH/M/L2m2grDUCFVmjtZAsSDakHfHXd7LZDM9nqYJ4x2IU9KMNaIKHbarOvs06xFGQpeG283IgG0Nwgb2SJmAxn2JuvCcUKs5QlTtklMnnvc6FMGEYH2QSy2kOH9RV84IfQRur96Oq9E/cD/EAgeKKXxoPUIMfYfknnQoxgjMUi7ICocaxCwbgbWZ65kNL+BQWkf6ElEz/NPALYIARD4ymYK0ZV9DI575WrOXzXAZhF5utsiYouacG7/Z+5Pjbe8gTy2jo7Xr0v+oD20u6x/hx1mbmwSWPSwJ9Zk/v7BsRSu3eqgjbCq7m2DeBhNCgu2qJuLduwRcX0xNU3P6Ph+Uf4/UXX/Bfsdk82GWECCCg5jUGf8wdg5sh8NFn0jRVPJ5QmwPVYxfPCOZE7rtFVyfE9karYaPT1XSmX2g9QyMzBC1ulsBhgIq1Zpc1IjJj7IOyEZIU3kGkEgMyM5EcV6IDCfHJfapaGuhRchwERaedcBFz0mUb8CAnonYcBDGqniS+wbT0DKMskxPVAxEO8OKRqyXJTn6Tkk61OiJaZH0rcYqggbp+gTk7RQ+xZB5FokIYENfvWg8e8emll/32CSNehVNfWA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3de9836e-97a9-41a3-9fa9-08dc58a36c54
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 14:43:30.2543
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ffyk0/5X3giz4nkaDvZFwGpKxG9KGmoDmLQELF7zOdg2KU3z4pFz9vfO3qzqnexpIPaNFtluSi56yFiCpW8u2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7730
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-09_10,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 mlxlogscore=999
 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404090096
X-Proofpoint-ORIG-GUID: MP4N5nFsVhpAC9NOSx6cfY7376hK7gTb
X-Proofpoint-GUID: MP4N5nFsVhpAC9NOSx6cfY7376hK7gTb
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=Xxu8gnjW;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=ckQTghvk;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
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

Reviewed-by: John Garry <john.g.garry@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9655ea04-6f5c-4e9a-8d3e-00cfcfef4bd7%40oracle.com.
