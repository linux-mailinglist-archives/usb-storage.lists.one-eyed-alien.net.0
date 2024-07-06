Return-Path: <usb-storage+bncBCFP7G4HQQGRBLMNUS2AMGQEOUEWOWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2FF92920E
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 10:56:15 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-e0365571f87sf681610276.2
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 01:56:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720256174; cv=pass;
        d=google.com; s=arc-20160816;
        b=WR+jC+fSJGTn0Heo70bVZovPztphLgvQplour+TIHp9JYAyqI+rVTkrpxYieju4F/Y
         heyKZV7d1ge33bBvbNd3RUPt0ik86NJ6c0H3nhcGFDT8+3HAhf2/EmpN7oPGCCfaGcAD
         cm6WhGIxz310sxf4dGGbDzdAHzRTnfkeuZY1Gjrxu0XKTmgTeXYFPXSrDy520FqPnJqu
         QzJSvCxjNaEAEoNz3/qhYRAYXiJDw+XigQ0QD//fkWUpjJ91kCRImC3gP/XsbrL5Lw3H
         t83EtBVJl0gX/ExIZREFm3pCoZhr1dtvWnMIzUMlU1C9v3hasj4lfNOPuCs6tAkU4MQ2
         y6NA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=w8yxOri3DFHLIrkoceUh5krGZioboqDfGswvbVPGrRs=;
        fh=MJ0hWOi3t5mOOaz9XlCcn19/0Uagksq4UH/81HiYDsI=;
        b=JInl35QY5sVl2ci233z7WFJcd5LHk+kk+DV3m36UVR0q7zFkoi29zQ6fXWhG8jng2t
         lTMc3UBJ3jhEfAEFWY2Udu29muoGIkCmdvnteowmheKbIzRSpOLMktgZasUfxWkKV3hU
         SxTsh/5sDWxkxrfoNciAYflXyfn0HMsvrW6+u19PvujO8Jcl4Ess7D32rkxEb1hRThpO
         oAdYdxGRmAUfrzbo9z9ggjEtnWYlHj2gXIs1qUUd80jYRivtyCfAgcx9ixBZJGhjtbSo
         kxg5kjlwvsJhNTCFghcaXoW36kCihC37tkOXjecR6O8U9icm0twJGm+pwIKgnwLr7SU2
         ZRpQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=HIRhDWVJ;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720256174; x=1720860974; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8yxOri3DFHLIrkoceUh5krGZioboqDfGswvbVPGrRs=;
        b=PFJfkKaUTq9fpgDxEHf79SZysfSUW2kOCKJrbkKDlnX9qlFAiHRnOUEmYbnVAigWDw
         9QumAcWXPHIjyhq9DU8TPSKRTpYw312uUChqZYoiQQNEz9M7ZuGbJXKPHBqDfrdxIamv
         S6ojqhzShkcsfgqcFgikju0RtZ30xXLGEZoJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720256174; x=1720860974;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=w8yxOri3DFHLIrkoceUh5krGZioboqDfGswvbVPGrRs=;
        b=OvtEnk7kjE+4pPaSREDSIHd1oRoOpAVIwbrLZg2LFn7SHHyWWW28wxgYaEVcnyrFtp
         WsqeJUt3gey70PY49UL5AjRP/ZoqwyDjhn7pXDkKqoLNod+eImADnfPSpIVoX/KJYLey
         6iSAjRqKduD99d+pan868yQQFIngJjLod1ANf0uBTjqkSgGtjG3lcr23p4JlibRNqY4i
         zHXbc57SoOf0JYc9V39EeHaNddFzoKn6wjRcUVWsq6zkOLVoy+Wbcl6Z28aUqQfmiFrl
         HRjpzBKPq5fFe6IWz1jk6vICaBLeJHr8kwaxoC0zCd9EtPxGPbjY3YN0W7A4wO6cdVdx
         T9ug==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCUbe0/1oS/a9As1w8hYopaOajV8lFWvhZx9K920CCU2OloO4BBmGVY/pQBM8fh2c5Y4CMTEcGU+kf72nOOCFjKhDbv0NKmY4kI3
X-Gm-Message-State: AOJu0YwRD2+ti6+vSc7U4RRqM2fK30QEW794Gpyz9RFKzwd0OGVYpQWH
	/Zn2ncfoCoG05h071TUDDKfzEkJd8pfUn+MyO0ZdaWEv4S2XV3rVrHgkKg1eVtU=
