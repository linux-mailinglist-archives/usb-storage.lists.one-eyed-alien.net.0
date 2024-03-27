Return-Path: <usb-storage+bncBD4JJBHQWAERBUE2R6YAMGQEGJTFHRI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2D88D76D
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 08:40:01 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a51278547bsf5596065eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 00:40:01 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711525200; cv=pass;
        d=google.com; s=arc-20160816;
        b=mdzPfxSplE+am7CNqt6+YcGUtL82abgyZ7hhq5u+cuF/hUJ7wgGTZtHmq79M1IE9wm
         /w0kYwWGsw4v90IJO5oNTtDyD1XuX1AZyfWUEj34NV7KqXaD0uYHL6JccZ0JW5J+bpzl
         LcLNPEX8iy+9mYTxuCzAEtAqgllFc8na57cFVtAiA8cE+8hLduAOi8PAQanvsSFQWdLV
         BHH4N+x7tuev/CM0EAQWIAx7QEhJ6be66rbi9dDSuJnmJlsUk6X4jIq1fDUtxeqpJ8c5
         ZPhk2TezMVOu+DDIZyGuUpVDCdhVFantiy+Y5bIPwNrxImHDf+5oyiUG7EPQTX3s3trB
         b4ZQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=ffr40hfmIOVIQXJDpj40VeRgwDZYaOZIeP5lwj0iWBI=;
        fh=dniMj5iY4YKkG5fUK6ZcccIrR2rIwCLFyYDJyS8e0XU=;
        b=sN594rO7rV0jpAHboUvevOrRXmerIzHTqTc4T0zs6Q+/igcgidb5SDTzGsgfAEi5nV
         zlODLzcQXxQ83IySeWQ2AJGHKbPg77RJHHdjGbueYyyDx39bqrTl18G54a78drv/ecDR
         tUIDdPWz+OopZUyrmMHclqoab1vOALdvIr7ja7oOZUo6EmYoV9192Mukto5fp4s430cs
         1eAT4VM0w88AJju5CyWhF4Ya1bMNz9XT62N2k9Y+al60Er2xrrh1eBV4v6l8YGn9Ygrj
         TJiumZcfxXoE2mW29OMcvTTUaV8pS5jNYSgAE4Uf/tG96abeqJ5G2/BS+Uj0T0eRv6k+
         xvog==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=XmNC9e6w;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711525200; x=1712130000; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ffr40hfmIOVIQXJDpj40VeRgwDZYaOZIeP5lwj0iWBI=;
        b=UgJ9jYZoribfltocONGzywzrwKRquXpdNO3CooDIdlIa5FJRPYwfvetlA4Z6BxAq7J
         Ydw8NBEVNJhtj2hPIdkk4nu5XYkYuebQsuxagrTdq5t20vbmsp9qCMOSqTqywV4SESLS
         R3pS0s+LO5Xt5IsPeu5qOqUJMwNfFcT4YJY4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711525200; x=1712130000;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffr40hfmIOVIQXJDpj40VeRgwDZYaOZIeP5lwj0iWBI=;
        b=Ku2nWJNpzkZyr68Kh+k1E2uldnw4XRH954W7hcIgLzklAqSytBf4JRkq2IQXwziEFF
         wNXxyV+UWQM8+SOi0Ia2oy+aerhh/eQXHqftqMhOwJvgW7Cry9ms+yObQKGywa7ovMWB
         JmoH9y/2IQEmtc4yZcX8bXq22+Atxw4gYS+bTLx7+T+6s2S9hu4QFSghMsHQFL1sFxcU
         U6L10/bxfBROpeb58WO5DdHzsSLkf+v8Yuk1IWqGuq003EwEySrlhN64rvYQnM6fpp/C
         bLsFJmdF3so/ngGVPcZ+WUY8dmMvWC8LO1klXLWJ+n6A81case6HQVffi191BY2W2kK9
         4Ldg==
