Return-Path: <usb-storage+bncBCFP7G4HQQGRBEHZUS2AMGQEIZCYAEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A759293A1
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 14:46:10 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2c978551866sf2073013a91.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 05:46:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720269968; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUek+PpvTfBOR26DBl/hyXhBF5prTgFhqrIaejlp002BuCN8xAkr6U7sHaKW79/hgb
         9M+0KA1EdGsb1inQku2UncgQULtyyIkUiJoEy0/Ma8BzAxIve+AoevIQ4T3R9z25p4ob
         e9chJxQONR3SY0cAgq0LQN7tP4eGSPYS+tQEKoOMIauIiRzQ2opQjj0phGCh7xCwCjKE
         bLS7iw2bzEf0xRQtydw6CHUTKCkbLTbA65UCSFjmjbfhLuY+PUvM+qkUojZhZG1y77Nj
         SttD0zYPpJLRZ0F33QIlVXhuCIMuZw1oc3Ibmtsrpr5pp5m++mn2BBeUdVqfuoyrHGDK
         dteA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=hri0t4uyBraB9hfExtSVAdtjlTIq5H9WwLJ7SiZ2m9E=;
        fh=tp2YkprQb24RdlGqz6S8P5IUCXgYA7At2uMHvFo8Rzc=;
        b=O+0f8ltAU5RhqvpMnma+2HESr8TOiwByQqkuxdoKdAJrFy9V25RvmAEafHEPEerBuj
         LRtxPOxhOROEtGsdmyRJNSrccb6AtlNh5gCqMY8MeeMKHaV9a1Yh2hefb/1Cta0Pxic0
         TKNgcNOhGDf9UBJY9mhRqroMIm+2s6NYylaR2bJV3J0DuGCDSniSMFFX5sWagVKiZZzF
         8HyZBo9IZ0T4Yl3nRznsYLt//3Cvazt3l8/pxKAliPU2OJeK+YhHJYUqjKJ9eARD8V/o
         DOlGTVHeQAVHFTV9E34Y3D5GsFWtorQkdhtzK56ri55fsXeAGTGRM1ubigR8JZvqWSB9
         171w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=JBl+3+lP;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720269968; x=1720874768; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hri0t4uyBraB9hfExtSVAdtjlTIq5H9WwLJ7SiZ2m9E=;
        b=cL7GodDA9ah8efrUC99IuUKhfFIRN1AwXhceqWIb/28aO/aD7KsnFdLMWyfZKqcdOp
         RMFJkMnFW5a+MDG3ypsKVhM23slfjJEiVaZr+z6slOaIObYQ4+kBw6D4NNtoWXtvgQ++
         8ltDLFuZVn+V3VgfRQQLvtQho13x2jz0h4gak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720269968; x=1720874768;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=hri0t4uyBraB9hfExtSVAdtjlTIq5H9WwLJ7SiZ2m9E=;
        b=KXf48BPU4i1wehHUljbSxfyampJBwLmFe29e8f9yjY+q/CdUqDsHxRYH178xXpcHQL
         trK5yHw9kEPVG38XIQd2Wd7GySmQBtwRV0Q4yyqMlhDAoXYHJ6PAj1UGOjSgtynv8AV+
         EeCij4Z5o0RXTSiVr9h9UiNDK/xCGvavZysmbFu2z5U8CNvLEEQoYf+B9NP2WmpJ5hHh
         4/uPVndwVj8atJFOg66d5cluo/PkZKah8Z/fEqgxMvNlGJe9vL5FkFy94e+33PQEBzfd
         OKzg3BdkaH7eZrXFvuOxBJopaUz8cOG6LbblullrXrupwgtc2mBQmQPXWhctNeE0+yOi
         UKQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCVmzEpRd8c+ERvREqEGNSHEhEmAFrrPBjPE3OMNhKD5HzSH3ppyiSQWxt+3KaXGz8tVaSNyC/YqYlI3JDglgZimdUJjCy9vJxDz
