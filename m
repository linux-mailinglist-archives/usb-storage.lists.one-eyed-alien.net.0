Return-Path: <usb-storage+bncBCD73EGVUMBRBUXISSZAMGQESSQWMSA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-x1147.google.com (mail-yw1-x1147.google.com [IPv6:2607:f8b0:4864:20::1147])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B798C6E7A
	for <lists+usb-storage@lfdr.de>; Thu, 16 May 2024 00:16:52 +0200 (CEST)
Received: by mail-yw1-x1147.google.com with SMTP id 00721157ae682-61e0c1f7169sf101498597b3.0
        for <lists+usb-storage@lfdr.de>; Wed, 15 May 2024 15:16:52 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1715811411; cv=pass;
        d=google.com; s=arc-20160816;
        b=CAMBHp5nbTd1OijvVJ3tRKB0TJSRIcQU+B96F2+bJDICvOQ1c/q916zaqezPESq8gd
         LYKgbZi3YWvkI8GxcGhSGsakwbubngGq3de/OdiY4fU2YMdJYydG4V1UYrWZ4pWdEAUd
         8Ady8cHmdbkqI4YkBIAqiWmhQUK8Xm6Uv0ydNeqzVUpfu1El70IJD48wqDG1860bDEZ7
         bvRY4UrBxAOXeyRdQZeSdBD9jb8m8MDs1IJLYDrZ4K3AxWEzqtyIO/XI3cn4+me99X4j
         +vSfl6oZGWxhAMtSrtsFTXq2a9Uw+rkaN7Bh6a8T3ICrHw+9uMQrAu1OT7wXAhVotbce
         FSZw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=InaEcVhXyWLrvt1BLBaVmVE+8/VlI+1SMNaUqzEkjdw=;
        fh=ggqnIWPOHTfrT4AigPlGPH2ZSzun3iex3vT7/JVn6DU=;
        b=zcEwABMpTd4RvL9ynHra7jmUiARRuLvA90cfWe90awJrC2uNHsdv6MMyGANHDygsrx
         jsIcZO8L9O20z/34QdkceO+9u7zkQBLyARdI0NZf7VjsIIjwQMYQpaT88mfgHdNMxoob
         MaBHCsAmAvLldYp4jtklRWnGKeZijv+PlZ/1FRAnGrKGgK2mHOHSG/XBJKPjz8gt7Ny+
         IRU+BZMK8dKjp1/vR5uAGt39KnGJIqBeXnaUs0C8r0KvmkyanHXD725gTGNj3lpWrW3C
         TFNacdx4+90AXavoC1+6Hcw0IMJU1Xy9h3ovkB7517wT1tKeLGczm/lIaeacJXfaxDuy
         fsgg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=dN+oo+PL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="Zs8/q6sv";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1715811411; x=1716416211; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InaEcVhXyWLrvt1BLBaVmVE+8/VlI+1SMNaUqzEkjdw=;
        b=Y3AJdjSEoKq3HJikC4KSQ3qdSyzg8JulN1eEl3gq/nj0VQF6CFYXM6CvbC+tGqFv6L
         Yo8zRPvH2fgBCtXNGRbWkzuWo4QgchskoXb5tC5YXM6xeYZ5i+NGnDeM+7f6gEN+4C/o
         n7nw1ZOonckqtiS/7rrdo+1zJ96hRCT1vOsvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715811411; x=1716416211;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=InaEcVhXyWLrvt1BLBaVmVE+8/VlI+1SMNaUqzEkjdw=;
        b=GCbdByc0UM3qYnI1/6l2xJeK7hN7c9TohJyh7MrxH7wZbaSZRGJW7uzyteue8Wi+Ck
         Blk4pU1OExrJC7CJhxEKkXilt8BAp5XBoz83OVapdN5rEKSGwPLy13bY6RfdnTRp/wGH
         ZsQGrQhQ8+bHtyjpQU8KC/xiYtZPw5zVp2eZHf8/aDPKec6Vnt+NM6WKH0uGgOom59Ky
         VxfOSpKNnmQNJiB1YFFVNXEgXvqTJMw2OHH2LvgR3llpfkL6/xe8vgSRyg+WoeFzevxW
         S+QHtCPcw26DLbeZmNejGPX+XsMGlBui0XDQZ2OYbW5WXglmEmXv7+q5yxRieuTj0mxr
         oWhw==
