Return-Path: <usb-storage+bncBD4JJBHQWAERB5VWSOYAMGQETZD6ZDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF5F88F58F
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 03:52:40 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a478fe8814sf423302eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 19:52:40 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711594359; cv=pass;
        d=google.com; s=arc-20160816;
        b=xLF1Kqbw3DhmaRqbnWWAy9YITKIz4B3NdcW9tqk+85ECencKQRhcg6QSyP/OKfpIwu
         mi5MIjCPKjIz4Zb4gD5a0q1xu/iYSsjys71tQsKqGUntB1Br8Z8nsdHzHQXX48XKWZ0B
         pYdT3Y6jFyowlUupPKDxCSIfRCh6jB2bxa82wlVuC1U8e0cvs3Al0raDoTTSo44xlsJ8
         XJal6/GdG9uko50vw9LEfIuHBmwljNofl4x/BBeDB+JddcdsEzJ3sEJJ4MmHNXeAvQUR
         oilpOidh3XGzVIUyiLlzvETzVO9071FYa6BH8WABx8nWuvatvSTyPLDkUzukodv+IGpP
         d0vA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=FLnn40oLpH70v9ue26SAONOMeoOGmuSCFLHvcIit2WA=;
        fh=GtDaCBCVpFvaFsA5AcPj8agkdUsXfMyx0bElxtxQqDo=;
        b=XFZbBuDeDGp3d9ZEf1oFLlApommK7kX1KYC+YI7Ql76ns7lh2Iv3/yYJ9wxmQxdWEz
         s4yThQ5te5XGie/72Wcu0iX8863zCW7ZBOfe3/FlDUg1T2pwGkx64dy3r+wfrRrbvLMs
         d+mujoN/kWB6eEpTwIWzAC+7IXI+4GG/Ep2V08aQVKy0OVZqdnduZLrQQ8vCkdw7mGaJ
         LGsuNKNH2RlWOeQXLMmaF1RrK2Y9miXNDWvpswrzcKZNmf5M0/S2HDg1dkMrknlFiDn2
         mAO4Ku9nJZETwEKNkRfoiXj9mShze847/Ai4Xu7M1AJQle0+FPx+GgEtp3kQ4c7mtl/+
         PqJQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=IpxG38lA;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711594359; x=1712199159; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FLnn40oLpH70v9ue26SAONOMeoOGmuSCFLHvcIit2WA=;
        b=DkDuLR6XdSlcByXoWNv3oFmZJPQckGyLti1vNNOPTsc8x+YkGmPy3ld//OdZP7WO6G
         UWi6u5CztxD9YKhq0UXd9g+47dUlrbM+CnpWvgWgwcM4Qqsztqqq2vy1izRut2QqMc5q
         djbam20nD54VXY5DZaGQS9emiiactjirqGOR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711594359; x=1712199159;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FLnn40oLpH70v9ue26SAONOMeoOGmuSCFLHvcIit2WA=;
        b=omF+mGwnTU1N+iIgkCetM7rEliKKCaQeSDWpdcNrO8YNXX8XTfIzhPSXFysBzITCA7
         iRjjmtJTFe0wKOgqDgUcag8zGy9FzTd1BFLlq+5K/qjAtoCUiR41/OR4yXZ+1n1395KI
         twkvHZzDC7WzThWhYmh8jWtCBsqO3DbNJFg0aU5vDtvB5/OV/Xlme/bJzImdPpup85Mc
         r9zXOv/ayUM1nSv/9uSDR43n6M/oSE0x6i16JZ6GQRWrK73xrhcdHjJstCAictz0Y2k6
         4RKyHsqLAQhoFJL7RB7vjn1RFnkv2RKU/KQf4scIKAePsguuf99XJhBJ6kMzxXFbvFBY
         BdnQ==
X-Forwarded-Encrypted: i=3; AJvYcCUMVC8cjKO+/MJ9qK/MEDLWEHQFGA/hvk73YSB/w4k+bXICbSpJXNa1n3vn8+6CN1yjB7JnSoMzXgWs4K7JAcyOFmqCrv/Vrugy
X-Gm-Message-State: AOJu0YylujJvJkdSd4APiZYFaYOdbQ4QoQ/3SK7MgGyO4mgMWcWg8XUf
	41wAJ3paa7rrW2rKxBWnoHVVgHiiWRL1LQrKS74+Z2rBMYq/fLW3q83KUTZE4CM=