X-Gm-Message-State: AOJu0Yw5gSELxeEA2nQfrU8Q3ONacNW2Hdjkym8ewYEle5J9/aEQ4k0B
	RQ72NqminECIRkVL5iM2DLyq2vYy2giR4z4auGalgcA7otESD806AzS7Sgn6I00=
X-Google-Smtp-Source: AGHT+IEknhens7VWoxOnyXukt4qWLtCWkoRLD0X2ZmqP7Xfov1iuBXsUwfwfl0C6ESip+pXwm00nAw==
X-Received: by 2002:a17:90a:2f04:b0:2c3:1937:3042 with SMTP id 98e67ed59e1d1-2c99c582ae5mr4693523a91.5.1720269968439;
        Sat, 06 Jul 2024 05:46:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c68e:b0:2c3:dc3:f285 with SMTP id
 98e67ed59e1d1-2c998e5995als1081313a91.0.-pod-prod-01-us; Sat, 06 Jul 2024
 05:46:07 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW9ylToF2c54e6HId60uHtnX0B64gZLXBrKnGBQQFdVYXHC2gWDTGmk5Dl5RvVrNUzIJ9GaXWH4hVqBhN5Sw6nQxXiISY0+oKJycRnzQBaQ/u770CM=
X-Received: by 2002:a17:90a:b016:b0:2c9:77d8:bb60 with SMTP id 98e67ed59e1d1-2c99c7f11b5mr4950134a91.35.1720269967229;
        Sat, 06 Jul 2024 05:46:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720269967; cv=pass;
        d=google.com; s=arc-20160816;
        b=DFH9eGkqm6z2zJJ1ucInIbw2qexZsfag2W0gR8RgAHc8uNOyVZ2OAj4XWb5mZKtWEE
         cwc/Scq8p0/uPkq0Rh/ouHXtoKWFgEZU99GNTON5ScrB2lHd1JYCK0ns7m26GP1n2KuN
         dy8qoBlFx0cRavojVT6D0UWChqX4lub6GxoiD074vfndyqahBrGTY3cFjnD14HOxABVS
         KNRA6+kfmRVz/fd6wKv0OKjyD7cGQU0YmDgpa85VwxYHoK8SDOcxAN71J23y5QqrBNpa
         iELPlyXlJiyumMDTkQeGPygXzfusN4gT9I+epDHWvV9T1clOuy1gLlCRZPekRossSQGB
         2CIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=8ASrhxXBfXHKD1J0zExhTBJ7jzLf5rzKx0zAaIiTQwY=;
        fh=ckEDp2FnyVnpr6Oz+EVf3BXfz23j5KNJCpp38Y15hrM=;
        b=c2M/fWrYI6CaACMFqbSp4Q3wAMBe14Zwxlzc8u1OzO/LHRBtkDWvjjft1gAwNhNm8l
         zIYnwItww/kZn/NSnveV3dSyhSWgsb5AITU6GRQvYOZwDAcmAusGGYGI/Aue8z2Z0uo5
         vVMYFw05xyfadLrWOoEnC8O+onmuCttbP2/O+SORQyUUrZDC8aGNE4U+q/u6I0wtitx2
         2rC/qENuDCT3bio4kOG9UarbrhXHH7zEVtS6rHa4mZ3PDOwsx5BEGWecU8T4GLqDPvnz
         yM7Scax/AgVS5E89LiQZpz7Q4qIe0/gDRNC3/ZiTY7fvbXFmhvc/F7a1oSOto0iAqfpi
         LkBQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=JBl+3+lP;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20800.outbound.protection.outlook.com. [2a01:111:f403:281b::800])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2c99aa48297si5828842a91.149.2024.07.06.05.46.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 05:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) client-ip=2a01:111:f403:281b::800;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCQGjjpEK4z6zs3N9lQPPUR5X1nNNmstwrYXmH7CPysC/zq2Bu6ONLkiFNLzNQnO7PHkmVZjg5RpFGV3Erb0jivsaxA6w+SuoxHswTevORMDJRJGzPRBy83jjhFFyFji7sDjvIlsTMEAtkk4Dbw2lHUM4HvAABOkiTqphVM/x7FImM/XvmIYOPOlG58aE66O7y//NAfwTvI+XqtIAihy83PlnDxTSDKu+VO0w3V4mqDUHyW35PC51ODeqEvnKd0D/XbYvmJlhfJd2VUpdDW3fvV3zkhlQluXEpLvN2yLs4ttbx7vZnL8ZbZHRyyUDwI6BSyhA8ex9vTp+XvU+y4gTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ASrhxXBfXHKD1J0zExhTBJ7jzLf5rzKx0zAaIiTQwY=;
 b=SROAANB8n/M8v/ScWykoyoWmM2S+JZyIyRvirBMg/NFJ77qJc11IxiIMMRzCA3E2FQVx1Np3zgnMFm0eN+bHOdLlFhPeKVMNofNzcsVoLe66WvSgWek81kfBMRUYCxPMUOpGE9iPfoTJPtyNnXrt3J5bd/GlT5TkagwoP5Yo4xjJzq/aANuEn+ZMniPgsmp7FQW5tMGDoDnY+LShdVXu5b1F3UgPQr65p5Joek5ty0i57tDVCLaT4vH2cesxlBFIkK8IzOXCyMDdQ684sVY+6I5Z7JzhhHtRazl7HbRPeCYQzoIv5gyDr1YjfN1BPK+bnVzyrh5TLco0Fi+Ifqaa/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN3P287MB1558.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:192::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.30; Sat, 6 Jul 2024 12:46:01 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 12:46:01 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
