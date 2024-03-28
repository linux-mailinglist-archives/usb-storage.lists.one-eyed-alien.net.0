Return-Path: <usb-storage+bncBCD73EGVUMBRBMMASWYAMGQEWRBILRI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C7B88FC58
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 11:02:26 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3c24221f4efsf539528b6e.0
        for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 03:02:26 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711620145; cv=pass;
        d=google.com; s=arc-20160816;
        b=EygZAHPY/6vjl5O4Rd2eK0uzNE8rrYlyMS7VJ5TNFNKYMzKxbsZIWBjffEKxr7ZgD3
         vSs0v0qMOnLP5Zt8DfadkNZwQFAECJ13iqVnduyLuWxEdZrAXz9CimiMTTz10Mxu9djg
         8VbsREXAhAN9rPTnE6kNoS1860gIOoC6YzAcH/fOygGiRJrotNwHF+xlhjZo7/N9wGob
         xWDg9iqg/etvENqMDfXgXSpZOsxMvDwfmyTA8fnosWZjIAmu5iF9WMKWHwbQ3wLd9fQS
         fiv1xvEWhgeDwcE+lbijCVl0sG7021e+uTWtQhNfx51zQzLwavYBHW9wmAUNXINHYfJW
         d5yA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:dkim-signature;
        bh=F/HFyUhC9OLy5T2Pa41sSoNk09mG6QBsyTxODjaeNEA=;
        fh=MEZi1REvrjAo3IRhHmktPVaCczYYj4U+e6gIlAucBhc=;
        b=EOIjg7fGBLVchQ0jjUmsILF1teliYURoTnV/ODFEUfMBnYf00G3luoJzyFeZNWc7Ln
         rwRyWuF35iHpCDUIN2tMMejkeHriB6tWyNwClczyc6pgDr7rbooorI/YE9lCwWfOOZzS
         POPdrTzQP+G9RDI70rfuoqN+aB0UYRuFsd7+cMmHcpAl/wAJmzWaxH/R1TVamok51g1K
         8VZfUax8+ptFze1AMiNicwLBHYhY3UnFzg2KySSbC2uZyzxudF4t9d0O2DaNqR+LTk0V
         TowocjnwJw/lA+t4z/+4r/PBk4S0XvcvRQMwAkS25+66cvrPxxwIO87Q0Mmx5/IEUYCO
         /W1Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=odCyzP0d;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=l9cKtHxw;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711620145; x=1712224945; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=F/HFyUhC9OLy5T2Pa41sSoNk09mG6QBsyTxODjaeNEA=;
        b=hCB3k2YkiNU//o3eoYUcJTwGrWkePJOMhjX8tToi9ZACX0TJnyYVair3iiN4OcK4y7
         Q3xt/C5xdNqH8EXTkKVvprW6gX94k/nBJJxdM++P2wNhYKJbBnDLjl8hvh9uu3tN0knp
         JEqJbLS0WEYq4X+bP5JZv5cCbzvW8rZLv44os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711620145; x=1712224945;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=F/HFyUhC9OLy5T2Pa41sSoNk09mG6QBsyTxODjaeNEA=;
        b=P3RLU3uBPgRBjkhYCG92VTbZM/aDBoqGZRreblXfgjnvp6J0ApkW590xfjG9kfejgJ
         SkWBNon1bk9dRHLpawtI1a29ocC8O5qY4W12X6WSVCC7F5R5l4+FL+ve8E2RE5ZLm6Qz
         ipKBcH3fOYvKUctSBqQc3eZrKRIpzYLXr9lIx9wWIiWRRh0ja9HVmOm2VrIcrpiqncGr
         bzJxNate2CAzHR4bW2I7Cv5KaJwHEx4NxOLAM1GJLBJ8Z24yhW4upilJS2g7aw+mrwMv
         QwA6GBtERIv0vmJT1DIP28s1PKhGPqTZ0PeBvPiKpMY84j2NXBQKdMxPpK3eXLlOyle4
         U1qA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCUovBqxe2elPGD/6XKXHOZTD199BgGG5EPpX46RDKfZrOYLu2Bhl86Mpzaj/GvYVS3bzcpQGmPg05zOrnQEDl1IJc54HSNy7Hxf