X-Google-Smtp-Source: AGHT+IH3uBcTdHCs/c0tNdi0lr6lB4Vdi31JOm5hNjwlmdiSdi4KUXIfQOAP86tw/H17px4CkMm6uA==
X-Received: by 2002:a05:6820:1e08:b0:5a5:67a4:d58b with SMTP id dh8-20020a0568201e0800b005a567a4d58bmr1593336oob.0.1711594359299;
        Wed, 27 Mar 2024 19:52:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:dd81:0:b0:5a4:5c82:a148 with SMTP id h1-20020a4add81000000b005a45c82a148ls300699oov.0.-pod-prod-01-us;
 Wed, 27 Mar 2024 19:52:38 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW6eD3zJD1+loi/sprAqqfKCiIv0dz4tIOee84GZ1zhFRsPnmW5BI7ab2EkaxJVK/4BAhE/GXOaMRTSFaIs6VcypO85/P0brGowLtELmPteZY/81Lg=
X-Received: by 2002:a05:6808:1389:b0:3c3:e2e2:ec7c with SMTP id c9-20020a056808138900b003c3e2e2ec7cmr2093515oiw.31.1711594358332;
        Wed, 27 Mar 2024 19:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711594358; cv=pass;
        d=google.com; s=arc-20160816;
        b=n3iaijvZIjcQJI8OmsC2YtRFIe+C560GSAGMjdWKHeNkZ7dLwdgnQtm5e9QlIYUqLY
         zvcwi789D5LFuXhSNabHMs0HZUk7W5wpK+AxPKQ/85fQCrAfqkqYIaQbfYP7eBEe9lyR
         S270nvbm5L59GDqjuK3UfAn32vqeEHGIVoF4dPcANtPYvDJDnHVHL26z5sMuEYt0RxtZ
         c0UFXNnI2xLfFjONEXtgjxCXC2n4CAB3BMj0Q00hzfB2EHJkGwiwohE1PUgu/dbfwye+
         /8ax2YFJkcRT6YSyEE0wWuAV/4lcG/MpOtdd+KgSQOYWjC+VT2nC5RfbKcDLjisrDVyi
         qtEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=UjroXfKuJZthA1F0Z7CbH1CAQfagnEZUaYVtWUriaDA=;
        fh=jZgb3H+gKzcp/z0a319gx7x/ZAZphEDmU+4AJnbeLTs=;
        b=UuPgtp23oyuOd3oZCk5TBif5uxck5g7rMeCbIpDuOFiA4Uf2VJ0SYi9hcNs0PytoJr
         KJugGVwkGCNqfV735rSWSjwoShfEqDD+iPNNIkWIE/a6UR1ZqFOQYKKcgmGxHzB3NyN8
         LjcdAumyXCU1hmFCpZADK1twoGZKcwo87taxda0K2N6fv346+UWsyTTp5Qa9HFtOs7yC
         KuETz19XB4yqmlIC3YzHaY45RmoqxEqx2bwFZzPPj7gO8qa2BMTuoFzAZrci94g6KMfp
         9H/ArD1fK/iEA0S7aLpxlqDIYNBYbb3ajc4G0Wj8ieQLGwxbKgS43J3G+uVTE4vZrk/u
         +o1w==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=IpxG38lA;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on20600.outbound.protection.outlook.com. [2a01:111:f403:2019::600])
        by mx.google.com with ESMTPS id j11-20020aa783cb000000b006ead086ea6bsi500629pfn.87.2024.03.27.19.52.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 19:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) client-ip=2a01:111:f403:2019::600;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dcb/Tc8agKexhW5FNtuEv8Ldjt0KjM/UbxEcGFX34j6I1LqsxYx4v+r7rOXat+yog2Q4Sz7gMFHU/Cy8W0ds+jbd0XphWuGu6PgnDVLu6CeOvR0bfogM4MwADCRNKRc7GYajokihfCZ7VkTaYjOTdxk5VHsBlrt2ADckcKB1q3Ei7sp+laahJZCt5jFGlzeBkuUpOmFP/o9DOom6QPa/j9EFO45QkGDaLpuThszN8qM7+1q+ZzywsBqidusYu5bQjilrEqW7m3DUKSShi5zNrWS01iHJu2B6pqoFHWMzRDqLrPcwsUluyr3LZbzU+SYqnnmdnYMTIKtA/+pKinptQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UjroXfKuJZthA1F0Z7CbH1CAQfagnEZUaYVtWUriaDA=;
 b=FQtbcWN9m1TamNWQBvMlMm4BQEMPFsZVKa3xUj7jJA542oPn6TMKar0Y2fOWXzKEcAezkDL/Ju58T5wpPWvTtWAbMbK2mro7Sb+p/lIGfIYfMAzcpjyhnGYGVi8mq/MMCPbzU/SNVcM3m0zMqF70uCP2ZM8tDCMs5BJxZ8Vli096MY+oCcUT0xdJFIAVYwe2kJ/lXcrVHUKUSi0IedQtFvwsgvCf6N0xYU3alR5S4J4s5J8RqOKwCvJPv5kmeFuPfaNF1qzbdl8dSmJZgvpQ8rK68XT6MDVuMegBQgKGs0y/ep6K+JStA7MEgg2GePOsNhvS7ITNWg5WMJbU2rC2Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TYWPR01MB10224.jpnprd01.prod.outlook.com
 (2603:1096:400:1e5::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 02:52:35 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 02:52:35 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Greg KH <gregkh@linuxfoundation.org>
CC: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Topic: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Index: AQHagAnskZ+PrXZ1a0CyN6BGkMIiXrFLFjOAgAAcfLCAAAKHgIAAAT8ggAAHUQCAATOvEA==
Date: Thu, 28 Mar 2024 02:52:35 +0000
Message-ID: <TYVPR01MB10781C18C8177783D8DEF7E69903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <2024032745-transfer-dazzler-2e15@gregkh>
 <TYVPR01MB10781723CBD338DC3EEB5F20590342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <2024032750-violator-trivial-90a3@gregkh>
In-Reply-To: <2024032750-violator-trivial-90a3@gregkh>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYVPR01MB10781:EE_|TYWPR01MB10224:EE_
x-ms-office365-filtering-correlation-id: 54a2e613-bbc1-416a-9b75-08dc4ed21f37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fo8RMfpnV6cl9PlxNBXFUdXUe5MBY3F2KRY4R040oD6Sms8nOHpZJmLSzkxerd0Wn6rVxe7ghdf4QKv4WD/LvaUamhcn7+JluSvmjcpO1+2Vbryh1gmY4nTlsfhvr2eq7ME7NsMA3aKmKi2A1yeXj6MnK0u18KD6BfYrHmxyHDGNQzHTuRLy6NTOadi13nXxeZKgwBIxvuqhxRDIn17OqFwZBhQShnqzLeyp0D90oy3SIPJvlgNAi2L//hcsYoUKFRoLOUn9Vs8KpLYhZg09TD6UwG4ajAD/Sxe0GyCdJhO6AVZTARF9xPjRZEmehT5BX2HXlkNIOmZde0nT7R0Tym8/C42LQJL1dggo2ianipt+uosjrPYO14zBJslHsja+H2wkaQuBRfLYA+GliXh+4kcMbWEJbgPGiSN9SXNoJuSKFa5B/tQGKezTALvqCwJC6uAKcQdwKk/xbL64i7+HqOZywjb0vqmG8oACvcj0b6iXRDRGjy42HFJAa551DOSLHfxHm4OxnQyX3B5sZk6zLMarpkse+r+PxUlJ4mqG9gaPqtoCgZMMUYLL3BUQnHfhgeeZ35JckWyFSa6dS2UHkOvAKAky4kjW+x0Pw0EaG9QXtIkdqENYbetWhIm4P6T/LpO7ioXE1mMQu48uO1zRcptIPuUHnc31I/q1NffILK2N9L7vI++NyFdlZjUEmSuhXdzYdPUH3CFjVQm3Accp+w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-7?B?bTNwVGdGWnh0ckV5NzI2dmxPeXJMSHE5ZG1rR3FCWlN3ZTdWam5RbTh3UVZW?=
 =?utf-7?B?emtsM1h3cXg4NjI5NGlzTWFiSUFGVHZ0bDcrLVBLdC9qY0F5ZzcwL3B4ZjZp?=
 =?utf-7?B?T1cyajB1UW0wOVVxMXVJSlZpRUZVRE5LSWlCSEpYS1BNN0RpOXlUYjBMR3lx?=
 =?utf-7?B?TkNLdmM3enpVR0lSNWlWV0xrN1EvbnR4d29xWXVqbUN0Um5wczdWY1JVbmZl?=
 =?utf-7?B?SUc0NXVScG1UWk1PeUFEL1BvWUhQYkUxKy1KQjBDckRGWU9uN00xM3FjaXBw?=
 =?utf-7?B?Sjc5NURvc1dxekdzWXJKYlVqZWtwbWlnR2VTcXFXM1hsemp4eTJ5ZVZhc3l1?=
 =?utf-7?B?R29ibkxBckFuQ29INDZpNE9TMVdza1d1NzNtL0JWaCstbWl0ZE1GaVpmKy1v?=
 =?utf-7?B?ZVZlSVgrLUhqd1lMd1pxYjBMMVZUakFSdkI4WTZ4aDRJZWJsZXJ5TXpvZlR4?=
 =?utf-7?B?QzU4SGVVbTY2QkVJd0hvR0RHNllxRnA5Ky1iMTFMTXJJUllsUHhleXVJaTJz?=
 =?utf-7?B?dElRTHFRb1JscUo2WTFWaVprZTF5WnNDb04wZGFOTDhBR3ZyU3R5cTRxUFNE?=
 =?utf-7?B?WFpydGtwTnlxMEFDRzJFcHVRZ25CYm9YNlUyQk1YdUU2VXk1aHFmVTlhZEhG?=
 =?utf-7?B?a1dDS0ZLMG1aWVdURGZzbGtBWXBXcFlQUkY3UFRHQVhETXV0N1gwTGZxRFFP?=
 =?utf-7?B?dVM3b0dRTjV4WlpyQmV5aDljNmFySGtReENsSGljTjB5WmNpQ05XTWVCMTFi?=
 =?utf-7?B?YllJOTRKTmFId001SjhtMEFtS3E2elk0OFd1WjQ0WWVKdFZtSXBCVm81aVVn?=
 =?utf-7?B?RkROc1BPdVRodUFTeUsvTmsyOGtEKy0xU1B3cEh2Z00wOHR3R1I0ckJGUEVT?=
 =?utf-7?B?TktVaU9TeWN4ZlkxMTRBcUNlM2VqOGpadHpRYkc3VGh4TTkrLWsxVWVnNmxp?=
 =?utf-7?B?aE5qU0o5Q3ZpbHJaT3VqR2hXbFhKa044b2VwYThpZ3hDdXdHL1N4dGZFNXdk?=
 =?utf-7?B?OWI4U1dIbzREdHFlajJ6MXlOTWJKcFpQR0gzZDE1TVR4L2VJQmpLemJTVGh3?=
 =?utf-7?B?VFpXRHp0SkhwQmlSY0pmc3lVS0t4NVBrdDJPMVhnTDZuT0Nqc0ZNVW1iazE2?=
 =?utf-7?B?UTU2NnlJRzdBRzBtT0ZCWndxNkZrUXJIWWRYZzNlQ3pHY2lsdDBndS8zcUZk?=
 =?utf-7?B?Ky1tekdlN1FxaHVSaUR6eXBNa2lvcGZQOGh0WFZkRndOSmE2VTNCSG55N2Jm?=
 =?utf-7?B?M3NqeU1aT2p5MlhpdzEybystOTZBSGxFZWZwUzlrQzI2czh2MFh2Zy9pRWV3?=
 =?utf-7?B?UW5jd1VwdkRHUTYxd1ZGWGJZaHdmZjd4Ky1DNWJOOTJwSC9vYmEyMXpKMlAv?=
 =?utf-7?B?NkNONlYvRGZhSnRaOXc3WDFOdHVjTTBONk50cHFlUlVZQUVZNzdxQTV6RDMy?=
 =?utf-7?B?cmxKMDNmWXNUckFFSEtjbTZ3c2FVSXJJdWtBZktYZ3JrVjBCZWI4TDkvZnUz?=
 =?utf-7?B?OVFTZVo4dUlXZWVpQ0xYcXlqdU8velE3bzJlVU5TekRuMXBmZmtQMUxhN1ha?=
 =?utf-7?B?SnJFVzk5eEJFMjlZT2dXMnJiREpSVVFzVG5iWFh2ZFdlT2ROaVJJc3dGOFZz?=
 =?utf-7?B?cHc4bjZKNHQxNHlsN2dkcC9vYUdQSlJkTWNaOXFOTURONkUxMUNhKy1pNzdY?=
 =?utf-7?B?V002dFhsVnowaXZLN0h4SGNXS0FXaU8xTVY4UFJUOWozMDBhVG9GVnhseFRt?=
 =?utf-7?B?OE1jY2FpZFlrVmlRYnFHeWVUYi84cWFXNTkrLWpydEErLXM0NFJzQXZKd3c=?=
 =?utf-7?B?Yk8rLXBmQlVuM2Q3U21nRjV4b3ozTHRxdzVBc0U5VmtNamxkT0VDbDQzTWx3?=
 =?utf-7?B?WTFwMmZQQXEveGNVaTN5dW81NmVFUk5STFJVMk81Ky1CdCstL1FMSXBsMnlr?=
 =?utf-7?B?b0JOZDR2bmxXUjRnVTBZQ0N0VTdQWUZ4T3RwTTBNbFRZMistMHRNSk1NRldR?=
 =?utf-7?B?SG1aWW9GS0h3YjZKdmlTT0x5VzV4NUtuWGttZjhvSzFqVWVuYTg1d2Y0REll?=
 =?utf-7?B?dDRjVSstckJvOUd5U0o5NkpGYXZWRHkwZXBSM0wyZmhTb2lIeEM3cGwyU0k2?=
 =?utf-7?B?cGRjZUlTRjlxMGlzYUUwbFFSWlYrLXRqakhpdEYwU2IxanBzZXpBcEY1REdx?=
 =?utf-7?B?WQ==?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54a2e613-bbc1-416a-9b75-08dc4ed21f37
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 02:52:35.3207
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l+3ry7qiVdb7O1/VNUd7/tGPumWC6fHwnzRacdotK791zLor1S34R7Igt9uSy+AmSgFte+XXViwAhZhO53m43g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB10224
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=IpxG38lA;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted
 sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
X-Original-From: Norihiko Hama <norihiko.hama@alpsalpine.com>
Reply-To: Norihiko Hama <norihiko.hama@alpsalpine.com>
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

> > On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > > > Sorry, but module parameters are from the 1990's, we will not go =
back to that if at all possible as it's not easy to maintain and will not w=
ork properly for multiple devices.
> > > > >
> > > > > I can understand wanting something between 1 and 0 seconds, but a=
dding yet-another-option isn't probably the best way, sorry.
> > > > 1 second does not meet with performance requirement.
> > >
> > > Who is requiring such a performance requirement?  The USB specificati=
on?
> > > Or something else?
> > This is our customer requirement.
>
> If it is impossible to do, why are they making you do it?  :)

It's possible to do because we've changed code to minimize delay by ourselv=
es,
Then no issue observed when we configured delay to 100 msec as far as we ha=
ve tested.
The background for the requirement, it's important for end user how quickly=
 access to USB drive when it's connected.
Of course there are a lot of overhead to do that but that's why we would li=
ke to have a chance to minimize such a constant long delay.

> > I know we have multiple devices with delay_use=3D0, but then it's recov=
ered and detected by reset after 30s timeout, that is too long than 1 sec.
>
> So how do you know that making this smaller will help?  There are many ma=
ny odd and broken devices out there that take a long time to spin up before=
 they are able to be > accessed.  That's what that option is there for, if =
you "know" you don't need to wait, you don't have to wait.
> Otherwise you HAVE to wait as you do not know how long things take.

As previous my comment, we've changed code to minimize delay by ourselves,
Then no issue observed when we configured delay to 100 msec as far as we ha=
ve tested.
Sorry, we have no theoretical proof but I think it's same situation with cu=
rrent 1 sec delay.
So we want to have a chance to change such a constant delay.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/TYVPR01MB10781C18C8177783D8DEF7E6990=
3B2%40TYVPR01MB10781.jpnprd01.prod.outlook.com.
