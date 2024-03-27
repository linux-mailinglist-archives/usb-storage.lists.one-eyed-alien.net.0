Return-Path: <usb-storage+bncBD4JJBHQWAERBBNDR6YAMGQEH54CLPI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id C589888D823
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 08:57:58 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1e0af9cc176sf23331535ad.3
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 00:57:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711526277; cv=pass;
        d=google.com; s=arc-20160816;
        b=ydqWxPaVdiAKONhWrULpChQjlm6cwp/7kgIchq3bPUaSwCCukyEiNgaiafDO0UwOjt
         CH65ANWILJm5xPsXADqM4T4i/gbrn1Wdjl79gOfPVXNwpfgF+Iu51w+gU5Nw8pnMPkuj
         xuXyglk79J0bpE13BZQvKoGRUVk/271KnrD/P0JjvY9RsPl1RmDqargi970n7Llx50fb
         9eIHJlmm0vl/iDm+spRptH0mf7g9qWmdXWeZdR6xedK/CqvSvGB2hixshXOA2TOhDHar
         P4eSHHVOMhCTso2yEHIs8QwFNGea2PvnzWeK9BS6PzTEBtI2FtuhSZaApOA/e72ZM7Jm
         73Lw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=O940WwVQAZzBAAKnk4tYS1BWtl0lauKSZEPcT08s4A0=;
        fh=sUDqi9Y9Vxy+k4e3mJkG+H4dJIkhcSOX+os3tYVdW+c=;
        b=uMLtLLRMnnNDulUFoUxdXnT5VOJBSRXONImkVLYd+P9eFMdlr6jPlMYuZj6kXlDm+y
         dUQl62KP1xXFU9UvIoyTVwUaiegGT8jpWmfpjQmte7iVNZ6ookKelwWNO0QC1JKGBMPk
         dnfBU1ASxQZF5uHvNgq3Wh4SyFy0aBjXGXK7X2qFb60K48nDi+MZC0ZUJfffC6wSnHGi
         nD/5XkNu9Pqf5nOEIolnJjk070ZhVlJ0zgKRaB9VNnNfrSKnuTCMUhuALB/yH3ZlBYaG
         UAZAPoeMHJjkGHDpw/gFUzc1k6NekZSWapNA/1oyR7j54GYIfKQZ4fnFEZ39NEdRXP3R
         Z4Xw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=SrXbSmLb;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711526277; x=1712131077; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O940WwVQAZzBAAKnk4tYS1BWtl0lauKSZEPcT08s4A0=;
        b=Tv3vXJC3MbU9dKiCHbRdbLeIq54zN6qT9EuJzwJWhOOJF1Qq0ZOeX0FZeyYnMKvqAx
         vXplcmMjUzL9MbAMiy/3v3gGTJumGJuByR0hKdkE9u3IQ1PRTn0RlzAz8B/shrom15G7
         UJlBkKYpJPa6UnzvMcrMtmWbbINSzEhzU2a0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711526277; x=1712131077;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O940WwVQAZzBAAKnk4tYS1BWtl0lauKSZEPcT08s4A0=;
        b=lLl3NCrXXxZUUo+EyNdCJlD7NPWxazBHpa7PZ0l+pNThdq57mysnJIEPeMsFxUCfgx
         IwqpsXBdsVGL5Ny332nv9pTlOEAv41CNRoD+wajVGMy2B8bL+ubESmdI1V4K94xzq0Ca
         YBpuJSFhmUA/yU9hjzg2kdGSNMKluCwN9hsxO+Pqft2lRam8+qrSY4+XlmbOL24eyvrU
         VOansvZi9ug1WJg/cawDu6RkhYTtcRGUsDsPqUWIUxDJ4rsWEKIcE0nVLaCrcL75FXZV
         ffEux0WlNrV/7tsoSy6TnON0NYIPgLl24r9iG7zBD477GiRNRyVOTLTyzuayaayU9IEu
         9zhA==
