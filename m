Return-Path: <usb-storage+bncBCD73EGVUMBRBFU74LAAMGQE523VWEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id 65399AA90AA
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 12:14:56 +0200 (CEST)
Received: by mail-io1-xd46.google.com with SMTP id ca18e2360f4ac-851a991cf8bsf465926539f.0
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 03:14:56 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1746440087; cv=pass;
        d=google.com; s=arc-20240605;
        b=VRudADSfkH8UToph2ibBbxn2Qs6l2KawpD+fsiqLJLUbCWt261tBbhhfLNrhAG81ga
         G+s5MKHLEIr4+wcfT86CoFsvvyLWnILh55pJjALGT7IIPEWmQXwLhoZDRuj6c44ioKe+
         zycDZcyXPI/MNKOL4TCIA1HLNMFLPYOLzkpsgYNN1PKattpwviqs+3bRurZMSL0csyDv
         Z4Aoi0UbRIkhvBQOQa070q6DqGXkPmxeSQ6YXx9n298wzsYBuD5DdtASQCiBOTLNw4jS
         phUkyvdkC4wtULEhYaLnh+PEF0kcnoxM70C4h0dMghOa7SNEVuBqL9AkBq3mwWRsuK77
         yqug==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=kCVphp+4PHYNO9kRAKnQhSCBjdj3HI0gE2CRCso2CG0=;
        fh=HnOmVBw05zLn/VQrlmx4PRzcF/t1da8X67i7xhjZHQk=;
        b=jJ08PJQUlHGvoTYo16uKvkBa4caYjBVkj+56K8G30m2vIz54xW8NnkyBenCowiGi/F
         iyGg8amz6AhAlv8R6hD6p/nv6m4k0mnk2xoba0Mh63MIZdFKqChpwQIliQnVvzojkxw7
         RCMljocpw0tF9MUpiroToRd47zAp1f3axRgmSYoPZmBYmGE75BGkUVr3mcEoKSLzO/WB
         wPY4Uodb3hZhwKvOs0c1nGEZJ9xuE7OEn5F6CkqcjEhdWlo+3DurLisHOPx5OYuJijkV
         Vj/yXOlRShm9gUBvSsnsTLp2+jhoW3ny5WFZUCW7ynh4OjV1JNE6EMav7Ymm40LGZVi4
         1kTA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=j0ZnefEO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=QRGPhO6G;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746440087; x=1747044887; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kCVphp+4PHYNO9kRAKnQhSCBjdj3HI0gE2CRCso2CG0=;
        b=ROJTQicedLvMbyFusC+ztLaf6TG9mFzRKbCBs9zFp5tCrq5hLiODVUfDmQ6wejGKZv
         1EwuraZo9rhS7A0CJNk/LPFP3RiEm2GrvPK82LwRfHHsCwYuRDoptATR2iDt+n8TLGQY
         KwgCFp/IRHaGLfcLiLdFG8HzVCOYxhpyDkY98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746440087; x=1747044887;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kCVphp+4PHYNO9kRAKnQhSCBjdj3HI0gE2CRCso2CG0=;
        b=YHIrcIpy8IxdsUqxBfSmfr6uXMgTYLf6F1g79IPwiZWF4XtTsJwTA+GPBQZ4pMmIok
         jYKOur3dbR8iwUtoF2DcIA2zBv0D6ohrefPsPI2InDHfJBQaeb/aEDte6IadVSYQZG3P
         kWmNYZBW8zidtzUdDGPpBgyMwwYkwdNdbAlW/FFUJiv+7SzY6YIFtSQngWjMHT//TTjg
         HIApxAPmEhv3Plan4r5mC7kn0B1MKVxn2XWtbAVM079dWgoKMMfzAtVW8RcZtxMzWNaC
         TefM9/YVUIl2QA9thyvk8vqHSeyS6CXXLkBSc2pBr2JFtLkHlbcrHrPhKDYUNX+j4poX
         9a+w==
