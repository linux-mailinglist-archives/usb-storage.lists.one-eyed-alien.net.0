Return-Path: <usb-storage+bncBCD73EGVUMBRBHHHSCYAMGQE6ORXS4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id AF72488E764
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 15:56:29 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-36899df83f3sf7098445ab.0
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 07:56:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711551388; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ue95p7amI27IBFWhmCT3opeAGWsJcuSqS6+NJA/6Det07OP2fiRZ5XeYs9FC30qA7O
         DMEwJoKNfZVH2CH2je/Hcf+x0mErF8yPLcy/c5gqF+I+QLawsqtOOLOnCweomqOMeJzz
         m7xOr++aqzBnpyUL5Mkm+5R89kNActb9wzY9Ve0Ddzoe/fbA9QwjqheAXf6T17fRho/z
         7CFV2uUj+jhMaSE3suUgNAWSdTTPAO2Vf9xFYnpm2tjwrTqWYlvqtylWarqdpnggXh8n
         bBohwwOlPc9au6cvxb6AgoIu0kYxMD45ETLFfMEPthktwbrbToQhMD9600Ia2QIrQP9a
         5fBQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:dkim-signature;
        bh=X8Upcc68TzkBEkP7VKIlM0UXVAcuTesjk5HPLNxHuGg=;
        fh=uO58gaiKD37CbNgyKAcHy95yYEbHlb+B47ubE/DtQss=;
        b=iCn43y4PhCj/SqDo8EcqIu/URZ4JMjKG9DhIl7Klt+mA1XlvbJEIhw8dujDAeQEDyw
         Dwqs8+DWfxMRxRcYg1d3L7tLVoP/VeRHcX4ikTIiNbKJvzp5ZVU+W9HANsTVtKnwJswE
         ee6qZFzME5WoO2nt49dgmcXhWuSYjQY0c4EDrLRcw0Gxl9BRwRNGVij02U8HYgpnabLg
         XoSMRHA0vrTKh2x2jCumIrF3AS44AuTI4aEle6C0EwW3+Q4ibM+XumzyQDnlmkoxj+09
         2jeYjULnOssLgXi81+KF40dV9z6aruCb+JLlsOgy+pc+seUoBSWRILsk5N/UjJo0hXVb
         yC4g==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=Df8GHPKH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=JX6sOT5H;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711551388; x=1712156188; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=X8Upcc68TzkBEkP7VKIlM0UXVAcuTesjk5HPLNxHuGg=;
        b=U6DaWMc7PfVquSSBb5tvxHMJl1OUi71k0z3MnFNcEZA4UDtZ/aHaXm0q9nFDpMf+Fk
         NFRSjtCxlsLpM/hSE5m/4m8wmXtZaTWHngY9GDGp2DhWd4fxmJ3LSj10x4a0MyvXFPMP
         XNs5Gkkn7eMbmmPwpdk1/6KHaTynPOQmig36I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711551388; x=1712156188;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=X8Upcc68TzkBEkP7VKIlM0UXVAcuTesjk5HPLNxHuGg=;
        b=ZCRoJhCEWn3JKwrEb1uzoudg5qlQiiP7+dFWAF8O6plaUANECQTzCzxIsmwIJh2bkx
         So6aYOjZbhRNQLLYKQDzcbhc3esElq+8T+UZ+teZS5/1hv8to9x92xyYMnkdJx/xdXDS
         rt6aIXzC7UJHQjrCO4jvidcpcwhdcbQMuVEmRmef6Y8U+iWBMD7CZUCe8vYEhcAVwVG6
         IiKvY9tBBEqRendbfcyiXkRd5kVPcogTDazuvH/aiurlg3Ocm3jaW2aGMK37jCGDHEBm
         Wpd9GReeblskNQ2cqRhlfgEsGYbIzipPyc3nFdHlsRqM5tZq22XjmeqkPLpkO/MHHZOS
         q0Ew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCVWzXh8TlPpkANQqfisLoC8nj+e6hBXoZqlJbScxJYozK+xdz/NtEHN55CrZPcAtzUXqf8oDCdupaFdV855v37LB7eRwMYIMX+s