X-Gm-Message-State: AOJu0Yw+EMqujNIs9r6VxpBdWs5U7GfkRfGw2hlW0UydiXORZTS8yWrH
	jTK2Bqz0nsCNAZCf67iqtbaNZTLNFXPlYVHt2bTMuUyL+ymTH6TM0LPsM/CIIaM=
X-Google-Smtp-Source: AGHT+IFwfM5/51z1GjBd84XEmGbGu3+8hgbKUD6rfcRglt5vgjkstn5aI7ho8WP69+Y/FIQP+O9PWg==
X-Received: by 2002:a05:6808:1416:b0:3c3:d6d2:5ebe with SMTP id w22-20020a056808141600b003c3d6d25ebemr2760121oiv.33.1711620145357;
        Thu, 28 Mar 2024 03:02:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:aa29:0:b0:dcc:4059:deae with SMTP id s38-20020a25aa29000000b00dcc4059deaels1042957ybi.2.-pod-prod-01-us;
 Thu, 28 Mar 2024 03:02:23 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXfw0IkPIzjv1Ge2MbhzVkc7LbZFLZhQSauLsD8liaP697yyN9WhAPYIr7pXCIbEvM4ySD3m1a4FXuzj17oj8WF3NB5VOZLiCBB6FW7tgON1dBs13g=
X-Received: by 2002:a25:51c4:0:b0:dcb:fe58:a08b with SMTP id f187-20020a2551c4000000b00dcbfe58a08bmr2115734ybb.15.1711620142762;
        Thu, 28 Mar 2024 03:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711620142; cv=pass;
        d=google.com; s=arc-20160816;
        b=YIR5aUAeQ6V8ZXVwLbJfA0NuYV8qClm6rClxKEkcGORr7fchB9jezvkbwg4rTxIgSP
         khvPjRtn9C1GPWKdfGZevmcNCVxhyZ6gvwRSr+snvu1uc/aYxGtPTBaWjpX5jQsKnpNh
         1Np1FjOFlLmayqKgJiI3oK3jDY6siuxsCWz3s6wpz63T2pTXxRpGV+NzoqIZOW5ZuzjM
         Jkznb13wyy9f7Ce9EXlCvmbLP0AbU15yrKwpRS4wd8PzOiJShRHghPetdnvGQOXtLyzP
         kAjcdPwZBGFOcBG1EteqGH4TBNy+7lLuUtL1n2RNgjDbq7Qs8+JrB1AZzy5Za6JzD35d
         dHYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=Db5uT61Fljz3i3wYZ16ienrG2TnFQy1RbaZ2Zls2TLg=;
        fh=5lWv4x+216uw4ASKpPpEtJeS6+EwyFxVU2/QNdmJrGQ=;
        b=FJZ+xOM0L/ki4ocAlE9eWz8YtJfl1fAnaaH/PLCxT9c1v8fvIvQYbrVpoZv7iA9m8i
         zhxUAq+5KNIESOD0PhuPwJlzqr+e+j/lcpYtZENYIrL6boCvaEykV6OxiaUoDI+4Zb/z
         Yrb2/4++//UmLn7h+okeD/JcFlIPrLURUczWm3SRX9Y9lVoQHjFakmB5zWjzRAsxr6tF
         gqPISgLj7T4vli+siI7S7bqbfKG2xD6+JuTXONoQcfZWldCVWcpsb4jPXVyKC7n+bzKk
         d1WvbD/BQ+DiJhMnSeRe8VcUa9jjxrbSnh2Ak4YuQv5K/pCknFGGtDEYOy7J60+StkGf
         IZCw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=odCyzP0d;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=l9cKtHxw;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 63-20020a250642000000b00dccfab5e367si319067ybg.59.2024.03.28.03.02.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2024 03:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42S8xENh008039;
	Thu, 28 Mar 2024 10:01:41 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x2f6h84sr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 28 Mar 2024 10:01:41 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42S95J4E014352;
	Thu, 28 Mar 2024 10:01:40 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nh9smx3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 28 Mar 2024 10:01:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dnQubbB5mFnP5tKggXwFg9fk1FKIlHy6WHoOTbM4rChysJe4I356NFS8SwoqWNDoBDcd8PDJ/2ECFuipE59ZtX0QQ41N6qgtr3F7BKKHXWtpi4RP1QZmxa1q07RxiDnTQWsLWlPhtC9rLBKwBGGOLIwUQvScyz/3M17lsiF9UntrM1G8a0UMQybRORB4RPGTAVZxgNN0RctA+te1xNoFIcBICT1rrsu/xr37oYIMn2nRRCJU9+1qSoU7dTrBy9Dl6TY/RRkd6qAoM+ZvtF9GZW6EnWrAO4mxiY0rQ7KOIYixpH5N4gdDT5svwL/OVfBgt9H8FlDmxfbkmatvE4Ncpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Db5uT61Fljz3i3wYZ16ienrG2TnFQy1RbaZ2Zls2TLg=;
 b=iRrEOdkPADqiNTgHc8HFURBPTG+P5kSam2N8jdgP3jGs7+S+N6B7dklW6WKhNGjUIFhdsKkp7kTACVE4qFChvO4W0JfQaB2iJHRt6EaJwnrGcj2O+C8AIMaSC8bvIR3DYlcoq6542IwpQXVJFCcT5NiLNOtHqm19MyFcab8AxAFUsHRsVKCi/F6Z1Wm76AWqsJTHu8udLWuoAHW7+26K8/rbl7NW9C2N7ledY/QgmULYMFAJe6u2CY2sZsENpuL6n5RYYMz6gS9wxQywfKKUytqH9/hUu4ntFXVCWF2RPYD5seFeIbH3mQqw6xAfDAQn4XtNRb8NN7gHe2tlRtFa2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by IA1PR10MB6244.namprd10.prod.outlook.com (2603:10b6:208:3a0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 10:01:37 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:01:37 +0000
Message-ID: <ff54300a-b906-4884-a669-3dcb2912ae0b@oracle.com>
Date: Thu, 28 Mar 2024 10:01:30 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re : [PATCH 20/23] libata: switch to using ->device_configure
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
 <20240324235448.2039074-21-hch@lst.de>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20240324235448.2039074-21-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO2P265CA0136.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::28) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|IA1PR10MB6244:EE_
