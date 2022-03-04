Return-Path: <usb-storage+bncBDIZTUWNWICRBO4CQ6IQMGQEDIML6KA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AEE4CCF1C
	for <lists+usb-storage@lfdr.de>; Fri,  4 Mar 2022 08:35:25 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id t34-20020a05680815a200b002d51d9e681dsf4926934oiw.10
        for <lists+usb-storage@lfdr.de>; Thu, 03 Mar 2022 23:35:25 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646379324; cv=pass;
        d=google.com; s=arc-20160816;
        b=wrpv/mP7fSqg16+CT7U5Z5VqNnxBWySKLtO4O+sMO+4m4vv09aV37ePAQU1PLr4sE/
         08fnTFM/QK160zhV4LARrzpyLBBSfZAjEPheon9HO7Wne5sDgPZ7d4NTbteFEA5PHEXJ
         ymJpgiRXFHK1bJngPskBmqPR6ynTTaAbTOZhs/CtVNCr49oMeVW6xlmouE3Dp8xzVXxa
         yxXgFrLMVyFah7ru89UQMbls9OYvaY55Pwof94m+m3atIlukWKgki7h/LGSXOCP5NR6z
         AeEOnaPK5jLarhMLho6whrtj/hmvkiXy4OAvZiOyUhhFksbP2zQNaUggqiGeDSIqY/w1
         Qu7g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent
         :content-disposition:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XFjepXS99HYl+OGXIgbwtL8MtxkjoEc6V/dFJZ89oH0=;
        b=Pt8Awo6Q3OBE1e3PPtvkbYXA0cExvQfFUWdNZEg1fXrigI4cqbAEC3ehI2iS/5MToy
         nKWxCfkS3laJteKmhZsb494RIwFenBTyjD14uVzCa5wTF4kdlvwUG7mu94d5tT/9PCTZ
         +PDEd/ovPdAgO0dZTLMukJVKVyZcz8ezuU9/bEBVZVdVWcvazh8PvehjMGXgtQ/MSeso
         gah+otlw7hL7YYopexWG3YtVGfQlCYv0CHdXPUSrjcKx4QM4+q7dcnbYTRgYvITWCW8W
         If98T8srB9zSyxSChqYZeJoZzb63g/DTK+/vz1u1qM8mhpfThAvid3HuCiso0ije4Xy9
         biVA==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=iUqYe05a;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=pwBxrt4u;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:content-disposition
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XFjepXS99HYl+OGXIgbwtL8MtxkjoEc6V/dFJZ89oH0=;
        b=iYFsKNZ0Sv6cCB2B1E+ZX5bok7X6feAfb2B2FhpM37PZmapcyiQrbzWWz5rW6LLpFm
         Mnop2IB3OLpTFjZjjijX558YfACTO7PTCqsRgjnqNYo37/zkWS3lUWbQlH9EzQKfPPxt
         ht+LftmB7du33S/2jSTTs/NwSF3SHIOogsIok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :content-disposition:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XFjepXS99HYl+OGXIgbwtL8MtxkjoEc6V/dFJZ89oH0=;
        b=7xCixAq/HIOSmgIIyl4wR9QEalVklRON4uqfWWt5+kRpU4i+1Yv/2Rilg59zMsNy39
         Vytp6N7ZA3s13CzL2wxGFvHrB3gGtCgvAVk6+eAkP7MKsEjyBveOzG/uDNsZTjthn/Mx
         Ex7OTSFJN7KGfUFwRgFvL4m5rbmD8LdfggzrYfJdqm70nvmecB+cLkXUIbXbXeNDhRGu
         tBUhaxwu2f4CS8uV3Xlf8Wd6LKQ1bCnoXj98vKs6ONqg/PlwOXNLMdxiijWXyw2y8t2J
         VYVs5rbzM73Ua8rZfhs0tahycNNuDG8PntvWBG2ANk6fP206hIOK28U3LIdY1raZomqk
         OHvw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531WXyIDZPo+H8kq2p/+2+6lKj1y6j3Rab198g8sQ3g8JDFrl/OQ
	wxFJTuRLPDgpxYpHawZWd6xN5g==
X-Google-Smtp-Source: ABdhPJww4DB6xXyJKnb5XPanABZWnw6VjWs4/QXAM5U+mGm9HAEgGn92uNSuwvWAd498ILPQIU7nZw==
X-Received: by 2002:a05:6808:1705:b0:2d4:d7a:9c25 with SMTP id bc5-20020a056808170500b002d40d7a9c25mr8270007oib.51.1646379323875;
        Thu, 03 Mar 2022 23:35:23 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:d68e:b0:b4:358a:6de7 with SMTP id
 z14-20020a056870d68e00b000b4358a6de7ls1479040oap.2.gmail; Thu, 03 Mar 2022
 23:35:23 -0800 (PST)
