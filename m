Return-Path: <usb-storage+bncBCD73EGVUMBRBPXQSCYAMGQEPJVQLRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 674F688E83B
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 16:16:16 +0100 (CET)
Received: by mail-io1-xd45.google.com with SMTP id ca18e2360f4ac-7c88a694b46sf599025939f.1
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 08:16:16 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711552575; cv=pass;
        d=google.com; s=arc-20160816;
        b=i3Ab+4Ye0FFrUmzJclM+lt5tL76gXf/slU5VyRw3EdA3PNMa2ATgAhWTDXf0Ow9CXU
         5yYEtbLHP5pMm+LItVKrRCl3iL4UUU/j04Ou0eMILFtE/nWW+qRXYqjfXr70xgw/pHNj
         6Ka/QH3DlDLv7r2LqMvLj7PLoPK3Lz6ukGdjn5tHtgdoPASdyJUQNnLHuriG8zWTnpry
         nUq8mpxnf0Q4Xs6IodFHg5CVHlPhScC4tUrgo+fy7muht6Tc7K1w2M5CRvegSGuxHdwr
         LBWWPS7PzEZQ2eH8NPuWaPpdBTO0XCZqy8OAaQghTnGotj24vmMkMYb8LfFXiIgz/+kR
         Wbmg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:dkim-signature;
        bh=ke+uzb4vo/DeE9vGgmiQ6QOJVcWaiosSFCDIYV3E82Q=;
        fh=9G2se3LC3MFZUucl7Zt9+/ZDPq59JcA58rBK2UMqQUM=;
        b=H/UICbPIdMXkSLrWenCKZrVf01+2jPkKsodXq9VIKn9ugT/Naa75Ah7JNVwiKUtDf4
         2TngWq+gq9LpIeI/OUD1D2pdv61eUIgkM5mh0zAb708DUAsSjQL0qyzsFT7KxOVZHf+d
         8SHj0yVevBv+7k7krNv+boQOOpEnwp9PsO17NLvvR1P9/LjM3BTA8TTroLNq1JueaNet
         7N54oyT+SyDIZRt6DGla8p4V+xpBLre9Cq0YhSVgm4cyJ3PXRCi2LMUN14oeQ6L5gKBu
         ZZgsbGOei4nP9l8+32aHY13LXSzll/Eab8CH5Wl8u9TPm7/YYLxU6gbvcGH7LSAyNaVa
         I7FQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=khDosMR8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=jUPQ69hl;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711552575; x=1712157375; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ke+uzb4vo/DeE9vGgmiQ6QOJVcWaiosSFCDIYV3E82Q=;
        b=LZOhVP1ZI25Nh5M84NcaHZxJz3vVGbhXlgQV5evW4LOrF9/zqYV2bWBM4dZHEZGqvz
         lIdfMTqmnMg44Ssh4dbeqpymt1JevDs+nW+DM97pNDcpPsplAw3pomrzVzoJxXtBjmHM
         jbU6Ciln7taJFi+rMTFq/R9Jat0RCDO0OIDmw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711552575; x=1712157375;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ke+uzb4vo/DeE9vGgmiQ6QOJVcWaiosSFCDIYV3E82Q=;
        b=NkK+au6cpC3/sQ1zoYQoC11UhlUxKvdvwI5RxsJLHbUODY/EhgTShJQS/R4yz72ehr
         ZT9/VP9VCJ0Fal7lmUy4IdmXEEl6UKhLifXTjcr4GSYaj7zBQHtp9MFTz5eFQoR86PEw
         dO7eGklBiCP5ZBvbOwmaMyeE5Epl1y9ukAf1K7+xmLcJTH1W+cp4n7KNfVmmwPp/fSit
         CQJgmI+8JrAAmnLORiP8ARSATNMJND/4DGCWTOpCLMlpYpJ4q6YSgEHq51zbBHWoj8ex
         5LngFrbfAcPxynS5BG1gr68eSOfKAn3q/g4WDgePgp0bH8gK1lQT0GhNfSMqotmzA3FS
         Pb7Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCU0znuHKtjVzFAyp29/YoTkWefi8Nds18cbJLqd0htu5YHCCX0lx4JvvtOr/v0Dv9ke4WdYKWHWJaOVwDZdjYK/5BIBS2Rlq88g
