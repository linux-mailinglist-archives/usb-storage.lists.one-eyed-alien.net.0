Return-Path: <usb-storage+bncBCD73EGVUMBRB57KSCYAMGQEAG6Y3RI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9B188E7C6
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 16:04:24 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3665991058fsf7952475ab.1
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 08:04:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711551863; cv=pass;
        d=google.com; s=arc-20160816;
        b=QqTUWe3no1l2cWwb8pv4painFQdwIAgFn1kV4xH0NVZMDlkzeymRbGnxVY/V8f9zOz
         eRXJENiAQnjqKLBKyn2lEnpEf7FvbdJ6pqCwJbZikZebdJs6xwYjCyy77q5IB7ZVSinz
         A8pVhuTovlWpzaBBydKwepnuVzhxUN8WsbcrvB7TAYOIULAo8x3uKFcrszsags3Hcauj
         UDKIpN3oKQ6K8QeounUPWQ/UAU07RaqMbj8fSeRwyzirlTAGpE1Y6DLsJVU1nsrvH+TK
         EhFNF8spIKWgdJCZd5vOyG4sX69daN5FlMkiCRP6QpOtWveLeU7iBzsAckOpPdPHOfHx
         rdVw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:dkim-signature;
        bh=TG0MhS7MZcEmhjDUeqIJaiSJdp8KlaFAQns2Zs29O2s=;
        fh=cF4hEbDWqpYp10BirSU7W3PDa9mk5sOEyXbnpEnAMyE=;
        b=Cl9F+O/8TMD0YDn/jXO6HzPN8wn7VREqBwvwevxRWWHarIXlP0RQ18npEB2C8EUq2b
         3vSuY+hobM/oVUEtJDCFa8UZFpnj6Wn9Tc9UAmGOKQ8WEbvFGFgemnpQkk0GB9vthvra
         0io3AzrTR+4AH+AennHacOjzd0cdYRPt4hVyUUOyazEqIbHv76W0MFkht2nb+jd3osEV
         xZsCY8qzxEI/gMBQfBcJ1A3KS/QS5tCR6LGCDTGSwk+a3mOliB/sZX7xgELt312WcOLk
         3WM2SM/3Xpk7q/tODETGxmwsR7p+ftiDB78XaSkULsqnOmvE4mgSw4tTsBpaYCDGw1ZO
         MHdQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=RiMaaMd2;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PyKcJOxx;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711551863; x=1712156663; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TG0MhS7MZcEmhjDUeqIJaiSJdp8KlaFAQns2Zs29O2s=;
        b=h7w4Y78AXmzXWQEv8X56aJU+XEWSmH6iTEnOZ27jvvrR6UTJxsEP54hsKgJpZiOPE1
         /K3ip0bF2wYVp8sgdSGgvNSt4kZZNwvmNl/x024ND1no6Si+Tvnda3UyFHA5NKqD5j2Z
         b+VoEJ1tqqiuc3nVYtj7WCdGn5bMygOlDwdRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711551863; x=1712156663;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TG0MhS7MZcEmhjDUeqIJaiSJdp8KlaFAQns2Zs29O2s=;
        b=e8gWuMg+LFBSz6h80bActSeTM48KyKspRZ1w9JJ6682ETOjRZYNt4ekAzR8fqEsq0x
         p5co/I58hysQqFwuc1qNhhA9hmeRcupDAqIblkbQuCzSB81or/uy8aXDw/gw9bC7HNOw
         XPHf97pEuDCGgfYuAbSW6Pdk51cW32uT0nohsOFPvz5MS4t4Ms0YoQm8V5PVNRqMJNHG
         ugWCqhy5bhdFGERFD1plWMmMKwukRaneOgEC4Nvc5FxMHE2DoM6QA3dWPzDwhk1L28p+
         QXBkWmv4hijL25nm/G2i84PYvnqoxEH2AnTJZJTNg7zmXwdBi3cQUxn8Yb9jQ57hV9P5
         lZXw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWUGD7vU6fhgOLml4Hzy+JjdaK7DI3RBVyTvcY0rUUKG4T3I9sKHtcia13jU24CxlW80DFlnIlKn6u2yrVb7W5JY6PVfdMllRtw
