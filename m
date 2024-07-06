Return-Path: <usb-storage+bncBCFP7G4HQQGRB2HFUS2AMGQEB7PLK5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B692936F
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 14:05:05 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-447dfa83881sf2018871cf.1
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 05:05:05 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720267497; cv=pass;
        d=google.com; s=arc-20160816;
        b=xVm8oIK8T6McCaqvxCZ4o9p/9n4LIR7d3RIWkLlVuoFG5SQ/g+e+s4WllKZ4MGxuY6
         hyWKzsRFdvB9Dhy3eqCKZCVJ8EL+jGxBiUnRD6eITyr2wmv5aQZ+BjTU8ZjxBSXpEkNw
         No9FmRBK/5jabXxAavOnDaL2G+FCMwYRz7gSFJVTjQ94Rg86u/XgDIBEnhZlByd7FzZU
         B23yAc1Xjq6NSaNLyGx2B/Vyi4rDih5p5Qy7UdqbURxeN+OoY09J4/Ku/QKVdefAHH9l
         vH78kpSHbho4HpSfTAB5O1vXFZvFbq4ozs1hN4d+jZ+VCli1l3FPny3XpIZ0RYcLavWo
         qLIQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=tza7yFAmuw3OvLWuBRe6q9+kbVn1fFHRYACZ1dIKvJs=;
        fh=pz4J6+DZ1dBCpVfdro09P30IVaY47GcyMVtqFplSxS4=;
        b=XS3X9sCqpvHGNS8puiuzq5RJIWUSOCTPty1C2kVHhzoCctFMyUkVRL6FzwkHRwC6QT
         1tCJmhE+daZNrbExmqk35gL8aA0nSGFFZAnYwZEsZMdCi5oxK0R8I9PPvgbv9yJwXIP8
         o1MGVwJb7v4HDBnqJbn+f5Qz3mwExQDyf0nMIMMOxIxFISI15Tu8qQC/Aa1v+XytMjDZ
         mScg+FTSWn2hdOlkDH49LP2vfgvZ8MR+NbOx1B6WHJLPmjwUJ6xCQ5oMYJ1rQl9awdrW
         CI76pTR+NHJE/LNYBl8WuhViwtobxw68dlOEAQX72oJwAvBkx1/Aq6bQt/MNjhR9m53t
         FzJg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=jbjQ5m+L;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::80f as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720267497; x=1720872297; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tza7yFAmuw3OvLWuBRe6q9+kbVn1fFHRYACZ1dIKvJs=;
        b=cjFN9whRdyfJWZ3TNr9+O3NOHw304QNBXQ3wWSiSfbQbKy94MzI/1nJHqK27pvjkKD
         5W7BUWih9guYuOImWQ626DsOMY802jd1TXHBFuCy5IYEwSml42V8wTKPiZs2QtJVVvRO
         TC6XkDvBhYTWaO8SigUiuxZhzsA9+m+i12F+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720267497; x=1720872297;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tza7yFAmuw3OvLWuBRe6q9+kbVn1fFHRYACZ1dIKvJs=;
        b=rgNwlyF0cB7js/iPF/+zHlxCmuRkAxPgu4kM+APtAsTuZ/TJJGbO+AWDXslrmVDURm
         ZV8yv1a8gjg+v/rpyN/4NiWH3gdk/7wBHAo4RSH7RiDCStFjPBeAStYifdORd2Hl+jw6
         XWYfy78F9z0xQOYGM8GjpPbociQk/RT1k3ON80JI+8SzXUSSSkO51k9NtVl3NO7Wtr7P
         47LdhyZK4PoEmMLBok9/zXiQN/Ug3bzbycXRk97V3uNutsUQcNaKLpZ09qA/RCeotcuL
         0St6TKYIoAwsQ6Ze0LjEo5XbOjyJT4p47/4WYOSGCknaT7QuZJkRQeTjQCjDnEb/rNhE
         sHFQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWWU8yQPTKI5/fk7s7/682vSPtAwDuj53moRdSDY7kdgZWVYSVeroUZsvh19/SWXvItm804hMXnQaH1v3D48Fz4Ni5paWXzR4A2
X-Gm-Message-State: AOJu0YwWUqZ40jeVJfUBsJSgWPoNeFm1hRmrxC5PL5GBJ33HvTLSnyLq
	U8MWAMtlAx/z26QnFN2UuLnQWRNPLhaPfIHaleDtqwUavV5sq95pM0wO5nY3w4Y=