X-Gm-Message-State: AOJu0Yx0ZkFcbK6OcPzpcWf2JOZON7pZtnwuIkgNdOmhDt9EAUwIwoSV
	igJnHyBxBJJoUW+mcgq6dqojmjR4Cc3gc8T3VM067bavC8pgGgeLpk1FeroaGDU=
X-Google-Smtp-Source: AGHT+IF8XmeWnp9C+fdv293WBi7L1G6q4GHXLgvPifV3VVLg3ghSqTQxlj2v+ULm+VjvVWjMDyUfRQ==
X-Received: by 2002:a92:c007:0:b0:366:ab6f:f63 with SMTP id q7-20020a92c007000000b00366ab6f0f63mr262480ild.3.1711552575144;
        Wed, 27 Mar 2024 08:16:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1c87:b0:368:7cd7:c115 with SMTP id
 w7-20020a056e021c8700b003687cd7c115ls301785ill.1.-pod-prod-07-us; Wed, 27 Mar
 2024 08:16:14 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUnbLqGDD7VeQOitgnpq4gdQpGxzdn07QNsdWOoiYAUSrEl1jfrS3IfwSWtpg6lhCFSgyN11kMP/cEE55WyHS8wcEaJhfSgSk4w8b2VD8p8Vsn8f5I=
X-Received: by 2002:a05:6e02:527:b0:368:a861:5a6b with SMTP id h7-20020a056e02052700b00368a8615a6bmr263085ils.21.1711552574243;
        Wed, 27 Mar 2024 08:16:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711552574; cv=pass;
        d=google.com; s=arc-20160816;
        b=INPjUcVPKBhmJlUR8H26c5R+To18ivYBoEcnTUBQ1oc60Qrv1iUtCw+o7oFSSCti3o
         SiatP3ppoUqCWL5Q703lmVqOlUkido2GN26VvHu+VlbZ5C3vinCRwPgy1A77b1r4KYw7
         4awtUQoryPsrXZ8zor9hTpfx4u7dbqVA7SXoToWuEhyScbP673Ig12w3We2X+fO5ryN+
         WRATlOoaCrowlj3aCxiYY8YSSApo9Hz8qNPsQM/1twYQWPTJfNAjGzHmp6yaUxhZeo2V
         viScb8YkGQPt9YuMkT66eD2GB8L8tc4eDxuep1b3l9Sy+pDeaZCOFSxlgfd25li5mNRv
         DZJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=TaZBXp00XYdfnoeopkkdGQVTG4NwwW8dMI1d7Zc/SYk=;
        fh=5lWv4x+216uw4ASKpPpEtJeS6+EwyFxVU2/QNdmJrGQ=;
        b=G/3xXEXpDlbfISNW1likC22WCl3G/bIy9/X4Mbat55sfRujskA/ChecX9X1BRYrXlb
         ywBovweMuKADRw5VbwlmKYZy89o/iIuiI6fsVRdPIeNJx6Oh1T46b8JoT+AndvrvN7RP
         6iySUAKFgTTVG1soGZKbrc1s3tKAPCbfaAahFTH9sOaP2AegjHzrlVp55hW8svF0jBX5
         T2Heix/2gjsUOnK0JnUpyDczGi1R5eKd+67alaUHmE6FQTLyghWH/8o8++XY+sU8tte4
         LFPEQcOvS6or4Uz9Tb3Ajtz9bzh/S0AhE7lALlN6ZnyH5UqA7j83uI40xTy9/jM2Ujd9
         vYqA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=khDosMR8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=jUPQ69hl;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id v5-20020a056e0213c500b00368a40ae8efsi1476587ilj.117.2024.03.27.08.16.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 08:16:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42REitAN026477;
	Wed, 27 Mar 2024 15:15:49 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x1np2fqrf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 15:15:49 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42REC9Ef015028;
	Wed, 27 Mar 2024 15:15:47 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nhewhsj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 15:15:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6J0e0/4ciXBQe+WMEGGrsT0tZbYLymcRhUK8ZjjE0xHZd/JbEXcVEMiEdqfPSh+ddi/MahnaG+RItcKETwIdyq04X29KARKl9VWcAcjZ4eBy1Rk1M/PVg3lifxT83PYprPLRghc+u6h4vINx/H+M38l86gLGigJUD4zDuWYXjtjL+WL4VHNzh6YJmlXfAQ3f1czm31J7hdAKuc8NNirp71TzuF9fUv1vsnj1Fton/F5E7F14ee92uL1bF90O7ZOdNqwEWQmJKnGglYqdivqvOYaNHMPvzxhv5dMsNrwE0bhQU15yOOZaE0D6n+vzdZTSyDV5CB2Re+8TlbAtQMoWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TaZBXp00XYdfnoeopkkdGQVTG4NwwW8dMI1d7Zc/SYk=;
 b=VL48sfvrDdaGdqRWoyr7IGpIhhefJNc7Ui1vruTpptT9n3OmbKwHT6L3sm3/diFzDroAY2jDZqG0FDANB2uxAWo34CP2WmYv7S0W2eaPSn+5P+njJ+JcXSVhs5WzZWzFNVRUJLBN/vrs5rPLyGftr2T3n5Lxo/kKVEw6yIOf13aVOEouwKbQ3asDQPQGcPjNWT3nCmcd2EIxmeXj16aJLA0XNDvFEtUdUOKGolUn2YpuYhij/K3HOSzc29S3AcxFMjjSWPrH99xeJYdyK+jp59yRaceIqSTLB3DIVQmp6AZYFFzReTRpC4S3cXvFGQ0Ct1isSXB6JzLxi2GXp/2qTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by SJ1PR10MB5953.namprd10.prod.outlook.com (2603:10b6:a03:48c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.26; Wed, 27 Mar
 2024 15:15:36 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 15:15:35 +0000
Message-ID: <1137e698-4376-4dc3-9bdf-886945787486@oracle.com>
Date: Wed, 27 Mar 2024 15:15:28 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 07/23] scsi: add a dma_alignment field to
 the host and host template
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
 <20240324235448.2039074-8-hch@lst.de>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20240324235448.2039074-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO2P265CA0212.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::32) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|SJ1PR10MB5953:EE_