X-Received: by 2002:a05:6870:558d:b0:cf:9c39:de3c with SMTP id n13-20020a056870558d00b000cf9c39de3cmr7128135oao.68.1646379323371;
        Thu, 03 Mar 2022 23:35:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646379323; cv=pass;
        d=google.com; s=arc-20160816;
        b=K6HJsEPgrXgNweS2OGpV4xvakMHsFyV1y037HxLYfghQy32+txohssf/9VFYYW3asU
         MOvt6+zB5y7UP1m7VyeDfnPj3/LtrrQeaIjs+zMRgCcpJB8Blk1KMkfoO6XSoS4pSC1Z
         KiBp6XE0Sr8MqmEwm8NWZrRxY3Xqt7Wwq5VLZb/Zv+e1NaTWHsvZdeaeGGahVYpt4bpQ
         OIhBQSdCSuO4MU3TUUfwrCYxvZwsVdXEE/cZJ+1yiIAis95ukDNtNP1TpxO2jL1G94nK
         Q8uUOTAtfrqzist6oqC7SVxWn+5SGgBBpkBe9CCVx5MoDNe7b9k2KoXru5cbKWR8mOxV
         h3Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:content-disposition:message-id:subject:cc
         :to:from:date:dkim-signature:dkim-signature;
        bh=jNkRvSQquD7og9k7D/q2DwzlT13nEiGj/4zinlUziWE=;
        b=yHctAVHV9L3FPlzP28iQNybJjW1DHLg0vJ3p4/AbW0btQL2rU875X5OMdCkQix0mQS
         fmwo0K/Znc4fGasIQCiZJciXoR7Ej1gDpiLDwiaHXU/UxSSFp2Yl5WYjB+GhlugOXD+0
         ULvExzDroQRWZ6rdo4oXw5PMADNZaEtaPo0k05BFZkWqXNLQ7HKxqFeHIHxued1tEIWP
         ZU5mRjnT8Hcn5gjYC85/bNwIuSIbDzGL3Vuy4g5nAjOgC3HjXjv1lzU0Dq9/WMo880O+
         M0fp/NRVjIiXL9BseBgKlVcod3wxPnUHhf7n08IC12HdGmL0GCE9gCyJOywQHIlwbCWD
         f4/A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=iUqYe05a;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=pwBxrt4u;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id l21-20020a05687014d500b000d9c402f6casi1764794oab.36.2022.03.03.23.35.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 23:35:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 2246kJ0D028284;
	Fri, 4 Mar 2022 07:35:22 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ek4hw122x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 04 Mar 2022 07:35:21 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 2247H8TM091798;
	Fri, 4 Mar 2022 07:35:20 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2170.outbound.protection.outlook.com [104.47.59.170])
	by aserp3020.oracle.com with ESMTP id 3ek4j8jffr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 04 Mar 2022 07:35:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mrUBiThixmB735PK2INjXJvfPtkQpnswmy4kw4PhpSRgq19ElMHyNWwCg9ls3CNpVymTmW0QN+CRPjC5W9JTTBq3BcYtiq704Q0OpF8CiJn1+VTRq6JuS7lvejykUz0+IO2gVdaZT3BboWk2ywAIITRFfrkkSxhEKqV/qBdEUsbqXYWIsm5Ly98DhFCd4feyDdUr2cxAVSj8AmwlpazQiQPcVlSPmbBSJ3KOf3VWs8w3qu7d2XYU4uuB/AMIybfl3qwXml4fm0T2sfcxICqZ9u8ovNQcqYrTw7GeWy+TxGQZ5gAthZ2Mk/G7Y0KetvQCluna0oMIPKmVnuzcJ0FjFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jNkRvSQquD7og9k7D/q2DwzlT13nEiGj/4zinlUziWE=;
 b=ebmFhn0hY/0VOUIzDDCpugTQeqv0PQxLsa0LC/xvXi0nXV8yWYmITZymFN8wrkcS3SvxgJbKjfU83naNkpQJFSuHp1VSPik5JxYL6tUEAfI/DhF5PJjCKWR+Du9f9q2c1AY4+xh3tiSEahWKXME38hEtayyky/Do0Vs9SiIoY02b22f6fU+4P8G4pGo6+S4KIIPfN9y0VcHXZsXCHefkCvus6aXPToZw3coMBXWAQ/XhJiW6aQIahvJf+X+5puP5ZuctwSRUlmfvQUFhAvHkaB2dD3vS0/rk2x7XdwpLu4R7XN7IWE2Ucbb1p0pq/QPKmYLf1S+TekYI95es4YQUwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BN6PR10MB1729.namprd10.prod.outlook.com
 (2603:10b6:405:a::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Fri, 4 Mar
 2022 07:35:18 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5017.027; Fri, 4 Mar 2022
 07:35:18 +0000
Date: Fri, 4 Mar 2022 10:35:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Adam Cozzette <acozzette@cs.hmc.edu>, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, kernel-janitors@vger.kernel.org
Subject: [usb-storage] [PATCH] USB: storage: ums-realtek: fix error code in rts51x_read_mem()
Message-ID: <20220304073504.GA26464@kili>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0118.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::15) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cda77c8c-6ff4-4ef8-1f2f-08d9fdb1881a
X-MS-TrafficTypeDiagnostic: BN6PR10MB1729:EE_
X-Microsoft-Antispam-PRVS: <BN6PR10MB1729A49E0BE8CF3043FCDD958E059@BN6PR10MB1729.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wog+7CHff5Dt+YfnzCGp3urEr5Nvd/RO7EKWMfmpjcvbwQAHaLVrJfP09My4Tz7syoo2fV5BxYku/fTeNiZDqonCki9ZpBtVVtMjjbGKiNkwGKOR4pe7JWP6oe2FwpmTC4wsEli1LNmE4RXwLcmWSA7sTLh6IcGnnStf3Jd+aZtfArTpCtry9wUtBiK/9Gao/hv37yNDCh+8V9s2/jzW0UiopaLj44YkVyY1hxFAHbnz/ViBvSFWHyKmde6YdY8Z7fnWksEGhzzrswmW4s4kRK43kJ7/X4woLGzW+3+nnNV3oO7ElKGDjNEtwtyhtmEz0TMVitO/bLlhJwmjj7qukx4Sbhb65IcpKS+fv4MAcLZzhUFiBbJ1G6vGscYmcVVTxVtpvKj8qPALzpcMIOgUUQOKMipItDmplCm31THQ8VUA5QRk1PcVDyIU8Cd8Yu2mEhavgRhEXdEDrt/T3JVb8/VnVxP0ommNYYimlte9knLOGUp9E45lx/LFsH4nTPgBtc7GNpfsXDZSlT8P2qDRipULYk6SU0yCcyQtFPYWcJGkY2STX9ENTuET2cmMrDOd3USAZVrJDNLEfp4Ee3BzKup6MXVzWey+HwjrbRQN9+Eii1N3zybhLMDRCKQYVvrv5XR4a5yP0B527Tq82F9XfOi67xzsIrk+HnSdi2RWfM3D1l/WVN2u32Le4A+nRPSrO+gCLEtxpeljKkxQIJMpIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(7916004)(366004)(33716001)(2906002)(38350700002)(38100700002)(86362001)(54906003)(52116002)(6512007)(316002)(6486002)(4326008)(508600001)(9686003)(6916009)(6666004)(186003)(6506007)(1076003)(26005)(66476007)(66946007)(66556008)(8676002)(4744005)(5660300002)(44832011)(8936002)(33656002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9ObJKeMgGPbi49hBWtGUCgZVRp2OiaTk76HpercjeqKRLuN8jDlAzAgDk/5q?=
 =?us-ascii?Q?lKZVKWkN3YjhzaYKySa8gCt0/HC7/cL6U0PH7vketXXBRN7gA8DPQDxNzQn0?=
 =?us-ascii?Q?g2p8ji49udbnnGuSzR8kB6HOiRiP3pnEomSu7/q/EawVqq6j+h6JASHK+bRG?=
 =?us-ascii?Q?ldkyU4ZVWjLYiIno36fD1arWHs+r7WRyXQEthQBILHjilcecQd9/bLje5NJt?=
 =?us-ascii?Q?NTVT1WJC8HFQSGEmQsnnL6n0Fl8tQzk8B+CDpm878biEEjdNNZvQHeGafpAC?=
 =?us-ascii?Q?5lvAIH4ITl/SiKM/0OgvfCDKOZPaidYlgCyG3gYyfwZWCzSESrJh5L7gwVgj?=
 =?us-ascii?Q?SjXdlFnND2ZuCZvRyPX1w/NdYmKAIuZ7sf39qOSJ7tcyUIYWM2avp/9U7iuS?=
 =?us-ascii?Q?3dgpIeOh+kmQ1cYueagW/JV7Q6MUEj9UpxkQBLkXF8FQpMU9nVcbL9mlJbZ8?=
 =?us-ascii?Q?i9xC0ZYYzBknRElQU+orumS67kJYPPdpf/LtFmRq0d+zdoppsBnTtZGMebMt?=
 =?us-ascii?Q?df2tPm7UM3anplH0UWf8JG2W3UmK7QMVhakIgVyqVW9OYUExs3NMwhxwPiHO?=
 =?us-ascii?Q?kK7BvLT2r7qC/WTEYT9zNHpMcPgWfjVcmLbtHZ00OTbfj2Z2wZ+ZeoRa9utU?=
 =?us-ascii?Q?bPb8VwbzaKSAJnV5iPJ689ooDvWTEH0AyR2OoVLoKfKrlAqoaAkfRIcSmXgZ?=
 =?us-ascii?Q?Swna89ZsXtY87eKdyDQg0wGqA1ntYiiXWItCa0sjsO4I8L4fGZOD2YHtyC/n?=
 =?us-ascii?Q?fEr3pzXA+2B4vDUJ8rqCfqdtFwpZP29RWVRt8fb6LuR7GUp7lMorIfsPO6U0?=
 =?us-ascii?Q?sS06bH++tNGDTmNXvgF+JedHv6VKi+i4bAwbGa1CCctqWKMmf2PGcs0ad1xQ?=
 =?us-ascii?Q?4lmmrweQvOtK3u57KTn//E/pGlKocekUuE7D3ts3VZZISZUGbWYjpK4//IXo?=
 =?us-ascii?Q?vx9QXrBksNR2ZDJrUEMwZSl0rlIGHyQIj+C7HtISQJ0O2sKrGQGfNlNhlmHb?=
 =?us-ascii?Q?JKsraDU+eiOS/Zg2WambY08OSUDehZX0QRtrhBdFIbXvEQKQrISdFHlcGaMe?=
 =?us-ascii?Q?eVOyozFP84CcPr4aplmb+mGadS88K4DpsZlLll2n0/QaEMlNg/bovtB9PsOx?=
 =?us-ascii?Q?eA9opKaW58vsgbvdc83riS7AYdpi6C4G6G0w+h7i32Fni5uVgoX/FR9iiPSt?=
 =?us-ascii?Q?06ACeH1O8ivdE2gENXtNikKBUHXW07v4PCl0hFsW3l6pDP0+BIIIG60MScmG?=
 =?us-ascii?Q?pMa9DOJF2rldZ//u94lSEulAWaLhmX8TnmlnFePJ40iaFg76SwtJj/4RvYtH?=
 =?us-ascii?Q?t4fd4nQdDaOLGEVnEh7I21OVCerssk5PgKItXjeGtIsQCzGM1BGWTu/I32k4?=
 =?us-ascii?Q?zBDWNb5ZP1sM5JJYgyz9psHK71Jbpzse/gdZjLDDNkEFvM0CbFBUI9oDtIqW?=
 =?us-ascii?Q?hWrdjZS7QKsqbNwePXynwYLBfDq6OJDnRvzv0neju5BADN3/scsgsMbdH6Zy?=
 =?us-ascii?Q?gLj74lDCVMfGHoL5zeaIv+eOXTJ03sutmD5R/vycKmtsuvM9KbC6kaRWXqb3?=
 =?us-ascii?Q?RooMy3fQ6YObHINSaMsbYkHDhvXfNWnQNMOVAV4UEbKJVK2xgN+YPl0wBLMk?=
 =?us-ascii?Q?L/vVv5pK5SPfA6ogGxev5y/2PAFMDgfkCAUDnbH88kzxZAgAn8dFAB0+qY/J?=
 =?us-ascii?Q?vO9bvw=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cda77c8c-6ff4-4ef8-1f2f-08d9fdb1881a
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2022 07:35:18.6275
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gj4vR/Xa1WV3AbK7dwGNSNfTJkolGm7Qjo4Lf0JWoYUtulNFKr9Xda8LAEQbGKEyFI6HF35dPa2bvuhqmCS0fwh6ehIiCQYi8+SURRyxFs4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR10MB1729
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10275 signatures=686983
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203040037
X-Proofpoint-ORIG-GUID: 2XeUPI1qq8oXfSZD-eqnuzZqFtcuj02m
X-Proofpoint-GUID: 2XeUPI1qq8oXfSZD-eqnuzZqFtcuj02m
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=iUqYe05a;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=pwBxrt4u;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

The rts51x_read_mem() function should return negative error codes.
Currently if the kmalloc() fails it returns USB_STOR_TRANSPORT_ERROR (3)
which is treated as success by the callers.

Fixes: 065e60964e29 ("ums_realtek: do not use stack memory for DMA")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/usb/storage/realtek_cr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 3789698d9d3c..0c423916d7bf 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -365,7 +365,7 @@ static int rts51x_read_mem(struct us_data *us, u16 addr, u8 *data, u16 len)
 
 	buf = kmalloc(len, GFP_NOIO);
 	if (buf == NULL)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -ENOMEM;
 
 	usb_stor_dbg(us, "addr = 0x%x, len = %d\n", addr, len);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220304073504.GA26464%40kili.
