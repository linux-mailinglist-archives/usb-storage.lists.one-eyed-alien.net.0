Return-Path: <usb-storage+bncBCTPRFE7TUKRBQNV4OUQMGQEECOKM7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA927D6637
	for <lists+usb-storage@lfdr.de>; Wed, 25 Oct 2023 11:07:14 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id 5b1f17b1804b1-408695c377dsf23766955e9.2
        for <lists+usb-storage@lfdr.de>; Wed, 25 Oct 2023 02:07:14 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1698224834; cv=pass;
        d=google.com; s=arc-20160816;
        b=BsfgRUgSdGTI0EGnFnjdJjtHuxQ2PBfjPLxzCNd2d83j826gb2RSotmVfHr+EvgL6n
         5lcDXbjHHU4zZ4Z2mMOL7Hi2gTJ4gHcgECJ/n5I0lJrUBJ6x+hgpJzpBbP+vOj+jBiQ9
         UPFw+K4Y7n/v8/sBUVadkMe2JBwUdUKfN4js0VeFSzEbHm8dItifiaabBJ6LycNC9KsX
         IzeV57OyC/eynpd9rfrGQWrhPUiZpiKpzxGwF2lzCMDHHiciYliOgjkyHDZks20sagoM
         iES6ZqrGglhEHhIszygz1Yump2521fFfwf84W274jC6Sj8vAhqEEro9PE3Td0Uf45Iew
         xOYg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=5gbe5D03BMAWgDpTfQ7Wk2Bd4ujRvqhnFfRFc39YW/I=;
        fh=mkrO7anAwgT4yaBKqjwONl4zbjaZCsCuvMJzn3AKQns=;
        b=ifxHsAtg0uLV2FlR78riFS3vKUbSl8PTSnb9dgsV77rqQsEPU0Nv/3Ev3LRhtT110y
         ThapxEtaW0CRg+j6GtRb6qXB99cdm8AgLmyyb1MSWEWgYdtmJjvWTY2JbYXTnM6AgCrH
         NoEJPky259wQIigMrQxVrEDlvupunCsBs6BB6MyfssxWusB880Fq6nEcFwzZQd3Ha/rd
         S240DekpvGmprM4ksdMBtCOX6RttUQbBWR3Y66pd5iWbfbUvLVIg7n7oDXz/7TC5Ppf1
         z4YvF8FOaKMNKN4FmnBwZTOudAKCm5Bw2dmT4+O+ZnvbmW6zv9zMj0JUUFfPBzWt0WYD
         9FcA==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=CIt5tbzQ;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of oneukum@suse.com designates 2a01:111:f400:fe1a::61a as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698224834; x=1698829634; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5gbe5D03BMAWgDpTfQ7Wk2Bd4ujRvqhnFfRFc39YW/I=;
        b=Bxkf+Wi+Md5CVRnfY7R2T8Z8AFZ+fDOSB7bExVrSxorWvFCS1KOluVRr0xg6rlZaLI
         3kvg+5TqT8wfKF/h8u7SW8CBfuwL+Y7+8HbmLUzeyG+Jm0Yr2r98nfMddLJwpbp1FI3R
         YWNCW7scqzcHFT5TcRztlySCB6KlaR0CXSsf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224834; x=1698829634;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5gbe5D03BMAWgDpTfQ7Wk2Bd4ujRvqhnFfRFc39YW/I=;
        b=AiqahNbcWKzOjErm4VoMBwJ5RaYKvulJffVmyWNeFRsRvjBsqPOoXKMMh7M8tr/Y7a
         wzDoI9HeHF3rqVihMpmlZXc/7efUYys6LwuvVTK+pVX3JqNl9xD7XFOb951zTfqpGXZH
         /VTvsbswiznpeGRsHB1boKwSPNWdf/JGKYwVoKWU27Q6xz0XqnTDnM3GX24c2ddpibkL
         /OaBLhG70MaCuCeSSx1oNc1M5zGuVeQ9R8lATmVuDRepSV1JvFxgmrwMu3GXF5SrssUt
         gjn4xZCOvAY2mVR5yNyXE15uE/rIcsqS1ZN4IdOjbxWFUtL/Iqo7RoVUt7A3aDXym/gR
         ez9Q==