X-Forwarded-Encrypted: i=3; AJvYcCVUgmMJUVT64+JSPHEpK3vuUlMfk5rUd9aeCdNAgr5plh6gdO695kG6W++i6q+C2OYSeFf5CA==@lfdr.de
X-Gm-Message-State: AOJu0YwEx6ArXTFW/b9vpT2fAsdcXLPRyMznU9Ds+Ws60kZFJf03P/Xx
	mUJ9ybAok/oHuFhdJy/w0dZuFEpE8vurhA4acawNx85JQCY3Up26oNbNczT3M7I=
X-Google-Smtp-Source: AGHT+IEUSHyN03X2l+abb4g9rJ2xjW0HHysYzkWFd5xiSYJfZNC5cmrmy4NKKeP9xFeA8kgEKOrDgQ==
X-Received: by 2002:a05:6e02:156c:b0:3d9:43fe:8e34 with SMTP id e9e14a558f8ab-3d97ad891bamr117593455ab.1.1746440086648;
        Mon, 05 May 2025 03:14:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBGPsOlKOP1SIIDSK2FlF8pJUGaf6DSjMF7LRRvsLQP7Nw==
Received: by 2002:a92:c644:0:b0:3d4:58a3:f73 with SMTP id e9e14a558f8ab-3d96e713a3bls6463615ab.0.-pod-prod-00-us;
 Mon, 05 May 2025 03:14:46 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXCz+5f2X+ug0U+XX9mJTTyNnm8BQ3HPO1Gwt3q1LMUD7vQygpz73XndbhtOxxlh49H6hR6VGIVtjHf5w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:2bf2:b0:85e:16e9:5e8d with SMTP id ca18e2360f4ac-864a3dde2fcmr1478395039f.7.1746440085813;
        Mon, 05 May 2025 03:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746440085; cv=pass;
        d=google.com; s=arc-20240605;
        b=a1rkJsLNasun2BADHFKWycCVYYwmWOC3dyENzyLPkMp6YNJE23GhQYNqwiqpL9PpaH
         zPWyNBWmfV6tSnYs/eRsRa+gEnBEL1bRA5jfR/ER8bxx/FNRZ1KInu9cuqMfmvKJaCcT
         dixE5nN/Fp49V40VFUndnjebbH/swcJir+Pg5Qd1wrR5gIBOoOAna0a1aFTsL1V7Aqyw
         frJR2QufYaFw6jVmUvIr0c+zwydfe3esN9NMC8DnDQOaaXAZDu0Y5q0IVYC1gaRi2Nqk
         qjcYZvduO/QlBtE3zMi/e5nMV4XKUrmjPjzC3xN0iOrHCbGddDXuK50hRetZT/gqqWYh
         b5rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=CXfhDhfuVskl1jXxafVwUR20PyBSB+hjahn60GMQ/g4=;
        fh=0Re2g52XJhW2jE8GdHehtxDE6H2fm+fRnSaLr579mt0=;
        b=CbgeGGXg3lYadYRodc7EaohumIkuVg+hkp6psQCheeQDnhFAjhjqqmyf7HhPWg0lFv
         Hb8URtM15DUZ5BZSJiAQaaFyVCtWIx+qjzZGpzHNrT6VkHDcIkXyVByWXG17GP5YDEeC
         VgWXxTTJVMKIy1NdxEuHo150dxBemtUyMeFy7xtd8V2rCNxhGvtjg6AYv+6YEvGzCAKf
         0hA4kd4p3cYrm+1oWPtEkEjTbIIi0ITLvCWRv24+klLXntMv1noJRToHGQA1WfpIZio6
         RVKxCIIAK4Eo9L4quq4JQ4w15+q6D6OmeCqcBVYZ52RNdOQ0xTZORkR0xaYdcGwr2LBu
         HkBA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=j0ZnefEO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=QRGPhO6G;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4f88aa9706fsi7771178173.156.2025.05.05.03.14.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 May 2025 03:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5459bfW6006124;
	Mon, 5 May 2025 10:14:39 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46etuwg1xr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 05 May 2025 10:14:39 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5458fbqY035415;
	Mon, 5 May 2025 10:14:38 GMT
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazlp17011029.outbound.protection.outlook.com [40.93.14.29])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 46d9k7gxwk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 05 May 2025 10:14:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ydEhWcVcNQzPDApUSK0sadBRVxiomgVe3NUG6gkl/4iaG4sNqteTLIDp66LThPzkgTtDCfTgo8xq+l85AXhSXGGmrVFsz357BomUKaJMcR9A4Egi+ZKAmMpUASMs6/yTpgiiiygdIqAoln2a8+7rcsKXrr3p1v3UYMNdo9MzVXvRX/b04xoIp2qKVsjWM18GvOkfY4eiNFfay+VZGwFQDd7zb3mBWyIKrNjwTs8fIzG9TtKBO4A7uJHRdyuFPElKdgU//ScJYXAOimoTNq7aYs4Qsn4gwhokt2CeeksaGJYt1zSaxTcCLRMnE6MGLlDu53hxXK9z1NKn/+Udz0+aiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXfhDhfuVskl1jXxafVwUR20PyBSB+hjahn60GMQ/g4=;
 b=jQEXoMVuOppXdpJeBv04wy9JpkmLltJqCmP4v6YmEJETHLm+xWKTwT3T1jqpc6HpjrlVk02bO36Hv6YfNRqPcY7S9e7N9JptZS4d9tdkRoE62Huhagv5KQbsCrCNp0PnBRx9O1uw2ebQTlMGBrk5N/fSFFl15NMRlY4/xBCEx+8NmnXaF5N3rm3zwmLnZxsUJ3ynx7FptYPOk9QKvDaJicULrUtPZQRa2WDQ3p6yc9g+8ptBJQSyhqbqwbNWeIjXADnfL4LgsExICFZ5+xwniAH5nCzqyi1G0PS/BWSWetKIzJMNUZ0yQ2KwLsAyuXfia1kjpWImMotzrn2RvHGcFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by DS7PR10MB5150.namprd10.prod.outlook.com (2603:10b6:5:3a1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Mon, 5 May
 2025 10:14:36 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%7]) with mapi id 15.20.8699.022; Mon, 5 May 2025
 10:14:36 +0000
