Return-Path: <usb-storage+bncBCD73EGVUMBRBBHASCYAMGQEBIPCFOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id AB98988E6A3
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 15:41:10 +0100 (CET)
Received: by mail-io1-xd48.google.com with SMTP id ca18e2360f4ac-7c88a694b46sf595819339f.1
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 07:41:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711550469; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2F7z7jSh+C+MxNxbaD9DVr1ssZy9Qc8CNkff8QvaUBUCX6r7L76Iw40URzLyRMyM/
         7vYyi73vJ9diHDAE2MdQH3jfoejrqf/F8qdzyD8LikwwJyZ5DaT5LmmLa368DzpxCGkU
         xVjdKkHJp+voL4qQcjxPzFIHMISehqimAVmZYZ1YolwGCgz8Usc+NK1NEnYBV7j2HhEa
         FUKdazb4MtR8A/H8RCFMZz1Frof+7kqK0ZcqSgMSX3fXVnXFZ/kyRugsCwzeODRcJMMz
         yLi4FqcvmUSHnNtGVEc+dh06g/0Rct0cilVnpKr1ABtKlKeH4yqVOmk/Yc6RYB3zUiOj
         o9Rg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:dkim-signature;
        bh=kpuT5dsubQr1j3wpETS4PWvu9ArOvLgda5qxxQ6CMeg=;
        fh=Xw1BqtD9cLBQ2UsFG6zsGp3xTWHwsq+pb2gFEbk77gU=;
        b=DO1cffWGXBEUh0lv4L4llM+/RC89ENq6Aj2EG2u+ArbCxsaBrDyXvoe5XAqGFCDDRY
         6+AcAkDF0X7Y/NMkezHUIsX008wY6GetlEcWzOnJM79ArH4eejhevayG481qQarW2vtT
         64ldIzA/cHdnPU4x9XHbwUqn7hqUR7bZeDh2ziDE/clggnoRYXHP+xw/oWfJkC3HeE1l
         ZhIlZarN/aBM5Uh91GMG7tLzbhZH1kx+tCceLDPBXAVIkt65uSt77Cd6qLVRKE4+Fsgb
         +NlRSLOZL+mTipxx/5hld6cA8sgNuYcjfjWCFjG2NE8e8QdT/NDfjwW5PBujXApB9pQ0
         UwNA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=BqDcv1Oy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Z8mJahb+;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711550469; x=1712155269; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kpuT5dsubQr1j3wpETS4PWvu9ArOvLgda5qxxQ6CMeg=;
        b=UGIpmMAWbvffqDabl/SFCDIkpqHN1/q5nmE+mIrEMdtF3/6SSR5DRoqcKKGdNzXCdz
         6A+tTrmAxP25R4DOsA8AxkYm9lrMEIZVJBG9ZrRWzpCbrYA39cOY1Q1w/0Q/9S9xo9d4
         svdOV5XzYyUmVUfaMd/elEQ6IUAYZh7fhnLOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711550469; x=1712155269;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kpuT5dsubQr1j3wpETS4PWvu9ArOvLgda5qxxQ6CMeg=;
        b=R5Iv06DWjmE/VuIXniHPoQ8updBbx6Ov1opDnqRyM7oAxVaDPn6CVzQrJTfu2iPHaO
         JoL0vFHS1H+Un98fjkS8q0DCe/pckgishKxKNf179/XVD3vOdQx7/9Ql2nt88DWfsKqJ
         q3w0+EJ2iBo2Wi3MffP865gIF7bJeWRUg0tnxqbDJ5gSn27Bza0PyMe7J9YRh03HAbep
         nowT6I8hItITnAcWCg/ZBnnQaBe8f8OUq9I8jRCPDEX+vSZgz9fgqT6MApUgX8EbkypE
         V4BmtDNtY/nIef+gUgf6oDllxfI9Nkzv4Vr7FiEEw4ofNyCUvTcl3YUQyHICcJztcczq
         X/+g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWo4lH7DwFWBdCFxuPLOHH4XT18M6tBzALIFVRT0GTEJgHjBDFAKGVCIl2Zg1kntVDHpCmzTPcyKP7tyY9mWGxLJ/v956WPeEOZ