X-MS-Office365-Filtering-Correlation-Id: f7e78e90-76ff-4fba-e9da-08dc4f0e0eae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rsAaMKfRgvdlCM7EIoTSjkCpNLP2/MMljpW2rHbLXVqbWUj9ibF/Yc6d7AyyWBA6xuL2qBlgTOC7xqx51a+xWjo5m+GYi0Hq8KpIoH5ZhHj+oPGvqUDTW6feNh1CNmROaLjD3cpL/AjHz954USuMw4++U4AKzKHxw5YwgnW+grB9hfQsRcmdPKvJP0FJHvfLjpI7XKWh+CVv09f/h6N7M65EJAfjBzEjchecWyih+LWPNt6bFflldCi/ZfjQPGE2223Rme/JvOjI5UDaIQB81k16kzKxXU8UXGaDfqoUzl5h9fYLfUzdWzGADRzML8qVk9VA5mGJcrm705L4+DfYgMcF4i2PkRMLQ6x7L1MnrCx6GdffnMYukC0aG2EB2XgcIQ6vWVVbbk+0KaJHtImc8WHeusEOf18o1Ihb6y604X4azHM2pk/jIVOzMQ1/vZJhqA/a4rgl1UmD4xTI9IppX9Zn1FgagSgNugYFRKvmrBrE07eDpRWoL90VRAg4+d2vuDmfAMBAGrvts++qNQ9CX2TB7qKArSta8FK50hh0bJUO6AjCv6JXYaXGi0vQEvF3O2IEI/m+Yff8VlAvGrwUjwq3hPVevdq1GZTRTEY8WjWmArejQhUq7LvVxj38pW78nu8zx+oWc/VX9sd0GjbpFnMefVlb0Erq0MbCjTm12S0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(1800799015)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmI2QjdkNFIxZkdYdnhjWWZ0bkxCQmJjMGEvRHhTSFA2R1RJWnA0cDRiV3pV?=
 =?utf-8?B?MDROdzhCL2prOGczUE5sQ2J6bnhmcUs1cVErb2V2NzhXNWdpOTU2REFsNnBu?=
 =?utf-8?B?NUNaODhZY21iMzVMMENlYmVic0c1a3JTWEpLYnlHd0h4SUpSdGJEV01TNlpH?=
 =?utf-8?B?ZGdaR0N4UHJRVGVXenRyMHN6UUxyWWVLdXVyL25idkdkUHdYNW5CMjRWTEY2?=
 =?utf-8?B?eEtnWXRNdzdrWlowU01mNC8zRFY0dDFkWmZkYXNyM2tpWEQxWStGTGpPd1Ny?=
 =?utf-8?B?TDd1Ly8yY0pLaTdBWmFrVExXNVN3UklYN1FpYVNxWnU5UGg5T0FQVmVldGli?=
 =?utf-8?B?Y1M1MWd2clZOYVZJNDluUU1wc0Z1dncwVlVqM0RUaTYwQkxxbnJRbzFuK2pC?=
 =?utf-8?B?QlNvWEIzdW93bnZWNnFaQWRuTWRyVTQ1OEFkMkRrWU1wZG1kNS9MT291VjZh?=
 =?utf-8?B?ekxwWUYrazMrT2tDdWZRdlY5MjBxenN6QjRsMHFFUDNqR2wvN3hxYUlVQXFW?=
 =?utf-8?B?ZU8wSHBVb2VmQXdlVGxwT1ZRQmM2c1pTa3hKNlBYR25hZlZMMkQ2dWNpaXJs?=
 =?utf-8?B?V1BFMmZtS2htK3M3ME5na3A1NCtDTmhRUnEvOENiVEk1alpibWRDQUZHKy83?=
 =?utf-8?B?aGZXL09rNFdKSkVRSGQ1RG84bnppeWc4L0tRZERWSzdYRktLeE8vbWNpakVu?=
 =?utf-8?B?Q1ZQd1BmNUlzYW80TmhwMTBoN3NZWlNjb3FDQ2RUeHU2YzNnRDNJV0lCV0pp?=
 =?utf-8?B?OVNPTFp1aXFybFhEK0p6ZHhMUkpBT21BWjRGKzV2N0xDS2RReW4yMm43Vmg0?=
 =?utf-8?B?dGY5NkxJZGUycnV6clVRTXpudHNQY0t3K1VrU3dmTEJPRk5BRmJXOEhMWUZy?=
 =?utf-8?B?OTZSTlcyWHZCeDhIU0tnNklIbG5CVWlxdnJsRkp4NXJuV0pDeGpTbUhmWVQ5?=
 =?utf-8?B?Z0ZuMDl4UitDM3BmeG5zcnEyRDIxZFlaU0hJVXhVZ1loZTdoV3ZvYTZPbW1N?=
 =?utf-8?B?VGw4cGRxZkFwQjl1NnlTY2xTV0xKTEhJNnVYOG9RaFRqcEFHaVU5VUM4b2xC?=
 =?utf-8?B?MTdzbTBJb3lEREIvNmxOWW5aVGI4WDF5MitKb0plQUErTy9iZmZIb3Q3K2lC?=
 =?utf-8?B?dkxobFpyWGRseXJhajlLbDlJTTZXZ1R2NjkyN3RpcmQweVFPQXR6WmwxcklB?=
 =?utf-8?B?WWp0cDBBY0pUZWg0UkU0WGZndDVIdi84bTBHRHlTVXdDKys2UUlBS012enVv?=
 =?utf-8?B?enAyYnZuMHZNRGREVUlCMlkyUnVjeTJydFFFNTJ4QmVaWEg0Y1dKRHBEK0lw?=
 =?utf-8?B?Y2pxeisyWWJxb0VQdDkySlVaZGxYQVVJMXpCL1pQOVI3NmxXUkk5WEdPWk54?=
 =?utf-8?B?ajl1NjdBWmpBMXVWdUIwSVArYXEvbEtLeXN4WUFoOW55a1VJTXlLeURCQlJG?=
 =?utf-8?B?R2JENlpTeURoRVJIdElYbEhPRUlaUXVYQ1pZL0hXWE9HanAwdjBIODU3YUhO?=
 =?utf-8?B?Y3NBZ2JSeUpWYzZIZFRhUVhhL25hVDh2ajdqVXUvZTBhUE92R2pYSm9XNzlu?=
 =?utf-8?B?cW52QlVhamg2VXJPVWQrekx3c0o1MjZtdk9ja2xnbG5CUUZsaDNaTDBJd0o0?=
 =?utf-8?B?TU5ZMlEzWGw2S1hDQ2Nub1U2RWx1RXp3bVZkM2x3TnBEMzlJcGQ4VzJGVG85?=
 =?utf-8?B?WjFOUGtDMVlyUE9vcUNLTUQvdHpBYUVLUzVIdmJFVUFqRFh0Y0JZUWFwMWhh?=
 =?utf-8?B?ZGF2U2JWb2JtYit4MkFKVFdZUXRaMHI1M00zMkVTdXNLY2JjbkhaaklSMkxn?=
 =?utf-8?B?dEQ3MnFobjU0N2FCWmNxMHEwNmxQbU5aN1FZTWVXL1dqRklreWhGcW9OL3BK?=
 =?utf-8?B?Nk5VQVNPRlQ3bVdEdGNIQWo4UW1VM2tWTmI2TVFpL1FFZ2xJZmdNRnEraFhi?=
 =?utf-8?B?WDlaN292bHN2OXowVTQzSkovYXVLRGFaK0d1b2xrRTFvN3BqSlBST2NYMnRN?=
 =?utf-8?B?MHpUMDhsc0d6RVd6dHpLMEsvQ1EyOUJESHNESHZ2a0w4WjdCVXdGYTdTdFlD?=
 =?utf-8?B?NnZaUkk2TEswck9yYko3dHRyRWk2OFQ2dWprNTJhL0ZiY25OOTYyZzlFOG9O?=
 =?utf-8?B?SWJPV2hBd3RTdlAyTERqaTkzM2UvQ3g1alVlOGtoUnVDTEU4MlFiamlSYkVz?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: t8rV7k5Arhf8E6doqvDu0fE/zXU18rzeWyWhB902cG/wyb7wN5pm8Bz55+yzUko470iZjW0d8Sl4dZe0So2THCugrZL7hIZ+P1WDy2FA/yJC+ZC0qMBAwSMjecOHJMJGDEeJbQc+JH0cB1GH08q31to7xopSmHloE3jpHBlYdMXe6d2HzC0ZcHZ/gMLnr0ZQQcWYJ89E+q6o/ph0rtVWTBg+yiqvRz9aoxvMdRsfha1+yxZA4ZouRcgPEJTTuwsLhNA/zupjpNYdkz6NFd5iYvg+yGNKeNl47AjxKM6kIGgr5C88NHHKeThgqTi5X2pTUSzpAOnnFT+QbIuD9QXRc3TyCdKhEUdJkgjT/2srvIv2pnunW7CGV1SpWAe2AGdbUfvZKfCvZiPKwkH4BqdHpHDIcaMJyJ9jkvLqHJc7/u2fkqE1ORhgq9bW7XIkG7Z9y+UsZYdS5lNYTOKCIwwOQMKo8Txb9vpjJJ1V5i8Mab2M7vFFPAY8S2HmOoL3UmaSKQOn8diXHm4fN2Lnv6SFFs+IR6I3+tLPqp0V0xDvl1PfRfc7UJ/QJaa/sXtt7kHgHWvuV1Fw+Qz86xa/yY54EJjXTiucPkYHiSxbEC+Qt80=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7e78e90-76ff-4fba-e9da-08dc4f0e0eae
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 10:01:37.6121
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6/0+BZUy9bNGV108TI4/Q4R7WqM8wYYheWSKvNdrxlAK3hPDAnfT8aLIPejbS9kbjLvvVfNkIrNIhXrfWvwOrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6244
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-28_09,2024-03-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 phishscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403280067
X-Proofpoint-GUID: BsLa6u9D2NvTBSGd0wLx3-4THGyg87Wt
X-Proofpoint-ORIG-GUID: BsLa6u9D2NvTBSGd0wLx3-4THGyg87Wt
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=odCyzP0d;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=l9cKtHxw;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: John Garry <john.g.garry@oracle.com>
>   
>   extern struct ata_port_operations ahci_ops;
>   extern struct ata_port_operations ahci_platform_ops;
> diff --git a/drivers/ata/libata-sata.c b/drivers/ata/libata-sata.c
> index 0fb1934875f208..98780d3b2f1c1a 100644
> --- a/drivers/ata/libata-sata.c
> +++ b/drivers/ata/libata-sata.c
> @@ -1170,21 +1170,23 @@ void ata_sas_tport_delete(struct ata_port *ap)
>   EXPORT_SYMBOL_GPL(ata_sas_tport_delete);
>   
>   /**
> - *	ata_sas_slave_configure - Default slave_config routine for libata devices
> + *	ata_sas_device_configure - Default slave_config routine for libata devices

That comment about being default slave_config routine needs to be 
changed, right?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ff54300a-b906-4884-a669-3dcb2912ae0b%40oracle.com.
