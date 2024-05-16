Return-Path: <usb-storage+bncBCD73EGVUMBRBFELTCZAMGQEJYKTUWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 3846E8C7748
	for <lists+usb-storage@lfdr.de>; Thu, 16 May 2024 15:09:42 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-dbe9e13775asf14481886276.1
        for <lists+usb-storage@lfdr.de>; Thu, 16 May 2024 06:09:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1715864981; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bgytdj9Q8ZhOoIiejE9ISLtl1wEMqdsXec86iiOL/6V6DkSVi1sTNLUK7GQJbdxwgw
         asUMLDm5Gtsm27Z8Xwbu35lIifOgctCLHGRnPIGSgeYKtawzK0sfND67dZ1OhxXbFUbC
         3CNPTjKfkWPl9uKuXe5TXJ/koZwuWKz5091s2KeEe4xLJdAobMJf1ctbC2VXoHXlVWJl
         4Ewo+UBN2tW8NBNFZ+vTxaCIGGlM7xEeqjYoy3mIF71NOD+KOojrjJUg0+DQJ1HJS/D4
         zSKLVDbgplVLAsgGHWJ4HK0yfQmyUvJS06nnEMrznuYJq1w0zpeio2y2JJG4qpVf/RO3
         Q+Cw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=1tXzIbfr5z5+HAyTJgHFAAdZyO9zHss4AEw/mOkuHRk=;
        fh=LclE0cuyFWvglSsiW5Rtb2DMaP0+ju9RFiKIrV0mOaQ=;
        b=ba/4mnIWyUgJfrdM5UGdBAKxwuj8TgzqDDJHD+Qbi12M9EInOkv2LKRdphoQmTm5T2
         epcJlm5hDGQb//64z1ERGCHfbBJ1YURQcYGk1/26V/dpsYh1OZOVX1HzQROUEa2EI0Yi
         3UuDlUQ1d3Acpy+ybaejaiu4KIFMNb/xMW+OntXlFRkflQM9BZhINOD0pJZFDXZWuIL6
         79ceG5k3aPSI+NZUTO8axSgBKRIBjdQ3UhQ4R8a1Y330aTDFyZB8JjA/S9AkqcwZ7T0H
         Z+fmAvp19E4OO0RH4RdChMm+XDCNwmXHvnUtaofxJGJmH39miKbILsfaCs3K4hd4YSL3
         wCzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=KlNcJEwP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=u9lG4jhA;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1715864981; x=1716469781; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1tXzIbfr5z5+HAyTJgHFAAdZyO9zHss4AEw/mOkuHRk=;
        b=HqRUibWe3QimlaNdY0NaG/yGOQhjmgel/s/8RCR1JDrdCOowFFccToi/Xfw6sSylX8
         KusZbeWxUW4k2jMqV/WK4lU1ZgkDJP7dK9OFywyTzqo+M01leVmSLrxNDA350o+4vqwY
         WTkGE6SfkfTk/y37RZoSSeWWB9o4P841/0Bjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715864981; x=1716469781;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1tXzIbfr5z5+HAyTJgHFAAdZyO9zHss4AEw/mOkuHRk=;
        b=T32w2Q5Jnv3z+zPJKPw9ggnwI8sjzMYOTCmeBzKa1kGsH3bBdsNrdy9W920WgPJWSS
         zFy3RIMymendHBAbhSsQq6VmAm5mZvEL1ZkT3ycxHrTaeMZlwA9Ax/NLLYSYWcu2L7eF
         OpSmKfX1mWEXvR2adQ8m0pjsWjCLG3naH25+AwW9KlAfjFOGu1CezwqcXOrEQayO9FWb
         Dxl1r81RGBfZGLAJ0YZ0oyekix+D0amIsqNH60KTnyVRNU0VCR9mBQ1+t9McT855ZMI6
         A3Ut0QNEQpyf5j0M7Hax4bmKwMcmhbr2gPgIKSGl1kEasi1rhX5fJR1wkFa3WMih0f1C
         QjDg==
X-Forwarded-Encrypted: i=3; AJvYcCV9w9As7XQKA11fsZYuG3yHPvw1ypcLObgO7n+woh44nJrer6urzSgsgBrcIX/IWZT8/PUtWkzAOl/5A+LnbjX82LL46E5PRWS2
X-Gm-Message-State: AOJu0YwDsDTs2Kd2YAlpsUeT2m1+F4bU/dgQ9HVpS7lByXKG9iUzJxFB
	EsbgTHjxQL6aBpb6ijQFE44epjXVZXL+WB2pqo8UgpoHsfOqrAz9ukqlg1HuJvc=