Message-ID: <2e71e6aa-7889-4259-884a-9a03a6df9eb3@oracle.com>
Date: Mon, 5 May 2025 11:14:32 +0100
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 5/7] scsi: remove the no_highmem flag in the host
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
        "Juergen E. Fischer" <fischer@norbit.de>,
        Alan Stern <stern@rowland.harvard.edu>,
        Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org,
        Hannes Reinecke <hare@suse.de>
References: <20250505081138.3435992-1-hch@lst.de>
 <20250505081138.3435992-6-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20250505081138.3435992-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO2P265CA0016.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::28) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|DS7PR10MB5150:EE_
X-MS-Office365-Filtering-Correlation-Id: 429733e7-903c-45eb-aaad-08dd8bbda318
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXUzc2tZd1Z0UXFHZlhGa3RHTUpuekFVSTZYNHp6a0RRODBsTEJpTVdOZzFl?=
 =?utf-8?B?clBOaGhTM1ZiakdOVDl5U1ZFUi9NcGs2WGV3NTFrVzFMbVVhRW8wU0hJQWNT?=
 =?utf-8?B?S3AwL1lKSjBiLzYrbUlJZ0loK3BSSzJNa2lTNE03NUZjUUNLTmwzazFMcXdu?=
 =?utf-8?B?WkhtNDlweTc0VGMwOTZ4Qm1hbHlObWdrNWsyOE1ySUlORGY1T0JRRCtSRDZN?=
 =?utf-8?B?TnRCcUpUaVF0Qm44Y1lxMTBFaW1jelVHR0syRllVWHE1bUd6ZTMxcmRpYzdk?=
 =?utf-8?B?dDJkQXJJVHBjQ3hsaDg0cXNmOVpYVll2K0dlQWpVcHpEbXZEWjJkeExKY2xM?=
 =?utf-8?B?SEdsbG5KOW8vMHB6QkZsVThYVTlNOG9BbElic0llUTlqOE50OTNhSjBFbU5m?=
 =?utf-8?B?dHNzQ2FZN1lOaG4rU2kvajFjbmg2dnZKdkV5enBGYmZ0ZE56RHd6NFRjSW5i?=
 =?utf-8?B?b043TmIyWVZudmE4eEI3L1lMaG1YM3Y5WUw1ZU5vaGQzR2VSZ05xVEYxaFRN?=
 =?utf-8?B?N1c0Zm1CSzI1TlFuY3lzQzBlSmI4QWdzd0p4RVRlUVA0L0ZVZWlLVnc0NUZx?=
 =?utf-8?B?ZGpkb1FhUGNnOE9xMUtXalJYUTZhZWhaNk9hMGJvSkdOaFNXNTBoU3I1QnNj?=
 =?utf-8?B?VDdSTlpzSUczZUlGTHQ0c0dacW0vT1FBbWxnODJMN0ZYVlR5L1lUOEptZGx3?=
 =?utf-8?B?aVJNNk5PN2JBTTRpVVZJQjR4VTMzaDBQWEh0L0pxWnJzT1pMMHFBK3VTVG12?=
 =?utf-8?B?akgwRUpvMEJtZEJ0MW0yZGxJaHF4OEFaZGI5S2FmbkZiS09aZTEvYWJDWnlJ?=
 =?utf-8?B?VUYxNU5jcHROR3ZtVlRuemxFZlNKWDZzNlJPRjNxUmlnQW5ETUtlZnUzR09T?=
 =?utf-8?B?WURQY0RoWnU5YVNFdnRRYjUwZmdLRVhPRjduMEpPcnFjSXVvVC9wNE1DSmdw?=
 =?utf-8?B?cVpSazJnYksyYW0yVW51WE5wN0V1RWkzMXpUbzU4VnphZzQwQ0pWMGhMQnBt?=
 =?utf-8?B?aDUwNDhpY2dLRnU2a3VkUCtUc1NCd3c2OENiSzBQUFJjL1QwQlQzYUJFemVr?=
 =?utf-8?B?cDFzcDJZOXpicjFUcUpBZkIyRWkwRURjNHh5azJvK25QRURQcGR1OWhkRUtt?=
 =?utf-8?B?RGdHYVZWN2hNVXNGSlU3MmFLNWRHNkNqSlU0RUM0d245REVob2lYcndoclFT?=
 =?utf-8?B?TmlXaXBFbXBZVVkxRWVaRUhyQVFZNjZ2YkkzaCtHUWt3T0srRG1jM3ZNU1p3?=
 =?utf-8?B?cDBLTFI0bHJhdXB4MFJlZWFMaGVnakhrc1hUb2tHMTFERGxqTkxVeHFQdzJB?=
 =?utf-8?B?VVkraG56MHFIM0p4RVBwS0UrY0dSRklHRXkvY3VySFVtUmR2clhZMElGMEFM?=
 =?utf-8?B?OTNBaW5XTG02OUR0TFpENlZ4YTBjb2VObGJ1clBqUlFNY1VUdG1PRnZ2bVFC?=
 =?utf-8?B?V3ZVM1hFVEVXYWVjS3NLcUVMb2YyaGJDdGR4T3hhSFdJV2tnZGo0S1RyK1BC?=
 =?utf-8?B?S1Rua3loRExzTm1UdC9LQTFPVEh2bGVCMDNhZnI2WTNzM0ZYVEtBSGNvKzNs?=
 =?utf-8?B?OUx2enozRnJzSzhoVjFEZUFXdU5BRjZjQ2lKckF2dnRwZ0F6NWVCaFZmK2N6?=
 =?utf-8?B?TzhoZWZHZlAyd1A2ajJadkYvTlBKQ0kvc3Zyd1RrWi9TQWFldjRkdWhFQ0FL?=
 =?utf-8?B?QXVEbEUxVGozU05rQ25OS21lUzVDTzRjWWdUSmc2ZTFHT3ZDUlNFNmN3bGFE?=
 =?utf-8?B?RjRmWUhYckVNdnNPUEJCcGQ1Ni80NVc3WWhZbGJmalhRb0xyZS8xUVlzU2h5?=
 =?utf-8?B?SUtSd0VOTWdGeVk4ZFBzdjFPNHdSNDlna2x4RUFKZ0NqWUFScjl6RHNTM2dN?=
 =?utf-8?B?MnhHZ3lIQnpGKzNjd3l0aDhFdkg2cFVMWWl5cE45SStJelh3bDB2NDVVTE51?=
 =?utf-8?Q?TSKNcQgBug8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(366016)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEJpKzBEZFNHZmU5R3hVczRySDhZME5QODQ1OVp3YzJ5TjZNQ2k5cnBtT1Rn?=
 =?utf-8?B?YVJGU3AzRXNFc05wblBmNU1lTTlaaUtuQkEzcGtMN05CNzlMM2FmdTlIbk5U?=
 =?utf-8?B?STB5TmlFeDFFeTlzSVBleGZpbGlYWmhFOFpOcEVkSDBwUmNZR1NoV3ppSFVX?=
 =?utf-8?B?Nkh6YlQ3Z1gzM3RIWk1TQjBOZ090ODlQSUpCSmg5OEVFZFc0YUNTcEp6VXVj?=
 =?utf-8?B?eUMyYm9KQW5DTHRpcEtma2xnZVpqbW1IZkF4d2RDaE5oUnh5dWtSYThTRm9I?=
 =?utf-8?B?WDIvS1lrSzBmTVFhN3NRVnZKYi9nNlpvSGlGbkw1UGI3SDJjT25pVHY5SDdT?=
 =?utf-8?B?QWFvUFVubWRpMkxVb2NUVEY5aTVjalZ2cHdPUUdidVkzK2lSZ3FyR2tVbmo5?=
 =?utf-8?B?dDBNWjExRWJJaENraXI3NDRmVzJLZktpS1F5OVlqWGJVbmRGbm12Y3h6b21q?=
 =?utf-8?B?RHRZQ3llcktBK0xxcVVDN3ExYkJwbktabnBVZWxWalVNbmlLd2RmUUxHOXBW?=
 =?utf-8?B?TUExb2hSMDBNbE1kZ3M4UGV2MmN1ZVRpaHdsNUoxRk9EWHZPY2oxcGh4Qmg3?=
 =?utf-8?B?T3BnYWszTGk4ZW1lMzVTOGhkQXVBcGdWVWdlV0JPS0swNFF3MmVzWlJRbm5i?=
 =?utf-8?B?azdoTGlqK3BHaTdCQjZFa3liQkphRnM2ZUtVVG1lT3c3OTZEVnc5VXpjbktD?=
 =?utf-8?B?Z01SN1NPcXVhb25NTUloekk5NTJEZGgzNFRBRS91V2xXK0JIRE1iaFlYeUM2?=
 =?utf-8?B?NDVXcjdYT1hNZWYxVHVBK3VIOURqZ055TTdjTXM1NUFHelJVTHZDZlYzTnBr?=
 =?utf-8?B?VTErRzdSaUZJTGFRcFcvZkJ4WlkyeVZzazA1ZzdXL1l2M1B4TjZ1UERJYjA2?=
 =?utf-8?B?SEhzcTVTcDNWMkFLNG4wS0xyVmlNcGsraGEvbFprN1dQVGcwU1FRK09OWlBB?=
 =?utf-8?B?T1hMRDUrUWh1RkFiSGhMZ2ZsdXcrRVlJdjEzcmpmdFJZV1dXZnpWSUNMdTcw?=
 =?utf-8?B?SDQ3R1MvSEtwc2lzSHg1amRwS2dhamRIR2JOS0tVRG95cEcvdGJMdGNwYkx2?=
 =?utf-8?B?WXVCNytsS2dqLzE1STY1QnEvNTl6STczUkNpRTc1U0ZpSFlDV3hPS3Nkc0ND?=
 =?utf-8?B?M3BxN2kxUUJRUlpmQmY1eXk2aXNjQUhBWTBYMnN5RkpjUy80NzhqbEpBZ1ZM?=
 =?utf-8?B?K2I3MGJXZjNVNFpsMDhoeStwbDFHTzdhQzNxZjM4U1g4SjJYNUVFd2pDbGVv?=
 =?utf-8?B?RjUzMWREMWhZYVQwVUMwYnJ0ZXNEaXhVbW9nc29rMWtkVFMxS1F5YkpvaElm?=
 =?utf-8?B?QTFBbWp5ajArZEVWZno0dWUyZlJ0enQwVGxSSjZxSGFnKzMxdmFHR1NBWnlL?=
 =?utf-8?B?N3czTlBuNFlEZi9UUjZwaExuc0FUekIxOHhETG1IVVRDcnl6N1J6MGIzTVFa?=
 =?utf-8?B?M1hmZjgwRDIxdWU1V1EwQ0dWRWRiY05OZGhyZjFlc094VEcvY2RZSExGWEVB?=
 =?utf-8?B?b1BCTjkrVlJqeDJxN2Q0b2NFaXhLK1B3WUsrbW1Uc084emRQN0EwS0FpM0lT?=
 =?utf-8?B?ZFh6N1VsNkpLcGJwZEs1ek5Db0ExbndmTVdNWGhMekMydTJxVkYxYTM4Szdu?=
 =?utf-8?B?UHNTcmwzcHpTQ0duSzlqa0NTWnp5Ui9IL2h6TjFQY3ZZZTFJNlNHOStUTm5H?=
 =?utf-8?B?T0g3b3EwZnVQMnppZmpWOW5QTTlvdXpGU08vT1lLSVpONWpHcjFQV3RQckJZ?=
 =?utf-8?B?ZWpnL3BsZmwxTVVuM05wSjB1SmtKd3FldHM0Nk5IdUxoOWZXYzVVcDNKUTVI?=
 =?utf-8?B?TnYwVmhPT3Nna0ZGL0dVRWhjcW5JQlUyb3FXaEZ2UE42U3l0c3dZcEtBSXIz?=
 =?utf-8?B?ck9OK0ZWdnhCeFhrNlQxUXZQREgvT3lwRW9leUd5V1phSXZ4eEI4V3JwaGFZ?=
 =?utf-8?B?ZU8vQ1JXMUI1QzFoczBDMy9qQ1VDZ0V2ZGVmd213Q3dERUpwbUNuT3JEcVVI?=
 =?utf-8?B?d1NkMWxZQmR6dVdRWnd2OFNNUzNNaG1lSkFWcWZlUWpzcFRJNUJURW1PRzVt?=
 =?utf-8?B?aXZCU0dWMTJwanNrV05ubWNrWjZacTFNVVdMb3MySmZsWndUendScmtGaGZ5?=
 =?utf-8?Q?PHfmmoBwHGQyL0zk/OxOoF6z7?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: bB4ns5GmVORCG0SKKFf/VCfNGiCPBtam49nKof6sWsPkPlA/Rt+nSXBuLY/ri/7Io0wi1GkOPo9b8ajzbultzvtW8waLJ35VzlhZ+KqQJV30ih/YfLjtVDf3gm9r56ja3joK71xC48lPKrYPdKyLy6Gu3F2/A4W1FmC0vZBPgHfvRR3T2V2uHPxW9s5VtfP8LrzbUZyvJVOO8kROPUeqwoJxla7BOG/OYTr0B+gPrAxA6RmLgyI0r4TfoiCo5R07rqyN+scFuPF7bveA4+9eg7imY5JTvfiHm6QZpN3xlcznJANnvOV6fQTc0thhLw9zj9PAFpCY0LBU5cS1oTK2PkgxAi04y0cqxgoV48z52dj3Ulfut5TY054h0ZFQF2HtKTrlngj+RY4xNpiMrwuoqKUl6lvJSAcmbQv7seZefjByuDJGJ6+mZIf0qoKrJmJjqT5OTgF1caiSlYZO7YdrLlUa7ZP8lklk/ZRaD1BtdpdgtALe//J+UgPw/ZkHx9eoaA1BiD+c2/S5Q2oP+pxLqS9XEHN3PUREOl0Xi2ZddITXuDcvf/cr+3rMy1zM+kcyACmNMIhBa8O3zU5iOUmV0btnFLXpv3pQVeV6Kh5ziKg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 429733e7-903c-45eb-aaad-08dd8bbda318
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 10:14:36.0150
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TbdE2NOzfn4eu8xBrMTbTwrXuakL0rzm9GZMbWERyaP3FThxbDXkctANhwZo8ztxZsz+9Fb5ZJVrOsHjYrE78Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5150
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_04,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 malwarescore=0 spamscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505050097
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA5NiBTYWx0ZWRfXy7VmoQsLSjeB 2DPgejJkAKftJdMx308Wu8xjUA4puAPqbTuZBZ8LAVAz5mgeACanWBMgtMXuKu86jdetjs21AUD PFg2NBqQwe2h0Z433nj0JPDDXg5Jr6rVVKqIDqD+ZTKuJctMDKn8qIprplRHRw1VJiufIlA4yMF
 tRlpJZ1VY0kKCZcksOAfwTrEC+46u6GTqP1h3ygO6CMpQqfZOVKWuQ3diZMkOlC6MchqFYz7anC fl/sC4Eyk6JDwaAoHNOvkXlRC86hl05J+EzgM1v3jw9Xio1Av7qpkqTgEKPdBXaJ1EA0UJzPoXi WYMYG9ATyFLA4vtljdGU0WEAaAFF9QrFOMFX41uAYfbHa+N/U5sx0Cbx637bwfCHss0dZA2WVyz
 Q8kjraCgaenqXxQPb2PtcCxjCSLKxqH10MQQ1rGgs0lby9UVvQALXaDN4Ki5+LK16GkIZ5DU