X-Google-Smtp-Source: AGHT+IHzQ3w4Gk2JJ6Q4NIgFWUW8Gxie0nSVhAa3QrFKBLznTD997n2FYLSEMB44tDXYI/Adn5rgtQ==
X-Received: by 2002:a25:3c46:0:b0:e03:61e6:a86c with SMTP id 3f1490d57ef6-e03c1b6f9fcmr4899594276.3.1720256174163;
        Sat, 06 Jul 2024 01:56:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6902:1205:b0:dff:aa9:b9ad with SMTP id
 3f1490d57ef6-e03bd07819cls3430620276.2.-pod-prod-08-us; Sat, 06 Jul 2024
 01:56:11 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWCnxRuoMV87lrKqN1klBcwXHNSsIdgridtqQNYFvfSct3eVRRSqfL4CVvyOG4/G6ZwkrUKUbwvSCg53+DpSBqb7XKEELbF9MDtvujte06Wx4Ht1bk=
X-Received: by 2002:a25:8686:0:b0:dfb:420:1e91 with SMTP id 3f1490d57ef6-e03c195a923mr7768328276.27.1720256171723;
        Sat, 06 Jul 2024 01:56:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720256171; cv=pass;
        d=google.com; s=arc-20160816;
        b=zj/gqCp35ztwCYLCJBlLjRnJP6SHcEl4DhqPPClv7WBL/tZiA+doEiJODHsRdXVLo5
         d3ywdqPbmvsu6ykzxmDnbX6sKQmEoGsChl9HujWcMuxQXPUJStsJ2VQRt+RY4OvtLTg+
         CyOFidJBKenSXuKg+2CZU5Oj3REzjUYMzSczVog0vWsqSxUkEKw0d5Ouo3JrqcliP481
         drZlfRyc6yXoj6ESwshxgDfUERq44uup8PT2T/AEoSfWfmyRPCV+xzUKgFIcXE7SWcZZ
         emvbQ6Uojan4H6GX4f95VS+uKdKlwaNoAFVAYq8BBCnFecq0olAVMXS3PNGxqAdOFkW3
         GRXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=3rn1boqzI9zsf5w0UTwRP/bFKB9pINv8F26QP4ydFkc=;
        fh=vXkTU5fzqeuR60fXNbRRyp7EdHvTShNHbrv8PHxSY3U=;
        b=y7hcrLgCFKJek8YNZPAfP0ShJgEMTMS5BdYpa4SbISk/c/+/KWj0aixkkNj4+i4iD2
         30ozuNfd7LIkR0AYwnj8CfJotuU1CTzEI6P1kU7YTIauXiBowkC4pZ/0OOvHposFgUUy
         5v1qwka5E2jhCNXRX7afuVx0HvWnVGIfXP5oNEz81N1uht0ngx9euhMfB1JQooUBkqdc
         hTgLJhz3ts2o9a5FyxUgF6u7NGaCHuheddLBndM5EBKFinoXP+toyxQkycrCFjuz6Mbe
         iFivVq2YC1EDzIfgwkfLmvJmuuROEOuOmw6NliFTcyAvF6mFBJiueumoH0KZcN5wIqn9
         qNEw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=HIRhDWVJ;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20800.outbound.protection.outlook.com. [2a01:111:f403:281b::800])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b59e60a97dsi186128326d6.467.2024.07.06.01.56.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 01:56:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) client-ip=2a01:111:f403:281b::800;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRcMV2ymQ7FuMZR/H5+ZPqKQS4hWv2Yd2Ss7/hA+yVyQr5HtwLPD2JyMX3l/J1vwD2r9QLsZTB/r6fFfyMUDBSR3izQm6lEMV/Nn1HH8syglmoXgbar3noOQRTuHO8j89kh5hAIKmiM6zub0V4LVFPCCt6Ao66oHoVNDhLzyuvDYbZPTamdhFJI2bzsRheyoh+EIRbYdZPtSicfgPpyMkF5Jz+oWRQJqC/BS5cdxeCGhKsdMShLTnJMmcW8Sr5nz5lwFCb75cqmAtWzQLUTLeMDZZSp4haIpwcyto6I29NmkwolyYMtJ7fZvBP8+KCb2xd+ikgIW8JtdPvcD9PlaUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3rn1boqzI9zsf5w0UTwRP/bFKB9pINv8F26QP4ydFkc=;
 b=CmMyCozDlFqkCZEAltKXQ11TA61sAcX8TgyN3XPd41LK3SEESRH2zqzGahiIWlnTEO+7DeohcQiJWJPI0kdE5UGffDgT7rw42MM1BHykGsX3L+bEjp3TK+8Mz1qighrmogwBqUPv4jk6ckk1pIP32DXB2U3u+px6qjkE+TiDHATE/A2jUOLqaIgTKAxFmzsJmVVHunc+doDXoNkwu8h4uQuitZ9lBlZ5JgkJ7F5+bZhCokrghFG+84U6Qcnzw7RQvSk97wz5RbBes9J94b2eS7ljtSxjcB9lrOpcZXsAL9ncZOAfYHWK5sthAHvi2yCHXVY9tvvbpzSI014PwDxz5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN0P287MB0229.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:e4::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.33; Sat, 6 Jul 2024 08:56:05 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 08:56:05 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