X-Forwarded-Encrypted: i=3; AJvYcCUh9b0Lup2UZtvYD72cDilJck5HKF6sQbIxQAnZzZo1VVyGi+MAkZiY4EeQr9DTq9FFLmUBjJKdY6GE6QcUNgf3Ki1LZqsgiEsv
X-Gm-Message-State: AOJu0Yxp3wV8mlsCX6oZ60xcnJMSdxOObeJh2XwKInyq5zojK7spi8hR
	3uhDbE7AVz0l/M/wTjIAv9Iu48myAxSLjL9ptReFXYAYFNA078+UjgSIdvsBUCg=
X-Google-Smtp-Source: AGHT+IECpYi767Ob/iI46/GAouU0fHQj7ODrEyoPk4nUHJqOXY6OkzMXQ2ig0XaRZ5bOOe48J/UgEw==
X-Received: by 2002:a4a:d0ac:0:b0:5a4:b8d6:3be7 with SMTP id t12-20020a4ad0ac000000b005a4b8d63be7mr2950917oor.8.1711525200648;
        Wed, 27 Mar 2024 00:40:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:9b4d:0:b0:5a4:bc87:cc02 with SMTP id e13-20020a4a9b4d000000b005a4bc87cc02ls1924993ook.1.-pod-prod-03-us;
 Wed, 27 Mar 2024 00:40:00 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWKzS9AUXFpJOMUimDBt0koPX3moIKp2czw6efFx2Bc9oXC4kboYDYx9Awp053jTyHTdwqXSMKJfaB118tsFU1th8oRdwHsmbckYXvM6V/tGgmdiSo=