X-Gm-Message-State: AOJu0YxFE/saf1AlxwuKqMKr8dD4SxEkUAHs4mcec4d0albn7SxH0EFI
	XWI4kv7ZtH5/kSLyLQU8Kgi7dg==
X-Google-Smtp-Source: AGHT+IH5ZLRwf6YmtTpy9WWMXcBBhsuPbc31B9lTaTTipDSwTyiXhBrVihexZ1nfw/CysKBAtgXZ1A==
X-Received: by 2002:a05:600c:45d2:b0:406:5396:9f9e with SMTP id s18-20020a05600c45d200b0040653969f9emr11030796wmo.32.1698224833743;
        Wed, 25 Oct 2023 02:07:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:3b88:b0:408:3cd3:7cdb with SMTP id
 n8-20020a05600c3b8800b004083cd37cdbls738230wms.2.-pod-prod-06-eu; Wed, 25 Oct
 2023 02:07:11 -0700 (PDT)
X-Received: by 2002:a05:600c:19d1:b0:405:82c0:d9d9 with SMTP id u17-20020a05600c19d100b0040582c0d9d9mr11171267wmq.41.1698224831582;
        Wed, 25 Oct 2023 02:07:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698224831; cv=pass;
        d=google.com; s=arc-20160816;
        b=sdW9JlYjHlQJCKgDGnPUAODsQRbDLL8EHr2EIT9VyG/bu2ifLrhAsrI6uDrN2xK6Xo
         ualGDFxHY7OsQgQIRVDE7y0+OuLjWINDZoJfxPhKEhG07dNeT6HcZu1aM9hMrAx24Icb
         4Yn/mD6ePObMbd7FYW7y6sS3POXZPiZpXzVdd0wqTROyP0b8O60cM+Zw2Pve+vcuH5sA
         4t8A0cKZYRFzJ9lpTws+9cYM4aZ2p7Qzss69nEHlIhbyjo+dlga0nqfrRKLYpHZyiG+r
         qoL2JD2pn4Vw61WmWRExYUTth/wZ74rZCB3z9D3tZ6hfBajYfi9O45B78k/MnDRU2lE4
         +9SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=WyXiFWVTnfVhLjDaNHo0JEBjfmy4UrkX/JGVvZsl3To=;
        fh=mkrO7anAwgT4yaBKqjwONl4zbjaZCsCuvMJzn3AKQns=;
        b=ZUNsWxpAXTEjUJaaWTkLEAjdp0mzYBhw6U2IBCo3oisRx+2/7mujenWW5ALaX04n9s
         hpGwT7w32OVBHzgDSEBXS99/JFK+RNbawo7RMkkphjC9/smXeGjlZQKpYXWbOGcWFxcn
         xvOb/cLHgo7G20m922Chk8l7MzkA6RUnx59iOUcrKGgl1U8J8AtDtarwDkb+SvW/hC/w
         kNrYxo+IUriM7y77EoKSOhoCb7hWtKF/vl5OFEQiIHXbVUg+DcJmSH14S3OTXlO6alQT
         EverQ6AFgjvteCatRAB6XZtL5vRYYa6abGTn3jPfBOzmdsjFBY6PucYvL3B6sqywBLNN
         FufA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=CIt5tbzQ;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of oneukum@suse.com designates 2a01:111:f400:fe1a::61a as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2061a.outbound.protection.outlook.com. [2a01:111:f400:fe1a::61a])
        by mx.google.com with ESMTPS id s6-20020adfdb06000000b0032d8a4b665fsi6981757wri.1046.2023.10.25.02.07.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 2a01:111:f400:fe1a::61a as permitted sender) client-ip=2a01:111:f400:fe1a::61a;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GGY/ZgwDPFfKNNZCpOOkBFM5nh2tWi7XcPNwyO+2cuSf5DEIW4nPdBH42g3pyWqa7213RmV2cWYq83ummehLm7YKs1gIkpI2shgdjjcymv4nCs/Kqih3SXV4sFhYBLf5KHNUrdfUTBCZwGICg4CMDLTkt/knXC96nJopBrOBuNSOF1b0n+Hopc1hc0gwVzp17caOI9JLlAgUYGrdnU4hBl7G5fr8ngg0loUiDXiVEn1XS3tEFlP1IWXGTZqd8Z0frbHuEz2//u3/5/NYPYVTQTspd+HIJn0gKb4xbpXOtIXRHHnYl0z89kK0/mMU0edI3Cpchpg4Ts0VdBAso/Zz5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WyXiFWVTnfVhLjDaNHo0JEBjfmy4UrkX/JGVvZsl3To=;
 b=Hgb6Ne6kwffotHU7ao8lvRiQkIcQtTlrzvhTwB4OW+TAX8IEYG4JQBYXEY9zIW3Y3tzkE81ixlIRwT1peU1dvQsGJhqiPslXknROIGOzaEIILSANH0Keb53BHyI0qr76iVCPVuEGLXYdsd/+uINbam7TJKeZpvw0ACQ8s8J/GnRn4HAiJxiS4vvZOT1vQjADiRtJuq76ZqeumH4EuFAIASqaE91J060wcQaTyP3pyO9WPYWQ02KVdC4IXCiLLPAPYtdDiIEB29mJDnGZIs2G8e3ay1Ym+sklhlxAiqMWr8L7vt3ft7GXrY7Dx5djUJrso2Qgwvo2ZyxeaS1A1hUvAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM0PR04MB6467.eurprd04.prod.outlook.com (2603:10a6:208:16c::20)
 by AS4PR04MB9483.eurprd04.prod.outlook.com (2603:10a6:20b:4ec::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.16; Wed, 25 Oct
 2023 09:07:10 +0000
Received: from AM0PR04MB6467.eurprd04.prod.outlook.com
 ([fe80::3657:7461:c274:d71]) by AM0PR04MB6467.eurprd04.prod.outlook.com
 ([fe80::3657:7461:c274:d71%4]) with mapi id 15.20.6933.011; Wed, 25 Oct 2023
 09:07:10 +0000
Message-ID: <bdac114d-2366-407a-bfe1-fca2bb035429@suse.com>
Date: Wed, 25 Oct 2023 11:07:07 +0200
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
To: Alan Stern <stern@rowland.harvard.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: "Li, Meng" <Meng.Li@windriver.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "usb-storage@lists.one-eyed-alien.net"
 <usb-storage@lists.one-eyed-alien.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
 <2023102428-zit-quickness-9b73@gregkh>
 <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
 <2023102459-protector-frequency-1033@gregkh>
 <a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2@rowland.harvard.edu>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR2P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::8) To AM0PR04MB6467.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6467:EE_|AS4PR04MB9483:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c10aa94-8e29-41f5-102b-08dbd539c4ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n9RS0YUYhgbWHHmkaJ5C1M5SE+kraaQqG5/kpsDEAByllvKHNEVaynDHnglGw4kvj7ksLJZSrFf5XUe1yH2V7p3hPu75SMFHe3CgFetoPfKrULLlYrKh/Osrgc0HsDB56xyUzKGlXGTPce/QnI6Ae2rzEXxfF/xzUwgxxvgDqtmBaXnDoWmyhpdDkNAd7F0XGcSTVqL5IN5KO8OhaaYXLB7ircOYPxGM07x+ZmST/PEVfWN3wm0voM+PTOfxtaBSo+Y8D5PScpT8S/6Wcur8ZfMqn6wdwcbTWHEB+3iYk+Hjs1z1OyH3po6Q/30CwE6IBTXD8HNCPcXWChPOWg4k2awr6z7KTjqD6swaKKUiXFvUo4HlwFaVEdgDK+sysfIQ7ae19KcYOilXsu0SAwZ1N/TJpmKZ6yt18jYBxmZDcKWds97FDz5IK4dm9zCmyvjPWRCHzlmiu9XTJK7eyCCM8gGXSoswmLVKfJdRvAjll9bZgjMQRq/KC+WgYp/K+LyzfMAJJTiHW5Kv7Kx2kZLwlel9FRktCHj3oynA+1MHJxzSsapY7+Hw3FbA09G7XIzpztiHJx/HNZbe/pe++yUPQLOviPveEqBWVUBbFKJvr3c11nHF47+RHf099UOwmpeDVgX9z2/73Owai4aDPpc8tw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6467.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(366004)(376002)(346002)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2616005)(38100700002)(316002)(110136005)(66476007)(66556008)(66946007)(4744005)(54906003)(2906002)(8936002)(8676002)(4326008)(5660300002)(41300700001)(6666004)(6506007)(53546011)(6512007)(6486002)(478600001)(36756003)(86362001)(31696002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STJsOFFYSmdic1hjaGhnemdZNzVuNmFrMGVjbW9tTEo5TTZKQnFSSVFsUnN2?=
 =?utf-8?B?UCtPeVpRY2dYV0NNR1RlNDZtZ3NYOEJzQlFhSGh4Y2g1bGFUQnIrU3M0dUlK?=
 =?utf-8?B?RFd2NVZiMDZyWE1IVzJJUTE4ZHNNMWV4U2d2aUorellDaXFrOGVpeitobkdH?=
 =?utf-8?B?SW9ET3FiVCtCcUZBaHlXVENGMG5xMFJib0NLSDZWUHc1SEswdmZla0ZiRFhH?=
 =?utf-8?B?UkhRYWdubjhYbFFVb0JGWVZIRFFsZ00raW5oNkhJd0FKaFBSb0tIMnhCOWFy?=
 =?utf-8?B?b1VJYjIrYjRlZzFkZDJENys4am03cVIwUFMzZlVFSFU3Tkx4VEFjK0h4OHdT?=
 =?utf-8?B?c0l4OGhCNkVHMTVKTXZKeFNMOGczMGpkbndlNjNZcVk4cmpwZHVWZTZuemVW?=
 =?utf-8?B?ZWc4S2pxSkNncitQVkZtWnFYWXdBL3FUUk9vMlp3ZmE1a24xa3Ira0RCRloz?=
 =?utf-8?B?SGd3Uy9PYi9lU25ianhJaHJYRUNZOE9vK0JjOUVDbk5yTWZ2L0UzcjM4Rlds?=
 =?utf-8?B?UTdIaVJBU1FMMGFUNTR3bzBmdjBqc3hLaytaSzNKM09VZ3ZydzBZN2xXQXlQ?=
 =?utf-8?B?SS9vM3lpdjlLeVVWaU01andZNzVHN1EwcmFxY0xKMm9wem9CYTR4OGczQjJL?=
 =?utf-8?B?TGVmMkUyQWNuWWtuelRrSmhSUE8yeHFWd0FRUTliWHoxRGtRYjJLQWExemdk?=
 =?utf-8?B?ajd0ekQ0Ukt3cTl4TlBOUGlFc0RNak5MRFBhQkwzRzRvVGo0ZHNLZFU4SW8r?=
 =?utf-8?B?a3lKbnpyUm10K1FiUFZlUGx3SERaOHFDQms0VitvMU5QUW1ySWxnYWNoNjRY?=
 =?utf-8?B?ZTA4djdXWmZnK0h1MkRVcUZhaXJiYXBpdGdROW4xc0xkRnk1MDk5RWdZVXZI?=
 =?utf-8?B?Q1FwTWExdnpxS3FUTE5SZWNuT1J1eExST0JnWTFDV1lNZTVKUFhHMlRHN2Vp?=
 =?utf-8?B?UWJjZTFsVjlGSER0TDhBWGloMkd0TWIrOTNqRG5kVGxwdkJwT3huaFZERnRO?=
 =?utf-8?B?bGkxN05JcnBhT1ppZDJoUTdxdktJNlVhMTh6Zk92R3RMUjBLMHY0NEhHLzNq?=
 =?utf-8?B?TmxuQXp0bWdodk1RMXlGaWdudDZhMUc2U3R0OWhteGx3bGoweU9OSXlFbEJu?=
 =?utf-8?B?aGhnbVE0ZFk0bklXejBSMk5PTGt2SmtsZjBqR1VtdXF6NThkTUFRWEFFZHZU?=
 =?utf-8?B?NEtkeVNZelBjRVhrd3VSNEhIWU05WGpSeFlscUtIcmFuaXlVeWw4VUhmUjNu?=
 =?utf-8?B?M1ZhZEtPY0lWWnNsMGp4TW1DemNLVVUySDY1L2owK016ODFScmZwdmE0M3k4?=
 =?utf-8?B?N1hqRmk5TnlKclVNWWdubm1LYlBNOVZEaUJtZDR5WjZLVloxUkgyRmMzNnRq?=
 =?utf-8?B?Zkx5UGlDbTdIa3pjanc4YUNlNktRRk1ncy9TcEpLTko4VkJzMzhWczVZcklQ?=
 =?utf-8?B?Y2hTYlFYSm82WmNqekVhTlFzRU1SMlZnSTdPYnoxNUpiUXc5VUNlZFZSVzUx?=
 =?utf-8?B?a1dMOCszSGNlSXNyU3h2Rm5JblZBdCszYzZpMjJQTzlYN3htZFNBSUtTTm5S?=
 =?utf-8?B?VWhTTjc1WVRHMUdleHNJUU1zSkFWMGZUYmJSUHlEVEswMjJoV2M4VzB0eVFz?=
 =?utf-8?B?V09XZHpyZ0M3ZXdjaUU4N0J5aGNsMERuVEJxT0IyU0VUZjN6Yi9nVlkrcUJa?=
 =?utf-8?B?ZE51K0JrcVhPZllzaHM1R0lWbEtQUmo3azZ1RWRxbHYya2hwN0kydnlCWUlI?=
 =?utf-8?B?RDNEYjJwaDl0YVlaQllNdjl1OUVUd0JUS1NvenZDVXR3MzUySitEUHlGNEE3?=
 =?utf-8?B?c282Z2ZGdXdla2VURGh0YVd1dndLQ3RndFpBRXlNTE5ic3NOQXZ6RVcrR1hk?=
 =?utf-8?B?aFdlTkFIVDJEMjFNZk9obWRXazZUODRBRXpQZGZVbjRLMzMvWjhHckRnSG9V?=
 =?utf-8?B?M2lCUVdoWkhIZE5FdnJNSXYxTktlbjlrNjRtdklJUDEzU1krV2J2TDBFRkJl?=
 =?utf-8?B?MXpiZmw1dFVzdTFsUmtacUJURGw1RENWeFYrL1k1ekNVZ0MrakVmcXdBU0RM?=
 =?utf-8?B?RnY1bC9tNU53cWlMOUpYTU9wU0U1c0FBNlNNQWlGY25DbHlCcW14cGVYMm9P?=
 =?utf-8?B?cXpYRG1ydlYvMnAwQkJWMTFCbjVJakNCVjZ5c2k2Q2tZdEdFYitiNnJSUzMz?=
 =?utf-8?Q?iruL5Em7OIMtP+WAdLiZjT2HB958cRBVoVSlfGDuwWMN?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c10aa94-8e29-41f5-102b-08dbd539c4ef
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6467.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 09:07:10.1529
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pRVAvGCDquLPDfgJzz0LH4j/5Yo9LSrvG3C79hewAgCDYA1BDmxwm3qVMb4QUOxVGidyLGD+o9DnCDzLPM5Y/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9483
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=CIt5tbzQ;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of oneukum@suse.com
 designates 2a01:111:f400:fe1a::61a as permitted sender) smtp.mailfrom=ONeukum@suse.com;
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

On 24.10.23 21:23, Alan Stern wrote:
  
> Since USB class-device drivers don't have ->shutdown callbacks (there is
> no shutdown() method in struct usb_driver), they don't know what's going
> on while a shutdown or reboot is in progress.  All they see is a bunch
> of errors.

Does this solve the issue? You'd have to flush the cache on the SCSI
device further down in the tree, if you want this done properly.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bdac114d-2366-407a-bfe1-fca2bb035429%40suse.com.
