Return-Path: <usb-storage+bncBAABBYHL7WLQMGQEHJH4BWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id CB403599B03
	for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 13:37:05 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id k4-20020a4a3104000000b0044607fa7d05sf1945921ooa.21
        for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 04:37:05 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1660909024; cv=pass;
        d=google.com; s=arc-20160816;
        b=eHjkO16rYDUQdRowNCFKBlgYVCFObViFcC9J95aADB3RFBCpkuwh4CV4YiaGrBRiqU
         ZfaLUWzd3+SKVkCACl4WckSqhsJGg4zfjHjH+TEppXeXxF+Q+PNg/C8Q31ylfdax8EaJ
         39DBQVWbmnKHWS8pVg+5oU9Uf5ERrwkZtnDx+l4byDFVlWpHeqwE/fMVYaoqKoO9TG+m
         57Y8QVCf95HNsRwVkVgjpnlaCNzLilhlyAvJdv5n3VE5jhLKVQLnRtWk0zJVgBfE/Oyt
         7tX3WXGNV8BNjKbhJC+mtGsp8nxNl+LZMZtE0LsX1BtsXxBxRvvtXNNJFg+5BQElnvMW
         1g0Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=z8pepV5jJuBVK2HCaGb6rGmf7LQAW+oPw9AL8xMsfSA=;
        b=awIIr+JmYiCHPzwD/2JAQqPmFPyYZ/AsOeheY3LW/nz3WAZpQYDbqz1zQuvnAv7RsP
         d2Xp3ye8id0uG+o1RKts5JxnJmZSSBBxnVh8qgL2HBeDX1O7Tu7cOC0Ni5TfiuSZpWGf
         60keMXusM3I8cVPRWvMrAzZnuIoCp9A/Z4MR8tnUdWA+hkhQ+734NFYSaCFnAd/yaF6I
         9U38n88L/Y+YPZUAqYpazuO7NbRDDBak5xnR4U0edVR4qzZS9ct7rW1zkqGMDBfic9Rp
         xZEeZmpG03LZvH74N8V8xpvnPmedokgf27mJL0K9LuR3s98Uc6k5lirUU/AirPulDZ9y
         jLkw==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@skidata.com header.s=selector1 header.b=fF9zw4mX;
       arc=pass (i=1 spf=pass spfdomain=skidata.com dkim=pass dkdomain=skidata.com dmarc=pass fromdomain=skidata.com);
       spf=pass (google.com: domain of richard.leitner@skidata.com designates 40.107.24.103 as permitted sender) smtp.mailfrom=Richard.Leitner@skidata.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=skidata.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:content-disposition
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=z8pepV5jJuBVK2HCaGb6rGmf7LQAW+oPw9AL8xMsfSA=;
        b=DF7sEj8C5DkCovzdsj3Lc114qJcTM2V+QhkuduyFhe6vdW3kfQF26TmQA1QDjLH2Sg
         dvI2Y8I0EFNM8wNL/Wucv7UWKaRW8N/FFvnJPFqT/hZCD+92eHjIGzf1vD/564rSUxEV
         3XjdQ1UI7ejgvt+h+zlPucQyi8MN09I/JPWeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:content-disposition
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc;
        bh=z8pepV5jJuBVK2HCaGb6rGmf7LQAW+oPw9AL8xMsfSA=;
        b=QfuzEnnIAtKarYXLUTa2Dd4bXQgnPaLNVo79FPhnn7cFyT4WCylYsLNaC9KHj3X/dL
         K6rtqeNGpAHA4scTYTiLpmmXXspQaqBoglI4QkhoQoBLc8qdb1f2iJABcw+spfOgUj+r
         PNpf4twZ32oxlrBm2mhwMpiKz2e9936HBzZWd50JcMBNGv5fq5kEtCiY+e8WwtkPkoSk
         dzCEUW5B+sE/wbagzq1VWHHnHJunKXZB7y70nU1xnkaI/4G/C09rQbquiR1a2y24pIpd
         /xnhpLF3gT4YUENVjBZLBRiznK7PkcR0tFyStkn7h087ZG3vliufEeAtINMylavo7eIc
         H2GQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0j5AdThCmPq74Qx3VGuX7FTuyZU3N29CscrZR1PVaFsmKJT4rg
	GN74s3bj2f07W0r3VNSNjzv68g==