CC: "oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>, Kerem Karabay <kekrby@gmail.com>, Orlando
 Chamberlain <orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v3 1/2] USB: core: add 'shutdown' callback
 to usb_driver
Thread-Topic: [PATCH v3 1/2] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHaz5yAS+i+TdTeKU6c11DkRXEKIrHpoxgAgAACioA=
Date: Sat, 6 Jul 2024 12:46:01 +0000
Message-ID: <1E1BF62B-E8F6-411F-B06C-4A28C96B4897@live.com>
References: <58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com>
 <7AAC1BF4-8B60-448D-A3C1-B7E80330BE42@live.com>
 <2024070612-squealer-wackiness-c885@gregkh>
In-Reply-To: <2024070612-squealer-wackiness-c885@gregkh>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pEoyCXca0E32kE7s0kQFJUnOv8Az5JvU0XDsCSZLilkyWZngszhPUvnh3McrIilfUTmIHjIfY1Q=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN3P287MB1558:EE_
x-ms-office365-filtering-correlation-id: 938679ab-eb41-4f84-9963-08dc9db9978a
x-microsoft-antispam: BCL:0;ARA:14566002|19110799003|8060799006|461199028|3412199025|4302099013|440099028|1602099012|102099032;
x-microsoft-antispam-message-info: XKpzyjXHyqgccha5yXnW3t1zl0s6PPTLqorAdnyXnC8NlCnhYpe5ftILEDsjEv4Oj20Wdm/q/NA7KBSGG6Z54NO8cpbPt78Cze/M+737oP+nlw7dN1aRgaETEQJMvFjdM2kUctdMJEolfTbNGT7yE1XICRJkJJhOzjvaxHHlDj/4Y4NDCquws0/z1rwBi8tJ97agH5bTJ+6d7s7evKNliCzUMLybTAS0T+2vwIecyqVYOvPq138SfQCYAQjGhpWFpydVQRFAWOVEQcvGa1SKFYMqtGfnnWHRiiRnBTkKFdpEytBda3L0+deUle2pSpT9uhQRZ2SX6xvdA2yd6KJTe4IVEEx5yAAzEYazNIXpT6Gry3zqzpA3xXxHDYDd7+TDi8WPLxk438TX1Uj/mGVcbw0K+Cko9I6bb38ORPG2v8X1d6zicE59QmXvu/pdUKhjRPVtuTwV71YW2ha1bUsVtcLvBQ9FhyhRLZP+k2rT/ZPpyLkhvj6Okj9C/dMav61QclImjAPykR3WIRGLEDu3N4SO3PmttbuOq64vpqP6Iq4r7VurB7d0PghLeO/Rr5GYvsCj1xOIUC2kA3raxzqJxGFNG14CW25rX6t/o0VpSVe4Hxgi02nFbCjKIx8XHEzMIQMVor5vLH/FXdhv72Tp/SP+tsI8boiwlzZmuS2049zJeoHsMPgY310yABgc8AIDqJAFHweDzRKYiUzvvOxy87OcycSLs5RNhg2D4NeJqGcO4j66B4Iw9VxdMqi9sXG5
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDU4OVRBTDhVWGVXM1pvMnMvZGp3U0JsVi9xaDJjaXRlYmpuOU9mamR1RTFl?=
 =?utf-8?B?UWoxNkRycUpYRTg1WkFZTkVRcTN3dDJQZncrVzZtR093VTJqYmVyMUprSlRD?=
 =?utf-8?B?VjVpQ3NGZ3JRTjh5WWZVSms2NmFtM3NOdERYQlJTaXo5RjdKYUpwSjdLWm5X?=
 =?utf-8?B?RXhpODlCQmdkbVFOY1JzSk5heTNyS25oY09weWpSbERVcXVqRU9yMXViekdM?=
 =?utf-8?B?K21zZWxsMUR2M2srYit2WnR1eWw0OHh0eitpVVZmQXdTOW00S3pKR1lCVkFE?=
 =?utf-8?B?V0dkK0YySFA1UlExQTFaMGhPYjFhbnhOMGNPTTMvMmNIVTdta1l0dURMTVFX?=
 =?utf-8?B?bUpMMkRFREkvSVUza1JwbW45UThFQ0pIWUtjM1l2Nis1NlYra04vWEQ0eldV?=
 =?utf-8?B?VkhTR2VqMnRxMUpOb1FTNGtTTDEybGp4aml0bVptL0lyS2xOSTZDNU9xcVFl?=
 =?utf-8?B?aXZVbjY0eTZLQysyTU1oNUZkYTFZYUNPNnRIZnkwd1p1NFRvUzhaNnlRcUZw?=
 =?utf-8?B?L3paUHdYYXIva1d2Y2VLOGRrYWJ6UDBteHltZzZPVlFKMUxQNXhoMzV0K0ZL?=
 =?utf-8?B?cE5tRTI0U0JreGFHYkZRbHZGbWQ2VHhsUTQ1QUtzcnFmNVBPK3FKWVMwNk4y?=
 =?utf-8?B?S0xrT1VSUDFYYjFTaThBcjhiUHEwSHhUOFRxWEw0N3dCTGZuR2RUWEsvUml1?=
 =?utf-8?B?V0pIWHhwaHliWWtibHNyOFNXZGM2VVpNQWY1TVgzZEROZTBsM2REOXJrdHFw?=
 =?utf-8?B?VzdoWDcwQUlsRGo2dWRHcmRrVTZicWdzRFk3S21qQlp1eW4zQzY1amR6WWtq?=
 =?utf-8?B?amU0KzF1dk43WlIzbWdMVHZ4blNnSmE0a2ZLek5abnJURVhpYVltSUJVUy9L?=
 =?utf-8?B?Ynp5SjczNWxDRllxVlpSa3V5ankrcmNyYlJZNWFaYjRmVXRrZHppTkZYTzlH?=
 =?utf-8?B?RUoyUlFWMkhUVWR4OVpMcEtqeWhKRDJRVDlNcVVPWjNjMWViZFJXMWhCSmVt?=
 =?utf-8?B?U2NESmE0Ty8zTWFtT0lFSGN5Q2ozYmF0Y2FrTUdLQ0xXTjk1VStRZEZIV0JT?=
 =?utf-8?B?WVNkWTAxT1A4S1NJaDkxeDZBNk9RdHN1MDBnT2x4REVOK09BSDZ1U0dNTjFC?=
 =?utf-8?B?bHdrNUtRaWZBUVRtRVhoaHBqdW43djJ5NjNrTkZlOUxadlkvMndjUkZsVWc0?=
 =?utf-8?B?eitYaGZIdHh1L1I5TnJLeVdRbG1SUXZyRm03QVY5VW5oaGZadlJhR2toV2FU?=
 =?utf-8?B?SE5meWhHdDlmbkZidkEvejM1KzFGdVNzaURUdmcxMFd3Tkdud1ZFUG52SWcv?=
 =?utf-8?B?di9CN3F0Q3RaSHEzRHB5MDZESzBrU0lWWlhPc0wrVzZQWGp4ckc1ejQyMkQx?=
 =?utf-8?B?SkpraVJ0T2xyMGNmTkFnUkdLTFlpaVo2SVRRQUo0aWFOTzZHUXVwK3Z5VXBW?=
 =?utf-8?B?ekdsYnVjcDRObDVKa3F2aDA5aHM1UTBLTTZaRjl3M2VLUktDZnVSRllEcWdQ?=
 =?utf-8?B?eFJYRlpIbkVBaUxyMUVkRm1sMkJTMEIwSnVtM05ZYS9POWtLaHk1SEpTRlc1?=
 =?utf-8?B?WkU1akllVFZxb1U1NFdac3h0bDl4aGc1VUVCZUowUmNDVEFIcmdwTnB2WW9W?=
 =?utf-8?B?S0JPZlBDYmJBM1A5QktuUm9MRk5kKzFnVHJvd3N0bEJzclhOM2tBbFN1dHBB?=
 =?utf-8?B?OUczR0Vmb0J0M1ZHOW43NDRrWmNMeDhzU0swQ0svQ1Q2NENEMlQ0bU1iWEwr?=
 =?utf-8?Q?6JZOKRxRhw9oOlaTAn1yFPvm4Yiye3ogdWLxM/z?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <C8BE792C509C324D92E1F0A727074514@INDP287.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 938679ab-eb41-4f84-9963-08dc9db9978a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 12:46:01.6184
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3P287MB1558
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=JBl+3+lP;       arc=pass
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