X-Forwarded-Encrypted: i=3; AJvYcCViZAsQ43BapcWLKLHzZutaTufuohS4iBPnLxVZJf0Md/SVDIE/AdSxF2lNn9GtRfC0mdUwKolg9e7CuQupw6CwjRG5EnbbaaQe
X-Gm-Message-State: AOJu0Yz8155M5w1AdRDSl3USltz6XcLdcKxlsIqXDBg+iU4ISEGGU811
	VH7tPDOGVmbKlpNtm1CYnYaUF/0WzIRcy8Z4mo5DO4k5a7F1fVzt4QH+pe45cys=
X-Google-Smtp-Source: AGHT+IH1H8sHNft2L1XxbJWsNNjkuYHWvJvq7KAR8NkXMUVfFqjmhHLSk7GrbTddjW1K+WyakZGTTw==
X-Received: by 2002:a25:9b86:0:b0:dc6:5570:898e with SMTP id 3f1490d57ef6-dee4e4cef6bmr13241543276.17.1715811410857;
        Wed, 15 May 2024 15:16:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:1d6:0:b0:dcc:37ed:efb1 with SMTP id 3f1490d57ef6-debd08a2ce5ls3069907276.2.-pod-prod-00-us;
 Wed, 15 May 2024 15:16:50 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVvz8459AOocXji6I1wot5Mc9RDrv5S2tIgeavQ2WX/sznEnQYn5Uh5IAmiMntYM+KPoupSO0tLXX8Y5WxMkUUmpDZ8ETaJxVrZVl5NeoGt4Og/j/s=
X-Received: by 2002:a0d:d8d0:0:b0:615:1be5:6d33 with SMTP id 00721157ae682-622af89b673mr128978277b3.22.1715811409954;
        Wed, 15 May 2024 15:16:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715811409; cv=pass;
        d=google.com; s=arc-20160816;
        b=gKfJGpjJkc7tnrzN/tKjIkSUJq203R5uGuXcnkXs6KWTQcNpTRl8hd2jJ3S6DXNOCG
         agguRyc0j8uhK+e5+FjmTyVlN3SGfCDWlGjVeSoxjtNSV0EBIpNWK4B6cNmX46bAnuPq
         VXwgOmjfgX5nHkwhdxY0iDM+DNPeIaFUfE7focQ30LISWVKLfP8fkF1N6tzCzAFzcZtT
         nzNHye25p7gmPEQTmBNqi5mZ7ZFS9lgJ2mqJskEB1xSyYx0CveO0VFd/XIIse+Awvw1J
         BTeyMLpnR1l6rLe5sqfbMaY9/pcYE3odrLPkB3uSgMUBTCNWXN8CYwu3BJLfBbkcSOVk
         /Cow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=3pPiJewdp5/KRBegqmQK7WJLnrq3twwwqLeQKdjf+3k=;
        fh=+DgH9oyPuU6YSUhkVf/ul214JehWxYAZ4+yERJH+4j8=;
        b=CtZKD19M7h8LAeqERBFCMVsvHReledhdmTvh629F7NMA990MDFjywBzBGl5K7vS4Wd
         QarRQCuaXXqfa0KY8DkN9ryt8ChZhSqD9hpFt+itI86B2RLOBrmyk5dKWxBBnWqv/QMf
         VRGSxwa+3QxMbhrOE0/19gpXMwfx8pljPXAwoNtOE8SDgH/9y3vrIyOBM/EY8hr4b0BA
         a7To253peGStyjUn41JsAdxjxFCvHW22EWR6A5FsHYc11zt2pFtFFAEmhBSa4K3LM/DU
         8IcGt+622AicfrTzQ8UbzneMf2W6y1wDmDAkF8/YdahrYjZeyac2TleudSiDY/Sa3ehP
         /mpA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=dN+oo+PL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="Zs8/q6sv";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id 00721157ae682-6209e31267dsi70673517b3.161.2024.05.15.15.16.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2024 15:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 44FKwwlh022286;
	Wed, 15 May 2024 22:16:30 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3y3t4fe61s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 15 May 2024 22:16:29 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 44FLmWeL018773;
	Wed, 15 May 2024 22:16:28 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3y1y49q63q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 15 May 2024 22:16:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ysm6DMNPqVX1X1sIkY7UwN6mJou0ob4m4f6s9YjckjJ34pSDheS14iOEeeFid+Tl3iEfTy/JbHs7zednocI05yM7yaUq+wXy822Rw5g0wIvPEbl6VZxfeiFgZ3HXNOfn0kF3Z+waYHAzB617bv/Ba4Doo9fwiZh2y4e942WMhIWG6QA8XFSqMgzG6M2Au/RO4dGPhW13Z5bSi3UyVcZO2zS0XK5rZrb67l0DKfg7jJhTOhA3J9Lxxcx1osqp3LUydOZtixinse0ePS6YOYkJV1Yaf/6EGV9zNd6cLyAfAE/C1WmB8czFb6EOUTZrc9BpB3f9nZFWpwDaY+Q1JEfsxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3pPiJewdp5/KRBegqmQK7WJLnrq3twwwqLeQKdjf+3k=;
 b=Xq2tO5Mst77XWTA7czxa8XFXgH8Jal3XgSVFyWFGkodMy1miTpSgPYSCoUedONMhJXJpAMeYyoOkH3AE5yyNTzySyeLU/tm0IUclKfsIGp177CBjwfPQ5ZCWtiFLV6O3/EAsdcpFpoe064Er0ZzceiFJ1qM20NRg8kL8DAWf2zcMZoER1PlOpMX48L7masaMfjtUonImjRSWQwmpM9OrqYRoxF1CW4pI1DoUjv2mYcAV1TrVtzUj4Uv8aO1BHyhSyvIUC0IPbTgbIactRDh9JOXTTMtdqwjR/Sfn5ApOjPOUeqk7+KjfJLLcLRqgOI7JYRE1uvOtQrcuRzfr0/782g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by PH0PR10MB5610.namprd10.prod.outlook.com (2603:10b6:510:f8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Wed, 15 May
 2024 22:16:25 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::4f45:f4ab:121:e088%5]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 22:16:25 +0000