X-Google-Smtp-Source: AA6agR5soTb1wqdCLOVeWfii+MAVPTJtT52Y7gOTDR578DUmuYoH8ro4tDDma1P7fl4sCHKK4hLjDw==
X-Received: by 2002:a05:6870:4388:b0:10e:803f:9dae with SMTP id r8-20020a056870438800b0010e803f9daemr6147234oah.175.1660909024417;
        Fri, 19 Aug 2022 04:37:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:3a04:b0:10c:41e7:bfd9 with SMTP id
 du4-20020a0568703a0400b0010c41e7bfd9ls1423731oab.2.-pod-prod-gmail; Fri, 19
 Aug 2022 04:37:04 -0700 (PDT)
X-Received: by 2002:a05:6870:2499:b0:101:7531:c7ec with SMTP id s25-20020a056870249900b001017531c7ecmr6552087oaq.42.1660909024158;
        Fri, 19 Aug 2022 04:37:04 -0700 (PDT)
Received: by 2002:aca:b842:0:b0:344:8317:fb1f with SMTP id 5614622812f47-34529cb4ca4msb6e;
        Thu, 18 Aug 2022 22:31:26 -0700 (PDT)
X-Received: by 2002:a63:69c7:0:b0:41c:590a:62dc with SMTP id e190-20020a6369c7000000b0041c590a62dcmr4888621pgc.388.1660887086094;
        Thu, 18 Aug 2022 22:31:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660887086; cv=pass;
        d=google.com; s=arc-20160816;
        b=bBkhROF0R3LD+F+HLViAhkFmA5BpB8DTme8COfm6CY/r83PetuCgSGwe0CC11wemrL
         EghnEZc1uuebIA7n/9DQHWf0fGQ/OxOaPFK1RDzo5pJViuQZdjOh8IFTrlhj1WGyYsBr
         qbDWu9424ztUvXJP8f3P0a/aUAqoeKJxqsYYu31X7YANPofgr1U7nH9F0P1L4ivj3EHe
         FwQTY4+LYQ84Eg0nEXole/bX+IZ6DxmgepIA9tbxW8hoCO6h3D6/n55kxsm/OQ3vMTh6
         GdjVwUfKACK+ulf6kmVKH1/5TcVjXNjrfBB26lzIuuyMNiAnpa9BP8HEYXng1uPqlhQl
         YUBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5sqCHmyp5j2qBLAwz3OB2o/E4w0d9ErsYWmGCs61dIU=;
        b=g4qrZ9gtHO6gSuEwBC31e8SS17Kc4j4Sz8XusZ2DNe8Pe+zxFFYQ819YsvrqbEkWR8
         8Cxl5HUDChYZiH+JW+RDXeCzVExt6A/2FOCQr2bSCDNcuVc7jwyDaUaMtbW5ZldZgN4I
         K35fIGHf/yoe9J1NoMBkCQ0rBvp1J7qTHSfQvTGGFussnN7Y1CmU2KdU1ZJXUD4ABNo+
         Lio3Bq4V1n17K/Dk60guDJN5Zs+ptomJO1PfvCj1vjajnTPGJn33OK/o3eLOcrlyx6iD
         wEB0PpGXzRgxQhXC7G7MYT5IjaZSi4LPQvcYkSChSOHc/Ihy9QbMolLuUHoDmUq5FhiC
         /cng==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@skidata.com header.s=selector1 header.b=fF9zw4mX;
       arc=pass (i=1 spf=pass spfdomain=skidata.com dkim=pass dkdomain=skidata.com dmarc=pass fromdomain=skidata.com);
       spf=pass (google.com: domain of richard.leitner@skidata.com designates 40.107.24.103 as permitted sender) smtp.mailfrom=Richard.Leitner@skidata.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=skidata.com
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com (mail-zr0che01on2103.outbound.protection.outlook.com. [40.107.24.103])
        by mx.google.com with ESMTPS id g7-20020a656cc7000000b0041cb0d39714si3376977pgw.360.2022.08.18.22.31.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Aug 2022 22:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of richard.leitner@skidata.com designates 40.107.24.103 as permitted sender) client-ip=40.107.24.103;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i9gbTOfc720XXCAp7q+679VwIqCVmYJkBrF2+uGcWFn3oAmvYzFhAYLu7Ue/fiEgk4tFXwYsbRT+K1xmaraVySeZ4Eczz29hymf/5vChUFaZGFR4rOz9J4BPYy7JZTaJmsmD51BfCA5dF7gCS+8l1UfAJHZULuO4dKgvTknXL4mYAJ7/NYudIJ3mP7Oyvdm6S2SE9EFnrI2y+S9lV4TsblLpjoLIRdFtEf5FI8APq7xAo7p0h+KKws5m130nJuwZZpnC79Rww39qY3+zIVYEYWGSESnfIpqfM90P/zdPl28So6YMLcnl+WTUfLxy5Vi1NXRCgz0bDgBxO1pRTnLv0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5sqCHmyp5j2qBLAwz3OB2o/E4w0d9ErsYWmGCs61dIU=;
 b=XWd5ogdXguiftilI7U5ynthqYf16kULsvVrl3q7dkCXT72hDAjOvuTQv2IB4qhYRhNOjLbLmZBEWDhosZ0fWtv6LKV6ABJzcXwoWK0zkkEP5UsNRrE0h1wlgBbtwlYPaRNOP/CJIC/xP4oK1Id5W9yTeVhN9OIR7UVd1keC9E3Q7TjBZStxEHN4EpfljBUFqo/9UxiigR0rO+jrrejJgwewNrvXoLSoyJcD5yDXdkiLvxWiTesBj+06+rVLD7Rjd4sNYF5F5w+OPdpWWZGcNKkXi4bfiT9xW00gr6btJqOZjyjV+GMVLf9lVvItqj5Bn/OXjf0VyuA0VeDMJdLs13g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skidata.com; dmarc=pass action=none header.from=skidata.com;
 dkim=pass header.d=skidata.com; arc=none