X-Gm-Message-State: AOJu0YxP+2oA7T8FiU4SOEge5q8l5JlUYDaiE6Y69Bhn1/fFU+6c55Sa
	Jyr9zRLiSZnLK+pI+iGy4hX64WlfIXNy82dmPwy10xz8RclC/Ehew/md6pY0MDM=
X-Google-Smtp-Source: AGHT+IGdiHV7pXHPBgKlD7O4fgeCyKqFV3W+Hd4fo6U+0DV0KZCGNz/B6YMvgiuJ9jpW+SXnieM9sw==
X-Received: by 2002:a92:c842:0:b0:365:185a:83ed with SMTP id b2-20020a92c842000000b00365185a83edmr170609ilq.10.1711551863756;
        Wed, 27 Mar 2024 08:04:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1ca7:b0:368:9808:951c with SMTP id
 x7-20020a056e021ca700b003689808951cls717818ill.1.-pod-prod-00-us; Wed, 27 Mar
 2024 08:04:23 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWs/6W/UwquIjVQXwZHgGpqHXXY+Jk86oExrA95GiOlvnkTU0xtcmQfrcElaMwNQ6vQ+ZmpUIGmZZAwl+nN9argxtleONC4tseMc5A9iMfSGMVatpk=
X-Received: by 2002:a92:c211:0:b0:368:9e5d:206c with SMTP id j17-20020a92c211000000b003689e5d206cmr3448073ilo.12.1711551862903;
        Wed, 27 Mar 2024 08:04:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711551862; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q1y/s6GSrODWfkYkc16evwygxx3E4GvQnYsdRTh6FyHimDixYgJqi3jm1gZvCgGEYi
         6qIc+MthDMPr6Wdbq/P0QKzFf2E78oHvceMNBGHAVfJz0hnuvwNnmcw7EKt+4STR/WAy
         tlafBSjo2t/yZ2HAAy2u5FG/X2Z0acu+kCtC3Vqx2g8SjMflPFqmbtKA24Nwo2l66yfc
         Xae2sQ3tUPiqwr96PuVengKJcgj3o7LO6JS/BCv1rOWXtgV3tTK9UctjrPU47aVrrHCt
         epzzFk6+RKhNt/g73P9deOuh1rZMBcEcC6icAdfzcqfCYIeGpz7Zt40mTtY4F0WzssWJ
         gD0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=oxWip4jZuLdyjcaRIJujyHV3IBkTh6OQ/mHgMlcCtB8=;
        fh=5lWv4x+216uw4ASKpPpEtJeS6+EwyFxVU2/QNdmJrGQ=;
        b=b5CNjpNPvrYJOEfWH4cJ67eSQLVB7l1+WH46p/wvPDFt+TYsxsLM/Ln5XOrM4Ka+1A
         aA6pC7ySJ4HdqZt9UKBB2+B8aSPx9UK3DePtNTDwMmEpH4l7vLSO7ytw531uB1Q3DdKS
         OBUPPeRSv8dXH1yuA39nY16bB1pJTeERFIdHnym4aflHTqY5Ki7NZG785oa44b+1l9sr
         G9qsofA2dyyRa/og2nso0o+IFlZvLrVCEmRD7E4xSC5R4YiyHaZrN7fCSPN9nrAD4Jc3
         UZJOTdYGr+ESCd/LO5YnF12A2UuZlkngT9r8ZwDqgnp68R81I6KNG3SOU7eX/ECt6twq
         2j5Q==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=RiMaaMd2;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PyKcJOxx;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id t10-20020a922c0a000000b00368967be821si2212718ile.30.2024.03.27.08.04.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 08:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42REiW4E031995;
	Wed, 27 Mar 2024 15:03:40 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x2s9gx4em-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 15:03:39 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42RDwMaY008820;
	Wed, 27 Mar 2024 15:03:39 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nh8xhsp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 15:03:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dgpgXhSgY6PpxAg1649C8hH5u5rR1bbNvGFjIeKXaa/m9odDmtXcjQOs0ZbpGsBsNGn24BwqYjLqvx0THQHOAfyYmI2wI19Kg9zWS33Nfavxyv5kRZxJS6PjBvEsY/3CjIgvlpskG1a/GBGDhnGZ0mBaoBwKdKdfqR/fo7yIyKhtRkIIIWenZ5s9xSTk7/+aF39SSR8nqoT2q9IyxamAGNWMgQRof3sRSV8zHtvoNp8pX1As22v/+KGZ4L7pmxwNz9rO3nOX7KUZC26fc7oS6MCf/qD4uZ6haT38vXkT1CUxF40LQtzDH+u8qqbucsEhsav8UnUm0wBwAVeDZaor3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oxWip4jZuLdyjcaRIJujyHV3IBkTh6OQ/mHgMlcCtB8=;
 b=D0AROCloGSMQCGSaMDbj6d2pV7GZBCbWY4cM6PMlTG81dNx27fGkTZ/FF0cav8XWJD3jJWMJYM2qrIgaXxgktAIpGoDRuUOQe+VUZvMLLiOSL8T4JHjSFT+0m6vHEf17HPChYuWa+vA9CPHFy3hRprKz4qTOAdZWCD+tZ5xkHVWKJ2D+ge4kWb8bJUaW5MjiKYMXLaFDgN+SJvy3XWiEazFKs1aFMXmNRNJL7+t5h4mpYwreBKWFXNhghe/RwTmeEtdDtbtNU5joTEY8ME4aoUtqLAdc2Xz/OHB9OrKTN0fRTExLEatcfgFQayLWyj/TMqJUd7CmQmKpRPIukWD/AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by SA1PR10MB6342.namprd10.prod.outlook.com (2603:10b6:806:255::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 15:03:35 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 15:03:34 +0000
Message-ID: <07ce3ccc-6079-426b-ad80-a354105f3965@oracle.com>
Date: Wed, 27 Mar 2024 15:03:27 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
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
        usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-7-hch@lst.de>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20240324235448.2039074-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P123CA0432.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18b::23) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|SA1PR10MB6342:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b016268-a0ae-4c92-b331-08dc4e6f12da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1c2eGvBBN1lgfaJ4T7Xu7lP6027Qv4M6CsQiGzKVQzR5L+FugLi7VaLP3C7WNO8i0y+22QZt2rb/8B7Ne4orQMMtOyeAxrN9Bx12Zpxuo4FElrqJW8eph+TND7gE9bCaH16rh2FlSy+Kn3735ufkUPXlrPq14KHGTR64wLI7Q8UXcAoIqrvPExYHUhsq27YQn7atFw8C83YZcCn9bL2rTMb9QRt3ggqzOKBL9/MZVZCPIKy6pdZQ6tgqRlUKEe7CDjNB2k9zByYuSfVmBtEsYeFhlDND4kXxL7YF+xLRmvbgGTrTiDpr1HxH9794xEqQQsHiKyXI3hdkgu0dJ+Fotv4Cva/LS42Iv3zA4kIOwzNMY5I1cOi3bLPNbxdsWEwmofvNwrZOsqBOqeWyIf3jvm8PElQQfGipVe7YbEOJ42XSh80KiyE+y3WI7rjYnfNXs/wuow4ScI/u3/6A4ztHDNVGG555CD935h6XkJORAVhQaW9HpIAofSjslJeo6T4kVHCtO7+3vJeVjTmA8SlX4Cs4sjkOaiksGuybBCiVgypJKu3vfPNRo7CSxOmS9lywmExyiThFm0AiVsByiLFJNo7dk3237cZcBqlk/uOBVCveB64YS6dF5b0eP6IAalUHUKWFW4lUAZgIaLXMuwTfTQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3FoVHNaSjZJZUwzSy8wdGxXNlcwNkR5MzNtVGJlZklHdXRSa0N6L0wwSVVD?=
 =?utf-8?B?UnZ3eC9hTE9INmpQOXM0N0ZubzVObHZ6NDlFYUpDd0J6K3RSYWh0ZkJxQWZ2?=
 =?utf-8?B?WFd1dXNRVW1weWIyUEdEaVlMT05wTlMvdWM1ZlRnZGVQZ0wyYUJVR2h4Y0k5?=
 =?utf-8?B?MG9FcUl1emc0SGZkeEZZVFVUaHRXdFZZWVRFK3NWT1I5OTAyR0FBZ3EvbzFU?=
 =?utf-8?B?ZlVBY2FkaU9TanBTSVE3cXNMQ3FGMEIreU9EZ3RnU0Y1YVJwVExLQWdMcjZR?=
 =?utf-8?B?WHgraHcrUllKSC9RVzRxRVpLc1dlbGtKcXB0MkJLOUNOSDhkZDVRdGZ0ZjhF?=
 =?utf-8?B?aXlTSE9FNzh4MEhTMi9oSXpFd3VMdDc1akczUm5JZDJXSEFmbEZQbElIUnQw?=
 =?utf-8?B?aFIrdWRnbFNkM2UxVWZSUzJ2eGM5dG4zTVBzRmNvNXY2ZzhHUTBucm1MWlBy?=
 =?utf-8?B?RlN2OTNqZDErdnJmNzFHNHcyenYvZ2FxK0RUUUpEVURrYVFHeVd0T1RURzdS?=
 =?utf-8?B?MTVyN245ZUIwYWFkM1k5ZmhVWGphSWhjMkNESUllMzI1UTNJbzlwMFJqRHVX?=
 =?utf-8?B?ZXE3Q0QxRjRRcEFLb1lUby9xU1pCSXVVSWdOaW5SVHVEMnM5M1V4UVVPMVh6?=
 =?utf-8?B?Y3A5YloveFk5cHdmcE9JY0Ivd0pFcENoVXY5VVZ5NGI5SlB6TFh2KzRuQXpY?=
 =?utf-8?B?b0p5S1RzT3lyMUdyMzdhQlhMV3VTenJBRlg5WU45VlBzN0MvRTRkWDJYVXlL?=
 =?utf-8?B?SnRIT0d6anAweDFaVlh0RzQ5QmJmdGlIem9kYVplUlhZMTMzWDRkeTRaM2hs?=
 =?utf-8?B?eWUwWGw0WjFtalErOE1MSTZGRUxmblM3TFZnZFhvTWRnQy93b1IzQVFXNmF4?=
 =?utf-8?B?VTdoSXBmdUJIVVBaNlNVdUphWDYwOWVJVGVLQzN1TzdGZCt1QVE5eHlLQjJ1?=
 =?utf-8?B?dHQvQ3VTQzJDOHd6NWd4bXY1bDB4ck9JRklrRkZuMmx5WnpqSkhNTDhybVhr?=
 =?utf-8?B?RzhjanJ6V0I2S0RvOWx1dzJESXMrYjV6TiszcEw5QWVRWUlrMi90Y2FlUWxl?=
 =?utf-8?B?dTlJK0xFMFFCUTJOdmI5SzU0aHhoSS8vNngvNkdnSzYyclU5OUt4WGxocnVI?=
 =?utf-8?B?VVRmR3I0eW4zdWJxQStFY3Z1VGNjU1lIdU15dlg1Tzh2TUtjb0R2ZjFlZzNw?=
 =?utf-8?B?enp1NmpQbmNOKzFFWGhjVEhKZ1paV0dkNm4xa0dHaFBrSWNHRWdFREhZUCtv?=
 =?utf-8?B?R0VnT1R0NHBKZWtPeDM4MDA0eHRTVHJVRlRsK1lGZC9FeWpMU05WcVNjTWFB?=
 =?utf-8?B?Q25JcEVaOXg1dVBraWZWVVE3L2ZZYkx6VUNTUTZMUTJCZ0E2UVhKQ3UxWS8y?=
 =?utf-8?B?YWMrT1R2NDV5Ykt2ak1TTWtVT2dFWDExSGlTc3pPT3BicUN4N2ExeDdTWWlL?=
 =?utf-8?B?bUE3UlNjTnUzZGdCL25mQXJWZWxpK254ZWIzak4xZDJUeEwxNndhdzVaUHZJ?=
 =?utf-8?B?Vm9kRmJ6czQ5bWdYaXBzVkFCRHJEenI2ZFVBMnNaVm8wSVh5Skh2aUdxMFVT?=
 =?utf-8?B?Rk4rR1kxdlE2UXFjellFVFEwYTZXYmhHUzc0dTNtbEZ2SDV5RnJ2WG1vYTdI?=
 =?utf-8?B?a1BldHk0bmNWb1AzK0pzYmx6bklsbElrUWFqR24yZmpSZ3JOcDN2UWZ4THkr?=
 =?utf-8?B?U1V6WjhEaGRLNTA5Mkl3SGVuYVAyMEZiZkxRbXNuYU5PNVF5NnJCTHI3QVBz?=
 =?utf-8?B?Mnp2bGhQS1pQTHM1NkRUOWNXQm5oTzdqck9VTE5tUERPZGdxeTNQVzhtOU5p?=
 =?utf-8?B?RUdoR2J4TTE1cUlxTFk0OEcrU1JrRkxGcUQ5R2gzcEJWTEhyZnA3eFRyZ0ZH?=
 =?utf-8?B?S2UwdkdVOGhkSzBFRFhMbzVGVVVPVXFBTTI1VjVEVUR6ZWRENWpvL2dlbDhQ?=
 =?utf-8?B?S0tIVlppQmFLZmtUWEliaytHMnE5WElLOE5NVkFhRWtFL0JscTVXZlBJd1d6?=
 =?utf-8?B?ZEFEeE1xR0p1MnBJZW4wdjQrTWtpYVNaamQ1SWtuZFhLeGNZNlIrLzh1OFV5?=
 =?utf-8?B?V1VOd2pBSDNtbzFvMFNFd1MrcDROL1BhL2hYakE3UDhmWmViT1F0MFBQek5n?=
 =?utf-8?B?c3dlTWIrd0FSc1htamRhWkZQM3dGZFZ5cGZZT29hTktEdGMrdW5iREJFdEZo?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: XS2QFK4sArc1bO+EtLbvP2nmP6FGcv37OsYQVjT7mLcRp1KJar6xsTcGc2BSaxBV40t/fmnFE4jDrFiy4Qy29wcRAbWZGJhuKyNdtnPCmQyLTG6qoEbH+DUA23DYHGStjZv/I++UDE752houoAI5CSxLAnEdG80j7UhlJoqD0v+5Q75hTRf9fgghJSv5qK9jcjjrj/cGGLYUfyiS83FvaLpHPNAolUpY6jBGTBNBWDGoO2TdN0M9PPnB5KQyTMfb0tznRZzsWpxSXxCSRNCZ4nnDPrZ1xV/VhdhBz8raoHCuKQQUH0BIfr2GjwFGLCNy+ZPiODIgWqH//z7k/bbdAzsvrUGMU/UqeIHMacw+KIWfKGiXVsRoMA8ac+RCP8WHRsmTL7seBLAFvCeuLs7c2ZQUjvUGi3UG7Qxi0nP37nAmHEiWyZZ4EMOx4KzKkstzNOgfEWNBjXSK7RcGW0S78Cs/2aMWb68x0/xiQTSpm7V6TjnRbDE64oPZP+UM9N9kyKfg7Ls3DwcSQzBspGf2+GAHw/tFYGjlgtnpYd6JS/F/yya5Viu4OBT26CreSQxRXazoGUOPVO0m4Jn/A6fXlQGtQ4VTshjioxrazcyf70k=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b016268-a0ae-4c92-b331-08dc4e6f12da
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 15:03:34.8346
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zcA38WrT4RT9hbugec4yxDkX1hPulkB2wKFebbP4wTIYQJASC88oJ+2EX6k9XiUwkhEDRT/o7b8uUaLsmhwwoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6342
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_12,2024-03-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 bulkscore=0 spamscore=0 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403270103
X-Proofpoint-GUID: 1aQ6vFaW1xdOhRFItCM-b_uoZ9wIeAfg
X-Proofpoint-ORIG-GUID: 1aQ6vFaW1xdOhRFItCM-b_uoZ9wIeAfg
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=RiMaaMd2;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=PyKcJOxx;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 24/03/2024 23:54, Christoph Hellwig wrote:
> While we really should be killing the block layer bounce buffering ASAP,
> I even more urgently need to stop the drivers to fiddle with the limits
> from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
> centralize this setting and switch the remaining four drivers that use
> block layer bounce buffering to it.
> 
> Signed-off-by: Christoph Hellwig<hch@lst.de>

Reviewed-by: John Garry <john.g.garry@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/07ce3ccc-6079-426b-ad80-a354105f3965%40oracle.com.