X-Forwarded-Encrypted: i=3; AJvYcCWGS4Sm57QtWh7ltItUe866g0a3EwlwjvJaPK+FhVbj0ECHYtW6QR9OiUC6JHKEVENn+8FACIhuAOMCAA93NiA+UoKgfh2Jz34Q
X-Gm-Message-State: AOJu0YzzohzUfJlkahRw4Oxl+m2swCeYPdiUCBT98XjdkCvWivyaYq78
	MLWwwKQV8azdm5gXwbIEyx2ER3AKNtY99naWrwYcrc1wWClA3Y4+CZBvzvwI5YM=
X-Google-Smtp-Source: AGHT+IGTJvOGU6w5Nd+LK9bSrJrR0d9shsnKJbNDsp9XEnSPlxPsHEI//1/nrGYdCUoR7CD+RYdkeA==
X-Received: by 2002:a17:903:1207:b0:1e0:b629:b119 with SMTP id l7-20020a170903120700b001e0b629b119mr595718plh.1.1711526277244;
        Wed, 27 Mar 2024 00:57:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:f641:b0:1e0:d4b4:a45d with SMTP id
 m1-20020a170902f64100b001e0d4b4a45dls1855641plg.1.-pod-prod-07-us; Wed, 27
 Mar 2024 00:57:56 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCURJY4qozPfZZ53pp91L2vnFPzJADNDyLv7jpZEZAMOXAWUpIoIjqA9wAJGwI11D9vP1h5AeTP4stUZHw07ZMVibnRLj1zCDj/CE0YWmM0zb+IKXVo=