Received: from ZR0P278MB0798.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:43::8) by
 ZR0P278MB0474.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:25::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.17; Fri, 19 Aug 2022 05:31:23 +0000
Received: from ZR0P278MB0798.CHEP278.PROD.OUTLOOK.COM
 ([fe80::91f2:a7f5:699b:388f]) by ZR0P278MB0798.CHEP278.PROD.OUTLOOK.COM
 ([fe80::91f2:a7f5:699b:388f%9]) with mapi id 15.20.5525.019; Fri, 19 Aug 2022
 05:31:23 +0000
Date: Fri, 19 Aug 2022 07:31:20 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org, Duncan Sands <duncan.sands@free.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: move from strlcpy with unused retval
 to strscpy
Message-ID: <Yv8gKHKM/HjIkmnz@skidata.com>
References: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
X-ClientProxiedBy: VI1P18901CA0007.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::17) To ZR0P278MB0798.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:43::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8cbbae6f-d114-4588-a4b7-08da81a40daa
X-MS-TrafficTypeDiagnostic: ZR0P278MB0474:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qrde3+OELKdlwtxdseUocRw4GrWl0GfUa63BkF1V5M74vvlmjsdvWlqm9nG1NAfThzREUQNcQZLE25K8g/Z15SUFSrGmU2eZI3vKRPvPdfjTuKLnU6CQ5Fya59mQObHBJsg8q+eQSQ0LNvUdHWP//KJAmTmdlMfIGo1ucrPogeyU0DQDlPq6x0ZQrZUTME2kFltGoz/1viJMlH9DQGQzn+cuI3DMGReMnhCP71z5137EnGRFQTC1AkX44sB7RoMD48F2bm4FOVGvVJkfQKCrju3FEJBRa3K+ndoFE+neGdi1lEV0i+tF5cw+saOPERy6ZUanl/1HFARob4ivtHeg/PFWhPPE04Tu8kWCb1XSDA1iNtYSzPDIRBF609KaH/+tdDwcc5NemfgJYO2x06iHuQKLbCJYPAqWBJeJdl4dpAgvobJ30qhy//+WnbbMmr6daiEAPqS6k4u+CXD7vioU3bwXqO02lYppwhqSqxNOW6nw7wialDY246z+bE4yyBD2Ac9yMxGn2fiaYDiMAmWPrcXDcKz3fw4+VE/cssSK7s7OU1+LOxpx69jMhF87oFuch9PutyjGZdHRRXgy5sfZMX+/3Rm/HLXr8DOW48cd1OSjWUmiU/63AHV28C1XPMl6RRdbSCU5x+rD9le/igOeZpA7YSgl/TBgtcBGh+jc3ErraeDTE31TgKLt9QCK7hXoGo5hBmHID+mXR+ScLOBcHhslgBMTxe/AOFIo+TcFpNgFunzBiFcKGmLg/bZLZ/zjEI5PXfOVSwLgJDtoI5BJwvaba4BWlFCG2G+eePUz4q5WkoZR4lRP8EY2ef4Zk4ICu5SjQUTTVNtoFymlyyjmog==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0798.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(396003)(366004)(39850400004)(376002)(316002)(54906003)(2616005)(41300700001)(186003)(26005)(6512007)(6506007)(86362001)(83380400001)(966005)(6486002)(478600001)(2906002)(5660300002)(7416002)(8936002)(36756003)(44832011)(8676002)(4326008)(66556008)(66946007)(66476007)(38100700002)(156123004)(41080700001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k7xbgsJZ/wcrVQnQ+FunuzRj23iyvshkVG5LhOtnJH8FSPOS/u3XbWmLcpEU?=
 =?us-ascii?Q?oleJliM/WUazn8t/+kHNR/DtkaOQzgy8jCHyYRa8HgwkyrZA6+vCgkZGAMnr?=
 =?us-ascii?Q?UwiBIT5lh1AZUjas8rJ+hYb2c+2DhLMRRjanoKo5oMiQQiJl0fG8tl0ycD1b?=
 =?us-ascii?Q?qiUTPIpSVujEI/uxjMHdFhQOagNgTFhvuhq1Idar9ab42iZDxV9Sil54fN9d?=
 =?us-ascii?Q?bb39nRrsoY9gOHazRBDRSZpeUJW63WIWqgcV6b9g3dA3XJ+Y0guE9lVaTphp?=
 =?us-ascii?Q?W0zc7J82xmv3j+BLmOdma71dWK5Pj0KHbd+oJx2nJqstKk1+EN3l7vB2w3Rp?=
 =?us-ascii?Q?4t56M6aio9sNdDW81OkKg84LABESDGzP/QqNDssmxxwYg8nqDOljrGymxalH?=
 =?us-ascii?Q?+Kbg8yKm8tADJoeghXwAMgRKNc6H1dekAAc1ul0MCncGK45gjNqEGWJIBqC/?=
 =?us-ascii?Q?Jcdvn+4q8YOvBL4vgFp/a0hu9fwX3Soa0p3J7mKlI2nO98kSVRPKFnSMaIvK?=
 =?us-ascii?Q?eF/A4bHxJpGfpWwQA5ExXU8WKXcqAxsFlvvWt0kI3uNbaHr3yNaMmy5mCR3N?=
 =?us-ascii?Q?S8D+TzQ4a5SzoTvL8f+6LFa4UOALJcarrqlVuCm19Vm8JEejlbqIZ8GRukx9?=
 =?us-ascii?Q?R2yUKckFvQ2Us2OPSQRWaC03I7fqwnP6iVaBeUzpdXAbZw2Io5xgkjoI5D7Q?=
 =?us-ascii?Q?3j0Gufhnr0IvUgnIq/SlfGg+TyOOSl2zMwUikWNOGksa3LRKphx7zWlqT8pk?=
 =?us-ascii?Q?7f3wiUlhfbG5PdJd2MGvjF9IrDHRYa4qIso9DhgsNE1zhqmW3pnngyp9C3z9?=
 =?us-ascii?Q?egPhG195gvA/th8qkbH/1Lg+HALv8XoT2u4utnvmmaiklUGeGqvt1glOyCEo?=
 =?us-ascii?Q?9AtDE4GdNYQSZ5WyU53j6ofb6f0ot5s2XluZq0SdHr+CNwNVTqzY1krERhei?=
 =?us-ascii?Q?9bNiVs8MD5Ya/MpMQ33pQJqUyas0ak18Djk/UNh4OoItHe3sp1d5Tn3OLj+a?=
 =?us-ascii?Q?JrHB8o90zUVkxQVkWzPEgxsUKu6Xw5WadQpDI3CyjMkSZMP/KpoZGKXlj1sd?=
 =?us-ascii?Q?ASZlO0iVHSWLOs1hh7M+NOprEgD3kTxZl5a63T8EVv4X7pK70rbNjxbs9JfE?=
 =?us-ascii?Q?3gYJIDMIOrou4RONoIYvMh2zd9IhQP49xPDnhcld/lGqnCj/RYZPWGHPANRE?=
 =?us-ascii?Q?sgnFG2mOuki7ornimGK4JTVMnO7wQ9vAUCDgYjRJIHC3NfaF90dgYi86TyTA?=
 =?us-ascii?Q?OsicTCHNAeyCddUA9sS50miMadZx0wXxGdl5TBsx7vWb857y73XlyVNongCX?=
 =?us-ascii?Q?xsDhK6/XGv4ephrYOw32JM6k9erkxxizzXGdDwf7z0y4tDOogYC+DVWzikb2?=
 =?us-ascii?Q?l0F0m7pVYAe1YfsUtg4OBG6qiIhXfZpkOiS2EwylvtP9cB0ycxQV1KS0j7EI?=
 =?us-ascii?Q?YhHFTP6ivFvX24xY9Xi14e5Gx3XXdoz5HCMON3hOFxzHpBZGgSLO15T6AdJj?=
 =?us-ascii?Q?78osP2PC3ZE2hPOihkUTg26UypmGxyqIbp1jBF+zXBJ/dApIp7WNFq2Otde9?=
 =?us-ascii?Q?hyO+5Yydy7XuPyXR0yvMBkHZZROmVBLQPNsu4VxB6ERIA6WhASujAxsmTB5w?=
 =?us-ascii?Q?lA=3D=3D?=