X-Google-Smtp-Source: AGHT+IE60SmC/i2ShSV49MbMbhuDpjvGAFPe/iWkzwTJn5iPFcg3juAIe4+rZ8UsYEh+Y5Imek5olw==
X-Received: by 2002:a25:2e0c:0:b0:df4:7ad3:497c with SMTP id 3f1490d57ef6-df47ad34c11mr598577276.64.1715864980597;
        Thu, 16 May 2024 06:09:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:154:0:b0:df1:d10d:b414 with SMTP id 3f1490d57ef6-df1d10db55bls2288633276.1.-pod-prod-08-us;
 Thu, 16 May 2024 06:09:39 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXRAMPfrYK3hFLIrW9zsJAWYsPX2nDl1fBE5CjBoeK0igDo1FxgS3uwML0C9qChQ12Z7Pwm+bRJjcUqOyLDzi9oiPRSlALLHT6vDN12smX7QlwtUj0=
X-Received: by 2002:a25:46:0:b0:deb:3c96:cc73 with SMTP id 3f1490d57ef6-dee4f4c1facmr20763056276.42.1715864979363;
        Thu, 16 May 2024 06:09:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715864979; cv=pass;
        d=google.com; s=arc-20160816;
        b=oGMyYvNJTnMaOrWdagzBzkxn3ZD8ZCBvs6+aTxKaQn3c9m1mGdCoi5RZXGCHk0fxRo
         grlSZ3O7wKntXPqn9tnn1Y4U30aGnqrBRKSrcP4SsWEzDpzKvCKCJhM4r/2CdxPikCpy
         cphYKOz0n4528P5X09R0+ukzxSzgl6svGYRct26AF4xFkL+96fiE/ZbKrlrV71ezTnRv
         /nYUcAz2WxE9xUz6iefEzYNVoWwU02aRsaxukr5vnAccGlMijCatFSYDzSHasd5vneV8
         bl2a48rEjbj3e/2fES+NR9y47Gb+TKHAC0r4+rTt2Xcyto5Ykoof6CoqDsSxBfw/v/Bc
         QDCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=oozUgZvzAdYAwgZO74j+Uj7e5uPEdowoyEfJpDHZ6qs=;
        fh=+DgH9oyPuU6YSUhkVf/ul214JehWxYAZ4+yERJH+4j8=;
        b=L091d+cZbVyRZq0aclLJmMeO2RIhq+P3n6GfqdpihKHJaP6/otN21GSozEEppKraJR
         kZO7Qrnd5sGypve7p605Ezn85s+NKVrV561r90x3YGhtohElmJtpbu1gWpgFVKViChTz
         y81sl1uhFTHgQM7cwthpPHn9KCcZOjVecNReq1Lq++JJMsC3ia7ahIPg9tc+gdAdJdFU
         +FAOyp2z0hPxSfCIxGxxLexo+DyxmhQpMpzg5h17KnrFfogU2WDv326+3Bd2xaPoSu+Y
         dGl6B7NkjsVOU76vXPkLEELuWfmmJWITTec26YLA6HUgm8zU8nIOJIjIOaDA5hr+/rwI
         /2Ew==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=KlNcJEwP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=u9lG4jhA;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 3f1490d57ef6-debd385f839si8470557276.468.2024.05.16.06.09.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2024 06:09:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 44GD7XcZ005604;
	Thu, 16 May 2024 13:09:12 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3y4c8r544c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 May 2024 13:09:11 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 44GBdXGi005729;
	Thu, 16 May 2024 13:08:57 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2040.outbound.protection.outlook.com [104.47.56.40])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3y1y4a6emt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 May 2024 13:08:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gbPffQUUbBRBEwM83zms+xaCUGdW4Y22f55vojJmQnkz+D47K6PntD/cMv6uhT8xDtYXwwDVcQtWc4edju+AI5e6XXkctCDHd/K4dMBY7ooCu4VAaP8uTQlRFydJYK4xrWc8mUhhc0LMVQtgLqw5l/CpDZqGl1Jgiut6fjxEZkv1BQtEEQd1J4BPDH3faHG9WriDxyBprsW0jykTEYKCIoY5NJSa8y97b9P4SFwb2ivv5HSQoG4EBc05ATt4LYfxFf7PJkk3shW5DcAIgydgXUNrxqHL3iipYs3iRk8RkHStwlDHe4RD2VqM8VCI6Y3lJhKzQviyNYuwG6CQVLnpcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oozUgZvzAdYAwgZO74j+Uj7e5uPEdowoyEfJpDHZ6qs=;
 b=eP2cdnv/f43u46c+xnAWqEFE+O5B6ovnwIB9vplZreUQ2+L2XVvj9Bh1Z0/G3AmFMT4ykie3gNWj9B9c+F+dG6alfhlyAT3Qs7IxzddO7VrVMh5Jf8+8usf9YXqm8RiFt3JgNR1igmDANvJJbmJm9W40dgO2/NO87jMuJceqwFJdoMyPSrEi95bs+EKZ73h12KL8Wt92KCaYVWOAz/VO0CZpa+KUmkQCIZxPRAy5kfYfeUPmRebVQB4VVeINiMju8xhV1Lh21rMZVU7EEAqV1ieJHpFjeisX0rdSQ3PuUd5+acclArc0OqUcPD7ZizCUFc/CuGmb/7B+IOgc0If5Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by DS0PR10MB7272.namprd10.prod.outlook.com (2603:10b6:8:f7::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.30; Thu, 16 May 2024 13:08:31 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%5]) with mapi id 15.20.7544.052; Thu, 16 May 2024
 13:08:31 +0000
