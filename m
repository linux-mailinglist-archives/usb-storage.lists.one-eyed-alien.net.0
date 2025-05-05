Return-Path: <usb-storage+bncBCD73EGVUMBRBJFA4LAAMGQEIAEFMBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-x1146.google.com (mail-yw1-x1146.google.com [IPv6:2607:f8b0:4864:20::1146])
	by mail.lfdr.de (Postfix) with ESMTPS id 147BAAA90B8
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 12:17:21 +0200 (CEST)
Received: by mail-yw1-x1146.google.com with SMTP id 00721157ae682-703b2fa08ddsf65857627b3.2
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 03:17:21 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1746440228; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZYmHbCLy7nxcWzRsCBwE93Wws2hdpQCdMir1py+iDWz2xj1Ie6YTVIpNXf6wgJ7hk9
         t25MimoeSUDjpvvnpYK195N/Gak76Bu25AiqGP4bv+aNrHtUSENRDMYay0BA6yEqvfxa
         grpCzyMLXmppiVl8fChLyHZx/TN7aN9QpZxdmVFAepPMQvSVky0rDQUMRWRZ5ryMUScK
         VkWITZG4dRANdpv8B8sF0/oTdmnpXm1Ja89U+vZGemcs/PMWsyjoZP0EGQGlWeNUBla3
         3w8AeUsN3fyZ9x/qcwoZE4ICWEO70vewZY/LYSlqic+u8cm8g9GhJLqOkMtq5kn9AwOG
         E9Mw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=khkvVEnQU2p7vbZV2JaG9BLSLFQvXTmpRfHBZjozGPs=;
        fh=x5zzveN9wcxEY2lvyFiwJCoYjqvq4gVp+lNSrL1Ip3Y=;
        b=kU2t7peJjW0GmS4kddj5r/Titf+XcK1PgEb1f+8/O2a3vjYmYehs+2TfHDj2g7pgxB
         4oa+9ObyTYPRd0r7oZTGthpg02a2LhDwKC0wkenJ0g7eJggLhrYTXLf62oE5DciwbB+3
         6sV0OQqIFAAsXSNVcUMqW0Lo49kqLoDKMxlooLUhUOy9vDzBzSOm97FSSRemYU+AQCTK
         Sn/QB7Tlx52fRXWqN8Xe9ElJEYS73nRNWZogubsJutRSgMmsHdYbHfQK4JIx5IydXfBB
         LumNuWuMmtNdr2/eMaZm5EBKOJ+QiBOAOtDRqeaE+YcBtFiXh1QMOJ23IVnljYtEkyvW
         poGw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=JiczQqyt;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Au8UTuMy;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746440228; x=1747045028; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khkvVEnQU2p7vbZV2JaG9BLSLFQvXTmpRfHBZjozGPs=;
        b=CnPDhf+6sGYNxZrkW1D2H1JAq9PlHEkjYYLuV2efKIdyjCfxkf7F9TlEga41NT/twq
         ZbQyoA7sn6iC3ER73PrCbm4TDNZH/2/+3V3GKEQO19zTilT5RE+KvkgDyW6GT/7wzNaX
         SxolDBnJ2kw2m/54EyORnwW4s64CobiBmP2I0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746440228; x=1747045028;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=khkvVEnQU2p7vbZV2JaG9BLSLFQvXTmpRfHBZjozGPs=;
        b=QE0l2mL3iv92oTyhq+5Kr6r3wKh/G9yz8gajRKYc/x5kvqz0hoAF6taZ0xUMANAvI5
         q0IhHdMXhiB+wZRPk2q53lObmwCjnq3y13vWC2fS/fq6Usi0DqRNrjtW9TUE4jE4vtOt
         9iqGWEk86VImk+bm/toS1vxYVHYO7/QIcwkbH9d6yFsc+AUWBMUyRoRk1+kwHzm1Dyia
         8tQXkUomgdIIBudATZwgBmYkZsLqov4Boff+iLb1a4uS9xkXZbIGpquPUVT8SUncnmif
         h0gUJgV5wtW0WL/HGzGzzOtTM03sgiJtupxbnG9khZlIx01F0PiquDEsysNWaW3o3L+f
         Zo+w==