X-OriginatorOrg: skidata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cbbae6f-d114-4588-a4b7-08da81a40daa
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0798.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2022 05:31:23.1815
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e5733095-4425-4f08-b6ba-487b9a46a425
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pNF9a+zshHYnPiei4XDhXm8+cZ9upgECuypk6haxcqM7vSbIzCUgd1xkRHS9i0U/D80YyaFj7pEqCWo7guNggMAgjJO0gZcqbjuqkLaaZXc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB0474
X-Original-Sender: richard.leitner@skidata.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@skidata.com header.s=selector1 header.b=fF9zw4mX;       arc=pass
 (i=1 spf=pass spfdomain=skidata.com dkim=pass dkdomain=skidata.com dmarc=pass
 fromdomain=skidata.com);       spf=pass (google.com: domain of
 richard.leitner@skidata.com designates 40.107.24.103 as permitted sender)
 smtp.mailfrom=Richard.Leitner@skidata.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=skidata.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Hi Wolfram,

On Thu, Aug 18, 2022 at 11:01:15PM +0200, Wolfram Sang wrote:
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
> 
> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  drivers/usb/atm/usbatm.c               | 2 +-
>  drivers/usb/core/devio.c               | 2 +-
>  drivers/usb/gadget/function/f_fs.c     | 2 +-
>  drivers/usb/gadget/function/f_uvc.c    | 2 +-
>  drivers/usb/gadget/function/u_ether.c  | 8 ++++----
>  drivers/usb/gadget/function/uvc_v4l2.c | 6 +++---
>  drivers/usb/gadget/udc/omap_udc.c      | 2 +-
>  drivers/usb/misc/usb251xb.c            | 6 +++---