X-Proofpoint-GUID: GSpfuWTtJmpgc6A6LnI40_wG2woOJI4h
X-Proofpoint-ORIG-GUID: GSpfuWTtJmpgc6A6LnI40_wG2woOJI4h
X-Authority-Analysis: v=2.4 cv=eNgTjGp1 c=1 sm=1 tr=0 ts=68188f8f b=1 cx=c_pps a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=yPCof4ZbAAAA:8 a=7UoxDxbrbxLo21U5uycA:9 a=QEXdDO2ut3YA:10
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2025-04-25 header.b=j0ZnefEO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=QRGPhO6G;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 05/05/2025 09:11, Christoph Hellwig wrote:
> All users are gone now.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Hannes Reinecke <hare@suse.de>

Reviewed-by: John Garry <john.g.garry@oracle.com>

> ---
>   drivers/scsi/scsi_lib.c  | 3 ---
>   include/scsi/scsi_host.h | 2 --
>   2 files changed, 5 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
> index 0d29470e86b0..39320dccbdd5 100644
> --- a/drivers/scsi/scsi_lib.c
> +++ b/drivers/scsi/scsi_lib.c
> @@ -2000,9 +2000,6 @@ void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
>   	lim->dma_alignment = max_t(unsigned int,
>   		shost->dma_alignment, dma_get_cache_alignment() - 1);
>   
> -	if (shost->no_highmem)
> -		lim->features |= BLK_FEAT_BOUNCE_HIGH;
> -
>   	/*
>   	 * Propagate the DMA formation properties to the dma-mapping layer as
>   	 * a courtesy service to the LLDDs.  This needs to check that the buses
> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
> index 26bc23419cfd..c53812b9026f 100644
> --- a/include/scsi/scsi_host.h
> +++ b/include/scsi/scsi_host.h
> @@ -670,8 +670,6 @@ struct Scsi_Host {
>   	/* The transport requires the LUN bits NOT to be stored in CDB[1] */
>   	unsigned no_scsi2_lun_in_cdb:1;
>   
> -	unsigned no_highmem:1;

I note that there are some ancient references to highmem_io around. I 
guess that this was the previous name.

> -
>   	/*
>   	 * Optional work queue to be utilized by the transport
>   	 */

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2e71e6aa-7889-4259-884a-9a03a6df9eb3%40oracle.com.
