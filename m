Return-Path: <usb-storage+bncBCTPRFE7TUKRBLGPZGRAMGQEUM5W7DQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 050766F5965
	for <lists+usb-storage@lfdr.de>; Wed,  3 May 2023 15:54:53 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-50bf9e97bdbsf547969a12.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 May 2023 06:54:53 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683122092; cv=pass;
        d=google.com; s=arc-20160816;
        b=gYVe/Op8KAK2oLqOFu1nvjaAKJBNUv+/JqTpuneEdnMcBuDZcj62Lrtc0V27xg16qT
         uLGkua1njcjmiF4QefKbfCe+Ir6lKH6VdgWEx3oy40CqetyoyuxBcVjV+VJHFvVQoyeJ
         eUQ0n9EgGEsfRdKRSDJYzs5yf1lcd/ly69ef9+p9vF015aITG13vFpkdAOWdW8nVEYPn
         odq2mpowTtBAu21PQFKAncUfhL1HD0SvFPgu+LjIzbr4u8ccxR054juj7rvbyTbSeRkf
         MM+IPCvR36ag5Jy+ZEnfJPMxqB9ke4oQJyEOW1B5vM90GBszu09uin5WcuILBJcRXU1T
         nb0w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=WipUixTj+ZRI1bgIrotYYYj3Prv7ieqGXlx1Hd4SKIs=;
        b=iKO3P8NFxcc1U7iVE2fgPRl0h0r4rfmHybpvzsJmFy228pzwfTAdvK0kpOIxtsCurG
         Jq//20J9pb2Vf3WLIJNWj5dOVZhY24IrPycMhUK9nYqbiFYHA/mEEWSkLo3Ct1ZyEc2z
         8LYIC4eRN33nbs+ypqDd48QkM2F4A4k68TEAnwm3ya0KUe/DLEy9Dn85RivttqqUsZb7
         nQ34JtOxFDPsYAzlofpoS6OkRct+gjGw3VIVOVtWdmuiNRZ77nrLTNpou5OU7CXeEWiZ
         Y5oxunCSRNMIkNVFr2EqgfUuoy0ap46w7qIlLFVdey/KHVLZ7oz0GeKlBeVVzm5PcZFC
         zXAg==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=obUsKVxG;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of oneukum@suse.com designates 2a01:111:f400:fe0e::628 as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1683122092; x=1685714092;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WipUixTj+ZRI1bgIrotYYYj3Prv7ieqGXlx1Hd4SKIs=;
        b=j+pM7FCKNeoYNqkjTAldte2ekbtkUpHyzvLzaWhYMCUqOD8Z9UlHFhDKWtiol50/gG
         gPuaI2tSMvsjBEvQpwuxdrDCC06PenEJXGE98U7L8BD9Pfioq2oPY+8TwyMJ7UnQHs5w
         VxUAFDlLuEmbBAKXVgIA6DaTjdkwXN7+sD3Ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683122092; x=1685714092;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WipUixTj+ZRI1bgIrotYYYj3Prv7ieqGXlx1Hd4SKIs=;
        b=FRlmhLKXQ2v04bCZEAEu8DbSNT3CNfJ0KmxfhztupHkEVDddSyBUZlJdOh8adoOQaL
         pW/+0n1M5dUbCKSOZwYM2zvKR4zjPxDj6IwHpRogzT749fGFvvEhDjA47BEyeFKiIE3r
         OmDGncwYEWy824E0ipMQuHgB2CM2TO9P6YUwLZxG1EHyczGKUJBWykSU2rHskgy9TtWh
         efzseDlGV7yeU86k2rJoNH6vACxwqy5N8P5hzSv5wh6U5PVjmek0XUE3ZCtotRUNdntd
         Ia3wJ2O2lLLPFaWEj2/5qt/B2wCBYY3zya3HgwxD8ACZ0EZWjW4isQ9MGE7A0CtFTj8K
         UnAQ==
X-Gm-Message-State: AC+VfDwltVNHvkVb3ASdQijHTOxOyf6QB0uEZBY78f3pv3oZhxbq3sT5
	xmF9HpnZgU06hx7YnTwkFY2SAA==