X-Google-Smtp-Source: AGHT+IE8ZUoZlWBmaoxO5IfY67ZCIYo0a8XMQxc5m/Mh7xT4C6okidUUa4gfMu7OPFFpP9BWbncl3Q==
X-Received: by 2002:ac8:7c4b:0:b0:446:395a:37c9 with SMTP id d75a77b69052e-447cc1cd760mr77307711cf.4.1720267497120;
        Sat, 06 Jul 2024 05:04:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5884:0:b0:444:b691:8723 with SMTP id d75a77b69052e-447c9cfb88fls35292701cf.1.-pod-prod-09-us;
 Sat, 06 Jul 2024 05:04:56 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWf1IVFEnkt/szPc/HJliAvrrJaJ95dN2GSCku9tFldrrXxJzH11JGT0NedRNCGZNkLKERR2aQwAd+8lfVUGlS5wCkvwpCfuhQlEQy6QImRVZlzKJY=
X-Received: by 2002:a05:620a:1a8f:b0:79f:53f:571d with SMTP id af79cd13be357-79f053f59c0mr89964585a.58.1720267496255;
        Sat, 06 Jul 2024 05:04:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720267496; cv=pass;
        d=google.com; s=arc-20160816;
        b=R2FLKePFevE43GaSRIKaBPqYiCYDM9GJi/Lneax1Vbb4+647Zigvwk/zxugR7Edfot
         lkxAL/RPUdloWy+gOiO1DNUTuv4Xzt52mqv9W8Lb3LwmSXbT79F3xEcwDl02jUm9h/qj
         KLc26EBfIxC9VrhgUPHqd7o+KpOQnAEN3N0RSnxNwGJeKGFSNPXoyQ7Hni1XgzUseaVR
         bmzWOMCn10CQhV+kM6fIv+3DqkdCnFOtnnELW4VhfBV4WUkqhDPr8SBZROG6AzReQe4A
         fJdbsGCBil91Lq1Ib5Ea1TyhNTQobEYeJgYu93ypXBbUNiZ6QN7YZNCk5Eayf054jpa6
         0LLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=s0+HzOAKgOSOLCTPB+HgtrTZfYPWy1f2kawCiB4UfQI=;
        fh=4HWS1BnKmyzr1jKtPfMCWRzQy1hmtF9bNCvfHraD4kg=;
        b=J9nXaYqMPYXK0IKDM/pDikVIaug/uvP5OpzQcW7s6npIQuYQ5ZpS2j2cO/mgdYiC5K
         Cc3IxgSONpjS8ZKeN0clld/mJBcE9kYkcH/OEDmHSSBclZXwwva/yoWi1CJsIMq8U2Na
         JtJL+QiAITNQ3e5m1rNFQM/oAjmIgLEjtRIz0OQcp7Y5PDw5ecWgz5tv2h1i/F7LaFyD
         h/yeH0EwVxol051uavFNIErD01T5Ci0gJRePuYBFoy546Oe5lFUICK9zMnifvCPPepjD
         x4FQyZqeys8SOKWd5TJuu5bRNeQJULXzWCi3YsU97GjMJ5l3mTKhl1VTef1gzZvW0+3y
         s0dQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=jbjQ5m+L;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::80f as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01olkn2080f.outbound.protection.outlook.com. [2a01:111:f403:281c::80f])
        by mx.google.com with ESMTPS id af79cd13be357-79d69260b6esi2022653385a.139.2024.07.06.05.04.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 05:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::80f as permitted sender) client-ip=2a01:111:f403:281c::80f;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWao5yovabtbV7ht9rg4q/GcryseKSljCvD1bb/tdxqgcFdm1XInSb2u+Uw7yZYWDoZsJvYagdIP/wWol1UQPBabpyxHGxjzzqiO37JhM+Ocr05mBweKSgl9stKL3Tw3zH5DLZA1r7d6a2aDL3b0yAXhIvf4Z/efjNtFJBWW3ZVWuBCixO48WluuYB2BLj7fh/dobSIbYkOMr3y9hthl1kofwHAYkH1Qk1glh1DaVd8+5F8GprcLCDJVEGO7EGKvyBichFOfKq8ikFGvZLxHa3hm0vrQJnbu5MfgbHD1RORNe29Q4pU1hFgqj2wm12rATLBPX5eZ0nfzveBPWRMdHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0+HzOAKgOSOLCTPB+HgtrTZfYPWy1f2kawCiB4UfQI=;
 b=X8ax/Ee3uJz/4HDRjbgXudiN416UDi6/QzUNVuEA0DfqZkM64Fe2LSB9E6nIzzi9+F6A9N3RypQzIq+HYy+3TLK9SJKEpJPI7PGK8c6rrpcarBlon5jUrQNvIJpmDh0hO+e55Z9l9TI9tthGAfWEvIFEwl/7jNuvJth42XXXWpwr4a1tflM4brnr5uKyLdxA4HrEzoo/M1ZRYHXqpO3jdVfro6j+Q0MFLWqN/2hNJm9LbMc8BzCHBOObhRMHAE8dlS4BejLb/fHWzajwCglWIuiDposloLnzYRQrSTv67V1JjL1NJzTCWyl7L+YgwnYcTXwmuDwDBNzq8IyA3Yf3Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 MAZP287MB0611.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:10b::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.31; Sat, 6 Jul 2024 12:04:50 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 12:04:49 +0000
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
Subject: [usb-storage] [PATCH v3 2/2] USB: uas: Implement the new shutdown callback
Thread-Topic: [PATCH v3 2/2] USB: uas: Implement the new shutdown callback
Thread-Index: AQHaz5yzQFDokFeVvUid6lhswzVMIA==
Date: Sat, 6 Jul 2024 12:04:49 +0000
Message-ID: <E3A502A9-6572-4F1B-9EB2-2F6F0C4E6EA8@live.com>
References: <58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com>
 <7AAC1BF4-8B60-448D-A3C1-B7E80330BE42@live.com>