X-Forwarded-Encrypted: i=3; AJvYcCUXNtRgIVyUYdJNNlCd/CYU+IMCmp/eXeyxV/538xIjaYoLs6NgbysQjINPkn1iaxuARvy2ng==@lfdr.de
X-Gm-Message-State: AOJu0YxmGiJ3LyWlS6WYTvdJ/+v4sI4/iUtkFBuA8zJNDov71g0cwezp
	jWpxwzDyHP28jHnL21FmwKc/uIuUK6OFx5Fxolfktq2FWgg9dIGaW9g3lfh4hmA=
X-Google-Smtp-Source: AGHT+IFf+Cz/IK6cY7IGfVT5mX9ROy/mbkTmjJk9NRwqwoDMFrRG8mJWd82nUwKBRMfsKUb5s+hrhA==
X-Received: by 2002:a05:6902:110b:b0:e73:11e1:871b with SMTP id 3f1490d57ef6-e757d0d1f07mr7741283276.10.1746440228355;
        Mon, 05 May 2025 03:17:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEc1TRHOZgQe/LTHgJAGDDOcprGdtgXZwNAIv33btPzuA==
Received: by 2002:a25:aa67:0:b0:e73:2691:7713 with SMTP id 3f1490d57ef6-e74dc9b7526ls909377276.1.-pod-prod-08-us;
 Mon, 05 May 2025 03:17:07 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXc0LeabNYxD6rAJE6ct9yOL+vJpeO+Tu1im+6WQpWcZNn20kY1JAvsdHdw/POhcr1LmkMwJjkcnyR5Gg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:30b:b0:702:5134:aab0 with SMTP id 00721157ae682-708eaf6d7d2mr81634317b3.32.1746440227495;
        Mon, 05 May 2025 03:17:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746440227; cv=pass;
        d=google.com; s=arc-20240605;
        b=DUanIoYWNSV4c5r9mN3XCLVZCYXu3qNIXf79lHPefpHSZOC0zPVVqXvgm3nXS7kpNM
         f1IrAqJDmL//7eKMwbReW+rGtTNV/+kI4xhY7EWS+6x56TQuur1LR9MotrZkmihMA6vy
         u19GCZzm5wL2PLyjf4TvgLGFD3l7sK+MRNXinONFGCqW4bdlD6cfbOOH+o4r74wwlVw9
         1x/X+CDtPXGlytNXqGEEo62FwX+WeBvffjUiI3JSUMQniMA/CyzUyAB1kS/tZsN4xMsf
         O7JqniGHDSmm2htoh1txp+UTBm3BBGN8IdDPvUleSXqwwwIGCL1BnJDpT5bEfxeI9xia
         qs/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=HI9BRUiq9Sy1HfC4WfZOkGEHoXQZKomerwtf3Hagy8k=;
        fh=0Re2g52XJhW2jE8GdHehtxDE6H2fm+fRnSaLr579mt0=;
        b=iDg4tAfxqOzTVX0coj7g9FrCQLQBwx+/I6/EWrgt+WGk08rDjDM7c2E6kJGQgj2a/d
         BMey6j6AmUL0JbgabT6yZ8MWkDHhYdTGKRZkCTd6r8Hnpnh2vmaynd83/0GchTPQyOdW
         TqlCYc7QFp+wEYy5V9zonhSppPuiP3pfmDxvqr3uTC5Bqbh6LbRCGpyFZ5/edA0JxsxY
         IP1IkXsdhDTH4WOfC894w+4lrAbXkYgUZNmBBQiA8lRdja5gIihEnhHcShI0rLy5Hvfl
         3HF6OlSTHcQktVDvJEpX19bOeB5he5bd81f46+5M9XJrr5aTJq0xLlJaDqX5kORkwWbg
         wjdw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=JiczQqyt;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Au8UTuMy;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 00721157ae682-708c466e704si78245157b3.227.2025.05.05.03.17.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 May 2025 03:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5459la9j007434;
	Mon, 5 May 2025 10:17:03 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46eu0gr1gv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 05 May 2025 10:17:02 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5459NMl2037684;
	Mon, 5 May 2025 10:17:01 GMT
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazlp17010007.outbound.protection.outlook.com [40.93.11.7])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 46d9k78px0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 05 May 2025 10:17:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BUJhNgRZFyyXi0ZRIdAW1n2lgPzYKo0gWNYZmN8T/2huvefIx3Zix7JPmUx0Se36mPVSYgR23K9hcboG4UJDXi5zcjOSQfSLFSzjRhhC5o+3vl8Q/gPRHQGH09KtE8EWT3LPaLPDXvSyTupjl7xYK3ved8RFfqntnawtgElHopI98bXhlm+YgRwk5HS+h4UOPLM5PpK4M4ZQw+AiA3ARRqC9gxOGo7Z9D66sAD3/yvSJJQcDPKMQSsGu7UwHNiJecX4CMGsuBSY7M+U1z61MJbkQKbG0ED/BllS9rNwomoMFniAv2+fNxGFmoTUbxpQ5JmUuhIAJFp7/flgdZdT1nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HI9BRUiq9Sy1HfC4WfZOkGEHoXQZKomerwtf3Hagy8k=;
 b=ot4PpcT0SgrUpIpiqMYCAPtdOCE5AHOGC83EuioJJAGQF4j0e9+85PW7cfok4c4V8jYIaBaYBfkGur/KyBE5clgKZNGdzdtiIw/v0fpG8MYt0topYXNUiZOiyI3eDZIvF4iHr0n1P4mu74uaPxRfO1SSl+pL+GKfm0QcAI2JP9kn1lkODv/LgNW934+GWZNVuBeIKhnp9Uf+1c7yxb1IPV5jjz5dtqOc2Rn43HtZgALEWmi1g+JCAx9YCmCfcO/mlJBzZ5PR24jVil3fGGhGTcZPeaMyF0z25JDdclCsp1SRKNF3zoQ1a1X8X0/VrxIM7E7/dyqYuiv4HtWNsencvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by SJ0PR10MB4782.namprd10.prod.outlook.com (2603:10b6:a03:2dc::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Mon, 5 May
 2025 10:16:58 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%7]) with mapi id 15.20.8699.022; Mon, 5 May 2025
 10:16:58 +0000