CC: "oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Kerem Karabay <kekrby@gmail.com>,
	Orlando Chamberlain <orlandoch.dev@gmail.com>
Subject: [usb-storage] Re: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Topic: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHazs1tjVgoALhhKk+BKEcu0nmxn7HpWxaAgAAL54A=
Date: Sat, 6 Jul 2024 08:56:05 +0000
Message-ID: <C5231A8D-C529-4BAC-9E2D-32F00321A294@live.com>
References: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
 <2024070649-nuzzle-movable-f383@gregkh>
In-Reply-To: <2024070649-nuzzle-movable-f383@gregkh>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [GPdUZXT4asxpZ3LfBHSn2wtR0HYZrIStz1K2baa59zewK8SE1SdoXoqmj0ci7Yls]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN0P287MB0229:EE_
x-ms-office365-filtering-correlation-id: d0140784-d1b8-4839-9011-08dc9d99787f
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799006|19110799003|440099028|3412199025|102099032;
x-microsoft-antispam-message-info: tdHD0PBtb/6VECBsjwqHtvzvyxAudiuU1Kc+CUdpIqm/6DrENUAHzsflVQU9pNjCBC9XUI60h4BKfM7P6yxylVp3n/luYp+CnmkgUMdB4DHXwPDbJVayKV7XrkKJxGlLUs9kmnDdfBFAKqO1gqn5l5mLOwpqXnqUAZ4yVe0y7C26fz0gN+4A+bk7yIFuyC7jj9Nt/NuAOdEoHJm8b6URVkyzb90QkBqEvp+BSdNDwzCPshWaExFx8RMknkgbqz9XIr6HJhHAGTFgCfovB9UGldS8Xsbq8Wd7LYfFI+ygdFZ+Jdwjd7pfTamb6bi4aK54fb7sLeidBYOBVZuZkQBjwKtp16VE1FG1prwA+0a63L2RFg6mvDSHBStCS/UCcp7jOoZOpzvu4ct89LZTPiSx03x0GkEslqRwKbXvcZpUOUI5FWDIZRjUlGnwmTVE6UtHSpDqzqTlGfd9KkphXoPp/jv+aE1PANVQSJv5VXaw9wI3CeMU3l7EjpyiU374O0i1UR+xjJLBhGoYnM6futj9HldWSZr+SfAsnv0J9ySDCVXyoc8uafZfH0dDPIGCSdeS3NxdYnahasFBB+a/uOPozY8FTj8Xt3egg9lgP7CMnPRosjHwAhCB5jq5RK8xyT7qgMxszfPwrwx8pWfOItdzFw==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3hyMmx2Z1YxMVFXenJpVHJnbElUUG5ldEY0MjN1TUFNU3NHRG4yK3FrQXE3?=
 =?utf-8?B?YU1vVy8rWHYyODRRVXNPR0Rwb2hzRU5RdWxFbjBBRmJub2ppUUh1R0xtRW44?=
 =?utf-8?B?U0RiNCtydkVYRnQzcHVYUDBsZUZ0ZWJNVHI3MmNYSnpvNmRuQWJsN3hvVWFF?=
 =?utf-8?B?UUsvSW1UQnI4Uk9XT2ZNZ0FmUWZ3OTFaTGV1ZFRMV2JEdHo2b2wxcGtsQmdr?=
 =?utf-8?B?YWR2QUZ6dVlzQ1JHSWR3dVA4by9VSHlraDBGUHNNei96R1dCQWJjQnFvNXpM?=
 =?utf-8?B?K0NGVFBEcURyaFJBa1poeG5RWXJJMTZmMFhrZmVMYmZPbnNKMWEvNC94U3Bv?=
 =?utf-8?B?QkdFYlBMQWxINFdDS0xyaGhIbC9nKzd0Y1QvUWpzczBjeHhwbkhiY1hYTVBo?=
 =?utf-8?B?TjFzb0o2U0VPN3VGVHhvMDBxTTdDcFpKVHpJTk1BYTlyQlp3Wi82RTZpeDJS?=
 =?utf-8?B?MVkyNVV0WW5xd21tY1hCSmhhWmRDenlqaGZPMC9zaGFWVitvWVZHb0lzMmta?=
 =?utf-8?B?d25jd3RuZU1vL1VKMnZsdEI0V3RzS1R2aGluT0hOVE9OUm1aVm5GNkRTVWlJ?=
 =?utf-8?B?MFdzVmlORXQvbFNudVdLTWRQRVVQUU1UaUtkWDV4MGJSYXV5Uk1yZnFpaDlH?=
 =?utf-8?B?eEFVdGVJMG55ejl6bUJGRnFINjRBSExtMmRHNVo5TXdBMFptbll5NUV4b1NG?=
 =?utf-8?B?bXliVDYzamI4QWowRURHWDlRQ0ZqMnRzd1Z4WFRQbi9vZU9qM1IvQmpkVnZN?=
 =?utf-8?B?ZVJDbzZjZS9EQ0FjUUI1N3ZlSVBtWnhvUnhNQ2ZmaUtuZWV3UktYT2FIV3dr?=
 =?utf-8?B?OEYzajRnRFpaT0hmb296NlV5bFFiVmliRHZSQWoyZTJUbFk3V0lxWHZjbUNO?=
 =?utf-8?B?NUttSUQ1ZXN3K2lXb0FtYkZDN2JaY0lrM01DQ253Y0hhTzlaWUx5QXZRa2o3?=
 =?utf-8?B?SWgrNE5iakoyZElJTDZqeGlPQjljeXZSeUJEVkZZQ2I5Y0NEdEEwVjAvTTFq?=
 =?utf-8?B?bzE2THhneUNIMkhjT1U0WXFSZHhPOG1lQXRadWF4bGJCOWNHSGVPT0hta2dN?=
 =?utf-8?B?MXozWWJ2MDI1djdoTGlQMmRPQWlpUkREN2tjVXBXckROZEZaUVY3YTRrblVC?=
 =?utf-8?B?aElXUXJObFlrY1ozZ3NVL2p4TmJrQ21NcW1xb3VGbjZoZEZSVGhld3J0WlZk?=
 =?utf-8?B?U0Fka0ZHNkdyNmNJSnhoUHRaYXNhSGR4TnVRNlBkWlB3aWVXUXprU2xCeDlG?=
 =?utf-8?B?dnpKR2VwMys5M0xUWnYvM0lZQVEwU1lQYVJYb1pVTGhGK2p3L3VYVFVzeWI4?=
 =?utf-8?B?RGNKN20vRC92dkg1Y1dBUFpxNDZEQStxRzhzQ0QydWJXU2hqcW1WbE1Scklw?=
 =?utf-8?B?M3FBbVlGeFRFaEVRTnhOVk9JV2ZPalBrRUN5NmRtNVZvQ1Zob1JPeGpNMGRU?=
 =?utf-8?B?dWlYVGFET2tkeDFVL3hFb0tVenE0TjkvRVF0cmFXMWc5d3ljZHMwcDVsMmJo?=
 =?utf-8?B?T2JzWFZSKzdqbUJiU1lsTDQwaVE1T3MvV1FBSmozWUtyaHE3YjV3UUgxVEoz?=
 =?utf-8?B?eGh4dCt3RFhrcWZ1MythTjE4aHUwQVp6ajkrNlhjS1Yycm0ySkF4TUhSUWJI?=
 =?utf-8?B?eExsZXB3TEJvbGxVUjdNaEJPTlpJSlhzaHlSQjJRODRsZG9yRnB3azhyS2VY?=
 =?utf-8?B?ZDN3c29MaHpoOTJWSWppZXByM1QxcExXSFhlVllOWkE1NGpWSUZvWmd4V0Y4?=
 =?utf-8?Q?wQF5sztplswYFBn2GtGC7R9eqA1bRnXqF5na/S4?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <B6BF59FDACC424478C0EA70C174B669A@INDP287.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d0140784-d1b8-4839-9011-08dc9d99787f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 08:56:05.6904
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB0229
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=HIRhDWVJ;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
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


Hi Greg

> On 6 Jul 2024, at 1:43=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
>=20
> On Fri, Jul 05, 2024 at 11:21:06AM +0000, Aditya Garg wrote:
>> From: Kerem Karabay <kekrby@gmail.com>
>>=20
>> This simplifies running code on shutdown for USB drivers.
>>=20
>=20
> Sorry, but this does not explain why this is needed at all :(
>=20
> Where did this change come from?  What problem does it solve?  Why
> should we take it?
>=20

Currently there is no standardized method for USB drivers to handle
shutdown events. This patch simplifies running code on shutdown for USB
devices by adding a shutdown callback to usb_driver. It also implements the
new method to existing "USB Attached SCSI=E2=80=9D driver that required shu=
tdown

Is this good enough?
> I think I know the answers to these questions, but you need to document
> it here as to why it is needed (please read the kernel documentation for
> how to write a good changelog text and subject line.)

The subject looks fine to me. If you think it can be improved, suggestions =
shall be appreciated.

Thanks
Aditya

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/C5231A8D-C529-4BAC-9E2D-32F00321A294=
%40live.com.