In-Reply-To: <7AAC1BF4-8B60-448D-A3C1-B7E80330BE42@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ddM8LUVMufN/Fhdntw8EyoUfkzl7a8mxYB1LVr4WCWg95ai8GIKjYnFTeZZdWt3a2myn3CqqQps=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|MAZP287MB0611:EE_
x-ms-office365-filtering-correlation-id: 8811a9fb-7eaf-4b37-af9a-08dc9db3d64c
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799006|19110799003|102099032|3412199025|440099028;
x-microsoft-antispam-message-info: OagswoGEC3Nztk1EowYWjQLRpG++/2m9tac8Z8woiQWhpbhJOcW/hfsamM1EZFkxLrXa6WW7UxInrsZJOviKfVsHRXXUvI0/Lpe+Y8gu8kVQKtHxaBua86wn99ilUA3WvAJkMlfm491FAW8Kr0RpmZNSXorZwSfZ0+TZUmv8OCfSoXklfYiqquPCliQGyPb3B1re/hdtfyW0z2JmiOaAxXC/jSAdj3qjjFtljBj79ZYUkGn479wLNpvl8eIDFw1mtTfPqYXrht7LOUtSseTj8XVf1Fg00Ydbo6igiG9o3u8YMEMRUWb3I6+yUNn8Z+7Jqjgia5HLrtxROFhrBl5GYm6Q2xj7MLclPl222iQmJ179xynUJ6Pzefz3xuZyTa/peFxFr34LT7eSB99VRK7/ll6q3Ymtb1zdhnN0kZzscA8o+NsiPmxPIlPvKkVRbfe9D+XdCVK/7DMEwQA9pilwk3QJTjj0JRgYGiHgrwC40KtypOw3LXUZzGxpdwMM4WwtdW9J+4afnTokhThugTH3XCnUNZqISUHElsjIroU+1VMsKh5s7BTbn4s3dgjGjA5f2RnNL3xNuDEHNoCBleTdYkD1RnUAgSE2kEhAoI3ZbGhEGKnsVrUkDJE3DV5pHZwbohutk7rXWMxv0dxFEaZ5sg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KVXD6XgDduyrxcbCiNlfx/5BYR8i/H1z1msb7uS76UUEJWThkN3lEWnrtWC1?=
 =?us-ascii?Q?/fVrjtQCRdgnE7mOShOIkujxPo+ubEWbVqzcAzWWdpaTTgRDNiET5xPzrR+0?=
 =?us-ascii?Q?3Mh4p+7H5JLko79tCW9x2ZhSyH+6tB/YkDshLd4Jbhc6n44b5hPIff+Qxo1+?=
 =?us-ascii?Q?6cGPlq6XkFcRrrD2tvXHMoSu3UNre38MW/r0OSwzJDB1f/dUV+obvLUHEGKH?=
 =?us-ascii?Q?8VPmnogy3ta5bGrX0QC/c7OUYzQOY5blrOzOCWY3dxAneaYCFtrO1+IQL6Y8?=
 =?us-ascii?Q?8EGOC+nNyjivGU/GlaUmg3lgC5XcawTCfxwJVsdIScIqBUh0O7my5Ywxho4U?=
 =?us-ascii?Q?Hp3ID3YrsJokH/cCGou/YtQd4CmrLtZwgWFnvGMF3x8NqOzCqkURofXWH/J6?=
 =?us-ascii?Q?jZdBaYFIZBQfks+rswBpnxX7cq89eVVdmDcQT2JsLO0T8Q1UGMfO0WudABVD?=
 =?us-ascii?Q?8r3BJOOM3inchfwqrf6n0uPxYn0fte0EWdiamDAz4Lw84eF1m07YOXt9ij/z?=
 =?us-ascii?Q?U1MyKGl6pSRiK4CNR6G3fDrhRf4nYc8djMg2UziWySyQtVbABrdfnkOdxBMg?=
 =?us-ascii?Q?tXHYIvzigXBQk3s3AgXzBc6KBJt/AJS+FNVH5baDqxfOIgeFp4GGogIb0bvu?=
 =?us-ascii?Q?UkVbM9rD5getb79KMwrgvSTKOP3jKROWHWXEa1LQmLZNSOG/0RPn0exL5xKO?=
 =?us-ascii?Q?XhkQmbK7t6h1ZnpkHecgIkQNnjFnpgrT5RfCI09EdPFohXTeuur5EMShgPA3?=
 =?us-ascii?Q?aTI2smsNLXdp8J4jTD3I66xub3EXeTqqcihjnQzkiF2FIiVFLAm0N+tZUH2k?=
 =?us-ascii?Q?Uy28UqHL1AU9Kp76St0iw3VuciHQupw2yX1X4vsekmvdoPicb3OlgAmuaiLi?=
 =?us-ascii?Q?K4huCZlCwOBwrucNdNxOZb9bGK6wTxZLTLcnaQqGd2NHgcVGUiQ8zUKYIPDd?=
 =?us-ascii?Q?bz9wWF4JkuxLHuNNGaLADMuKCWOXyDZ1az3kO+eCMRyhRTCU9outmysn7Pzu?=
 =?us-ascii?Q?xlGBnbJy+Roykj+9PxcUynvr2e0Xz6JNnvX8bzTJuDIUOSDqfBmdsbcqHasZ?=
 =?us-ascii?Q?jJ4rwtbgb7DDVB4Yo1Uflr1aEbOJGMsDCS/EhBkYAtZvBX+y4/O6Qvr8u++y?=
 =?us-ascii?Q?53Gl9REOR/IBDgwEzC2F8vIAnRMKNk1279R326TgjFIj7g57ohX53Fd1aVIH?=
 =?us-ascii?Q?1U9E/mLUFb3M1w6E0+dXhhXiNLu/T372wrPOfYB57xnZTLaqS/s4U7atQF9q?=
 =?us-ascii?Q?i0ZHs1y7Wg2XhcIN1mkTCEZui3kdSm3jWeiVBAmkT91OmeMeaUk/lqA05vfD?=
 =?us-ascii?Q?fkT+DVBPjBqLKVWQoyuaMPsG?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <4066DB1C1A0D2B4993C86A646AAB16B7@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8811a9fb-7eaf-4b37-af9a-08dc9db3d64c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 12:04:49.9232
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAZP287MB0611
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=jbjQ5m+L;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281c::80f as permitted sender) smtp.mailfrom=gargaditya08@live.com;
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