Message-ID: <dabdc0b7-879b-433b-a5f3-005fb58421a1@oracle.com>
Date: Mon, 5 May 2025 11:16:54 +0100
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 3/7] scsi: make ppa depend on !HIGHMEM
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
        "Juergen E. Fischer" <fischer@norbit.de>,
        Alan Stern <stern@rowland.harvard.edu>,
        Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org,
        Hannes Reinecke <hare@suse.de>
References: <20250505081138.3435992-1-hch@lst.de>
 <20250505081138.3435992-4-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250505081138.3435992-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P265CA0167.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:312::12) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|SJ0PR10MB4782:EE_
X-MS-Office365-Filtering-Correlation-Id: 47b616cf-cc33-4bb5-2d9f-08dd8bbdf7c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RXZadS9PTEZPRk1mdk1GaDNzY3JtdnFySHRFcDMyK3J5TUdwRUx1emw2N2k1?=
 =?utf-8?B?SmJOSFpWSlJtT0xKV0RBWWdoaXZ1RUF1RmlEcWhvVlFPa09zWHZyWFdQQzZT?=
 =?utf-8?B?TCtIK2RwOWxhWkpuLzhLcitHZ3NVN0J1Y3hUTTVIVkxieUVGREsyT0g5TGds?=
 =?utf-8?B?a3psdEY0T1JNUXNSR2d2bWNlaUlHUGVVamdqZ3J5bDdqcEl1cEFDWHlLUjBm?=
 =?utf-8?B?MjNXZGJ0MEoyUTE2QUc2NkZTUTN2Q21SU2QxVGFWZTVrSjRuekpOaHBqdGhv?=
 =?utf-8?B?SkZ5elMxWWFJZ2ViS3duRGpRWUNETS9FOXh1QlZpYzBBN3d2SkgvSjdFQmtF?=
 =?utf-8?B?bVdLMDhGaWN3ekMrbitGQzRMWW1VNXVJcFFUVlJ5TTkwYWpxbjg4UkNhK3FD?=
 =?utf-8?B?VE1uZ0RJdU9vdXgzWS9VaHNxK2gzSEpnWEpQWTdQcjlLYVhjS01FaGtJWG9D?=
 =?utf-8?B?WjZKTEMvYzdDTXZxamo4K0Q1akFITG5ncnFic2Q3YStDWVBaMkorSndtSDZt?=
 =?utf-8?B?RU5VTHdZL1RKakpZakJVMFVEZFZlMjAyd1gwSE1wZnZ6aExUYXhFZHUwQ1B3?=
 =?utf-8?B?TE1jNW1UWDZsMk9rU3dKdlpXaGRCTk01cmpTUXhwNno1ano5SlMrMzBDcW5U?=
 =?utf-8?B?bTBHU1NXU2FwOXNGaW5hSDhJQUVvREZ3aGI2SHJhOFVJWGh5bWZOdExhdisy?=
 =?utf-8?B?V0lBbHpPekhiUzluUThUYVl6MmtUTkpFVlpzcm1wS3Nya3htM2t6L1dNeEtn?=
 =?utf-8?B?SlkxM0diOE5sRmNPc0xYYkpjRHVkbFV4SWZ0RWZ0bWFSMlpwUEx3N2lpV05G?=
 =?utf-8?B?VFc4amYvOGlrTmRzSkdzaEo4TEZ2UGlOczA5N1BGRzdSREtTa0gvNkovRUVk?=
 =?utf-8?B?UUtZWVNhRllwNlExVDg0anhuSnFGMjdJYW55MVhjK3ZQUVlxQThQc0cxUUhU?=
 =?utf-8?B?QW9ROG1TVjQrcDY3UjdKNkwzVGlZb2NKS1BEbHVySHM0d1BaQklzcDRzUFlo?=
 =?utf-8?B?Qk10RHQrQWxYdDROOVA4eU5Wd0VCMWx4ZjhnWnorakhUVHZJUFBqQ3A1WUNj?=
 =?utf-8?B?YXpIWXhrSW1sZkxDNjhuWUJiNzVnemRIM3ZjL09TMWxmRzFVckQvMmwvNnZ0?=
 =?utf-8?B?aG4vNC9jb0cwUUNuUVRaeHJKN3N5WlArUTFJaGRPbW5iVFdjcytyQVNFOVhU?=
 =?utf-8?B?UE9zWUlxSTZnTTZld3NKRzZhRU9TU24xY2g3SWwydm5ZTXZ5dTFJTURyMEVV?=
 =?utf-8?B?U0dhREsySUhmTng2ZkZZdU1OYWF3dS9pQi9Ea3R0ODMwYkhaTXg4T1hKQS81?=
 =?utf-8?B?eUdpekpWQUt5WEEwcWtOdGFneFJ0czE4ZHM5KzZrZ080NFlXWVgvaHNzcTFK?=
 =?utf-8?B?Ymw1U0xySlhQUnJXMG1KV0hNOVUreW5UY2N0eUoxWUNLdU5yU0ZlRm05ck1K?=
 =?utf-8?B?RGxjWEV1OHNocEMrbmFxaG5pZm5Ndno5TWt1SmUycjUvU3ZOelJzQU5SMXVD?=
 =?utf-8?B?OHRuYVM4ZkJ5Q0FGYTlZWjBxeDdUc1RPQWZBYUtmWWYwUjZDNkgxQjhzbjFV?=
 =?utf-8?B?L1R4dHVSU2JtTWFiZlJzY3cyMm13QktIWitSVENCdTNJNUtlZUx3K2Rtd3ky?=
 =?utf-8?B?OUEydWJtRERWKzBOV1lESDlteWp1Z3RMWFRwakVFT2VNQVgyUXh2WkR0Smd0?=
 =?utf-8?B?Sy9VcEVjSnkrbDVYMHpSYktMOGFiVVZlTVhMYzMxeWZEdmJVY0dBS1RnMStz?=
 =?utf-8?B?QzVnUlBLRkEwcXNId3FRU0NXaStUNGplQjBGbHRqSU1ZQnovcWJiSU1EYkJY?=
 =?utf-8?B?eFhERGpkOHN6aURpMmMrY2lXcVdLSnRHN2dzbW1aTk9qZXU5QzdlOUluWU9G?=
 =?utf-8?B?eVVFWjdQdWxDS0lVV3F0bGV4N3NHa3E3K1lnSnlFblpzblJDQ3JPdkgvaVlX?=
 =?utf-8?Q?NXlhE15/ol8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3pNZW40TktUTG5nSi9PTEN2b1c4VUZPaXc4MHVUVzBLeWtubDEyRE5ycUFF?=
 =?utf-8?B?K0RNTkpJem9wZk9vQThneCtPOWNTaW9rZzV5MUZBVllac080WWQzb1MrMWt0?=
 =?utf-8?B?OVRreDNvam5pZHdhUkt3aEpZLzN6SGZzdjZwRk1zaTl6ZUJydWhuQU1rVUZ2?=
 =?utf-8?B?NjVJbS83NkNMMlpNcTBHNS9CSjdBa0JkM1p5S1NmcDN1OXZ0a3FOMEZMOGJs?=
 =?utf-8?B?aE9vS0RQc29oSkpoVTFma0RoNjlBQ25kTm5aWXQ3ZDJkZWY1Y216Z2drSWhH?=
 =?utf-8?B?V2c3NDFzaVJ6OXZvRmxTOUhYblphMDlpdkRUUFJ4RWM4NDNXdnZXTTJ5NnNE?=
 =?utf-8?B?VFhXVUJINVZGWDBLUmRrNzlhOTd5VTNLNXlLemxBZnU1VGx5dmpwU1lTbUhO?=
 =?utf-8?B?THZmNk5mdmxsdGcvWmhNTEp4NTVQVVBkWG12SG5rYWx6VUlCMXFPOUJLRS84?=
 =?utf-8?B?OG5zMy9uQlNqUHFjRWhFOFNYLzl0azBoVUFXaEZwNngrWTZ4dkpGR2tVcXRT?=
 =?utf-8?B?VjI4bFp2dW9ZOUZKKzIvNTMxT21seDMxakFCU2dZTHcxelEvUGp0OW9hbjl3?=
 =?utf-8?B?Q3hTcGtXcDk5NnVUUXk0NVo3VGRLOHppQWJ6V0dkNm9jdm5FSmFiMDFHSEhh?=
 =?utf-8?B?M3FYMUtFQ2ZoTzVpK2hzODJKbEVlMXloYWM2R3F5cWRRUW1oMC9SYUZMd29H?=
 =?utf-8?B?S0I5V25KZFpVZlpRN1lCNTI2ZXFqMFQ2c1A4SHl3UktIZ055dFBVYkw4cE1D?=
 =?utf-8?B?RHhCMTlmdTA4M1U5MXZSdTFqVzNyVmhoRm9jdnRveGt1V2RueEw3cy9vcnM4?=
 =?utf-8?B?czB6TmUrQitGcUxZRjhqQkFydUo3em9YZnA2dWYvM3dSS3dvcTFJNFJiNkdD?=
 =?utf-8?B?K0VldmRXemNQMGd5RXMxNm9FcGU1TVk3SldqUFUydURPRUtqSWppQjFFWXNC?=
 =?utf-8?B?ODRCVmxHdXlxVTRmNkt4a0ZCOFFxRVdNcU9rWFVYN21TWVp2aEp5Rnp6LzhJ?=
 =?utf-8?B?bGYrQWRSbmxnRHkzSW1NSmFFZDlEb1psc0JKZWV2VFVubE9qMnJZaWovNzRK?=
 =?utf-8?B?MHQweDE1d0NJTnJxQ1p1TVUwU2J3ZE9PYVlPNjRKa1ZnR0FqZ2tGTDZ3bUM0?=
 =?utf-8?B?bnBRK0t0Skd5RnBDVEhFRmlKY1hGUDZUTWpmT1I5UkdwVXRKaGZJS2dSYWp4?=
 =?utf-8?B?RWtYZm5DY3kxUlIwL1lHejlmYWdFRUJmbWwyUy83UFhGVHV6b0t5Wm5HemJ1?=
 =?utf-8?B?aUgvWmsxNFNvTjlSSUdNVjJUQURmYXVuYVk5TVRBWkZCK3V3VmtTc05PaWZr?=
 =?utf-8?B?aVNYenBzanBLb1c2VE1TZlRQSEJ3eHdIdkRrN1d3elBjMVh1ZWtBdHdhQ3FT?=
 =?utf-8?B?cFpMSU9kNU00L1BrSDVNVCs2Z21GOHRrKzJhR25MT2hIUWZmQ2J6Nm80bk9C?=
 =?utf-8?B?SkVOWmdnSnI5U2tIUHVqKzNrRE90MTc3bHhZVkxqaUdRMW1Oc1MrTXEvQmJl?=
 =?utf-8?B?UzQzVlBqRVBZcXVkNzhWdkJuNFJWS1cxWXpsV0tCMXJRSXVtcUd6Nzd3NE9O?=
 =?utf-8?B?MUMzMXlJR0wvOVdxcFFnTXVJd0ZhVk9GSHV2RGZzNnFBN1huZ09ac0dyUG1I?=
 =?utf-8?B?TDFQbGQzYjVoTE45V0hDS3NLUThyamxHWCtPTjRhUjlhZDBidTd3UTBFZkpK?=
 =?utf-8?B?aWNDaHZRRGJ0WGs1cTBHL0FzVzdUeHZqL1REMjZrNUVXMkZKTUZrdThlY0Ur?=
 =?utf-8?B?Rlgzc0cwY2x0T2NUb3RLK2c3cXpUR2VkMHNuTXlONnhEYnVVTW9xWGVjbHoz?=
 =?utf-8?B?dVY0Y0NNdEt3aDVtU0Q3RlkvR25yTU5IdWozWFJ1UkVZdU4xQWhyTDF1aVJa?=
 =?utf-8?B?TDN0S3YyU2h0ZkorM00zUFFNUjhFeEMzZUpZTTE2aTJwbGpDOWk2a2dLTlBF?=
 =?utf-8?B?alliYy9QekV0Tk9qbVQ4bXBLMzFTTldGdWkxMDlpTDZ5SUZGdi9iaWtyMUJO?=
 =?utf-8?B?N1FJOWdTYmxKZ25qUmpxV3JsTk5YbGkvd1MvclMwNmdkM3hPUVpGaXAxSFh3?=
 =?utf-8?B?QUN2Wmp4RnNUWVVMV1dSazlleW5EcFo1OUwzcHBXV1JRd3U4eGk0eVBaLzJH?=
 =?utf-8?Q?ICHxxi4iVbIxijOn5evUh6c23?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: nGOZ6WFYK9iL2cr+Z9znmkXEfURRxDoy7LxJgnJnoYI1iivakLR0/WZczlHxGT8vg8tCZ6c0L7zsJ7SYU35IGMvWJqa7ihI7GfhYJmOlmTOykd0lgw81TF6faTEFp3N8PoXEHBX22AS70CXcVN3PBJCAhiZBJKel3x0CxvWLkaarTnYBnXr/HngjEP2R5QkYXMrL5HiEg9MBSHEgyAo/3WVJq+bo/yzXjYX+a5jr7s4213lLI2LU5aTuJR4KrQsz7HQ154l/XE0+Z4L2XMAVBmoLmYEr5mn0brerJ7aIrFwZq6k2DNoVD/9IZPrdQvkePbcGH/eGJu1Pra5tJ1sZIm93hH4JBB+4mlS+ivcIRb+bf/P1e3MtqMUgGWsKRcRbb89MBdJWLTkPKe3TBh37aM2z5S1zL3zcA+jLwfGgf92VfYdGY3Fo6p6jnUvZHxXRSDh7poY43E7hWZf1Ro2/o7n98paSYE0B/8RvkyQus1RZQcULEW3f7TgxPSBFCzfILrey/8Z0TILwMpDg+LR0QVuZVAhLSecNWyyszEvxJqirQdQoWA01nUi2L3w7xcTpwl4+x0LQg0KkbL4zJgRD63a1uv/+1x20EeSlA2LfCC8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47b616cf-cc33-4bb5-2d9f-08dd8bbdf7c2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 10:16:58.0931
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 35aQ6FfkUhBhx9ckIm+i4O/79yN6T18asGEwxR2ZarQiNOQmQQcQHba9PDiE6UeuOIkcyG8l+vy+fw1pBWYeNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4782
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_04,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 malwarescore=0
 adultscore=0 mlxscore=0 spamscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2504070000
 definitions=main-2505050097
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA5NyBTYWx0ZWRfX3Si0TMc+BhD/ rH2TXMT/cplHdoAJDP+pty6LlDuYEW8+ZvS+Nh3wRJR89bDklTl4u5DN/SfGCdnknNrE5MCUd4z uC8Mw126tCWuwn9c+eCbembAdgzCP0SP5IMTgAFa4CgIeiHgrFnHJTanvtBo94760UNfWF9ggf5
 RdlT9DDtNRAIwXMyYlbM99EwXiwqBQTKX7KJko4gIjrDMkWp2/DDohv7shVCS8PzgVIOO6Q15Rg dmZoR0SNfG2aXoBCZPHQ2fz29BKx8Zr5uYuaT4zuv7Xusffm3jYBXCQg0S09RuGXMSjO1Yp5BHQ lQ/+oQvJE/GXA+X/7nhowzTEC6dzuidFZ3eRcozXMcSP3Yayqwl9H3MS0m7z2/FhkRX+9w8BvrL
 mOGvDJ3KtcfweP6UoQNLHnLwwWL3izUtVNfMODlNn47p24QhPsXr8lF1TKFsUUT4ddez60CS
X-Proofpoint-GUID: WxkpaUG5Z8kGf9CrkUK36DvWwk7y_CZx
X-Proofpoint-ORIG-GUID: WxkpaUG5Z8kGf9CrkUK36DvWwk7y_CZx
X-Authority-Analysis: v=2.4 cv=M7RNKzws c=1 sm=1 tr=0 ts=6818901e cx=c_pps a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=yPCof4ZbAAAA:8 a=_MckG_xjt8bSkswAZlMA:9 a=QEXdDO2ut3YA:10
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2025-04-25 header.b=JiczQqyt;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Au8UTuMy;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/dabdc0b7-879b-433b-a5f3-005fb58421a1%40oracle.com.