X-Received: by 2002:a05:6808:1529:b0:3c3:c0a1:6790 with SMTP id u41-20020a056808152900b003c3c0a16790mr3513936oiw.3.1711525199756;
        Wed, 27 Mar 2024 00:39:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711525199; cv=pass;
        d=google.com; s=arc-20160816;
        b=EN5Acw2jFkwKn7WYg2ZyIV1t8p8QCK387TLA7/ygFG3dCMx3WZXvrN0AyjQ3SLHAqo
         80d9j/rgtHCKwA70Ms8aoEdo1FPn4L9I7WRLjlKYlqIDBFnlHjiS4WUr6Je1D8Tku8A4
         aR9OjyCHUKzTJ9bG4k0B5tAyBuwzDg765s96yZS+PQ2FYHnIuFw9ecIRFEGdvM1RofPi
         Sj3K8LnwZ6u6ufIUflFneUaCrPOvdz8Ug3+lBkXnB8bzuGjgD8ifYYsV5qXXYSBEwKLk
         /yC/sRbfSSyGI4eQOibgJhVUsQJbg2lQlO6EyI0iGfFnuefFBu7wQIRYkswTj3A6rmQs
         nyog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=fQPNb4zVYwu81R5/f7ZEun8yM4VS++gQDR/lEwpO/s4=;
        fh=jZgb3H+gKzcp/z0a319gx7x/ZAZphEDmU+4AJnbeLTs=;
        b=NIfuLR279PeJtM0f6FKoQeI3DfB7Ojm7jAo+BFLqM4pGNhah4Khm4Nwc73CoJVJQC8
         okx91SPNK1czBRcFRU7MomrVQhoBrzE3YfbAUtmJcEJAkSTYKxSyZtOdYqh/C+oUP1tU
         lHSfM0a0jFoLHpPcQtvkqlTTQ6CDEvFWyU3E1axIFZyYjAt4J/iPLxkDxPTxUVypdQOp
         W2+Um3QRYawkjX31bK4oE/lJt+nqsXkJDFlKYNr8iIgw28BkF7Ivv9T2gdYyNDW5c7fR
         o9ZAI8QWgSHATlVx7zcJX9LhWd6krnRQdWk6DJ18DxkvrD/sqbazYrg+7OngyuhJ8y5m
         Zm/g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=XmNC9e6w;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on20601.outbound.protection.outlook.com. [2a01:111:f403:2019::601])
        by mx.google.com with ESMTPS id fm23-20020a056a002f9700b006ea91659459si8375929pfb.392.2024.03.27.00.39.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 00:39:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::601 as permitted sender) client-ip=2a01:111:f403:2019::601;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQMNxsmse0z8GUOL/su+aT1u1v8mHUTa5DT21w0W8eD53o4rySp5KTLrFNVD8qRo0A+3lAjJoiM6Dr1rkhDDhR3hMJsXkVqFr/WEBb96a6yFYQ72IZVYMvdJEEeidvkc/T+GA/E7Wy4nd2/yLAFbI3vhTJRGsvli3IsjzLYJNyFo+0p0lri4xBFnDUK7dBPjpsbuvwd4MzXrWa1Xpj/Y1/4jMyaAVb3Apls9ix7YV63z10gO2jSrAZ1Dt7GS228Y6y1cIAiErBYfIG221lKiJ+a9Y1TwMQ3uI6qzwiiN1Odm+50KtgAJ7nEErJtH0wpC/2JWKW4ScJyL5D7gA2Zrww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQPNb4zVYwu81R5/f7ZEun8yM4VS++gQDR/lEwpO/s4=;
 b=d7xvJ2FdnAs+pvaD9+5f9ShRSTNyIvj6M5A+PP3HhxZlkS5glM8G8dARFBnnsENKk+pbSWpPLt8DbtMloclJApZ/Iu8QQt9nJKPExf42JALLp748Gz5SZxTMfKkRRjVTenqClTOUh41/6okEFTXKjUq3n9794QFf/4ArLYYApJRziW3oOfvb+o1qQe5rOurJedYPEeLqa5t4UWSLWs/vMd4tNo4lfXG4MtUzHeUNqm58NdNupXcBBNEjA0gF9cyS1/E6zpU3t8JX1bwORj2Z/vNd+S8lvXSzjRWhFWi/BXN/bpK9V039vwS8JGqLdS2564Qti4amh9RBQ2eiyBCXYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TYCPR01MB10680.jpnprd01.prod.outlook.com
 (2603:1096:400:294::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 07:39:56 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 07:39:55 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Greg KH <gregkh@linuxfoundation.org>
CC: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Topic: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Index: AQHagAnskZ+PrXZ1a0CyN6BGkMIiXrFLFjOAgAAcfLA=
Date: Wed, 27 Mar 2024 07:39:55 +0000
Message-ID: <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
In-Reply-To: <2024032757-surcharge-grime-d3dd@gregkh>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYVPR01MB10781:EE_|TYCPR01MB10680:EE_
x-ms-office365-filtering-correlation-id: 217abb7f-9ae3-4fba-19c9-08dc4e3118a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TYVr/8sPdWsDtvX1cQEdZVx642wG3LitYbQb132T1DdUvN4EFETLVFFQX8YeNZF1QGwN76dyfAdrUcHDJDl7IslgQv7jQ+ag5PRNLX/gMOEAxC8EH/Vrw8Cgxb4QG5CimMO00ARaH2fjIfKJHWHkwaN8F6RunUwBKBTHVdb6i8PAD4LyFhwYHiNT6oTZ8BEKubdFgzjTj9r1xsKQKuktT89Ib4NIlXkCy+liRQBenEAmnXGgISDZAFQFrjcj4rJDQvmGmhr7SPXkYNLbd3MoNRXpSNQMX8IK0OA1k8akqVhUmz8KRRueeZY28gilbYNUuZdP7KPuVVZugqZEhmOwjqhZqZMUMHEZ46iVmHrlLBecyK0PBY5l8+nqdIEkh1J8PQSpmvl/bbcZTnEhJlEaEGL3eCElhVv63LweZiLXxRJ8WVk2g63flZxrBX/KdgRGbJqKPr33D3PbJlHgtixQ6wu0e3O4JBxw7YGFApFSt7EsLfFd2svwTYBXi43DAnrLDOxa4Y85JdtMKAQzra3F6jRH3pvbHB/ZSr0G64cfYHoT6Fb8sMTeroFK6nV3ofeMbn/NfKJZXOtLtq4oM4B3T3DEFv+b6jj87wGEVAvwIO+ttesbfPE8uwUJoVKUTzJz2uXdSC4mK7Af73rumTaIfxTccxguqUpRGo+CPOLT65eC8hY9Y7CwinF6v1YD+XZ/N/JoIaEvvCxRVmJk9Y8eAV4WXoLY4fP1nwLtLK/09o8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-7?B?TDlReVZMZ1VxLzVHUHYrLVJCN0xJNjBUa3VvalQ4aW5TcDB2NEhIVkdPSERE?=
 =?utf-7?B?Q3gzbXBwcWxuRVVHU3hoMnVaKy1sZGlwaXAvczVFVFJqWFpxMmNPeGI1SDE=?=
 =?utf-7?B?OCstb2FkSDhta2wwbUt6eFBIWTFqSnZNNUNvc3QvVXU0UXVUeEFzVEtYN29q?=
 =?utf-7?B?Y055bDI1Tmx5VVdheTk5bDY4Y2ZQdE4yMjFFam5QR0cvVG16YW10enMwbzRN?=
 =?utf-7?B?V3plUlJrUlMrLXlFRGJSb3V5MVo5WEp3ZG9yWjdFRkZ2YmxjblNRN05ERENj?=
 =?utf-7?B?clBXZkFsQUtXdDJTNFQ1Q0JiZGJzcHZVMkVJbUt5b3plTU9vNC8rLUZxSmtY?=
 =?utf-7?B?L25nY1VaeWpyMk14Y1RTaHBzeGVIY3RLbG91OUdaeTBERGJpVGZRUjhMZ05P?=
 =?utf-7?B?cG5YTVpsc0pVMmIwV3MySUQwdUN3ekVXN0ZzZkxYY2JYNFhMMEFxVldtRHNp?=
 =?utf-7?B?a1UzNkF6QlcwYystKy1oNVpDWkRxalZjNnY0MzlKNkpoWDY4TGNWWUxoN3c=?=
 =?utf-7?B?Ky1mVFZGNllCd25iazMzRTJidTJrS21nQkdXMUNsR1NRc3g4SjV6U2tvNWhI?=
 =?utf-7?B?TzF2NkhnMi9TOFRXR3BQNGdvQVo2OURyS3h6UjNhOG9mSHlIWGxsdzVrRUQ2?=
 =?utf-7?B?YkZpYWFiQWZqcmdYQ3VmODVYWjFwYzBKTTU2cFNIZkpZZ0RxSVdGZEdBQTh2?=
 =?utf-7?B?Rmo0VEEwZnJGTmFhSHhKZjNxMXhKQzBiTWRIWDhaWXVQaXhmQXNBWEFVTUhU?=
 =?utf-7?B?TTB6N08yR25KbzlwRVZ1bEE2bHRENTJ2UTZ3dTB6ak5hTDZPNjcxY2hDZFdO?=
 =?utf-7?B?L0QyMERrKy1UUVlGcVJnTHRwdlgxS05yMGJXcWQvZkNOM0ErLUJnWjk5dG9n?=
 =?utf-7?B?b3NpWmhpNmVtMS9XKy1XKy1ldFp6SzBhV2NoNVZoNktaQVVaVndPeG1ya25V?=
 =?utf-7?B?aWt5cGZYT2JDNlczUzZEY2FDKy1HMWpUWmhhaGdudmFCcmM4dXF2Vnh1OFA1?=
 =?utf-7?B?NkFUYUo2azZDMVd5Y0U2Rzc0QXhNcGx2NHNreWRDM0x1cnpXRFJJUUtHa2Jm?=
 =?utf-7?B?cFg0aVpIU1ZoeXdoL1FmazhQcG1Lc2dZYjJkNUFTR1lSTzRxTjQxVncvSjZ2?=
 =?utf-7?B?RnpvM1BMMnpVQWJRZFhuVy8rLVJ0VDRBWm9WTXZBSlQwand6empZSE1ZQXdX?=
 =?utf-7?B?WnBxVXJDUjZweFBYZXozU3dnQ0UyenY5Z0NSOUxZblN3TTYvKy1WSHlCcldy?=
 =?utf-7?B?SVFtZWkzWGxldXZHem10UDVsRjh1Ky1PYnRGZkRXRjA2TGxTZHcwL29UNWM0?=
 =?utf-7?B?eGdqSVRYZ01BTllUN0RwSTE5Vk9rNHJtZzR3U3NoRnR4WmZ4Ky1hZFA1Smo=?=
 =?utf-7?B?ZCstQkJrbUVON1MyNVowRlpNRmZOVHA2aFRoVkk2dTgzeHQ5V3RNS3hwMi9r?=
 =?utf-7?B?akQ0YWVtNWRISENYOE9HSXNRRzF4MFhSV29jUW5vcmZ4NHlQMGRMT1ArLVlP?=
 =?utf-7?B?Q2M3MU85U2IzUDN2VDZKUS9UMlBRMXhpMkExVFd6c1pzS3BLOGkxTGpuQWpk?=
 =?utf-7?B?WGQwaWMzMHZnb290Y0dnbSstRm9sdGRST0lQdHFKSmI3blFlVWNKL29YZW93?=
 =?utf-7?B?Q3JZcTYzN3dNRTZrRWx4WFl5akZ0RUJoZTZaMVhhZFNjUkRkS3N1RzJNT01E?=
 =?utf-7?B?NXY3YmFNTVFUbistU2FoVkRxR0FWZGRuQ2tpYUsrLU9pYkM2Y0tTTlByazRY?=
 =?utf-7?B?anNTdmZsd1VEbGJOeU5NaEllWGl6ZystdkppQnNUMjRZdFdKYnFacXV0SXM0?=
 =?utf-7?B?SVRCaHVMSlNUSnFhVEtNbG1aL1JseTZrSDZLc0NzbTRUTm16cEw4Mzh6S0c0?=
 =?utf-7?B?blpuNzB6YjRMUEt6N2tBQUthVS9XTVNFemVIYTRXaWkyVGZRS05aM0crLUJm?=
 =?utf-7?B?Y3ZRWlQ1YmNzR2pNdUhWZUV6RldkSGo5dTNzVEF5MEFrVk9qOGxibkVqY0hz?=
 =?utf-7?B?cFZXb1JmUWRBclNqWEJWN2FwR0MxMlpMSlFPS2prWDBqamhmMEJTMGNidGE0?=
 =?utf-7?B?bG15R2xPNFlzZFI0YkZtOGdkdzZZUkJ3SWtCZjJZQjJ1WWtlb2hTaGw5Wmpr?=
 =?utf-7?B?M3llalJrSy9tVm1WUEhpaU1PaXc0dElvRTZYSXpUbUVtQjFLM05nNUpxSnRW?=
 =?utf-7?B?akZyeHNZQw==?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 217abb7f-9ae3-4fba-19c9-08dc4e3118a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 07:39:55.3385
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VVprI97L1L+du4U+yaLkYzbeEAHVyhs2OCHI7+o/AtQqa+fk3Te+bgyEv+MezasUn2dmIaTnemnLTSnza8naxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB10680
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=XmNC9e6w;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::601 as permitted
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

> Sorry, but module parameters are from the 1990's, we will not go back to that if at all possible as it's not easy to maintain and will not work properly for multiple devices.
>
> I can understand wanting something between 1 and 0 seconds, but adding yet-another-option isn't probably the best way, sorry.
1 second does not meet with performance requirement.
I have no good idea except module parameter so that we can maintain backward compatibility but be configurable out of module.
Do you have any other better solution?

Best regards,
Norihiko Hama

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYVPR01MB107814D7A583CB986884AD4B290342%40TYVPR01MB10781.jpnprd01.prod.outlook.com.