> On 6 Jul 2024, at 6:06=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
>=20
> On Sat, Jul 06, 2024 at 12:03:23PM +0000, Aditya Garg wrote:
>> From: Kerem Karabay <kekrby@gmail.com>
>>=20
>> Currently there is no standardized method for USB drivers to handle
>> shutdown events. This patch simplifies running code on shutdown for USB
>> devices by adding a shutdown callback to usb_driver.
>>=20
>> Signed-off-by: Kerem Karabay <kekrby@gmail.com>
>=20
> Where did Kerem do this work?  Any reason why they aren't submitting
> these themselves?  Not that this is a problem, just trying to figure out
> what went wrong with the development process here.

I work at https://t2linux.org/, a project aimed to bring Linux to T2 Macs.

Kerem helped in developing the driver for the Touch Bar on these Macs.
During development, he did some improvements to the HID core, USB core
and DRM, which are not specific to the Macs, but are used in the driver.

As to why he didn't submit himself, unfortunately Kerem seems to have left
the project and is not contactable at all. Fortunately, the patches he cont=
ributed
were signed off by him. Since we have his Signed-off-by and the code is GPL=
2,
IMO, I can legally submit this.

Link to our patchset: https://github.com/t2linux/linux-t2-patches
>=20
> thanks,
>=20
> greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/1E1BF62B-E8F6-411F-B06C-4A28C96B4897=
%40live.com.
