Return-Path: <usb-storage+bncBCFP7G4HQQGRBT7EUS2AMGQEQ5FEO7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F99D929367
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 14:02:25 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5c65e857b43sf982894eaf.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 05:02:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720267344; cv=pass;
        d=google.com; s=arc-20160816;
        b=vMcUzfxU8QDmS90zlBZpbycXXZxuqGcpKwT1YfkGYRa1p56JFevRsALRu8mIjMIawk
         MKqiOe0cp3qAYS58Ard56pUnLnAV1Wv4t0+C+pwVd2nsT8T93qSmRslmaKk4g18tnIZ8
         msx3kl0gdjzTQZu/jU3G5waLQ7fTmm/aLVyuOyU68blEKKp68YnGwByKaarmGJkKLiA/
         QKPwo3N4k/nN/tPy2pJuAADgFaUqJqAH4kA0jwwLmiSIYeyv0Zo47P/utb8LEiY4ppfb
         /kNpf+WpWhhnDi6jekdY8khLkaLXU1jeHmoGJuKrCNHY5arER+86bXH86uc0cwXJEzYo
         a3dg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ThgDvGXZfEof+Jjl2g6Ymz6Xjs0522d/1jsD+a9tPac=;
        fh=5XiP4hzVBuBTaz6I1sfOdUcE8IRfMeHtu/w7nLuHSI0=;
        b=Tr+CQh5YHu5jeTojGAS2WxK7luj+yGCn8KYqDrC1RBbjsDpP+VnVg/jxv9arJwfRE+
         pM0IxLZdt4crSr0tbGWgl3k7bm9hFsfEcUXAZDe3SRoafLuhSRjPjn2A0bjcCE+cwwKm
         3Xiu4cqLS0vw7n/5C0vCT1YIiF63dto/tF+wWoMWVZSs107YSU17e2GJbAH2eFAQ8RVd
         HChHIhRePFCSmSSRdlcGShFjd73ATcKkTZLdLHLsl9vhXd4q/+rpxE3vTmLeU4m+AJIV
         BZKNA4w07F95KiGKea8sHBYvH2Y4jRBhic6hBpdSU1QLMGvNr4pz/m2UHowl1KLnfvSm
         eU9g==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=s0qAMrna;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::819 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720267344; x=1720872144; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ThgDvGXZfEof+Jjl2g6Ymz6Xjs0522d/1jsD+a9tPac=;
        b=jkd17GUPUgQ3s4ZCBzQRncYLRYbwu0gDkJaVwM7x6VGNWHvDftQ4mpMJLOb6+CvhVD
         Q83IQu/8s+fDpg4QPqRaXJqHOlg9JpkEZTl0z4NYE/pTYor4QCSI5mUtBRwbpRwWdTjJ
         LJS0KQSPj61VPfclIitg3HPvy1yZOCEqb0/SY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720267344; x=1720872144;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ThgDvGXZfEof+Jjl2g6Ymz6Xjs0522d/1jsD+a9tPac=;
        b=a110+sBeHJM7OBTdtZz6FE0ACTh8tzsaRyCHG9Cpet4YEKDqpyM7h6scLty+ql2wgU
         nNB4ABlTBm/7KeYjHF+F0AihivvDGlqLuUJVb+Y2AdhzTGmJlskEDT7dp+Ob2It6b9hD
         vk3fgbZOMoQ19qHC2d/QTdDkiFazIlS0JMNjbHWkFHcfMbJ16FHniCNIGMhylgBZ/er3
         9QHNWC8nXn1DNGFdDwGb31TTnDfwz8ibdBBERuRJo1CQCOlJQ+wtkE4lz6Ia34FYBV9d
         T+l7+ziArB2So2rouHSDumB6HSG71LqkGegyqUyo1zSdL6Jh7OWrh03FbKfeswyDEqm+
         piGw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWRSy7LsTMqK+Xz7f2M5qgCntg/30Lvx8L49wcX11RI6lF0L0qyAX7hAFIjtbqJEPn71cI6IzyWOUR/TUyQZAShW0oCCAGOTwpp
X-Gm-Message-State: AOJu0Yxp/PNJwKhHH+eRupQztbrV+D3rM60xyuYVs5WRNLxWkFUePs0i
	UXtpH+DgyrgX60TeYPMATqh9ElWyxCv/I5Vsgumws7qa6sZ9nsqPePtL/8lW5V8=