Message-ID: <ff3277c1-f3ea-4e12-aeb6-548b97d42589@oracle.com>
Date: Thu, 16 May 2024 07:08:26 -0600
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
To: Guenter Roeck <linux@roeck-us.net>, Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
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
        usb-storage@lists.one-eyed-alien.net, Hannes Reinecke <hare@suse.de>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-5-hch@lst.de>
 <ce2bf6af-4382-4fe1-b392-cc6829f5ceb2@roeck-us.net>
 <a8c39499-1410-4251-bf26-36763f5f56b0@oracle.com>
 <08beb913-f525-49e2-8ef2-f62e9d466e53@roeck-us.net>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <08beb913-f525-49e2-8ef2-f62e9d466e53@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BYAPR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:74::36) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|DS0PR10MB7272:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ca19a72-b75c-4659-f09c-08dc75a948c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|7416005|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TFRMcXAySDRTMW93M05vbkpUbUlLRGlqMndqV05sUHFCWjlxckpBcjNMMUds?=
 =?utf-8?B?WkdWZ0ptb09LMmt1VjFtdi9YOTlFTDR5WDlSVmtNZG95Y3lrRkpWNzVNRTVl?=
 =?utf-8?B?QjBDVisxTllXMTJZYzF4NGNVY1VGSEdTdlVMOEQrbTlUNzRuVEhKdnVPTVZq?=
 =?utf-8?B?dnRxalp5VmZabXczYjc0NWNpRzZoL1lyUmpUT0lPS1lvcEs3bW81bWdNcVk0?=
 =?utf-8?B?akRtc2RWZm9TRzkzbUZETDBCamFicDB0M2M5NUxFbjU0Z09vRHFEbWR5VVFo?=
 =?utf-8?B?bTlqODdWS2NsbnZUcVR3TTU5cXJzeDBrNnYwM1RyMkY5dzEvYkVXOWFXMEd5?=
 =?utf-8?B?UFpXamtQWTdxUkZ0eDNTRkhuVjhiSi9YR1lmY3V5WjFTUXIvcG82bUx6R2Vl?=
 =?utf-8?B?TURSNmJBRC9PQlFiN0psMjR3WkZWYy95NGcweHZXb3dWd29qcUZVTW9iNFFN?=
 =?utf-8?B?UGJpanBnMHFuaTA2S0VnWmFXVmJJYlFuczF6MmVjQUdEZUlEQkNtckdaRmtE?=
 =?utf-8?B?aG1OazZZSEZXMHNUbk5KU1prVWxzMzNSdUxJRjhGL09rQUMreDYySlM0cG5V?=
 =?utf-8?B?Wmk5K1R5aE00SCtrTHhENk1CaWlrQ25FRTVNUm9tQWNDcjlOYUkyYzhhN2Qz?=
 =?utf-8?B?WENsRXBuRmJORjZVVFBRM0NUZVJmOXJZSjFrNUg4a2pBZUhBcnpBekFKLzVk?=
 =?utf-8?B?amo5dGhDdCtXZGk3UEhCYTk3bkFwTEdUR1B2b0Vvc1dEY0tzNllwZVo4cEdM?=
 =?utf-8?B?Y2FrKzd6b0dsSnhxczFxdHFSTmVLOExxMGFIWHBCWSt1YzFGbnc0QVdWdC91?=
 =?utf-8?B?YlNPOXM0dG82VVdGeHdSTStnc2M1SFFEMEdJUjVaZHMxVkdBbTNRd0s2SHA0?=
 =?utf-8?B?YWovenB3M2l3ek1tdGhGeDNsS21NcW1CQ0h1V1U5d0pUaEltTnR2T2swR1E1?=
 =?utf-8?B?OU56YkFLQWlJbDFHVkQxTDhwcnFkWG1kMXBkTDcwRFNxbExpamJGSWFaZWxJ?=
 =?utf-8?B?aWFDcEtnQTd2WmlDS0JxNEM1MmNVNGR6N2NJU1lnZlFnSi9RSHpneW03MEI5?=
 =?utf-8?B?dG54cUJXa005N0JmZ1dvZ1FLRXB2R2NZOUVnV0RnQUczck5wNE1mdERPcWhX?=
 =?utf-8?B?Z2JubDl5Nkp3NnhQUnlJT0RJSUpyd1owUkloUDRDNGFNNWFZZmtMWDk5dFJD?=
 =?utf-8?B?WG54V3lUUUZOQVNvcENScWNMN2dwSm1KS2NHd0gwYkM2RE1lbjd4d1RTeXlD?=
 =?utf-8?B?bDhqT1cvNlF4MEdrK0sxRERaVTZiNXJqVWd0T2N0TU9qOTdaU3JuT21TR0FR?=
 =?utf-8?B?dVhyWnl2bkdCa2hUUmZFQ1lwVUlIUnpuNWtVdHVQMWgrd1pCdloxdzZ1VHI1?=
 =?utf-8?B?ZU9ZbUN1ZUtGNEZhL2xSMHo2bzNpb2U5T2crZWpFZ0hQSTdISGFucnRsYjZa?=
 =?utf-8?B?dEhSZGdMSlIyVE1iOGc4bVZUWTZLUnAwK3JBcThoNnJLWkhkbEkvU2xoMUFa?=
 =?utf-8?B?K1hjZlNjVzFDakdJblpRek1nSHRnaW8yWERLUnZyRERpcmFOZEt3Qm9aQzFz?=
 =?utf-8?B?QUJveVdpSzcyb2FNb3RtRCtLeUpSUWc5ekpSNC9PSWhOYm9TTmlOaXNDUnI3?=
 =?utf-8?Q?npKIROfikAyNzeng5qTtWPI2GCgF7yJwa9qO9vROMb0Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(7416005)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzNpUm55UGFiV29sUVltaXpRU2FFK3RwT0xJT1BYY2ZYNWdhbWx3dW1lcGdW?=
 =?utf-8?B?N2ZweW1DdEVheDZBQy9ESzFFb2pvNGRKWVMwMHVxNmFqek1qYlBYdlUyWUF3?=
 =?utf-8?B?ODRkV2hWNkNBVmpQWGE3ZHJrM0ljT2ltMUpreGkyaTBhRmliOXpCWUJRNUxO?=
 =?utf-8?B?eVZ3dUFwYWFnK0l4UEdmUDJBaWNpZUs0aWNSQk9LV2g1NXhhREFTcm11em1q?=
 =?utf-8?B?Z1NEYk14TllHSWNGR1BSSXJDTkJCcGdBZDFmaE1reGdHYWN2dW5EQTZHTW1w?=
 =?utf-8?B?MmEzN04xeGZ5QngxN0hSazUvb2Raa29iNkFrVHE1dUxKWVNRbVlDTnpySmJC?=
 =?utf-8?B?QmNzQ0ZQUElOZFNmenY1dGczSmxydWFpVHU0LzR0d3BmNHpJdFkxWDVOUnY5?=
 =?utf-8?B?bnUvNmk3R0hlOGY5ZFFTdXBwSjRJaDhvY2FTQjJja0RvbXNueXZPVXNBakpX?=
 =?utf-8?B?NXBkOHJiVTk4Wjloc082NmZpQ3VQNXE1MFl6SFhUZHBoVGkzcktwM05SOUpT?=
 =?utf-8?B?ODFpL0l3d21INFpRSXY3cEkwZ1dId09LTDM2K3FKRVpZMjkzK3YrNy8rZ053?=
 =?utf-8?B?TGJGV20yTkdsZWt4aDdQd21DOVpnbXZGdlY5QmFwUlJOQVpCYlRRZjRPUUgv?=
 =?utf-8?B?STFiTkNxWUg5bE50cG93WDA0Y0M1L3ZPL3k2WnltN3lVMFVLY0tlRWNxZVNC?=
 =?utf-8?B?aXZXWG1QekRLK2NjZ01mVFdQM0toV0NGNThvdWtwZzZDY1NpK3B6RmNPaHhH?=
 =?utf-8?B?QnQ5N3EvL3ROL2oxWDBubm41UVNvbzQ0NkIwYWU3U21wTWxlT2JIMzhjK095?=
 =?utf-8?B?dThoenVueFZZOVpKT2tkejB4aVRCS0R6Uk4xS1lIMWJyUWU1VitXZjJTNVpi?=
 =?utf-8?B?K0dIeFRsVTh1QzZGSU9FaEhGdUtMRkpHV25laXNHS081dmtNSWVTZ2ZsaFJG?=
 =?utf-8?B?eEZRUzg0TnZqa3UwS3dhVDBUZ2xkeGowR2xCMHdJL053d3JVWE5UbitiMTVY?=
 =?utf-8?B?cXdhdjlPazVIVmVIR0VjR0dnRUpuM3N4NTFJZ214YnJYZXZ0RnYvU2xhU3Az?=
 =?utf-8?B?TFU4RTlTQkx5TWtERENGelFrSFBKYjNZYXJ1N25pa1RWRGVBZU5laXdTZEtp?=
 =?utf-8?B?Qk5vR1RmZ0Q1ZTQvMFRXZ00wZ2RMak9OcE1wSVhRNXFkU3JGNkxJOTdLNnBS?=
 =?utf-8?B?VGN1a3BDUGYybkVrR0xLSjdvbjFUWWtlTHVabGVjOVFVV200R2tLVXRkLzBM?=
 =?utf-8?B?anZ2R0dFQ2d4OHVvNGNIVHlmR0lVczR1WDRJVFU0T3JvQVM5QmFTNXdVQ2dl?=
 =?utf-8?B?L2pmNFNCNDRkMjZDSUJZTG9COWU5Ky84YUZERGVTb1dZSWlxMHpEOEtzSzRR?=
 =?utf-8?B?eDdiN0xqR3FrSTA4M2hpY0ZKYkE3aUhndEs3blF4YnNjRnBoOExGNHc1VHFY?=
 =?utf-8?B?ME9pS0kzSmRtRDFVVUxJOUYzVElJUFRBNW8xNWlSTTIrNHlFNGJhcVN2S1lq?=
 =?utf-8?B?dWNUSmlzaGlZN0tvRTl4KzMwWFVWTEpiYUdwMlZkN1BWMFlsTW1YZGZHK0o2?=
 =?utf-8?B?a0hTVVYxVkorTzBZa0RDMlo1ZHkwK0c3cDU3ckVCMFliblVIRDM2eW5ZMmhi?=
 =?utf-8?B?ZXkxRWExZmo3MGFlajJ4NURyaUluR2l4TmFhOVlRajYwWlRNdXlNYW5oNXZs?=
 =?utf-8?B?MVBiOEhwV3BOUGxneFpxTTdKMjVYL3JrSjMyTEF0S0xvVmg4cmZyWkFmbjY0?=
 =?utf-8?B?elVaeGdHZlptb3B5QWxhdE5pQzMycnNpVXd1UmpUOCs1Z2JTNUpMaFV1cEpt?=
 =?utf-8?B?VWt0MVZWcFA4eURjcWtVRmxKZnVVVythTlR3cm96S28zcnJQRmFMUTNlczFk?=
 =?utf-8?B?U3hUdnB2bkxBU3BzU213NHU2eTRXcmREWVpFV2hJSWRtQVZrQ1psOWNpSDBO?=
 =?utf-8?B?TmpqWGtBbytuL2F0OXhnaldBa0FaNlJyV3A3d0tFYlFWZGVVQ1l2R1NvbzhJ?=
 =?utf-8?B?TVJ6S1BGaVpJRktFUTRwOTdkYm9OSno4cUpEUGNGVE5BS21JZzRqUTY1ZStR?=
 =?utf-8?B?YWpMd0ErQzFKTnlObVU4ZWtiTW84QkRpMVlKZzFQa1oxY2hDMFE2cFFkMkk2?=
 =?utf-8?B?WVFTVnUyOFJjMzBOcytNZEJDUjVQcFU5bXA3QnVieWUrQUZqQVJJV2JIenk1?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: XkyOpveqnlc7KfShMdALnfaVM0zR4wjg21ruCtGNf1z5xzPG5nfz1QKZciKUJZeP7IhzKDYZIX+Z3qjTi4iUhFI+JVj5anRpgebV8drCm15no1eAGJjxLSDZvNcKHHEyodU4MWfw1QLGAy8aVviW+F9ixPmYcTbyR5vx764QX2r3bS76Wd8PepgF86Aa9F1+P9SK+auV/jqPzd2Qo53hbFp3nqyrb1Hz15j8JY2WBDYBX3ULoVX/T8HYEqGiaisjUVW77yqRttW37wijztbFA32oKBCZj5gahi43eWfCTkC35JSYWngt3A5M5eeB5DEGN/uk4T0CGCfCFU+z5/XqI6MAMAqAPU7Xq/Uj+3Ks9xkJYSm24+TBqmI9NLx40u+sHb+esKcidGQNdEs61d3/F1p00MzIz10LX2JoI/peEUqGfosBAQW3uHa1AwV8tgzUCqCOudv3TOz3YeUVXLdhX9/sd4dq/pMzWosXR2MEMA8uZF9pTmujXOs4lvKvD+GLq1Qw8XGHL0bSWiO1H+d+HTKJNUbzT5Mn2B88o/Km0IFA926MaY4sdKrC325sw+Ta9Kcyy1JG11ikCWcqnFa+S+RzEVYZunBB2OOSrjYwz4w=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ca19a72-b75c-4659-f09c-08dc75a948c8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 13:08:31.2737
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yI2ylbT6oLWGqMMyxy9SxdE+U0TqEmEB2wXjoFB3xMJ4N+Pon6iFkTNm1X3xocYf0Lpi05dzfrI1Q+uqHTzmeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7272
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-16_07,2024-05-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405160093
X-Proofpoint-ORIG-GUID: XY1nNlvRAJ9yvSPasaySCOMXO1CjtueH
X-Proofpoint-GUID: XY1nNlvRAJ9yvSPasaySCOMXO1CjtueH
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=KlNcJEwP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=u9lG4jhA;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
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