X-Gm-Message-State: AOJu0YxR3xuOu7Vmjwft4vw0VXVi6xie1JP5ETANGs2ODDOgskvmY4nE
	LHLEpP8bZWZBHLDURWFiEhRw+pV1KPnECwocgndPnrW3zflIBTlQB2EZQ++DXUk=
X-Google-Smtp-Source: AGHT+IH+hQ7YaoHGG+Y1Lrz0D916OsQ2N4j2y1oP/yVOcJNNYRC7F0Bo3n0l2ios/0ocysavaJinmw==
X-Received: by 2002:a05:6e02:1343:b0:368:5e4a:2b53 with SMTP id k3-20020a056e02134300b003685e4a2b53mr156559ilr.11.1711550469121;
        Wed, 27 Mar 2024 07:41:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:2185:b0:366:c618:133 with SMTP id
 j5-20020a056e02218500b00366c6180133ls263831ila.2.-pod-prod-07-us; Wed, 27 Mar
 2024 07:41:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWJjIgPjGjEupebfZDsfHKLTJANzdZVLp400a10LWIxq0l6KYRwB/GhMiBFBvQzs7KqcWtcH9H3MS/VkDGycqXAhhx36fxsSPxz4TUKG2wuy8qwfxc=
X-Received: by 2002:a92:d3cb:0:b0:366:944f:1881 with SMTP id c11-20020a92d3cb000000b00366944f1881mr179427ilh.12.1711550466109;
        Wed, 27 Mar 2024 07:41:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711550466; cv=pass;
        d=google.com; s=arc-20160816;
        b=P8vSvV867yb7PYA5NAqP3WzORqo71uG5zMreiq91SKLK5XkuUoXWBjgiDqg+zlUgZ2
         YC0q3ugRcRfESy7CiZ3hL7cIcpPHEPh+t95++WwXhUhNB8fb+viHLfPnWixVbxIAdqV5
         0KeJCWzKi3j6M8tuiZyExwK9poVxQcPW/GK/vVRO5TgdpKD11MIjqfh9KgQhLER3e9Nf
         nQUcAKqSvJil5ml8mTqAa9M9AP/A7qbyf1NF8iYnfhCfY9yyaUn7yRSv2kauCaRFqiJB
         v2cAxhAAYnTVSEucMvOg2yYVjTcr/OIpfFaP18N28BqpLMJRqsWM7wZMrphf4zM1GcCw
         9Xkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=6aDdTwiZKddCnOvfubi4bGTLtzj2NHORoTZDTawnDy4=;
        fh=5lWv4x+216uw4ASKpPpEtJeS6+EwyFxVU2/QNdmJrGQ=;
        b=R1Kv9PvSUbzXqDimFR2BP/jlSR14QUvDGqgzwMFPJM/MNev4wiA0gcpBgSGfhXUPFm
         aX/WTv9DQUhjafSFJEPgS+PVCSUsfU6IW/RKkp7v8d+VX/c/atfvwzP7w59RQnCMEjq0
         MgSFp1n6X0Q3RLwF6I5GhVxLLvuwOUOwsYfqDyJPaw323GzKE5UsBiWXoUWc0TX8HLeB
         61V5REEYuIiY2bFuOfWguHAqziPWUQZFLIZQLk9eB+rIZLYwNknRNFkB7OXC5tar2K3r
         CV9R4frsfHdjUsyaOpB5ErsHXSWHC74NCYiZL/tS56cLj/OpVCD7MnO8cYvtPW3TSXrN
         tHzA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=BqDcv1Oy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Z8mJahb+;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id b14-20020a92ce0e000000b00368523dcbc2si4611071ilo.54.2024.03.27.07.41.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 07:41:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42REWGJT005399;
	Wed, 27 Mar 2024 14:39:27 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x1np2fmhq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 14:39:27 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42REA2m4014376;
	Wed, 27 Mar 2024 14:39:25 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nh8mdf1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 14:39:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ffnQgXpYAsdwnmvh71CwN/Df35RxGcoc7+zl70dxb1sLkt4hKIg9YC9bkb7hsvv6rmbWmfNM/cwPUF8kjXVsTI2UOUpybf/7u18M8pT6x8aDfasuMenxRhqxKGlOXTrP41mlSR63HVkBOYobmJ01czO+h28uF9Zmkym/345NWWw1bkcJYNOFhN75Y5Bzq3W/lderAQGeVA1awaHz0PHWrNxKBZjrJj3UZca76LdoecIWyPokLvLubHThlfMlRTSOGx5+VHr1Cy+KV/svP6OHw25vWpoYSQIexevckNRZlfxc+ESq1vWe68hxTvHuFnM7Fz1zpG5Y+Nan6kUDhNnb5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6aDdTwiZKddCnOvfubi4bGTLtzj2NHORoTZDTawnDy4=;
 b=hOckVL9o9sBiJqcIWLIbQju5b04myHCu3laYa+eNmz+m6dZJMZEyGVjwWc14eUr8seHBxGhj8Vlhd5WEqzgAze7M7imXvJT03OkH3v39gSprpBXFNMqYIjkChKXzkPFnVzkfxVvTPMrDYPh+cyjPrGhA99+SMQWwgZgOmFbBEzwqqgD7X7SsVRXsYH+o+4l+u3+Sqor5L/T+xohkBdkRPJ1wNWUIc7EymjJtePtQ0EKLTyA60beMF+raOiyWacCzW8m/sqT9r9wlISuFScH37DiEUChZuKJShL2aH8cZ147bQMBAGVePT9pGT5vu5RGoHzI+denaZG9V/2FY3g2Z1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by PH7PR10MB5814.namprd10.prod.outlook.com (2603:10b6:510:125::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.30; Wed, 27 Mar
 2024 14:39:22 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 14:39:22 +0000
Message-ID: <bfe3c8f6-ee68-4f55-a031-a4cb777eab4a@oracle.com>
Date: Wed, 27 Mar 2024 14:39:14 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
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
 <20240324235448.2039074-4-hch@lst.de>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20240324235448.2039074-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO2P265CA0020.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::32) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|PH7PR10MB5814:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d1688d2-b099-4f90-9165-08dc4e6bb124
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cPDw177l6s3qBPyW2d3WBKyHFSMI1lIdCY0F5/1jvFDczMSZ0DoP7zZ/AnkkDWvH67CQIOD42YvXEeN5BDgohGhs7/uSaixwSBpiItsFfDnM4deXCd5AKAHo4o6If356a1dEaJ5QD6R4QVy5Y1krDe7sQt6yjt98qkLP7hKFp46oCr9HSo7S7FUF6csJ+2qww2E+38p6okBsRfuvN3Zu0fMmo9yhxFIj3agS/mBlif7xqPSyti0sMdjeNko52R31v0RB9dGy1DZpKS25dkGvFwOAdhzKlaMQUYCl+uwxArcJPKKcZ+5mvsdVpY3AlmfFlyCHE9QXMoBUg76N4ZZs9YziKE9Rm5MYMAok5eKG4jrwq/S0EipJFjAWQ2OVAKI4Zfdj7+EhhS5rZA0gpKnsQS4Ju3r3gH/mzaQYdXzIlj0/kM0qcIuhniIjFZwJirjANLs7yRR0qApTlP5dYD7iQFxvr1n6s5P38uY1rORslmdRU8gV0s1HXnFPQqNVaUH1nmCsoyw3OYzuplSAME64sm+FXbFbwLL31jjTP4M3E4rR+E1RwTL0yxXFR6oXjx1woyC4PPS9jUCEn1u3V/yfkpzQ6gqu6qoFhe+YXz29YwX35Kd0ewhoYlCQ7aenByyQMvMrtYajL//nWwMINzM3MwlnqpIW0ftI5H6LT3kdUlY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmUyeXphT08zcG5FN0VtM1Nia2RXRWJyc3QvUnNvQ3NkMTdDNTgxMTBJK2gy?=
 =?utf-8?B?WkkxR0lZV3NkOEp3VUZGNzBvOUNxUHluVldzbjZsc0JmMFgrZWNpRkJFSHZw?=
 =?utf-8?B?bjI3V05IcnovbXczWTdENHNlY1E4L2s5RU54UEovUTQyVDVKeWN3KzUrbThQ?=
 =?utf-8?B?NnIxQ1BwZE9ZM3l3NEVTME9tejZpN1N4THc4WnlZV3c2bUxqUnJqaWVLaHVr?=
 =?utf-8?B?MU1mSk93WUIxOGRwRTRlY3ArYXBmK0EvVklzdytUTVVyYnV0cndTWHh0MzV6?=
 =?utf-8?B?azc2NE1sZ0p0eW9XVWhIdm80aHY1NWQyTmZNVEtCN214RTlFU1ZjNjlCK3NF?=
 =?utf-8?B?MDdoVlJXVndtK05jNE9NN280SFBlSUFaU2xMVTZsR1Vmc2MwU0xxOHVGdWJC?=
 =?utf-8?B?WVo2WmwzdzhzdVBYWlFEWS9uVzRPMU13SDdEREhmL1hIdUN4VGpnUVM3a1Ru?=
 =?utf-8?B?V3RtQklFdkFkcC9LWFFmN21Ua1dkb2lhRzlnQzhCM1ByWFZwR1pPMUZmQmxJ?=
 =?utf-8?B?NVlJTUdoM0Zkajl2TmF1dURTVGxkV3ZEOVFMT3gxaWxqcTZqVGgvTXRxUFM5?=
 =?utf-8?B?aXlKNHhNZ1FyY2U1dGl1d3ZlaFRlYkU2UzFvOWgvcjNDay9Cb1dxVmcvQ3VG?=
 =?utf-8?B?aWYydERnb2owWXV3dmgvMnFMTUIxTHBMb01NMWltdnRXeHFZOFhVYnNIc3Az?=
 =?utf-8?B?M0NuellOeUxhZURoN2UwNG85dzJHb3ZnNGtMSWZVWWZoM2tvRS9hQjhJanVi?=
 =?utf-8?B?c1ZwVVYvU2FWMXUwdGczZlpDMjNlNVJHNjRsaXVzYnlJS1ErWndnVG45UCts?=
 =?utf-8?B?RTBSNlZRNTgyaUVCVzNVYTZHSllZaTFJMm15a3R4cUVoemRzQ1ZDSVoyWnRq?=
 =?utf-8?B?QVBKL25KdkNjVTNQWU1YRVZaYjBHK2VTTnJ6Z0dIUlZ0S1E0cHhpbnN2Tkll?=
 =?utf-8?B?SmRLTjlEbVR0QXhmNlVNVEFnL1VNMi9xOUxwWUpUZEtRVWRGNWlZVFJCU28y?=
 =?utf-8?B?OFViT2U5a2FXOGNmMFd4MWlkdTR2Y1cwNmFDT05jSFd6K0taaXpwNEJhbHZY?=
 =?utf-8?B?OVVnN0ZjcFFLTzdSekljeGw4Q1JtZGZISGErbjdsc3hvR2VhWXZGTWJ0T1E1?=
 =?utf-8?B?SVJXaThhQ0Z0eTNTb3dGZTg2TWJwNnJucEpLK1p1eTdTYXN3NEZUKzc3eDda?=
 =?utf-8?B?UzZnZkYxQitlYktQR0tIM3RUTkU3cHdtWmxDWG9YbThxZGN0WE9aWk5VeGVs?=
 =?utf-8?B?ZmswcllOYjVVNmlyTmNKWVFGQzRuaWNoSEYrYi95NUxOc3dkRzZIV3lkZW94?=
 =?utf-8?B?bjkzeHFzR2FKZms4V2V3eEVXOTMrZ3dBa25zN0hpNmdaVjRYWWpkcTlPWUJw?=
 =?utf-8?B?eDZTL0UrYWpSYVRzTFRXVEFFYVlHRW16UVVocW1kUVpYbEMyc25FZndvTFVW?=
 =?utf-8?B?UXdYSlpXSU9VK1c2ejVyWjFGdDFvb3h5cU9jU2lFdDV3YkdSQ3pRK2UyTU4r?=
 =?utf-8?B?ZlNwMXJJR3kyRDAxd0FiMTZKblV5czhtWDNpM0Z1bW1pRjRCVUVMSGVhSU5y?=
 =?utf-8?B?NUtSY1BpSFRhQVVoM3d0ODg4QytDYi9mWnpDZ2F1a09JTHRpdEpERGtDOG5q?=
 =?utf-8?B?RGh0ZFlqZitWL29aZGVpT0M5bDZycTFqbFJIdHdoZGFHSjJJSVJiSUFZYkpz?=
 =?utf-8?B?NXBXR1lJZ2Fkd1RBZDFUUFA5WTBidDZBQXBvV1ZKOVplYnEvMU1PMFJVTnpm?=
 =?utf-8?B?TWduWkZRSlJKQi9sejFYSS9TL0Y2OHdOdEhabElqSnJ4MFdxdk9rM3pETlE4?=
 =?utf-8?B?eEFoZUxpbklrZXZvNW1tSHk2WlM0L0NSbi91T3BjOTJkTUYxeHYzUFVDbElp?=
 =?utf-8?B?SDExVHQvaWtyanZrOERnWnZKdERRai96L3MrT09zbVBmK280dy80OXFIb3NO?=
 =?utf-8?B?OEMvcG9XalJOWVpMQ3ZyWG9CeUZOWHkvcGxGVC81N3p1aGJKR3Fjc3NwaVNr?=
 =?utf-8?B?SDBOSXpKUWdwSC9VR3VnekZRaFFlamR6MkdaK1NwMWUyOFhOTW1uOWIrY3lB?=
 =?utf-8?B?eURLQndhbFlqbGpMdzRVbTMxbVRNVFNvcU5lU1ZvbjdoUnNYWElTcGxEVHYy?=
 =?utf-8?B?SlRvZmNpYWpaYUFMUGQrVVJYOUNlajR2TFhEQnZQcjVoWWRSTkh3cktkVmZu?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 9b/jq2nTLnOREmOPK2PECElenO8CS/aB05tg5WrzDKvIIl9BVzB5Zo1Lk23PkUGfg4sSHoaVd+oV2zcPckkBcfAjGidX32wXtkya0L2XeI237jWKOwr1M7BsfTSr+/JoC2tfBxAAdOE8s5u8EmGnfildnOwsERlsoZwcilfLEj8gJOqj3CQxM8IBp3y0HtFQszBtax8dhMWSngkLJcKGgg3eJZp+83JNm8mDTKnSYsnWRo4pWU23gGvy9t1Q/SNDR+OKG9JFdXyW3MLee/Y49LouEJO0BoFtTqv85MIkvb5J81vyGHT5UbnM8kCSFM+/wFZv3uloL/ca/v4MwHc/LNFQYWzqTvWDtsI9CIDe/4RG+kf00EC4Vq6H72WcmnwTvbRy6gt5IFy/0c6IEDoE8lMc/jneOdR159nalHR4oTIZtqXeid735hR8t08Qis44dSfo03cxPqsJW5bCJEBALM/d1Jr5OIcVxcGwbXDK3Mc5fimg8DCMujuzVriZXPeigcevD3+I6vFebFWouFIKTh9IfXjeF9KiJFLQF/3sKdW0Lr3/fVvEfS86OEYUZ9MZwiMlAqjl9maG4XXBJBY2l5CFNziLnkJ6pSc/6VILb9Y=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d1688d2-b099-4f90-9165-08dc4e6bb124
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 14:39:22.2725
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ksEiG2ILdnvqRdTa1sLLscAokXin1E1n4gCsY/cDQ0VF6KBgsrpbkp3dJKWM1W5/3UZLpF3ST2G6Ed/VX3qdVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB5814
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_11,2024-03-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 phishscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403270100
X-Proofpoint-GUID: _wfDHGmdvotpeEIR4qlY2_ZqCJJSVOdn
X-Proofpoint-ORIG-GUID: _wfDHGmdvotpeEIR4qlY2_ZqCJJSVOdn
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=BqDcv1Oy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Z8mJahb+;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

- bouncing open-iscsi@googlegroups.com

> Pass the limits to bsg_setup_queue instead of setting them up on the live
> queue.
> 
> Signed-off-by: Christoph Hellwig<hch@lst.de>

FWIW:
Reviewed-by: John Garry <john.g.garry@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bfe3c8f6-ee68-4f55-a031-a4cb777eab4a%40oracle.com.