X-Google-Smtp-Source: AGHT+IGHSwblPHc6JRArzVWJ4AB4xpOs/1KC9WF6atQ4CVeD82GCU581duAcODsm+6KHRiuVazHhlQ==
X-Received: by 2002:a4a:4b43:0:b0:5c2:1bdc:669c with SMTP id 006d021491bc7-5c646f7105dmr7312304eaf.6.1720267344122;
        Sat, 06 Jul 2024 05:02:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5146:0:b0:5aa:44f9:9b11 with SMTP id 006d021491bc7-5c643c2e018ls1915326eaf.1.-pod-prod-05-us;
 Sat, 06 Jul 2024 05:02:23 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUt4mR+kRIXnfPRAe+v4XI15XaXjvtDCvi3Pmx9gVkfBirOTLMSYsZF0sQJ4nc0rQUbcU2yiqH+HeyEHCPRk6dMOHAabl001CJFrdzZ7c2hGiN7BTI=
X-Received: by 2002:a05:6830:1104:b0:700:cb73:b6a5 with SMTP id 46e09a7af769-7034a7e8317mr8680199a34.26.1720267342997;
        Sat, 06 Jul 2024 05:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720267342; cv=pass;
        d=google.com; s=arc-20160816;
        b=vDzhJWRqOSl3HonvKBxXNysjXAgNIhqp5aldqGZYj5q0gD0zRLt4FemPUWJRqnUFMh
         1uVSZT0y4d1XXdOEx7LjUxxlHXoY/VgyShHJSVXgRt0T2Ecx6Pm8jDL6dstGcd49zAT6
         VGn+RNBjeYnsFkAHzlxo/9bwn18aNGUQBJL0jYXPIQCx4o1t7Oa5bVRk+UIv1j8PM5lm
         n0ztRP5KBZvrdlL76iciXe5pwBDyvHyeA94xKOLyIDvJrakjdrx/uZBpM0R+sWBr+b8x
         lqDL5ilL8G1IOeQ6cJOYWoCZOwYTwYqRdbMOk2UjkuRnaKiG6jY3dAxHxU/G8QIoiEpZ
         yPfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:dkim-signature;
        bh=DcwmIy1s5mnYDNFLF9tRxVZvhoEVtUpktw/Z2IyHYAQ=;
        fh=4HWS1BnKmyzr1jKtPfMCWRzQy1hmtF9bNCvfHraD4kg=;
        b=VVfZKg3C9IVb0F51EvNYWrrR4az7dt0HuYVt4fxOTMKjnG2LQmKajf5s+J8WNFs3pB
         f1+hcjELR0n/NZj6Mv5nCL0/TD6nDN8png3weGHf5gNKkV31p4NC3056vt3/UiztHl1s
         gjVBWreepLX+CFZ1yrnimGk68dw+7yheKjiPT1rNFV3XHZq12dN3Imo3kx6i5lRdm0jt
         K9E6denM5V/289zG0p0r19cV/QIttNwTe+gwCnWdqQp/asSzyNqq5o95ciAxnKkmn8o8
         7ac/e5+M/xuXhJ8Bk6zgJTqb110YItvYqiXQJe6xzuxgdtMeILAL/KEMaJ4A3pRndrq2
         /s9g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=s0qAMrna;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::819 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01olkn20819.outbound.protection.outlook.com. [2a01:111:f403:281c::819])
        by mx.google.com with ESMTPS id af79cd13be357-79d69262d03si1829887085a.80.2024.07.06.05.02.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 05:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::819 as permitted sender) client-ip=2a01:111:f403:281c::819;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OSFXt+4rdQ3T1Kb0DcwWCT4W0uIDzw/57fU1jyjH6fRgrJ1m2Xhrlo7mBaaPZfQ6X2bXsKDUujUi/7YF1BI7ca8CaIpiWp5zoe7LfQfxm57ccHJuiADIOYtzMfhCR2q3n/R0Hfh3jcG3n8qI32tyJcNDkh5AEEh606x6JxDVlr6+8whG/g9MfzzzgH+dvrhDIRha4yGrfudFx/KPPInIunNZpGRwEOOriMJ06x7o65qDKTNn5AtLhhVCsa/u0UvXVFZD373v73674YpVNdaFrKNrIBwqQEDGnitVnUN1SsL3s0Tn5bJhiO4qMeFjToeUOHGLyD6L91zmwzD30zxZyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DcwmIy1s5mnYDNFLF9tRxVZvhoEVtUpktw/Z2IyHYAQ=;
 b=YXUTZgK/Hmb5g1cXF48M/ekn5ovxg7tt0SVYByf160XH1MPsYZmduJ4QsiYFnOsQk9FAj4O87KtxJAanlUG5y0k5bCkDXmFSyRByy57QGMpUT/+M9z79+RHbSkp9pb7Uw0861gVn9Ws7iT9Exm4jAGF99sjZ1XGbYNHaMwOiXo0yNBMAmHAu7klsujKCBbQsnEvm4kXkDePa0XL791HrsgsSZos4QbnWo/srD+Sq9lHmYBcxHUHVgYGbpju/mgeIQ9rCaeOE3NbY9r75pz7kXwYy2gJGeQYK0U90XgfGwI8FoJsCuYVdRkmmVhz/lnR9WXauJG33gX9NJHQBPUBrnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN0P287MB1624.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:17d::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.29; Sat, 6 Jul 2024 12:02:16 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 12:02:16 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>