X-Gm-Message-State: AOJu0Yx1ZogT8UMaOT+YeVCYciIB8tBXfymoMf1OThK/a+iXXdkCoBvc
	P2ZJwjaYXUYDJVBOGaxY9ZwrxnXud7DRTt6KNVak4UnlF5ltnfKOyvDMAu5SJAY=
X-Google-Smtp-Source: AGHT+IFM8yQlkrZrN0sp1OFWQp/at47b9eIWYTgyzdljGfXQgvep6ahahGJL/zcBcWluXyhhn4cIYA==
X-Received: by 2002:a92:c8d2:0:b0:365:616a:72da with SMTP id c18-20020a92c8d2000000b00365616a72damr153423ilq.7.1711551388465;
        Wed, 27 Mar 2024 07:56:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:c541:0:b0:368:7e0f:19a1 with SMTP id a1-20020a92c541000000b003687e0f19a1ls874738ilj.2.-pod-prod-00-us;
 Wed, 27 Mar 2024 07:56:27 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXrAiptKQBjb68FOA8siLs3xqVVrhuvIO1zJ4KE2dYscup5oCrm9kin0/xC13CpgVFwUiaMpG45vXlTfVXCI/Fp/NBmrgB+Wnpwmj8FMucrypXa09k=
X-Received: by 2002:a05:6e02:1a6d:b0:368:966d:7811 with SMTP id w13-20020a056e021a6d00b00368966d7811mr4507688ilv.10.1711551387216;
        Wed, 27 Mar 2024 07:56:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711551387; cv=pass;
        d=google.com; s=arc-20160816;
        b=vBzDlBvwi62uLW20CpYCyyMW+QsTDy3FVpJAp01vv618HJK9Xy9V1tWZPenSUxZkpq
         v4xm/V6uiDrzgmZDvGVqGJzyirCUl0R7baNjqtatPcT1t9qeo7d8t2WX04r8dhiSUTQ5
         Hvh4cyaxYkA9FDSEIIEtcOkjAipChSkBjCzF0FMpoSLWslusuJtk9MlfYWUPKXqi1M8c
         cG6+HezqpgpRQWQZeiMcxkJzKH2mju3Iw+nkRQBK64j4UOQN1TKg3+Ft0/JP9StXo+et
         i6IUYB/FFeMEY9Ubke1zSHIYoz9/UJLtnOrMyCz3hieeM7EBm7mOXehWSJrAoojA/73M
         jGCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=zEhiVGntDzPU/YA/6n+Ndfvaqm2avVYTLWEHER3ErGk=;
        fh=5lWv4x+216uw4ASKpPpEtJeS6+EwyFxVU2/QNdmJrGQ=;
        b=JU6RQXYKaBvEhAg4PpES//a/t7RgoeIkD2R4nLH4rU4USr/9gCLT0oDK9vh8CHAoqs
         3SxH2elIFIVccBucVpRRS4lLX9Gyu3M9X6YU/A1z0l+Y0xhz3rDElux8RRTpnhacm4Hy
         4xK0ELTE3CTjHWPwgim+NH7o0VSoDsulN6kboDqKXMdAKa1lYRtbDxL+8FJBm+YNps6P
         Zx5gOqGgXL6BlKGmUoOH+E5k5dZhk1ILp0adXbjw7UC5gqL2wdR2qMetXv7RUeMAel0l
         eK7peIgejWaPsruR1mY+HigNd9aDzQgORVNvmhpiLjyLKCY8noRI1B3rzfpCpx5/k9cy
         GTHw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=Df8GHPKH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=JX6sOT5H;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id t44-20020a05663834ac00b0047c23e486eesi2426764jal.23.2024.03.27.07.56.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 07:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42REiWfE031987;
	Wed, 27 Mar 2024 14:56:03 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x2s9gx3me-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 14:56:03 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42RE7Dkr014379;
	Wed, 27 Mar 2024 14:56:02 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nh8n2yb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 14:56:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OobS1OH+gUHBACk9WYavDMZaaCHt+zNYNfSYxd5SKSKclvr5EjfM0UslCPqzmAqBFGGDbH/cxqR3cTU0pHAo/lHmlsstTmLxIl8Mdg2ZwiF9PJUfuSVQoChWK3gbBMVdOyiivbKhyM1D6Olw8woOOBw/LWjwRAw4d1CKL12hoWOC7juAkOBuXp8sUTMmbDKi4QczWInPxb/9xYsx1fiK0AlAN35JPKebZmotFg8/JXlQYBRAchZY+prZ0FN9l7V97lk14H5xiC3FQFiGEBOVFK88gVKx8Dnmf6rq+Q2i+JEJEs6kAwNiS43d5tdKlibPVUKgeTJO6sqzZYZdnOeDvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zEhiVGntDzPU/YA/6n+Ndfvaqm2avVYTLWEHER3ErGk=;
 b=Hr42/90kQaTtjPi8qFecjTLVhbQFOvlTo6s7uJpXS2GxQvWv6PlDOccMcjhFKQMKdD3C/DT2B2zriMtv09ay4d+hCh/YmDddZV7UGzk8bK+EEB2jpXP0DCcZ9UUiM6PPoUcrdyWSnSz6bjQsRx7UC/UcwrV5yp7w0Dk7qt/ky+8Y/fNv6X3Y5/fafl6Sg6laYc9er/jUOEyzmJrFvomLwZbNkTLfvDmjgZxRD+pGikJivdwp6DB6fRtz86triGmyZGY5TxbBPRhpnup/QzCPrwT6tnlV6ngmhVLOl9OfWJ6FjqP+EIYCCSa0HNQ10zCqD6rbruEaobKmclucfLDf3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by CY8PR10MB7170.namprd10.prod.outlook.com (2603:10b6:930:74::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 14:54:58 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 14:54:58 +0000
Message-ID: <af7cdf5e-f5b7-4de3-88ce-8147cae6cb77@oracle.com>
Date: Wed, 27 Mar 2024 14:54:51 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
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
 <20240324235448.2039074-5-hch@lst.de>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20240324235448.2039074-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P265CA0134.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c4::6) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|CY8PR10MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c503a9b-a7e1-4a34-b96c-08dc4e6ddf2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0D0zI42NIuz7d4VqebBSBtmv6UCUWsRnBNnA2G5Uk0CbYcR6SwGjWAwBBY69J9lWkjO1yfvmNgurLqkIU0nw54fhg02pYiKjfzCVnxZjVOsSiIxrx9iXDgbFWBiRX/O9f4GioWbQxTrdJYxuzF/UmH1iwNX7LcGAYhPDc+TKPBdweraEJtR7q18WGyM4/TpHttr7hEZbSm4D6Onc/0SXpECbPMpwHG184WWrR/5lVVvruKnRy5qHJuuEEjdMMcOR84Rey6NC+bMHdffQmbea/95lIc02RAVSL9ELj/Vvl93QhMi6/wq2z0iZISZm3hw/XPYeMr3Rc5jFv+D6rMlqZt2Ic3UXkBmJOj6L4MVvcO2AzFDIhxf/xx7TGDZ7gCgbV07G8/mupJgKUbugClu07BCfxZApq47fcn2291NTpDOOK2rG7JC/qNhoHxT5zwkqKFwyuhYrqMEehrYsDMDcfVyxTKLITVmvDV8rRgCEXun9sCN32dMkZXZcohS6okNfR+a9Iave/6J1NVLAsR7JL2vRqNKkWlfMN7bkqHE6qQaXjUJfC/oNWoHMnMwk9yrM9+Q9f2gWwJa/8rKVuXvCqJml/RR6ZPAIKC/wFfus/F/+Rin56oMC77sGNpZp3rEieiip4KcPNZxpQM0j6kkWYBuFXB2FklN0hL00dQ7m+JE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(7416005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUs3VHlrZ2pwaHdJYWpSbmx1MDhqNHoyLzZ1YVpaVHdTZXVzeHR3Qlg5MmFp?=
 =?utf-8?B?Z1pNVVZvbW1yeDlVYlZxYVZ4R2tXalV2VUxRSWZHZE9ZZjN4MzZJdGFJYlgx?=
 =?utf-8?B?MktYT1c4Vm1uVE84cHFrdFBlamtxQnB0UXdjMGUyMVpDTWxKc0dVRlUyK0Rh?=
 =?utf-8?B?WXI0RkRvQm9ZbzQ1bytzb2J0U2V4dFBONkkxSEhmSUZySHp1MkpKbVpoQ1dy?=
 =?utf-8?B?cTZLRUFuWm5FakIxRFhGTytiNXRVb3pVbXQzQjZqTTRTamZuckxIOGc2VW5E?=
 =?utf-8?B?Sm5ZS01iTUx0MDVjdGVsakVpTVZpYm5MUCtWSUI5NlB4QUtCQkdCRXFGYzJn?=
 =?utf-8?B?UnZZYlk2Y0JMd1pRb1NHcUl2UjVhV0IvN0grbTRNeW40TkQwM1AwOXU0d3Zw?=
 =?utf-8?B?UGdzTWVRNmNOSEVqZ2xxTEVIVUtvK24yVjZjWG1yb2d5WE5sUHRJVFZTZEtP?=
 =?utf-8?B?VUFlcnA5VUhlbGw0Q2hkWW9QVVNLYlJqS1d0dFE4MmxmcmdwM3NPSDltU1l6?=
 =?utf-8?B?RUYvcVFmamVHYTdTRTRJKzQ1VGVLeFhBaTM2ck1OKytXMU9ZNkh0L3E5Z0Yr?=
 =?utf-8?B?Ky9sNjVYR0FHZldZQXBWVndqUGpHcGtkU2Vjd3FLS3Zva0J5WHVXTm5sRVVU?=
 =?utf-8?B?QXRCYlZyNXVTK2VjckVIUUtjcTBzbGdNaUtTRDhaVDhNem9Wa3ZrMWRwVHNH?=
 =?utf-8?B?dUFlYlRER0RkenlRWVFuSEsybElTRjI3cEJmMks5VzE3NVg5L1U3WW53QUdY?=
 =?utf-8?B?djM1TDdvTG9qQXhlQUUzamFXVWhHQThaOG9Fb2p4Q3NPZ0NDSWpPdjlxUW1k?=
 =?utf-8?B?ZzZick5IV0xrcGFwWUEzNXZnZ2M3T25OZThIMDlLWWxIZEowNE80NExsMWJr?=
 =?utf-8?B?V1UzdVJ4QmpkZWNSODNUcFMvV0pLNGd1a1dpK2VvUkNHVEprTXdzQjlKVGty?=
 =?utf-8?B?QksybUszNmtCbVhxK2V2dmtJZmlrdko2N0ZycUVtbEYxUHhZdmVrV1J5RzNT?=
 =?utf-8?B?RHZaWjQxY1BURjNPMU41RVVVdXJNUmoydWFzTnNWN1M3WXFleVZVK0pGajVW?=
 =?utf-8?B?WlZPNlBpT2Vid3I3d2lmVlkxWDRWQTJQeGZzdmxTZlVERE1wbFl6RGc1V0t3?=
 =?utf-8?B?RDlRZWZ4ejJwenRwTGlOZTlwbjViSmc0YnJHZkh2WExxeG1qOFNKR2JwVHZz?=
 =?utf-8?B?N3M0UTJkVGFJVTZGR2g1Tm90Nm15V09BSTQ3WlBoS3k3cFgwTVAxbERMcDlS?=
 =?utf-8?B?VFlYWjRTa0hFZy82OHdBSXNPN01VaE45aXl0YTBlZGtRSmhtbXZCYlhNMmF0?=
 =?utf-8?B?QmdOMHljTlB4VEZSelhhdHd6Skg1NDJkdDJKbENOWXVsQzlvc212NG1qRzUw?=
 =?utf-8?B?RG9Ta3VkbmhWRVpxNDAra2Y4Z21tTlhqcGlyUm53anVFTGFBbzh4djFFQWIz?=
 =?utf-8?B?elUwY1dRYWkrbkNkbndOdVRwd3FrUk5EMVZ4eitXUFgxSjN4SFZmYkVuM3lz?=
 =?utf-8?B?T0dYbXlWNE9EQVdRak5WZUJkTWpPRlVBc3NwanR5Y2d3REQ1ZEtCcjJwVWxL?=
 =?utf-8?B?MmF0cm1wRi91UmFaMzV6SnNZVjdoZk1ibXdENzk5RnJsSUNGZklGVzhqQzZj?=
 =?utf-8?B?WTF2OFFpZkM1ZVlhclkvbzY2cUxHQ1BRRFMvK0poSXpUNzRENXQ3dDhsRzEr?=
 =?utf-8?B?c0dvcjZkTVRGeENBak5QWlBWeHVnME4zbW1EU1NkajBHUEJEcXJwRWtYaUk4?=
 =?utf-8?B?aTViMUZqTXVNakhQdTVweDJxbkU1cHVlZkNlRkEzbmJOS1pqZDBsQlVtRGR4?=
 =?utf-8?B?Y3pjZCt4OUxpWS9oa2hmZTFsU3lCekhXdkRramtTZmY1cFJjM0JaVWNCUkds?=
 =?utf-8?B?Yk4xWXN0Mkp0WUttVG44SXJFTWtHVk9HdEdyNCs2SkpRMi80eU9qRyt4aThQ?=
 =?utf-8?B?Z051dm8zS3JEU3BoRFl3SldyMnNaSGJJcHEyNkNnOWFzL2lNRXFJdUpscnBY?=
 =?utf-8?B?bTl0eTgrYlBQTkZMci84aEEwdkZ2SXJscWZhelFoUGNUbXNTUUJXa1ljVHhJ?=
 =?utf-8?B?MU5La0xLTlJ4c0UyNGJ5ZDV1N25nME00Vm1hdDZuWGcxbEVNRHBVU3F3T1dp?=
 =?utf-8?B?TGhrQWdjVGJEZVNFc01FUmhCdUtUQWcxeWlGK2hxdE5jazJSQkUzbU45V3Fq?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 0+prwVTx3uGXLMXFebq8MMOdNjXxAdApS3BVcZNOCCPsR9YctSrsr9jrQjxFIZMoXhhOY5d//TUYThJnRiN2Txa1yfD3a16J70zPjZeK3H/MvDLJUNhuNh8fDC9oek7cgCpBGteuu9VHwe4nzQ7TMHISaLHXU58jEMmy6eakwkt3wwv9nTj3ACLMlQzd6MiDqnPmnDtWlsTHebLSpNq2a2wMmYdxem4sUE+U14cmbuBE15fgeEw4ORdDsL3geog+bROXgQ8K5JZPBOGmnQ7jnVjezha83NZkpqs7DwiwZlFJayXq/zY4PPpwjdFBDiYYF4DLeHkVcD38vULHRV6Xq/EX1dcBqeqZgdekV7/qPKIPtS0SeiJbvrcX88hyPXfhpPaI6UuFw4O2CJ9VxJDJhJSHu+6lkF8OEXj9jQmUwbZo547SmzcNZztmsbOaZqcbACU4eqR3F09OQRgYgNct5uOJ1vUNcanLKDSdYUJj/0sxJT9uLiCK3+y59o8oeiBoxMYnk28+BCRajbkIHifjKwws5Lm9QjF8aqH0of09yJ29Bmy3/i7E2bYkMIw4li7PEWmpXJTLNndimJfWV33XqQiTBtnOgoxB2DhTjEfS5m0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c503a9b-a7e1-4a34-b96c-08dc4e6ddf2a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 14:54:58.4646
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nedkg7fHE5D8+ydNc+CcjJt3A4a3ZRx2ckgFF2VSVDWnwBYjX7n18xq2TwRL6R31q1z6pL8zWKdIqLw2OdXIwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7170
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_12,2024-03-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 phishscore=0 mlxscore=0 mlxlogscore=972 spamscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403270102
X-Proofpoint-GUID: r75A13K8Z3gBNYGCyAfZDd4KdOyKFsuo
X-Proofpoint-ORIG-GUID: r75A13K8Z3gBNYGCyAfZDd4KdOyKFsuo
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=Df8GHPKH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=JX6sOT5H;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

> Turn __scsi_init_queue into scsi_init_limits which initializes
> queue_limits structure that can be passed to blk_mq_alloc_queue.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

FWIW:
Reviewed-by: John Garry <john.g.garry@oracle.com>


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/af7cdf5e-f5b7-4de3-88ce-8147cae6cb77%40oracle.com.