On 15/05/2024 17:52, Guenter Roeck wrote:
> max_segment_size is 65280; PAGE_SIZE is 65536; BLK_MAX_SEGMENT_SIZE is=20
> 65536
> WARNING: CPU: 0 PID: 12 at block/blk-settings.c:202=20
> blk_validate_limits+0x2d4/0x364
> ...
>=20
> This is with PPC_BOOK3S_64 which selects a default page size of 64k.
> Looking at the old code, I think it did what you suggested above,
>=20
> void blk_queue_max_segment_size(struct request_queue *q, unsigned int=20
> max_size)
> {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (max_size < PAGE_SIZE) {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 max_size =3D PAGE_SIZE;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 printk(KERN_INFO "%s: set to minimum %d\n",
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __func__, max_=
size);
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
> ...
>=20
> but assuming that the driver requested a lower limit on purpose that
> may not be the best solution.

Right, it is relied on that PAGE_SIZE can fit into a segment.

>=20
> Never mind, though - I updated my test configuration to explicitly
> configure the page size to 4k to work around the problem. With that,
> please consider this report a note in case someone hits the problem
> on a real system (and sorry for the noise).

Other controllers do have a 4K segment limit and are broken on systems=20
with 16/64K PAGE_SIZE, like:

https://lore.kernel.org/linux-block/20230612203314.17820-1-bvanassche@acm.o=
rg/

Thanks,
John

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/ff3277c1-f3ea-4e12-aeb6-548b97d42589=
%40oracle.com.