X-Received: by 2002:a17:902:f693:b0:1e2:1df:449b with SMTP id l19-20020a170902f69300b001e201df449bmr577656plg.69.1711526276074;
        Wed, 27 Mar 2024 00:57:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711526276; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgZ2uj5R1mI7y0FrtplMXvECN1+gdLPAAqWHTX14ZKP7f6uSXiWFlhs+VRX7ikvsAe
         Xzj/aY1yYnGqGdX2maRNaDCsvynmA0xoHaFQGVplxklylqp3NOnywvDWU0Ghjh0b+Dru
         ypOwDdADcndi1lCpzjET5GO+zckMPfyH46tQLRUqXW+U5Tb9s7SWDfTCVQU4XIsylChA
         m4q1r/U4igJdqO6EsuLq2H2/hGvY7LJLANnGd0+juLLRPKXN8gM7rfw+UAFfESQbYs0x
         1+4UnE5BkI8qRL53OMg52nAtxlLoiX43lF34fMjr5ozdaU6bxqipC8SjGdvQJTr0dBBP
         JCaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=nUnY80AUxnZ/SEHOshOFlSNKDOPCX0MdUNrtcVIJwFo=;
        fh=jZgb3H+gKzcp/z0a319gx7x/ZAZphEDmU+4AJnbeLTs=;
        b=ciUhEw7Z3GHEENx6HD+B00ygV3U/f6NR3ah9y/iefiz3NpTYBMyXWVqCDdgNKiTb+s
         5cF1AQLFL0HyF5UmsWYYrGotkZrfP5+9Tfo8Ho+OxvSs3NekmbpzCKVuu6glSci21ICX
         dWDyN+HyGMg30O5ie5PaWF9vtNSsggTdQMzL+TDyNOYHnijFTJHK/glT4GPQnoK7wMV0
         2aefb5wTMCiIxMHT2RAe6Us7vB5bbpowAMG57hHaTAe3GJRS5j0J5QfVRPcpL68E0hQq
         8qMUWp1au1YbRTMCeY1ZouwBVsk6bnsDcBVTJEuq8sAvjgY7Dlrd3IY+tsoaNTyRE0kv
         Aw1A==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=SrXbSmLb;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on20601.outbound.protection.outlook.com. [2a01:111:f403:201a::601])
        by mx.google.com with ESMTPS id a18-20020a1709027d9200b001e155021792si700071plm.250.2024.03.27.00.57.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 00:57:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) client-ip=2a01:111:f403:201a::601;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOYy+WIBPQGm2soXDbublHGD7khZzUPnWVLFW+0T5FzgwC0hU9zOddDs16w9uM+R5CahWrZW9qJaft/mlv+ygXDZpv9gq4DtDwinyhATnQw6yzmcKmgCSHZiGr+8wtlnO3AnQvC06YDgSqkr1RMPCSXdMkKD+VDoETZr9bWKtUYK+gV5sPiTcyI0aUZMtPwJ+GkFfYwP0p6TNReU5pJ3rdPJibymgzuul4ZWaBcgW3OUKhUbVihfRUElawLk0rADk9Ffaug9hwPRUEEiFQi5OeCV4mZVta6KTPOrCeG1ICArqOxLgZwoHE78kLk78Gm0YVDURtVhl3u/3axWHuu+3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nUnY80AUxnZ/SEHOshOFlSNKDOPCX0MdUNrtcVIJwFo=;
 b=RyifpvFY4UAW9Xyhm+DMDeL7iGjD0k31mNe09J7VxghUazC6fYe4qmzScRIER5nZ1Hi9yQpp8LUrg30bfthztSB+1OfsQS7kIpiNDQDJ0o0uoLZS/kJp4dbmisyOqRkGmuTeplyCxVsfDu8CBmtlXoHISMCwWMW8OOZHuoLboxNHfRBtXUk1a/+Py4LRdidNk2PxbV7K4HnRubn+DdbODgwcPrVdvx64xr/PMA9JtZ+iOz78LHaWcFJj68FnbNTOa6Ia/vG2kSCNQl+uGS5HGntxl6xzhbHyCC3XcTn1bA/kKkSXo6IkYGaxOWMmjie4LUa22v7YGAIisU5z87EQCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TY3PR01MB10191.jpnprd01.prod.outlook.com
 (2603:1096:400:1d8::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 07:57:52 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 07:57:52 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Greg KH <gregkh@linuxfoundation.org>
CC: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Topic: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Index: AQHagAnskZ+PrXZ1a0CyN6BGkMIiXrFLFjOAgAAcfLCAAAKHgIAAAT8g
Date: Wed, 27 Mar 2024 07:57:52 +0000
Message-ID: <TYVPR01MB10781723CBD338DC3EEB5F20590342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <2024032745-transfer-dazzler-2e15@gregkh>
In-Reply-To: <2024032745-transfer-dazzler-2e15@gregkh>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYVPR01MB10781:EE_|TY3PR01MB10191:EE_
x-ms-office365-filtering-correlation-id: 60c2d1fd-55e5-474a-1f21-08dc4e339ac2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rAaip505sk1A37Af8lujYVEUSipPbYbY1h7ushptBr8tNI6exQ7WGXaW2Nr7XLZiqyDiMLZyDJN9qIN0I2c9WJLcdZ/sJtpkGIma67FbM9cNUDZmq0AkTVSQJnAVLgFHVLrv7ShEDqx6ADnYZwok6I9vSvQEv+/XXzPFpZ33fwjVJjhTJ+kGw5MAb6iAgX8lcaLNV3fRGwqrOO82krTZ0LVJIP6BBQUQGvglIQbuLpSu/d78qLfpb1zgX+llk4+nWs3MfuQeoKOgG/7Ki9LKiby1q1gBhu4Pp48EyuwAHAZdApQvTu9BdZGkbsDkLDBSXjXFp4xVRQ8OrbewzCh9y7GErguwPgemW6jygIihW6binA7AhjeGyfGsbehePY2waH5/Dj8y8SOJr8K7EJLZWwoy3uBroEHshRcumHDnft/I9Rl1kuh4to0OIPpxVQWaSZyHDSy00sJNfg9gnytRrwGLHQ9TAS8FBobZj5UT6rJ1jFpA6hwRLFN2DC9pq6Rlk90psp8HxBmbTf5sW0JesE4dlt03OTKjE+9pfrr4VLCImjuyJDU5Q4YsQ3Kb4tG7Mp82o9rPDPNwwA9jqP+R9aKbYGEZpvxwjfd02gP6LpIbqpl61hw9SBjZUbxn8gomJoGRw9ijOTcpCwt1fyWdxVpVPrqGz3TBMNNVhIXYCRuY1UPZOydvBCPBTHp1OYAbAbG3VaH8bYMsEcKvoGcOFAXRIC7NHlBXNnc70wPyNUU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-7?B?aU50clphZUhLSGxrcEVqelJ6bGVHTkRTRVROMHduc0RxemJVTG5HY2pXNmw0?=
 =?utf-7?B?Z2FqRm1YVzhWTlcrLWdjWVBidVVQWlliTnppeTM3LzdmUVBUYXY1L1FGRUlp?=
 =?utf-7?B?amFVVWx3YmIvNVpqWEUzOW15L1pIN3E5YjlLa0o4b0hTdXBVemlVbldXWEdp?=
 =?utf-7?B?SjBQVUtNN2NvdnFFQ1hHNFJpeXdJaGd0MGhJVDNRdml2MWxwakN2dy9zb21F?=
 =?utf-7?B?TG1IWjhuSTZiSWhtT0EyUFR4S3pPTUJIcEY0UEpKcGtnNFQ4NHRsU29oMVBL?=
 =?utf-7?B?S1NOaVlyKy1ZTFYzeldYc1pkU0llWXNTKy1NbG4yL0hGaUNhN3dwcCstUVR6?=
 =?utf-7?B?VjZremIxbDA1dVAyLzJCZTNyRzRSVklZeXJ5VnN5MjNuVERBVm9rbmRENmM4?=
 =?utf-7?B?T3FPcTdNZDlleFRMdVlnRHVSOTFJMmFmNFg4U3lJV2o0Q2V1UHJvaUcvMWZw?=
 =?utf-7?B?a2s5UzVmc21aTnVhVGgrLWlKMk54TVhEVVBJcTRzTWM1UUFOQU9wVDBNZGdi?=
 =?utf-7?B?aEtwWGRSMHVZcHpSNEs3Z21oTklvWnBSYk85NWZ3OVFXbll5RzUxdystTHZm?=
 =?utf-7?B?eXlmcWhQdU51aDU0ZEFYKy1FZzBFVGtBcXQrLW1oWVNYdDd2WlI1YUtFYnRB?=
 =?utf-7?B?WUt3bjFZTElaMkV0ZUF4a3hFWjdKcUFyNFRWRmZDbk5wRXN0TE5TMFh6NkI2?=
 =?utf-7?B?YS95MlZRbzVMT2lSSHNjaE5vZzdSd1hCeEpUODdRVFo5UjczVThLSGZHRk1l?=
 =?utf-7?B?bGhvR0ZwNGpocWRLRFFtVkZQSGg0dkxFeFM3M2ZuRWNDOGxXWXlqcktDVnN1?=
 =?utf-7?B?UERhdTRucVI5a1lNRDNRNTU4U1Q5b0NOdFQzSGd6YzlSYUpXZ1lUQktqS2NU?=
 =?utf-7?B?bjdQdjNxck1RaHNDVmhpa2VFQ25IdnVoRFJrY3F0Z0NsTjVBNFFRNmd0RHBT?=
 =?utf-7?B?UWx6UzZLcFN5b25nMVNVVk0zRmRwbTRRN3BGVENCcjJBRUZLWG82U3RpeFM2?=
 =?utf-7?B?SjhuNXBRV2Z1WnExNlhldDM4SU0yZmg4RWNHNjFBRENLeWp4b215T3QyaFB3?=
 =?utf-7?B?Ky1GN1hFd3ZuKy1wNEw4RzI4WFJTaTlCTURMUUpWRWtDVlBPMWJnQWFGNmFm?=
 =?utf-7?B?MXFUZ2c1QW1BOEp4Y3E5QWd6ZlVQanhoVGkyYlNhWXlneFlnQWZoZnJ4ZEF3?=
 =?utf-7?B?cGhKSG1jeUl4UnlBYVdDNk42VEFhRDhHYnZGeFFLZmhiRklGeEFzMHV6V1lF?=
 =?utf-7?B?SVNVMTRjZUZZN2NpeVVsdkx4WmF4MEVWeTZlby9PcmdQNCstM0x6Q3hNc0Fk?=
 =?utf-7?B?VmI5aFFPTFphMEJidGRCWW1ZL2VYNkhyeWlGTEZTODNsY0J0VUVjUzFUVjZI?=
 =?utf-7?B?YzIxbzY4SmRPcldSVVJTNTJXWTVvME1mVistUkFieTcySUNscmdGNFBGZHFR?=
 =?utf-7?B?Zmd5T2hxQUEwOVpkR05xL2NYUjg2NWN3bjR4ZEcvR2EzSzlLc2xtVWhJdExk?=
 =?utf-7?B?WW02RDd4Z1lObm1rL3V1ZzJKZ1JYOFY0TnNFVTVZcEZXTkNiNkQ1bWhqY3dq?=
 =?utf-7?B?MWFBT2tRL3ArLVlQTzM2dXBNM2NBeUtVaWJ6eml6b3pONGlXNmtjb0pIdnlq?=
 =?utf-7?B?OFNoRkNSLzNldEFQQmk5aE02VzJwcDdIQTNwYlJvaEZPMnplWGs0N2hmSGtL?=
 =?utf-7?B?WHVUeFpGWXJYTFFZVzFGY0tzTTRzSm5EbnpwT3JVd2xVeGZNZ0xRaEh3NXdk?=
 =?utf-7?B?RlhqYXZXZnlkTmkrLUFjNDMrLWNzQUI4L0pnWHNKb01GajVaL0lPa0poTVhV?=
 =?utf-7?B?SWZBOU1UaFJLb29OS2srLTlxOTdFY3kvZmxpdU9ibystZjh6bmxOZ0t0NjBv?=
 =?utf-7?B?c09GYy9WUFJ3eDdhTmZYNmxKQ1dSb1gvV0YvNHZGM0JodFZ5Ky15NlVuOG93?=
 =?utf-7?B?VU8vSzJ6VFJ3clVzeFk3djFUZXdkcnhJTEczdjdsalBBYSstb1lpQmR5MnpX?=
 =?utf-7?B?UG13Vm9EUThRU3FseVdnWlh4MThKamlGanM0Q2VkY3lnNkpsdDQ1TjlZZmVa?=
 =?utf-7?B?aEk2Ymk0T3E5SUJzVkVEc3dpSlVRbDFIaUoxdUdlMk9ScGY4clJSKy1PS3dp?=
 =?utf-7?B?OWVnQjVJTTltSTlFWndzb3NWNmcrLVNYS1BkekNBOWZTR2o1SkUyMEJHMGE4?=
 =?utf-7?B?Ug==?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60c2d1fd-55e5-474a-1f21-08dc4e339ac2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 07:57:52.6197
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kg5hXeOcwW8pdPxIvwkc7tBgNHG1d/Vc94MUsI/B+gPKfE81e5U4uoaiwzJgN5oxYaQvg7cVtwpZw7M7BbsHJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB10191
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=SrXbSmLb;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted
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

On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > Sorry, but module parameters are from the 1990's, we will not go back to that if at all possible as it's not easy to maintain and will not work properly for multiple devices.
> > >
> > > I can understand wanting something between 1 and 0 seconds, but adding yet-another-option isn't probably the best way, sorry.
> > 1 second does not meet with performance requirement.
>
> Who is requiring such a performance requirement?  The USB specification?
> Or something else?
This is our customer requirement.

> > I have no good idea except module parameter so that we can maintain backward compatibility but be configurable out of module.
> > Do you have any other better solution?
> How long do you exactly need to wait?  Why not figure out how long the device takes and if it fails, slowly back off until the full time delay happens and then you can abort?
It's IOP issue and difficult to figure out because it depends on device itself.
I know we have multiple devices with delay_use=0, but then it's recovered and detected by reset after 30s timeout, that is too long than 1 sec.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYVPR01MB10781723CBD338DC3EEB5F20590342%40TYVPR01MB10781.jpnprd01.prod.outlook.com.