X-MS-Office365-Filtering-Correlation-Id: 29f448c9-b611-4c52-8675-08dc4e70c0bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G7hjmgAINY/qDMXtzXqxzrQwiLAeuTqdfkfy36FpHjEDR9sPhGv2bV8Gb6LPep5KB3JEJrBN7ayGPvUqAS0UIhwlBZqtme75mhi98PyHxCGkMlz430qkgy7aseRIwsbdWnDUNhQxjhFtkS8de5//Bmb0j7k2Y/w2ffepROH7ZYuAE2amqSxW7vERCa/vXQElLnmvjC2Bn5zTJvz5aTgNPL7qKgW0C6J5MRqFwhjnMw9AAZ+uWxazqm3Pq+UYi90ygZt+0o8nHQcLNnbI+9X+ealU195A4BWo5+q7pvMjQ8C5fT/pgs+TqDAK8nwsMRpS0keP2M6yXnjWcz3Ct1kQmpVr+n1MHMcfUVOjcsXoXjS3lHZsCz+Z4ZglzYR4I0GgjBHZF1VVa/qyQ90ZguMxB+rEUMjpSNv/0AWIZ7kJE/qJTzWKNVy3LTKyCbT9u5dxkhjQmXn4sU1mQSrKDysjkAd4ah1WzLSI84zavAkG2SkLiHjVAA9JOOm9tNgTAff9/i/b3oF8gvhK5i4rMWxzxzywHNyayYaa+uQTUVWtmbrF+qlDXy4UQF+SU0YxQ6FeTk2uteUdGd6ZY+BSF+SbWHXdDne/wTvy3zg4c1RBknRPQTnospwhsoLHVWCFAY8UZAUh5CykNUY83NqcIdM2aKaaUcTccPJFBaGTh6bKRZQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlAyVXovZ1dMK3AyaktjaGFhR0Rhdy8wazczNm5SQ0RCQ2g3aExRcEN2aCtV?=
 =?utf-8?B?OENDODFZWGkrQ2Y5d1hOUm5XUmhSNXcyd3lYenA5QS9LbTlqMit1VmN1OUxZ?=
 =?utf-8?B?RzBwcS8wQUFwZm1SOHNYRDFWNnJlakVxbG4xb211dnArYXNwam9uQmpyNjY4?=
 =?utf-8?B?Vi9zNDB1NU9naHFpcHNNNWVlUXhhRmNldXpvZlJha0l4RENnR014T01NVjlr?=
 =?utf-8?B?VFFjSmlRc1d4YkNkRGI3SDJrbDZXai9mRm5leFh3SEhwTXJmcllhQXNzM1dp?=
 =?utf-8?B?cmNyTHh5K0loOW55dFN3dStJdUg0cTlpUEttMHNxSnZ0TlY1TTREek9xalJQ?=
 =?utf-8?B?YVRoVWNHYkkwSGhzU1VoVkE0L1luRk9pb1FLRVpNU3ZzRnY0VHd4RFhUYVZr?=
 =?utf-8?B?dE01VHdPSmY2c2pENlQxSmN0QUVFK1lJWVdYZEpsMndjNFp5V3NXUjN4TDBZ?=
 =?utf-8?B?aEtiTGphbEM5SXVudkNXTXE0bEs2YXZEa3VTN1JIWEQ1YmQxNC8wUUVJVmph?=
 =?utf-8?B?NEgwWE14NkRPU1ZsSU1FQTlHN2xzSmMzMVozNmphK21IZHdpM3o3MHJBejZ2?=
 =?utf-8?B?Nlk2V0lDZFE4QzlaVktyL1JWcG4yM0pyaExkdGZwUTdEU2Z6eGN0dytHL3Jm?=
 =?utf-8?B?OGJYWEdrMXB1cTZQYmp6TGF5OHhMQ3pzU1Y0TWprRVY0ZUd4WFoweWZiV3J1?=
 =?utf-8?B?UHY4MEY3b1hJcEhKNW1XL1U0eFAzT2x2VkdHNHJTNDRTckpXZzZPU0RtTEQx?=
 =?utf-8?B?YjMzWXprWEJpbm1tZjNHVHJWWXdlOGg3dzdGVFUyV1hpdDFOMk1TbDh3b0xG?=
 =?utf-8?B?aUhseGFzdUp2c1dIY1VHcjRkajVDVlZsaHdFcG8zU2J3bGdlVHFaeUNIQjVS?=
 =?utf-8?B?TmpEMnJVYldPZlVwVlcyS28rK0J0SzhOdkxIQWp4ckJvdlZyc2NyNWVpVXZ2?=
 =?utf-8?B?UHZkNEtYMzRBT2s1L2FCTVZjdGc2TVZJRmRITUc1WlJ5aCt3T3NVMzh3N2hY?=
 =?utf-8?B?elZPMG4vUHZsNjJla1pDM2hWR2tLdjF5Q3NIK1pWODQ2K3VURStPVlltd0hz?=
 =?utf-8?B?em9OWFB2MnMrVWs0SUFVVXhSTGFxRlJJVGYzc3VCeUw1akdCSnVEaVB6Mm9R?=
 =?utf-8?B?SGhkY0haMXQ0ZFkxc2dRUURYdGN5VG9LK0Z5V0xwcTk5dXJETTRoWnkrUDcv?=
 =?utf-8?B?RXk5NTFZK2VRc2VVVEZmWFRZUUlHSS8vQXVTUlF1b2FpbDlYeDVFU2ZsSDl5?=
 =?utf-8?B?b3NJU2IxeWNVNkQxbWJLa3RoWEI0NXhCR0kwS0poWit3NkVHMkI3RHlHMjBa?=
 =?utf-8?B?czhnNGVYbi8zRXhCb2RCM21mMjJyc1kySkJKVmVaM3NHSHhDWVA3RFJ6cjVm?=
 =?utf-8?B?Z09qcDlSM1FNcyt2SnhaZWF3SnRVRUsxb1oxVHF6bzhzY0dybDlFNWVGZlZ4?=
 =?utf-8?B?d3lVb2dRNmFJTVBReXMrRU9SbXFRL3FYUFlYOEVXQW95OVZFV1FpaWpmNzhn?=
 =?utf-8?B?UEtKQTJaTTF4eUpEeG03SEpsYThoUERtOXcveWRQL2hab050Y1BZVklJeUlJ?=
 =?utf-8?B?TDVVa2lId3JkQ01ERU9hZTRyTnF1YUE5bVJkQ1R2Qk5qTkRGZGlFbmFhdXRW?=
 =?utf-8?B?eFpVS0dWYTh4d1NnVzUrOUh0MWcvNHdvTXFuRU5nMmUvQ1BscVhVTHE2ZVhn?=
 =?utf-8?B?NXhoaUI4R296NUtoSnNKdEN3aVRuaS9pQkVEU2NGMThBWWFyTlpIS3NXS0RU?=
 =?utf-8?B?TnZnMG5jTGg0V1dhN1pyYU5lMDc5Z2RqQzNMUGpRY2c1dGVtOG41ejdtbnBu?=
 =?utf-8?B?d1BGVkNJSFNBSGppb2w3aXIvN3RNdjZIbVRRYjZUNmJGWDE5TnBFY2NMU0g4?=
 =?utf-8?B?Vk9XNkk2ckprS3U5TXcvOGtJbnpLL3c4RGhIZkpPN096UkZvQ2tiMTRIY21x?=
 =?utf-8?B?czgyUWtITjMzOW1vakNtYW1DN2pJV2t4dllzaHQyQWY2T2w5dXdXeEtZMGFw?=
 =?utf-8?B?aWlwL25NN1p6cDJ1dVcrL1VJMUVrUE8zbEw1bHZSYlpFenRnYlJBVnowWnNS?=
 =?utf-8?B?NXhDbG5wSHkzWnNaTXZBc0RDWVNsNGZmeFpQR2gzWFlVVDEzSjR1MFZCWXVV?=
 =?utf-8?Q?wZRjqeCN0FOv7OUHvQQD1Avl9?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: B1wRIvntXntF0JG9H8cqwKGRCIyqmjLSq5lywcF5Rswbz+xGKb871ZjllC3kL+ra01+57kvRCEJk44/z4b8shUy96IRgF0uYwsJVT/Fa8/BIRxFT+dBHrZMr8kXXJWSO8EfEGYGhY7taAoM1ISuwyRQVhP8vciqJ24Ehiq6Ml5waT3Q7Hb7JwXoiuYONqMq3qRBxMxh7Y9jZnMQBvbPn0VecFkcfgmu5ZcZ/xMvnVfd9yViNxwCyV0c59xri1UvxjQJPNlKR/M/aezMT4NHUb8SsPYUgSmSBmT9hDJAeuHDGikGnNHppQyc3ZJ9DVeDbmlTjS7PLBobCmTmerV5RirlxgayXJK5EuGSyl0PC7ENwV79K8Hrr4yajgXz52dU9Ss8KI+Rt+tZRf4fiZx7fUXGc41K2u6kzen0tu34YP6SD4+3SOEbz4EGnRT9pAIBV9R8OcY4hvFVyIn/1fKXVBooaWglrhOVpezW7u6iRCPv95+OrJ5l49xNmgYZhR6LKunxsiXD3XFD0zSxcYscCWvu1+fu8/Q7qgRnkh6/8/6vxFCr8EyzR7yciF3aTc9Lxgdg8nlvUoJiTy07VKG2mmY/ryD3hhyAgXjaaJSXeHzI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f448c9-b611-4c52-8675-08dc4e70c0bb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 15:15:35.8981
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oOsG3M7+eKrngpnQ/2vxcgY99maCe+FPe5+AX+2uIQXPXpuL2UkZKU39dxnxrXf7waRxUvMcF1N2HUnDrOuJ8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR10MB5953
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_12,2024-03-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2403210000
 definitions=main-2403270104
X-Proofpoint-GUID: pmA3ui3Szx5JpOvxqJF0Skka--To2z--
X-Proofpoint-ORIG-GUID: pmA3ui3Szx5JpOvxqJF0Skka--To2z--
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=khDosMR8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=jUPQ69hl;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

Reviewed-by: John Garry <john.g.garry@oracle.com>

> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -943,6 +943,7 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
>   	shost->max_id = 0;
>   	shost->max_channel = 0;
>   	shost->max_cmd_len = SCSI_MAX_VARLEN_CDB_SIZE;
> +	shost->dma_alignment = 0;
>   

nit: I am not sure that we really need to zero this, but it also seems 
needless for max_channel also ...

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1137e698-4376-4dc3-9bdf-886945787486%40oracle.com.