From: Kerem Karabay <kekrby@gmail.com>

A standard implementation of shutdown callback has been implemented
for USB drivers. Since the UAS driver implements a shutdown callback
this patch enables it to use the new standard implementation.

Signed-off-by: Kerem Karabay <kekrby@gmail.com>
Signed-off-by: Aditya Garg <gargaditya08@live.com>
---
 drivers/usb/storage/uas.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index b610a2de4..0cdbcf825 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -1232,9 +1232,8 @@ static void uas_disconnect(struct usb_interface *intf)
  * hang on reboot when the device is still in uas mode. Note the reset is
  * necessary as some devices won't revert to usb-storage mode without it.
  */
-static void uas_shutdown(struct device *dev)
+static void uas_shutdown(struct usb_interface *intf)
 {
-	struct usb_interface *intf = to_usb_interface(dev);
 	struct usb_device *udev = interface_to_usbdev(intf);
 	struct Scsi_Host *shost = usb_get_intfdata(intf);
 	struct uas_dev_info *devinfo = (struct uas_dev_info *)shost->hostdata;
@@ -1257,7 +1256,7 @@ static struct usb_driver uas_driver = {
 	.suspend = uas_suspend,
 	.resume = uas_resume,
 	.reset_resume = uas_reset_resume,
-	.driver.shutdown = uas_shutdown,
+	.shutdown = uas_shutdown,
 	.id_table = uas_usb_ids,
 };
 
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/E3A502A9-6572-4F1B-9EB2-2F6F0C4E6EA8%40live.com.