Message-ID: <a8c39499-1410-4251-bf26-36763f5f56b0@oracle.com>
Date: Wed, 15 May 2024 16:16:17 -0600
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
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <ce2bf6af-4382-4fe1-b392-cc6829f5ceb2@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: BL1PR13CA0352.namprd13.prod.outlook.com
 (2603:10b6:208:2c6::27) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|PH0PR10MB5610:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f40fc27-2e83-4ec5-472c-08dc752ca8c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|7416005|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U21nRXBYYkxURUp6ZmR0MXkrRTF2OVcvOXFlWUw2bllYS0NUVUxGV29zWUtk?=
 =?utf-8?B?Z1Z1TjFuRFFsRlZ1R0grUXZsM0xTaFU2bEdDZ3NGM1ovd21VdGxxL2p6clFT?=
 =?utf-8?B?djNlVzl3NjBZTERCc2ExdTZUYktiSWNhbGFOL3B0cFRQM3NXVkJtSnlTWGZo?=
 =?utf-8?B?anppVzRicFdZaWxTeEFCNkt0eWlNWDJHcVBPYlBEQ1dLSmlva0FzN0lEUTg5?=
 =?utf-8?B?SUVRUXo1NC9qK1NQdWVNbEFNUGNLYjdXR1V4elBKWlEvcndwYmprRU9tUVV2?=
 =?utf-8?B?NHB1c3lkSm5uN0NwSVdiQ2YyVnJQVzYxYmUwNXg2ZGdzc00wZnVERjNvcFJ6?=
 =?utf-8?B?eldzTktmT3N0V1hhdWVhSTIyQ3l5MXl2STJVaDkwZHAwMGVBbTFkcXM3YWs2?=
 =?utf-8?B?QzV4Y1c1Y2JCWWl2QXM1Qm9mcTBITllsRkpVV3NNRXZGL2dDRE5HK0lZOVlw?=
 =?utf-8?B?Rm1USURDYUJVUGZjaVZHTFkyRHZyRGxteHhVWXBYUkdTbC9zTVFxUXFJMkNi?=
 =?utf-8?B?RVlBZythaHRHOWVnMWYwaHlTOXBncUFkK1FhM3FqNWVvSkgwaGJSNWtpelRD?=
 =?utf-8?B?eTBuZkJxZUsvbEt5M3U4Y3hSZnY0WnhEam5TUldxL3FlL2lrZEl6QzN0N3FB?=
 =?utf-8?B?R2ViL3V1a0VUVVBIaXh2Z2xNQkd2aUtmdHpLNFhXV2Z3Q2lESmhTbStkK3l0?=
 =?utf-8?B?WGFicWpUYVpSMng5ZWRNOGtWdm9DQ0xYc0ZMdEd5clpzN0Rva2Vzb2lRMFlq?=
 =?utf-8?B?Z1pXWmtNRVNkdjZvcW1BcTQ3bFBUMVBIRkxXL09EL1V0Y2I5c3hPYXZ3SXJ2?=
 =?utf-8?B?dHY5QmVpZ0lRUjk1cWVnSnFVUUNxNCtwUUxQVjZ4YittYmQvNDRXeU9XYTFC?=
 =?utf-8?B?ZldYZ1kxZXJRQ3l4WEswQjcwUXkxZ3FVWEJxY3FJeFl4TmZ2MnpkZ3lISkVt?=
 =?utf-8?B?cUNNcHhieUh3MlhnS1huOXZyQmZESmR3UTVhU0Z5OWdxNmx4NEVGamJucUt5?=
 =?utf-8?B?TkZDZ0IzT1BrY2ZNNmlhckVZVFh3TlhHejdUU3FESE5QY1VqRnh6cjJ4ZGhy?=
 =?utf-8?B?K3EzaVA0THZvWFkvQVNrNlNxZ1hDNVBhYTFudXRvMUFCdFJ4d0k1R2I0RTVG?=
 =?utf-8?B?L2hoNEJWbmkvTmxDcis4cFlsSms5MWFLdUVQMDF6UFNmOUJIOU1jMUhLalZa?=
 =?utf-8?B?aVQ1MktrcFJ0blJvVmN1MWtiREVpL0JlRmZDdWpPdDUrNisrNGNtNXRrdGdP?=
 =?utf-8?B?SWsvV0d1c1Iya2t5QjRINDM4NUNIWE15cmlpUGdSNkRPb01pRS82dG9oYXlX?=
 =?utf-8?B?WDdYOU9IUjM2QzR5TU44a1ZnWUNsTjVWZGVtUjhLM3ZzSEFRVVNGYXpUcXor?=
 =?utf-8?B?bnlHaXJsWGNKZmpiOWZ5OHFSLytlSFFYTlFWV3dYLzh3T0tGVXdIdmlLdVhF?=
 =?utf-8?B?TGYrYXhnMjdXR3JqZUYrMkdZbVJTUUdsTEJiRVlUVlp4TVExM2Z6YVVucFRS?=
 =?utf-8?B?VlRGcklFMFd1TGpZdk5VWGpKVmk5NU8reXhwK2tCMmMzRnRPSDJKMjFJUGl2?=
 =?utf-8?B?K1N5NzVFTUVhVC8zcDlXMGhPZkx0dDZYWWxFc05IaVByOXFSRnh4VThlVkVp?=
 =?utf-8?B?eWNUVmM1cGZIQjBpcVZYKythRWs5VmxzR0FJWG5HMHBBbW04UHlxZGM5NmdW?=
 =?utf-8?B?ZnMrUkJ4SGFKbWhMektXendpK1E2eTdrUzBvYUpmRnBaY2E2UHh0cU1BPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dW1rbXE5L25XL2Z5bEhVTndYaWJqNEtoK2xPQW54Nm9lVjYzc1ZOa1d4Wnp6?=
 =?utf-8?B?YUdQVGVVNjdjdDhhT2tINWFFOUE5R21lVllGVnJDY3FZbzZROURPNE9lMnhs?=
 =?utf-8?B?UHZuYW0rTXo4YnFGb1E0OWE0Mm9jT3lOYVg4YVlHa1F2ZnAyazRlMnp2Vmc4?=
 =?utf-8?B?MmZBOUswdjNFQ2VCcEhlREZ6SzQvN1Z2Z1drQVFNTHUzTGhGRjJKU1lqbDZ2?=
 =?utf-8?B?dTNYUEdzNXZMMWRzUXdVNHMwd1hJV1NrZVd6WlNiLzBaSnl4cW15aVM3ZFlt?=
 =?utf-8?B?dUM4dG5mVjJ0VnRTWG5TZnJPQ3RRMHkrSFJTSUc0T3VYZEluQTNybDArYm1k?=
 =?utf-8?B?Y2E3ZW0rTVA2TlFqWlJ5NWdqb0JnN1NNTGtvV3Qyc25CUVZWNWlmbHk4QXJz?=
 =?utf-8?B?ekNDM29Za0pkYUdUOWRCblZ4aDB2TE1TZlUwV2RzdUQwVDZrNmx6RHV4YlpC?=
 =?utf-8?B?STE0WVNtdURSTnNyMFdjbjU1QlVaRjVGSjVTUjJHTmhFbE92R3JpQVZyWlZU?=
 =?utf-8?B?TEVoQktQOHUrU20vb29nTk5iUExldWdJVXJMNDBmaVdZZndYOUJ0NHJqSGlt?=
 =?utf-8?B?M2Z6a0hhZkhiV0RZR0I3QldsUGtZbE9TNTB5OWpYcUo0eHlaQzZlU0t3Qmoz?=
 =?utf-8?B?ejV0UXNmbnduT2IyR0xBellScWwwSWg3Q3kyTThYUExMRm5NbmRZZnRZTnM4?=
 =?utf-8?B?Nkp1UUF0MmRsaGhJQXFxS2JCdnlkUEN1TWxkdjR1SFFYWnVLSGxaN05KbTdJ?=
 =?utf-8?B?NTlmeGZCb2Fnd256N2hSOEtxNnVQUDMrZ3ZsWS9BOVZMOEloYzdWUnlMUDdX?=
 =?utf-8?B?MzFlMXUxS0lUc3hndzVzcmQ1anlXMWhoY3VhR2VWZVBDYVh6bjVPQUxSWXFz?=
 =?utf-8?B?a2JUQ25XNEJuUDJnQzVkZC94aGVUNmVVcDhQL2tvRmFNU01mNVNsVS9oMk9z?=
 =?utf-8?B?MytQTnU4Wk9adnlvL3l5K2ZkdGRKaWVoUWVRSDh6VmNKc3E2OTB0YjJPaFVh?=
 =?utf-8?B?Sm9tMFlKWEFmMUt5T0tBVTdROWFoVC9XRHJqb1pXeXJhMnNMTnNMMWxEdTFV?=
 =?utf-8?B?L0VwemVvdmFvRHc1MGhSbmRKZzlOMmFoMUtxOUtRZnBDYzhxOC9DZXJuYUFj?=
 =?utf-8?B?amoyZU54NnlmMExtSEJtY0NlMzFzdmo0S2x6cUlHYmd6L1VaVTFseGpQakM5?=
 =?utf-8?B?cWd3anFsZnpTN3JtY1BVWGVndkdMTHhXUkpmOVRoQmFyV0tWQmdrWjB0TVlL?=
 =?utf-8?B?a0dhVUIydGVwUWQ3bzVnY2xzb3ZQR1FlN2k2VVlGcnJhU0VETStBTFZJT2lS?=
 =?utf-8?B?bXZaQVBhamxpcXBzeCs1dUVhQnJLWC8zUnJ3N254bTFzalAvbWtzS0dqNm9K?=
 =?utf-8?B?WkJJRmVPdm0vUnRVTUVRQ1MzRUZ4a3VRdlVMZEpjRmg1akJjVlh0UFJ1Q01j?=
 =?utf-8?B?TXNsMzJhelovT1FkU3JsNjBKSGZwQm1YM2UwWlduR0dFZTlwbWhJRWYxc0dm?=
 =?utf-8?B?cEJGaEJ1TlBJMC94aW43cVlOWjdybmpTcGVvSXNGM1dnRmxYWmFiRzRoRDRa?=
 =?utf-8?B?TTdLZG02RFplVkJSeGorTTVHYm56VHU3N1YrZGR4VXFGOFNZVHRUSGVQMEZL?=
 =?utf-8?B?bkphbi9nNFhDYWVCL3ZwZjhIUi95WGpRbm1BY01LcHBmbm5sVXFoYUowLzM0?=
 =?utf-8?B?bXphUy9ibVZxTVd1M2ViN2dxeEJCUHl3UHVmbS8zMzRRczl3dVNtaVEzMW1U?=
 =?utf-8?B?TGZHc1B5a1J4WWNldFMwZTh4anBkNEdJRnZtWDlUeTd5eTZoZHBISDJ0dmVk?=
 =?utf-8?B?MjRlbkpiSWhYWjljZnNsMzlSU1RBc2tZNE5XeVJHZ2tVT2Rrbmd4SWc3dlEz?=
 =?utf-8?B?SFNVQ0MrbDhWbDBZZkR5d1pzeXBWQmlhelJvNXB1STMrcmJzdlAyTmRhQytY?=
 =?utf-8?B?TUZDUW1yNThZZlQxSjIyUDZWaHZUZW1Nd2ZwanZpaEg3cVgzVHpzRVRaNzlZ?=
 =?utf-8?B?QnFxaldtL2dSelE3U1NqUGk3b3B3SEhFaHlvZnFKWmRhc21VQk5ocGRuYUIr?=
 =?utf-8?B?ZW96bERlTTdlT0tXRGIwUmJ0N083ek9kMXJiTjk3Ukhuei9MdlVCS2dKdEFF?=
 =?utf-8?B?anZWOFI2bHQvU3N3dG44ZjFMZnlwN2NiM1B0UTNMeUV4QU9HNUVzQWJWNnhZ?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 90HB4W+OZuEayW5Oq1HMPT0vou+w/n+u57K4/w9AdT8IaLaDwR4kCw2Yo8akBpeeXjzSCulgNpYwwmuuSmZ+EShzZlF2l2JX0gRQUHgYsQl90ktoSN2rWSSTBFF+/adpQGFODGdKu673jSdcvoTKzAo3dC1a8bSTxe/oIH50U5GXXyPQ6q6dm5Tipy2f8S1loNk6uTKHId2MmmuWOStqikWGMpxI8aUoCtrxHssLH7vYxIK0oSGRdPzxpxKNhKe8HSqgd01vMpebmqKdhcNGKcUDxuZXSwKO5oWUWqrcqGcrq9yyWTz9Z5zWcX432r3vN8ICiaAStwZ/+V6o8agtowq3nr2pNh7RnhBN4P/IVi4d32yE7cB9rhvgAPHpddC/hO+StrXwgV1qAhXLpa2jT1g/JCBgmKpFNGoc3EwjzFG5oW3AFkstk5acMKj2tOxKP29q3l9O+jFZeo/yqqSXLmoXuKXEMR/RHW9W5LiyZ8iZ3ZszxwRmyo4QzdhcNq5AX5n80htiBfbpFtVtzLT7csH5Y40xvR62chTNZsQf4JjbOkU/xJOuYmHSpH+Cbg6xu+DGICURxsyOaJ9uRm2z6OWo10izqcGoutJ0PNt2JOg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f40fc27-2e83-4ec5-472c-08dc752ca8c9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 22:16:25.2023
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tcjoJEtD7RBA02KYCrAh90ggLeL9ufU6nbQIkkYjT5RQSkm3FlWr27nmRHOr58PUofCXE3eWs5wfm9m3/b75BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5610
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-15_14,2024-05-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2405150159
X-Proofpoint-ORIG-GUID: ADksFBouH4n6VItTtUdsNQHK9rb6ouOz
X-Proofpoint-GUID: ADksFBouH4n6VItTtUdsNQHK9rb6ouOz
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=dN+oo+PL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="Zs8/q6sv";       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 15/05/2024 15:50, Guenter Roeck wrote:
> Hi,
> 
> On Tue, Apr 09, 2024 at 04:37:29PM +0200, Christoph Hellwig wrote:
>> Turn __scsi_init_queue into scsi_init_limits which initializes
>> queue_limits structure that can be passed to blk_mq_alloc_queue.