X-Google-Smtp-Source: ACHHUZ74DHY6pZTQ7pU7lVMvJAdO5VHhbYWb/FSeGf10fP9euc+VoBH7fqZQONWKBgyOUVhhsk5SEA==
X-Received: by 2002:a17:906:5a4a:b0:92f:fc27:8ea0 with SMTP id my10-20020a1709065a4a00b0092ffc278ea0mr1169603ejc.9.1683122092440;
        Wed, 03 May 2023 06:54:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:7e11:b0:961:9f75:5e9f with SMTP id
 e17-20020a1709067e1100b009619f755e9fls5687089ejr.7.-pod-prod-gmail; Wed, 03
 May 2023 06:54:51 -0700 (PDT)
X-Received: by 2002:a17:907:1b17:b0:94e:fd09:a02d with SMTP id mp23-20020a1709071b1700b0094efd09a02dmr3444589ejc.47.1683122090961;
        Wed, 03 May 2023 06:54:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683122090; cv=pass;
        d=google.com; s=arc-20160816;
        b=WJ0YxPS4MQwPa8oZUwCpxwoAJx3ctuHK2228Pfom3ZL9oWBdyIjnVKy/W9TieN161U
         KC3KAM5QDjCAeaLe5a8bYds0yaVFGJmZ9m9uumNNziaReORxTCg3Z9gA3aDr9bGZNUf/
         FvPs6I5RlP69pykd0cydmfds8YSLcC9mSARuXfNEv/rcahonFIP/ZyDX3K4LSNkh3ppr
         JFw3O6gE0emoTt1c5YtKPYdLiaRxnx1g4ZAyn329U9rZxcKICR897HZZLpEJi2qKWkNj
         youlSGgQduGtoYk4hcucwPFHl2/TqHuYAzKbBJnBXa1bP9p3Z1lUqPScZpRixpolrV4/
         CmOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=8jVrjbmnv4ge7Kmb641affgXNTsddZdEUlnhf0OeSIQ=;
        b=RjlZ89pnufgNXhDONECiE1dR2bKz1TFBGbK3DsKOCDpbZQS6huW0sOAzgDXJ5d8MPI
         Ev/vF1GQpn4vq00T6rT4DpZCmTBd+vc8OIxIlUiu+BVlR1Nd5MZ4S+lVFRO+DbERE05F
         31jWoLyA1nxczI14fU89zZykkKDyY8nn7kVNAetzaYdMrtZjhltNs+yjjJqEw6lcdyxr
         VtMy43I7VPIw6YuDq7N0OgKc+A3QjHF675npAP4ntb/a3JV4EMiOdGl9jQywfr2hn1VT
         3lvVZAl+M0owfGm+369yRu3Eqy+vQQmLSR7IexmmPhvc8NZ34rDfpwCsYLeb9P61XTql
         7Bgg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=obUsKVxG;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of oneukum@suse.com designates 2a01:111:f400:fe0e::628 as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on0628.outbound.protection.outlook.com. [2a01:111:f400:fe0e::628])
        by mx.google.com with ESMTPS id m25-20020a1709060d9900b0094f5aee7104si22816405eji.673.2023.05.03.06.54.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 May 2023 06:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 2a01:111:f400:fe0e::628 as permitted sender) client-ip=2a01:111:f400:fe0e::628;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CB4uCZ1Vbip7n3VTGxaUZtSpL8tLsHxc+/3PtI5cLopP7RmtciG3TjhNlF7ahMfYGi15ZPGKEeCMe567rvwk2XGqIQ3qpQIPGbJt5gArYlRG7Bf4tTmX8eGmePa9s3B6DtBgFF4lHkjbjOGdaeo4NjkVTrJ8Cvn2KxJSnNctthckJlvgRPP6uGxVNxnupxcXJq7hgN1VPj9tMflYxN57JFPCJEcsybmOcZy4C26g7q38SFWLFY/TSsxGNBhXxocR8QEszhlzFMdRT9W+nZEs+vOBHH+NHIAhEx5NHJJ1YFkJjUgr2cz0Eyfp5zvf7e+115hmRrGoQUJKQGf+4kvjbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8jVrjbmnv4ge7Kmb641affgXNTsddZdEUlnhf0OeSIQ=;
 b=SzIvnNGZL6pY3R+bmUMsbfwdxzScTt+0d8ByA3GGfFu7dLSUkcdQe6UM+TvurDuWbWm8DWLf9xuBliACAVWt1CbGVVw9XR5eQ7mwf2rqdBLdaiyiuLRYitQ/+oIPJIHV78p8CEqOmxFIYVRurvBElycG0iiLqlRFAA9p9SNHvjGYg3NiSkZtLKWfknuc7dV2MtqrjkRf4RW/Q29BObYwGgvrRwViewmo/EXgHByuP+5EkM0hWpdwzx7Z2eZFsIg0dWUp7UCWCJTQNtigrfzTTqk+Mtj0Vqr2DEA+q26m7hdYV433l1CRBZ2JZ3C8fogwzYx1G3Ca/mdUNeCZ6bsX9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from VI1PR04MB7104.eurprd04.prod.outlook.com (2603:10a6:800:126::9)
 by DBAPR04MB7255.eurprd04.prod.outlook.com (2603:10a6:10:1a9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.21; Wed, 3 May
 2023 13:54:48 +0000
Received: from VI1PR04MB7104.eurprd04.prod.outlook.com
 ([fe80::6c14:307b:6fd3:3bfc]) by VI1PR04MB7104.eurprd04.prod.outlook.com
 ([fe80::6c14:307b:6fd3:3bfc%7]) with mapi id 15.20.6363.022; Wed, 3 May 2023
 13:54:48 +0000
Message-ID: <d25bfa50-b5a0-bd0e-fd14-94967e374033@suse.com>
Date: Wed, 3 May 2023 15:54:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Content-Language: en-US
To: Benjamin Block <bblock@linux.ibm.com>, Oliver Neukum <oneukum@suse.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Hannes Reinecke <hare@suse.de>,
 Maxime Bizon <mbizon@freebox.fr>, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
 <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
 <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR2P281CA0146.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::7) To VI1PR04MB7104.eurprd04.prod.outlook.com
 (2603:10a6:800:126::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB7104:EE_|DBAPR04MB7255:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ff61ccc-d268-456c-27c1-08db4bddf562
X-LD-Processed: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba,ExtFwd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XHcN0z1wPJBkSgngWMnJ9x74UOd3GFsIOUQmF0y2s/YWVaco4cYfnM7p/vL2lr3XDsIMTjt7S9Ecc5mndN3xZgiWj0+VAoCAtCi2Ayph50xnIo91BzJyknZzgCnj6hYLtXaDMc3+GYOVPXkxaYe8I/QcHcQ5ySsEWaYKO9/29IJ5Kq8B3IvKgk+jShFD/Te8C7nI+aGc3LydZu1wb7bBx4ZHVFdYGyPX+dZhsXf2H4gkFppuAh3FBzpqzHOtL1M4j7UrAOmtKJC6mOisSwJuTsgJtF4/Ua1PKvsA136HVT2c0FAqAFbr2FxkIDRXtCpIFcabVwJoaaN/25T4agXPPbQTKkUZQM0otskgE6p7x/ihxepukYmzseYWtCey4oSokqNGErY63u7eihs4vb+DXjvNUyVl1D/d1nXcFkzkoxcj8lOoNaILcP5D7QZbSWmC1vfTMQ2AC0WK4mzvgW1y8OOPE6naS83qZpvQZWoy4sTmcudMDLSU1DyZg+HoOBGk8XChrmxwEE7W2fFdpWDncj78QB4HNZTWqXZDKVm8EpGztYVBFLH7P8RQJGqgDKWcLc6yoU/IgfRIcY60iEid6X7phAXOmwcKF3RK8c6NurlSitZ3S8JzetZqfKz9lQ4rFBs6cqTiKfRXQ8cTFTUIPw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB7104.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(39860400002)(366004)(376002)(136003)(346002)(451199021)(31686004)(36756003)(5660300002)(2906002)(38100700002)(86362001)(31696002)(316002)(66556008)(66946007)(66476007)(4326008)(41300700001)(8676002)(8936002)(83380400001)(54906003)(6506007)(53546011)(6512007)(186003)(6486002)(478600001)(110136005)(2616005)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFJ6QnRzQ3JSSlhzNElwZXBCak9JdUpRN2RuT3ByS2szZFY0by94N0hEYU93?=
 =?utf-8?B?QkZGbEdxOHFyUDdwV0t1VFFhK090QmRvS05sbk1DeEFCWUZFMnhFUERrcGZC?=
 =?utf-8?B?TzhIeERNUmwyTHhxQktPaHFjekhRalQ0Wmc5Rkd3U1JSc1Z2eU1pNlBITmNs?=
 =?utf-8?B?WjBRUVUraUY1NWNJTklJR2JmYUVoZEVLRWhrUys5TUtLMm1jbTdpdHZmTFZO?=
 =?utf-8?B?NTE1UXhGRnpWcUdNSVk4NzlWdXJuYnl4eDFEYmVCM0p2QlB5N2ZqZ2thLzRC?=
 =?utf-8?B?R2s5K0VQRG5FS053YkVudU9rNnV2V2NCNlAvRjNHNEc2NSthNkJYZjFVcjJi?=
 =?utf-8?B?TkI1ZS9tT1pSME9hVzhQTS9OSEZ4YWF6L0t5bysxRWkzRFBwUVNwYTFnMnFo?=
 =?utf-8?B?K1FjalUrbVRMbURwUVBFT3IzMUdPYmVqbmN2OWxHVHhsVnNEVGZBNGRleURD?=
 =?utf-8?B?SlpqeXZpSjEzSzlpQUZrR1VrdHRQZi9heWsyNkl3eWViTWNheDIyaFR4U0I2?=
 =?utf-8?B?MjNCc3NPU2FUTTFiTzdxTS9BcDB2S0dGbHVERlUyZEVsS0dZYjNXMWZzeFFM?=
 =?utf-8?B?MGEvSjF0c2g1VEFTQXYxZ2RHUEJpcFlFeXcya3lidHlWR1BxbzZzNFFWWldB?=
 =?utf-8?B?YTlQOXg0R1NHVmhHTjZqMUJVR0d5Q0pjT1RXMHFKNWdVNWMwMS8rbGhXSE81?=
 =?utf-8?B?S0sybVBVdU9XanJBaWNJcjZMV1Z5bUJSOVBuM2JpRGZZaDNONGtqKzY5cFZw?=
 =?utf-8?B?VmRMSmJnSVFyQ2lBeHVsU0V3K2tZcXZTa04yRUVnUUJoY3ZOZVo2RVdlM3kw?=
 =?utf-8?B?N2x4c3hpUnRIdTF1d2ZNU24zc1VhUVFCTUg3VHU2WGZKVnlmSUZkVUFQZFBX?=
 =?utf-8?B?REw3aEVkMEFyc2FVNzdlREpPRGdsRnVSSWtLaWNuY0hkMW4vM3JLWXVFWGU4?=
 =?utf-8?B?U2xXcjlnL0tRb2htL25UbkZrSUpBMzZoVUdWcWdBN3ZQTHhJdGtPbGhWeDlr?=
 =?utf-8?B?U2dmSHJ1VlFsejhaRUxJNTZVMXVORTl5OFUzdlovT2MvdjYyZXFKNUY1czVX?=
 =?utf-8?B?SVZNVHQ2bm1nRUsxMjdTMUpadmliajNLZXBOd2JDUkZ6bEx6WlBaWjQxZHBu?=
 =?utf-8?B?OE1zVE9NRmJ0bE85RWZDZXJaWW1naVRNSit3ZG1vL3dpaUJCR3pCZEIvOHkr?=
 =?utf-8?B?MllyWFNEcWZKRnpjc1UrNHZYZHhBWFZlSnY1YWk3YlBQYnV4d2cwYzB3am0r?=
 =?utf-8?B?a0hGa01md2NSSVZPbUkzTGRWVmFtRWtTSlBZaEVGcms3K2l2WjhjTXNiQWxq?=
 =?utf-8?B?cFBWd2JlY0s1cVVhVWtxSHlMQTUvNnI3ekM1anFxT0lkblNjMjhsZkJLOVJv?=
 =?utf-8?B?Zy9JYkJxV3BETjVBaEFhM2Y5SE9FTjNCQjRaN01GK0VkTzcvL2RXcS83YzJ4?=
 =?utf-8?B?WHpGaGNMSXBOZHJXd090SnJQTFVKaUt5NmorMTNodlN5aVk4ditzSzBIQjRQ?=
 =?utf-8?B?djl6WUFUU212aUdUOVF6MTE5ekV5ay9XV0V4czNMRnFJZXhNdWduOTRTQUJR?=
 =?utf-8?B?UDkzTzRVejZubUdqejdOQTVlbnIvZWw4QWUvbVZ0a1F4ZGFYVEtaZytsMW9Y?=
 =?utf-8?B?NjFjMEJVYWlndXFsMGswdGZPSmpid29zdUI5WVdwTTJWcU5zTHpZSkc1RWZZ?=
 =?utf-8?B?QmU0eHB6ZE1DZXEzTFVLUnZZOEd5YVNldkw0UzI1VTdXa0dvcTNpR1U5UThD?=
 =?utf-8?B?MUowTStMOFg3QjRFUWlvRzVNVUIybGVWVUljbk04L3RGQlJmbzU2WkZxa0pU?=
 =?utf-8?B?NWFDTDhvcmJOZXk0T2dVeXJQYjFLR3hEWVJWVGJkckVZd1EvQVE3VHdpSjI2?=
 =?utf-8?B?MjR0Q1pkeThGNU1iNy9pK1N6eFJleGZkc1FBUVhoYmxJbmQ2bTNyNVJ5RHdD?=
 =?utf-8?B?WFJPakpveFg1bGtURCtJdWlyT1ZIODZSU3VEQjRSWWRSUi84U20wUTRYTXpR?=
 =?utf-8?B?VmQvSjBLWEFUYm41eWJ1REdPZE5iVzNBVTQvZU03TXE4Wk5DUVgyeGZtYVJ1?=
 =?utf-8?B?bk9TTFRNN2oybWJXTlYrR2tGNUp3UFYzMzAyVzIzTlFaQndJNFB6ZWpuQ1VR?=
 =?utf-8?B?ZkpXaHJ3dng2OFM4bWdBenBYS2dYSWpYOXRwWXVmTk5OVlN3bkxVblkzbkla?=
 =?utf-8?Q?3YD7A7BW1dokaCDKC5OOVJE5fEEpn8T4nc9jfF4O7N+b?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ff61ccc-d268-456c-27c1-08db4bddf562
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB7104.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2023 13:54:48.1595
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKwR9tEocitx+rY8iqjM0VZHSgYCqMyfZ/WLqGh12qglj7VJ/R02YSCrQ30NTaDNJFRCm1kE/MLf30L4kdFhAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7255
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=obUsKVxG;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of oneukum@suse.com
 designates 2a01:111:f400:fe0e::628 as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

On 03.05.23 14:51, Benjamin Block wrote:

>> usb-storage can do a reset only on the USB device level,
>> which translates to a bus reset on the SCSI level.
>>
>> And we are supposed to cancel any communication with the device
>> before that.
> 
> Is that a limitation of the devices or drivers? Because then you don't
> match SCSI semantics for LU reset - which aborts all running commands

We do not support a LUN reset. That's a limitation of the protocol.
If something goes wrong you need to reset the whole USB device, which
corresponds to a host adaptor on the SCSI level.

> on that scope among things. Which might explain the reason/choice behind
> this unexpected behavior for you.

For the device a reset presumably does wipe out the command currently
under execution. The problem is within the driver. It thinks that
a command is still active. And we are limited to one command at a time
(on the whole bus - again protocol limitation)

> On random thought I had: in theory you could implement your own EH
> strategy handler if the default one doesn't work for you. ATA and SAS do so.
> [drivers/scsi/scsi_error.c:2285 `shost->transportt->eh_strategy_handler()`]
> This can re-use parts/all of the existing escalation sequence in
> `scsi_eh_ready_devs()`.
> 
> But that's no short-term fix.

That looks like using a sledge hammer.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d25bfa50-b5a0-bd0e-fd14-94967e374033%40suse.com.