CC: Kerem Karabay <kekrby@gmail.com>, Orlando Chamberlain
	<orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH v3 0/2] USB: Simplify running code on shutdown
 for USB devices
Thread-Topic: [PATCH v3 0/2] USB: Simplify running code on shutdown for USB
 devices
Thread-Index: AQHaz5xYCaKh8rcOXUKkG07dHSx4qQ==
Date: Sat, 6 Jul 2024 12:02:16 +0000
Message-ID: <58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [TcHWjMJezbKZKDwbCgY+5DeVQ8kO61T2NfnLOrVRCbOytcA1ygWRnA/8eKG+6g5gtFpXFUaveqA=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN0P287MB1624:EE_
x-ms-office365-filtering-correlation-id: ce6f175b-995a-4fe8-7e8f-08dc9db37a99
x-microsoft-antispam: BCL:0;ARA:14566002|8060799006|19110799003|461199028|440099028|3412199025|102099032;
x-microsoft-antispam-message-info: DMT4EelO0gtBiwjZAi9exG9c7mJLKBKsTw2UMoVgC42kWfMPvcup40VoCM3mSdU2rW1jVVMrw2zVTWT5MrujeY/9rEbgJI5yKmdUzD8UPv/IROxLTpaoCWQSxUBk/WGPkfD15ZpRt/m5kfVZ68HpDDCLKNPbpMWDULC5W5BhQ+JrdmWMbQBRVDi9tH+QxPS8nFfYH1hP91bu/QFPdaG1eMD6KRxow20WtqhbJWa6osN7KzPUr8uHhtuNo53OF4aedPzPVpqsfRz68OOWf8qABCnOsWTBNB2DntZFjQDrT3TgzpBhuqFqT/A+hrCPJwUjMufLi4iG6yS1SGz6PG8mxLOOr3DgqRzGdKQfg3T0z8TiEm7dYkvxaWLXmE+wbwdkm52+G9L5rGcidiD5EN9/oHhhp28EpcI9edXVARz/OygceFeNvKkME7EjrP5vCnszdOpm6CiIOZGaQ5PLR7RB++e6xm0Tf2oXmO4bK8IU6/GnfY257Z+qk/yovu62XJFARXpaag1j8W50WrcjfWGyBGHXEVbBzrV3oeGjtDHnGIx7NGGJ5f2JktBsDWq9Vsof9bbdZpklZRxkcAq7+afj+//N5IxdP2Mxo65RZDQ98J1kdxJ5paw4WXIb5Db+UvEAEPT+aQO+rCCrQSMY9B3KCg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0PkQ2Y3n3JT38OPXO+05XEU+URXWb2N8owHJ3Tbna5plWH8i1foqHSFtX445?=
 =?us-ascii?Q?X3+LFST3cz7gVAMgYPkgMjAgP/gLeLAFOyHHA/y/y7MnE6Di2tfwDQAxEg9l?=
 =?us-ascii?Q?F6am6Jr/nspzJj0I7isrEW0/TEPRvis/zw85G6Ez6i37h5Jb8Ci+Xe5iwVlm?=
 =?us-ascii?Q?VlkB/e/WdpHu/xukV5m9eQd3TMEhW6znf4bB3o9tRIC3i7TX93KjOAMrPJLu?=
 =?us-ascii?Q?jWyC/pIvXaMjd65oFohRBzOGOAPzYhEkRqGeZyVgCVhi5NOWQKecUJIoqi/e?=
 =?us-ascii?Q?i3nje9XapPDPbzhvhWYLGu7P18tP5DNtYj8o1ik9WLkxJ2u0sE1gzYXOmVIL?=
 =?us-ascii?Q?FVQ4kQOroMU7XKAzZbXY+kCFpVbRSROrS5Ka1cFjzzSbLfxStrzjuju5Ukld?=
 =?us-ascii?Q?iOKD6MnOfsqXdOdADnwEq/JX+H4CK5gSw2FUYZSIWWCajShBsTm7Hcnswfsg?=
 =?us-ascii?Q?tlUEFk8rQ4qJd28pisHvUiIuOdhVhh/30hkW/Jov+tyiYGmhvnlAlO+Mo8YV?=
 =?us-ascii?Q?uo8zTfoeSxu5JbbbOXZTLrPjgYmy3HLcdNXAstufrOdco2joW1dkziVTwcYZ?=
 =?us-ascii?Q?tN5Z6gaaSbgfukS7W/EKn0wFthoRjtv76fdTISzEhEM6oXdnt8L3AmT0TMtU?=
 =?us-ascii?Q?60nz8okhxAldQ6vJT8yrQk53jLcGL66pyQntAhk9QYAqATGHpvt+Me5tR78G?=
 =?us-ascii?Q?yqs7Gy8dokE1dgo97OzPsso3DzBiAn8K0cO3xEBEFTjjmxERBbI5zjr/DT0o?=
 =?us-ascii?Q?PXh+bCFSgYiPgRvO3FFm7fjMFUhO58BeC/ZkxhsEx3lipHa4nP6AcEhiZglD?=
 =?us-ascii?Q?LL0Cj0SOdwPv9epR6gpWXnGctrJBxHfO4Pnja9OWzRUPoWvDACGNA43iEyr+?=
 =?us-ascii?Q?BaeArJSgg6n5+Te4FSOgpjzkKsDhCaoPvIXs3h4qtsfiIbooJsHPHiz3h30b?=
 =?us-ascii?Q?FvQBANcpGtngeFvkTssYvq6M9Awd5k0EGHe5cr3hnkKuji+AP6LU4434iCKL?=
 =?us-ascii?Q?BTrtDOVe5pfubm4KrSJaVEplvos+L7g03IbJ8NUEYVX0+f5UgqZD/xlAt5v5?=
 =?us-ascii?Q?ltZhSR8XlVzw49FB9SrWVIGJWT4wAK6zoxRTQ6dCwCHf+a6F/HkdpkQ4zNhy?=
 =?us-ascii?Q?PxtzFxuL4B8cVj8EI0JB/iSulm0lePYVadziKkspaNm879Ev7/UBSLBuFfsu?=
 =?us-ascii?Q?NoYgq37S83ft/PDivAaXqckFt2XXAGlS41M/6ePtQDf3nOVhqLg+914rCGrz?=
 =?us-ascii?Q?Td6k3/XFrOQXYs+7R/WAZa2dydgHSEKoYk16RkxfNBHKHX1iikuT56ce2i0a?=
 =?us-ascii?Q?bTi0EfVFN01bun1C4uFH+Xcj?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <60EDA1922212EC489F2A9E1C01DAFF83@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ce6f175b-995a-4fe8-7e8f-08dc9db37a99
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 12:02:16.1331
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB1624
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=s0qAMrna;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281c::819 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
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

Currently there is no standardized method for USB drivers to handle
shutdown events.

The first patch in this series fixes this by simplifying running code
on shutdown for USB devices by adding a shutdown callback to usb_driver.

The second patch implements this new callback to the UAS driver

Kerem Karabay (2):
  USB: core: add 'shutdown' callback to usb_driver
  USB: uas: Implement the new shutdown callback

 drivers/usb/core/driver.c | 14 ++++++++++++++
 drivers/usb/storage/uas.c |  5 ++---
 include/linux/usb.h       |  3 +++
 3 files changed, 19 insertions(+), 3 deletions(-)

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/58227E2C-1886-40AD-8F80-7C618EF2D8F2%40live.com.