The previous behavior would sanitize max_segment_size < PAGE_SIZE, so I 
suppose you could try:

--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -199,6 +199,8 @@ static int blk_validate_limits(struct queue_limits *lim)
                  */
                 if (!lim->max_segment_size)
                         lim->max_segment_size = BLK_MAX_SEGMENT_SIZE;
+               else if (lim->max_segment_size < PAGE_SIZE)
+                       lim->max_segment_size = PAGE_SIZE;
                 if (WARN_ON_ONCE(lim->max_segment_size < PAGE_SIZE))
                         return -EINVAL;
         }

I guess that this following change could also be made since we fix-up a 
zero value for lim->max_segment_size, above:

--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -474,10 +474,7 @@ struct Scsi_Host *scsi_host_alloc(const struct 
scsi_host_template *sht, int priv
         else
                 shost->max_sectors = SCSI_DEFAULT_MAX_SECTORS;

-       if (sht->max_segment_size)
-               shost->max_segment_size = sht->max_segment_size;
-       else
-               shost->max_segment_size = BLK_MAX_SEGMENT_SIZE;
+       shost->max_segment_size = sht->max_segment_size;



>>
> 
> With this patch in linux mainline, I see
> 
> ata2: found unknown device (class 0)
> ata2.00: ATAPI: QEMU DVD-ROM, 2.5+, max UDMA/100
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 27 at block/blk-settings.c:202 blk_validate_limits+0x28c/0x304
> Modules linked in:
> CPU: 0 PID: 27 Comm: kworker/u4:2 Not tainted 6.9.0-05151-g1b294a1f3561 #1
> Hardware name: PowerMac3,1 PPC970FX 0x3c0301 PowerMac
> Workqueue: async async_run_entry_fn
> NIP:  c0000000007ccec8 LR: c0000000007c805c CTR: 0000000000000000
> REGS: c000000006def690 TRAP: 0700   Not tainted  (6.9.0-05151-g1b294a1f3561)
> MSR:  8000000000028032 <SF,EE,IR,DR,RI>  CR: 84004228  XER: 20000000
> IRQMASK: 0
> GPR00: c0000000007c8040 c000000006def930 c00000000159f900 c000000006defac8
> GPR04: c00000000146e788 0000000000000000 0000000000000000 0000000000000100
> GPR08: 0000000000000200 000000000000ff00 0000000000000000 0000000000004000
> GPR12: 000000000fa82000 c000000003330000 c000000000116508 c0000000060c5c40
> GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000000000088
> GPR20: 0000000000000000 c0000000026f2f40 c0000000025eeff0 0000000000000000
> GPR24: c000000006defc80 c0000000031cb3a0 c000000002571c80 c000000006defac8
> GPR28: c0000000033052e0 ffffffffffffffff 0000000000000010 c000000008f13df0
> NIP [c0000000007ccec8] blk_validate_limits+0x28c/0x304
> LR [c0000000007c805c] blk_alloc_queue+0xbc/0x344
> Call Trace:
> [c000000006def930] [c0000000007c8040] blk_alloc_queue+0xa0/0x344 (unreliable)
> [c000000006def990] [c0000000007e2658] blk_mq_alloc_queue+0x60/0xf4
> [c000000006defa60] [c000000000a7a260] scsi_alloc_sdev+0x280/0x464
> [c000000006defb90] [c000000000a7a6b4] scsi_probe_and_add_lun+0x270/0x388
> [c000000006defc60] [c000000000a7b070] __scsi_add_device+0x168/0x1b4
> [c000000006defcc0] [c000000000b08fe0] ata_scsi_scan_host+0x294/0x39c
> [c000000006defd80] [c000000000af7704] async_port_probe+0x6c/0x98
> [c000000006defdb0] [c000000000120028] async_run_entry_fn+0x50/0x13c
> [c000000006defe00] [c00000000010821c] process_one_work+0x2c0/0x828
> [c000000006deff00] [c000000000109090] worker_thread+0x224/0x474
> [c000000006deff90] [c000000000116658] kthread+0x158/0x17c
> 
> followed by
> 
> scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
> usb 1-1: new full-speed USB device number 2 using ohci-pci
> scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
> scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
> scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
> input: QEMU QEMU USB Keyboard as /devices/pci0000:f0/0000:f0:0d.0/usb1/1-1/1-1:1.0/0003:0627:0001.0001/input/input0
> scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
> ata2: WARNING: synchronous SCSI scan failed without making any progress, switching to async
> 
> and ultimately a boot hang. This is with the mac99 emulation in qemu.
> The warning is always seen, the boot hang is seen when trying to boot
> from ide/ata drive. Bisect log is attached.
> 
> Guenter
> 
> ---
> # bad: [1b294a1f35616977caddaddf3e9d28e576a1adbc] Merge tag 'net-next-6.10' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next
> # good: [a5131c3fdf2608f1c15f3809e201cf540eb28489] Merge tag 'x86-shstk-2024-05-13' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
> git bisect start 'HEAD' 'a5131c3fdf26'
> # good: [f8beae078c82abde57fed4a5be0bbc3579b59ad0] Merge tag 'gtp-24-05-07' of git://git.kernel.org/pub/scm/linux/kernel/git/pablo/gtp Pablo neira Ayuso says:
> git bisect good f8beae078c82abde57fed4a5be0bbc3579b59ad0
> # good: [ce952d8f0e9b58dc6a2bde7e47ca7fa7925583cc] Merge tag 'gpio-updates-for-v6.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux
> git bisect good ce952d8f0e9b58dc6a2bde7e47ca7fa7925583cc
> # bad: [113d1dd9c8ea2186d56a641a787e2588673c9c32] Merge tag 'scsi-misc' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi
> git bisect bad 113d1dd9c8ea2186d56a641a787e2588673c9c32
> # good: [a3d1f54d7aa4c3be2c6a10768d4ffa1dcb620da9] Merge tag 'for-6.10-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
> git bisect good a3d1f54d7aa4c3be2c6a10768d4ffa1dcb620da9
> # bad: [f92141e18c8b466027e226f3388de15b059b6f65] Merge patch series "convert SCSI to atomic queue limits, part 1 (v3)"
> git bisect bad f92141e18c8b466027e226f3388de15b059b6f65
> # good: [0e0a4da35284c85225e3b128912582ebc73256c8] Merge patch series "scsi: ufs: Remove overzealous memory barriers"
> git bisect good 0e0a4da35284c85225e3b128912582ebc73256c8
> # bad: [a25a9c85d17fd2f19bd5a2bb25b8361d72336bc7] scsi: libata: Switch to using ->device_configure
> git bisect bad a25a9c85d17fd2f19bd5a2bb25b8361d72336bc7
> # bad: [6248d7f7714f018f2c02f356582784e74596f8e8] scsi: core: Add a no_highmem flag to struct Scsi_Host
> git bisect bad 6248d7f7714f018f2c02f356582784e74596f8e8
> # good: [33507b3964f136ea1592718cb81885c8f9354f65] scsi: ufs: qcom: Add sanity checks for gear/lane values during ICC scaling
> git bisect good 33507b3964f136ea1592718cb81885c8f9354f65
> # good: [4373d2ecca7fa7ad04aa9c371c80049bafec2610] scsi: bsg: Pass queue_limits to bsg_setup_queue()
> git bisect good 4373d2ecca7fa7ad04aa9c371c80049bafec2610
> # bad: [afd53a3d852808bfeb5bc3ae3cd1caa9389bcc94] scsi: core: Initialize scsi midlayer limits before allocating the queue
> git bisect bad afd53a3d852808bfeb5bc3ae3cd1caa9389bcc94
> # good: [9042fb6d2c085eccdf11069b04754dac807c36ea] scsi: mpi3mr: Pass queue_limits to bsg_setup_queue()
> git bisect good 9042fb6d2c085eccdf11069b04754dac807c36ea
> # first bad commit: [afd53a3d852808bfeb5bc3ae3cd1caa9389bcc94] scsi: core: Initialize scsi midlayer limits before allocating the queue

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a8c39499-1410-4251-bf26-36763f5f56b0%40oracle.com.