Thanks for taking usb251xb into account.

Please feel free to add

Reviewed-by: Richard Leitner <richard.leitner@skidata.com>

>  drivers/usb/storage/onetouch.c         | 2 +-
>  drivers/usb/typec/tcpm/fusb302.c       | 2 +-
>  drivers/usb/usbip/stub_main.c          | 2 +-
>  11 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/usb/atm/usbatm.c b/drivers/usb/atm/usbatm.c
> index 362217189ef3..1cdb8758ae01 100644
> --- a/drivers/usb/atm/usbatm.c
> +++ b/drivers/usb/atm/usbatm.c
> @@ -1026,7 +1026,7 @@ int usbatm_usb_probe(struct usb_interface *intf, const struct usb_device_id *id,
>  	/* public fields */
>  
>  	instance->driver = driver;
> -	strlcpy(instance->driver_name, driver->driver_name,
> +	strscpy(instance->driver_name, driver->driver_name,
>  		sizeof(instance->driver_name));
>  
>  	instance->usb_dev = usb_dev;
> diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
> index b5b85bf80329..837f3e57f580 100644
> --- a/drivers/usb/core/devio.c
> +++ b/drivers/usb/core/devio.c
> @@ -1434,7 +1434,7 @@ static int proc_getdriver(struct usb_dev_state *ps, void __user *arg)
>  	if (!intf || !intf->dev.driver)
>  		ret = -ENODATA;
>  	else {
> -		strlcpy(gd.driver, intf->dev.driver->name,
> +		strscpy(gd.driver, intf->dev.driver->name,
>  				sizeof(gd.driver));
>  		ret = (copy_to_user(arg, &gd, sizeof(gd)) ? -EFAULT : 0);
>  	}
> diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
> index e0fa4b186ec6..98dc2291e9a1 100644
> --- a/drivers/usb/gadget/function/f_fs.c
> +++ b/drivers/usb/gadget/function/f_fs.c
> @@ -3700,7 +3700,7 @@ int ffs_name_dev(struct ffs_dev *dev, const char *name)
>  
>  	existing = _ffs_do_find_dev(name);
>  	if (!existing)
> -		strlcpy(dev->name, name, ARRAY_SIZE(dev->name));
> +		strscpy(dev->name, name, ARRAY_SIZE(dev->name));
>  	else if (existing != dev)
>  		ret = -EBUSY;
>  
> diff --git a/drivers/usb/gadget/function/f_uvc.c b/drivers/usb/gadget/function/f_uvc.c
> index 71669e0e4d00..f4f6cf75930b 100644
> --- a/drivers/usb/gadget/function/f_uvc.c
> +++ b/drivers/usb/gadget/function/f_uvc.c
> @@ -430,7 +430,7 @@ uvc_register_video(struct uvc_device *uvc)
>  	uvc->vdev.vfl_dir = VFL_DIR_TX;
>  	uvc->vdev.lock = &uvc->video.mutex;
>  	uvc->vdev.device_caps = V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_STREAMING;
> -	strlcpy(uvc->vdev.name, cdev->gadget->name, sizeof(uvc->vdev.name));
> +	strscpy(uvc->vdev.name, cdev->gadget->name, sizeof(uvc->vdev.name));
>  
>  	video_set_drvdata(&uvc->vdev, uvc);
>  
> diff --git a/drivers/usb/gadget/function/u_ether.c b/drivers/usb/gadget/function/u_ether.c
> index 7887def05dc2..e06022873df1 100644
> --- a/drivers/usb/gadget/function/u_ether.c
> +++ b/drivers/usb/gadget/function/u_ether.c
> @@ -144,10 +144,10 @@ static void eth_get_drvinfo(struct net_device *net, struct ethtool_drvinfo *p)
>  {
>  	struct eth_dev *dev = netdev_priv(net);
>  
> -	strlcpy(p->driver, "g_ether", sizeof(p->driver));
> -	strlcpy(p->version, UETH__VERSION, sizeof(p->version));
> -	strlcpy(p->fw_version, dev->gadget->name, sizeof(p->fw_version));
> -	strlcpy(p->bus_info, dev_name(&dev->gadget->dev), sizeof(p->bus_info));
> +	strscpy(p->driver, "g_ether", sizeof(p->driver));
> +	strscpy(p->version, UETH__VERSION, sizeof(p->version));
> +	strscpy(p->fw_version, dev->gadget->name, sizeof(p->fw_version));
> +	strscpy(p->bus_info, dev_name(&dev->gadget->dev), sizeof(p->bus_info));
>  }
>  
>  /* REVISIT can also support:
> diff --git a/drivers/usb/gadget/function/uvc_v4l2.c b/drivers/usb/gadget/function/uvc_v4l2.c
> index fd8f73bb726d..511f106f9843 100644
> --- a/drivers/usb/gadget/function/uvc_v4l2.c
> +++ b/drivers/usb/gadget/function/uvc_v4l2.c
> @@ -67,9 +67,9 @@ uvc_v4l2_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
>  	struct uvc_device *uvc = video_get_drvdata(vdev);
>  	struct usb_composite_dev *cdev = uvc->func.config->cdev;
>  
> -	strlcpy(cap->driver, "g_uvc", sizeof(cap->driver));
> -	strlcpy(cap->card, cdev->gadget->name, sizeof(cap->card));
> -	strlcpy(cap->bus_info, dev_name(&cdev->gadget->dev),
> +	strscpy(cap->driver, "g_uvc", sizeof(cap->driver));
> +	strscpy(cap->card, cdev->gadget->name, sizeof(cap->card));
> +	strscpy(cap->bus_info, dev_name(&cdev->gadget->dev),
>  		sizeof(cap->bus_info));
>  	return 0;
>  }
> diff --git a/drivers/usb/gadget/udc/omap_udc.c b/drivers/usb/gadget/udc/omap_udc.c
> index 61cabb9de6ae..b0567c63d754 100644
> --- a/drivers/usb/gadget/udc/omap_udc.c
> +++ b/drivers/usb/gadget/udc/omap_udc.c
> @@ -2558,7 +2558,7 @@ omap_ep_setup(char *name, u8 addr, u8 type,
>  
>  	/* set up driver data structures */
>  	BUG_ON(strlen(name) >= sizeof ep->name);
> -	strlcpy(ep->name, name, sizeof ep->name);
> +	strscpy(ep->name, name, sizeof(ep->name));
>  	INIT_LIST_HEAD(&ep->queue);
>  	INIT_LIST_HEAD(&ep->iso);
>  	ep->bEndpointAddress = addr;
> diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
> index 04c4e3fed094..87035ac09834 100644
> --- a/drivers/usb/misc/usb251xb.c
> +++ b/drivers/usb/misc/usb251xb.c
> @@ -547,7 +547,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  		hub->boost_up = USB251XB_DEF_BOOST_UP;
>  
>  	cproperty_char = of_get_property(np, "manufacturer", NULL);
> -	strlcpy(str, cproperty_char ? : USB251XB_DEF_MANUFACTURER_STRING,
> +	strscpy(str, cproperty_char ? : USB251XB_DEF_MANUFACTURER_STRING,
>  		sizeof(str));
>  	hub->manufacturer_len = strlen(str) & 0xFF;
>  	memset(hub->manufacturer, 0, USB251XB_STRING_BUFSIZE);
> @@ -557,7 +557,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  			      USB251XB_STRING_BUFSIZE);
>  
>  	cproperty_char = of_get_property(np, "product", NULL);
> -	strlcpy(str, cproperty_char ? : data->product_str, sizeof(str));
> +	strscpy(str, cproperty_char ? : data->product_str, sizeof(str));
>  	hub->product_len = strlen(str) & 0xFF;
>  	memset(hub->product, 0, USB251XB_STRING_BUFSIZE);
>  	len = min_t(size_t, USB251XB_STRING_BUFSIZE / 2, strlen(str));
> @@ -566,7 +566,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  			      USB251XB_STRING_BUFSIZE);
>  
>  	cproperty_char = of_get_property(np, "serial", NULL);
> -	strlcpy(str, cproperty_char ? : USB251XB_DEF_SERIAL_STRING,
> +	strscpy(str, cproperty_char ? : USB251XB_DEF_SERIAL_STRING,
>  		sizeof(str));
>  	hub->serial_len = strlen(str) & 0xFF;
>  	memset(hub->serial, 0, USB251XB_STRING_BUFSIZE);
> diff --git a/drivers/usb/storage/onetouch.c b/drivers/usb/storage/onetouch.c
> index 1db2eefeea22..01f3c2779ccf 100644
> --- a/drivers/usb/storage/onetouch.c
> +++ b/drivers/usb/storage/onetouch.c
> @@ -201,7 +201,7 @@ static int onetouch_connect_input(struct us_data *ss)
>  	onetouch->dev = input_dev;
>  
>  	if (udev->manufacturer)
> -		strlcpy(onetouch->name, udev->manufacturer,
> +		strscpy(onetouch->name, udev->manufacturer,
>  			sizeof(onetouch->name));
>  	if (udev->product) {
>  		if (udev->manufacturer)
> diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
> index 96c55eaf3f80..ab89c014606e 100644
> --- a/drivers/usb/typec/tcpm/fusb302.c
> +++ b/drivers/usb/typec/tcpm/fusb302.c
> @@ -151,7 +151,7 @@ static void _fusb302_log(struct fusb302_chip *chip, const char *fmt,
>  
>  	if (fusb302_log_full(chip)) {
>  		chip->logbuffer_head = max(chip->logbuffer_head - 1, 0);
> -		strlcpy(tmpbuffer, "overflow", sizeof(tmpbuffer));
> +		strscpy(tmpbuffer, "overflow", sizeof(tmpbuffer));
>  	}
>  
>  	if (chip->logbuffer_head < 0 ||
> diff --git a/drivers/usb/usbip/stub_main.c b/drivers/usb/usbip/stub_main.c
> index 77a5b3f8736a..e8c3131a8543 100644
> --- a/drivers/usb/usbip/stub_main.c
> +++ b/drivers/usb/usbip/stub_main.c
> @@ -100,7 +100,7 @@ static int add_match_busid(char *busid)
>  	for (i = 0; i < MAX_BUSID; i++) {
>  		spin_lock(&busid_table[i].busid_lock);
>  		if (!busid_table[i].name[0]) {
> -			strlcpy(busid_table[i].name, busid, BUSID_SIZE);
> +			strscpy(busid_table[i].name, busid, BUSID_SIZE);
>  			if ((busid_table[i].status != STUB_BUSID_ALLOC) &&
>  			    (busid_table[i].status != STUB_BUSID_REMOV))
>  				busid_table[i].status = STUB_BUSID_ADDED;
> -- 
> 2.35.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yv8gKHKM/HjIkmnz%40skidata.com.
