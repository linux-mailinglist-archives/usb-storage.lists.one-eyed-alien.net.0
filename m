Return-Path: <usb-storage+bncBCFP7G4HQQGRB2NUUS2AMGQE73M5BRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id C858E929278
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 12:20:27 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-70af036df9csf1996848b3a.1
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 03:20:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720261226; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANPPdu+Ej7rc46GtHP/N4Vet6dcIsARm3troK0oCm6An2rLyh+1Vk/tuzcg9QTvl6d
         LQjXgPBsf9gufPAG97CVGiY2RemgxcCoSlmqyABJdsQ36ychI9IFxI5CiWHozcdPCkDW
         EhTC4DlW9d1Q6iPYusT8U0BOY3kcwvx1pVHPfvslQVbhPSjOLYn3p330XJ0hR7WNBvSN
         +FbrZJOrmRzcdAZvIKpIOHpuhZeuC9ZWTGxDErwDp3L9EYyV4Sao4FgLAVIWyYqQJI+M
         riINjU0YxCzx148ZSMpquRfNBDoKmP4ay/zBLqv7ihZ25hQ00g/M/Kjn8QsVJ6l/0ytJ
         AV5A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=6CoM6SoG5K7XRqbKuWbSmd+UWhqyfxAaafYF15017Jc=;
        fh=G5xAwbcXzcKegpMWgZwPKMRNiPGeLqtTu3By1bymThM=;
        b=D84xGTHBOZHNQ23osRJQtPPK8q2+blzuGkgn6Qte+F5/0Sl7FZTSMR5TbBO8+MawKs
         q/9fNFeUq6dt5VIRHD2HjCwhPX29HjjQUuNbX/sWcoe8bN13itqSArBFCJWrzH6nef4t
         8Ze99krJmh1ykbUw95afZP4rrsSkg8OcdQZPxT/4zZHCcHyJri6Lc8AAy4n/6/wclYHU
         YMbodROJQ5bPN1UXNc83E1HwEluh4R/PgEnRTuYzsUlQ2owaKN+wAXbecHSlnnxJelod
         31quiJaauumzaq940hhrSDetENZB19UxcsGAvBJC9OgpWimJGiwBIdrZc/6oLEDZV9L5
         FZ/Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=ISiQhMA8;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720261226; x=1720866026; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CoM6SoG5K7XRqbKuWbSmd+UWhqyfxAaafYF15017Jc=;
        b=EmGcnSAam/uxV15kg/KI6ZT3jb+s6YGxxVjViX7aiGVkc9G7ZZi752ySFU1DEBifV4
         ETgMOlpCRJiTHZuj1t+qGV0fU2gcEirFhGCWt9Z2ClQdXWvKA6GWpUM8jPuiBodqZXyJ
         7e4dkagP7lR4F2t8CQbe2AnXekpCJEgjMmT/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720261226; x=1720866026;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CoM6SoG5K7XRqbKuWbSmd+UWhqyfxAaafYF15017Jc=;
        b=BP5De72mqwL9eob5iRcuI2Or7BDcMvoOGMmlDnvQTE03fjb28WvsUGfRNF39fppD5K
         gqkRs4zts8mMVb5g66W+67qs7ttpSt/JTAmrdeqnIplCFGdZJuD3LcqhR5zRDa54cw+y
         1A8GFQoZIpgh4DujJJjuLCrJcHF8BNSp8iMw0a/sDfsKv/LuNBWVUwOK+hKSlaIdpN3Z
         4z8d8Kjt++vH7ECytmlaYuHSkxVE96pTCpf12nmHCkdiE7Hp98A7hYWbiMc2XBIDgCNb
         pt6sEZCeQCNST6a7lwunB5+NoVol//t48T34JKlMnsofD8jtklI+ZvircRgq4zaAvVnQ
         sHHQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCXTG16nUL2/Y2oVQB3uz2qBb+bRpJSFO1GihGbUwIL7XDpy5ru+f9wbGeOcxyoLYDJ+4LKN7sADYGi4iyokX5EcprscKAmI6Mnq
X-Gm-Message-State: AOJu0YxPX7xFWca8hK9pdmsEuqzPonFPSjpRQR0Vlv5ARGhoh/oZA1R+
	PZ8y5F9w+lVXvCodTm3kW6YeK9zliTijyOWFF5FrgCmJj9iy3CUzy9jIwgIL+ok=
X-Google-Smtp-Source: AGHT+IEn8EW8kAjVZdI3oAkv+fY9zD8Hx0kpqwHWZXD0dablwJNhWaG4KoQPsZhgTLGQTh5K7mFY6w==
X-Received: by 2002:a05:6a00:98f:b0:706:9030:895c with SMTP id d2e1a72fcca58-70b0091b695mr8858869b3a.3.1720261225841;
        Sat, 06 Jul 2024 03:20:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:3c8c:b0:702:6dc7:234f with SMTP id
 d2e1a72fcca58-70afefffc39ls1588594b3a.2.-pod-prod-06-us; Sat, 06 Jul 2024
 03:20:25 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUZttsMmGfybKy+9DPAjoN9Dx4OiDYy3SMkb/gtsBABgujZEFQX7uZUsrnM7w1gEoJtV5iMW9KSphZMf70GgX23PhpI4j7Fo7viK/np4Co97IZWPdw=
X-Received: by 2002:a05:6a20:258e:b0:1be:c762:6c64 with SMTP id adf61e73a8af0-1c0cc878820mr8396398637.25.1720261224775;
        Sat, 06 Jul 2024 03:20:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720261224; cv=pass;
        d=google.com; s=arc-20160816;
        b=TrjB3ksp36kTk5sIGjkYYvooy5lyqfziPbi0Kquqdm0uTJLTKMDcfv3QNHkZa8DgYh
         fvcN7VQJPJ7OF6u/YPWtYS0kX8i3eRia9w9+GJZQ6D5EoiUdNiat9paXLhKtIYfv7PZp
         WYXniEkZqspu9E/BTX9FtqzqScObYty6I3rOD+L32Xix9yp6AUSJJQ6KT08LHYX+TnMA
         a2Fni/dKN+WsvVoj8YrNu1QkyOuZ5JRKWyVGJme9Cw7o08+PDFKktG9/CF2SF203kpa2
         wIb5uShF1JCu8OGR+s+an6nMPCOLA4BzuLlXyPyJY8D4y+gefz3ZwlTTJXRpzJx34Vz+
         mQGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=rlL78uf3WWpFVGUar9FgoIvnHGYgtsKaElJmotAtGYA=;
        fh=ckEDp2FnyVnpr6Oz+EVf3BXfz23j5KNJCpp38Y15hrM=;
        b=rRHxpi20taxRHZ+Yq2AjcmOUNSYSRtNEB/HnkbN4IRTNewqPSXC9z2RmpKHjYpacOl
         QuNF07AOQ6LtRAj6Fw4Zs76GOfVayfr6nsawLIio6p6sLa/KkO/evb31kkQffCsE4J9K
         /FqBihE7+5ZHqzcP6Og4QXfFnYAQJVEgZuYQLN/cyVpiHf4mpoiHEnURzYhcvNKYcMl+
         wang/nqXsFSLDyv80LmVdSGPf6QBY9SRPx4otiR/sOsHfWQwI3XVLJWklVcGFRaqWmXp
         1DMutAeUYa6ifE7JsgEtk8URXuRd91fMbCbo8VJ3jr6B2GjChYXrAxngH8c8qfp//9ot
         lrww==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=ISiQhMA8;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20801.outbound.protection.outlook.com. [2a01:111:f403:281b::801])
        by mx.google.com with ESMTPS id 41be03b00d2f7-75e44d2f5d7si6014584a12.132.2024.07.06.03.20.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 03:20:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) client-ip=2a01:111:f403:281b::801;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MvjbTFwfi6NdqMZcQstbEoOgEZ1AeBXd+ZtCKZawRgXRJB1zYlZyV8oYtlhQ67RFAjDivXdO8kfVQ8OtT7x1h1I4xIu/pkWTFgKpvq5eHV5vxayEUVQRuv4i16O0OBizRjHCEsIGwU9rWU/eeYDaIUpaJ8GYKdLjoJvXGKbD4MuR9/bEQqLl86w5LOH73XYUphBmGDC3pCeI0hUOzHNKrp8uTCpVc2ej9GrZUqeslqlwIHDBE0BUC5irUyCCejh1QW9IKAhdFeUjhS/BXbZU1TYiVr6uKuMVpl2/4+nJKZzio6x5vtEQzhfX/I1XmrF7p2l8C3Y/FerXQMV+DLT4Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlL78uf3WWpFVGUar9FgoIvnHGYgtsKaElJmotAtGYA=;
 b=WV45zinfDa+gDn3kSfg9LmbJtwoCK26g4kd9fonpBhFQLj0IeHiA+puLcfhylyXDuMKrNloA2wPgLyZFJJ1uXpt2gLVLZ4ZWuZdSS9x8znmQKyxRxJ/suIA4gy6adzps2sziR1yZbYSezBJ8o8PvQuLxeBXDD3kOyQfLUlJEHezx34ZIh1C10nnguyVhJQtTjJJHLWmJL/g6af8A3h0RCXxZTrJ/C9wcjJPweVImR0ZFLFv40RgvFonWLQt4Ugta1FHncGCr2Lt2B14unmuvnHtnyu/VKj+e4ncAAzrbrCBQoTpF4AmMhM76ES+3YVp1VOmi/NdTaAHGMe9mxLdycg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PNXP287MB0029.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:c7::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.33; Sat, 6 Jul 2024 10:20:19 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 10:20:19 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
CC: "oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>, Kerem Karabay <kekrby@gmail.com>, Orlando
 Chamberlain <orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v2 2/2] scsi: usb: uas: Implement the new
 shutdown callback
Thread-Topic: [PATCH v2 2/2] scsi: usb: uas: Implement the new shutdown
 callback
Thread-Index: AQHaz4t+8wEhfBXSYkeB85QpAZZdlrHpegEAgAADHJ8=
Date: Sat, 6 Jul 2024 10:20:19 +0000
Message-ID: <MA0P287MB02174EF48B5319A27F256AE4B8D82@MA0P287MB0217.INDP287.PROD.OUTLOOK.COM>
References: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
 <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
 <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
 <2024070603-deniable-slang-f93d@gregkh>
In-Reply-To: <2024070603-deniable-slang-f93d@gregkh>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [vAE37WoZTL6DDLNidmVWwD1FPqnyOESleG/EgTt/F2+8EgBnpvTPq8C77JPIV7fE8LlpNlhD9Go=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PNXP287MB0029:EE_
x-ms-office365-filtering-correlation-id: b36ad4b5-e496-4dcd-c620-08dc9da53cc7
x-microsoft-antispam: BCL:0;ARA:14566002|8060799006|461199028|19110799003|440099028|3412199025|102099032;
x-microsoft-antispam-message-info: hoGhT4KjgxkgXaKbSzxBvFv6nVJIJmA7JDjMZWMfUrfWXZ/nXMXybUiJjdqnxJO7R4TeVM4RqMyI7MKbarxPlfEmVlARhrWmnsYedwCpaFEL/AByL2QYdPMOb/ibiAjpOYRDm7NMpWzTlCj5XJYd2UVj0KQJe1T6jZkdWN1GPyKpqhEpLh/PIeuUYFX8H7Xi/52aeYEbtnWOBrX5h61v6ggscq5WOD0j1/jPIb+Mi8n0zEjDGpFB+8eG5Rn/KtPbDhm4FHF0EHEcVcmbpESvv45Iy6NVhTnMfGM6kQFhKXsSh/Plzz15P9WYrqnbr3MdN7pG7jIjyibyZPQg9l7NUZbR3xClqldK8Db6jhRN8eB9hyriZoiMPNs4MtPYg2hzWoAoVv7V3USfrwozenYKCMXzrbDm/UItM9YCTG9e1UPF3XagAzEtsj7ZUCFIfyK7D7gK7GjuO/YAnQeieozTVmqiF+MgbFPZeqe/ihJt5pBJgUpSLeQy5bqb1Grs5pM0yd9UFLHGuQ1b5C0Jcw7KNOtB1TGeO3qKu1uau/VIk329xEznFbYXas4mwECgdHtCqB3IgdjRg3tu9ALBQpY1YdFemzv8JdEKaaQvm55rCHUKsX4kk4rjlitLP93/wUt366XUQcE0/w2Uce0aB79R0A==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUZDY1lxRkY3UlZFbElNeWdIdGZ6dTE4d1dmem5GSmpQYWhycnJkdUpKZTlS?=
 =?utf-8?B?NU5EV1E5bFdCQVNUTUg1YWR1OWFuVVBlMEE0LzB3RTF1ZXA2UkVvMVRYWi9S?=
 =?utf-8?B?dk40RlY4ZFNGMU9DcU5RSEY3NzlZeE9xMjUwdS9iL2pBL1dNcmFBeDVQcW9P?=
 =?utf-8?B?WjNyZGIwREZURHliMXlzc0ttRUNSa2l2bWlwaHV5VTh5UmlyYUFnZEpWWS9L?=
 =?utf-8?B?cGtBWWZMZS92Lys0NWRUamlsTmZMRjdiSkFoNHpxak1jdUJjWjBKZ1lqbmRn?=
 =?utf-8?B?RU5wWXhPdlU2V3pibk00TjNMWVpobDIvSWxWam1hYVR3TElUZUpRU2JBUVFx?=
 =?utf-8?B?NEJzeGQwcW13SkFQd3ErNnExUkhvbVM4Mm1ZSk1hVC83ZFdpTitMai85cHFF?=
 =?utf-8?B?RkNhTTh6Q3Y2R1lSY1ljMGF6KzJUd0tKakNaM21BK0diSUszK1Fzb1pMSnF6?=
 =?utf-8?B?T2hXU2xTbXFESnpGc2VJRHhPRjN3anE2R3lJUjkwSmF6TXNrRzlDdVR4YTd5?=
 =?utf-8?B?Q3Jwek0ybzJCM256K3RsZ214UGk4VHdwcTVzVWE2Z1dUZmlXbFFscmhBeVdE?=
 =?utf-8?B?SVlTUy83ZFg5WElpWjJBNUJPK2daVkMrdnlrQkFCbjVGaHFvZUxLVUFLY0Fm?=
 =?utf-8?B?andrV3lTUitwZHdSb0pTaGtjYzRFS1YzUTVTRjcvc3phbk90emx0V1Q5YVhW?=
 =?utf-8?B?MjljZ0VmOHhsd3JaNFJlZHZ0N3UyQVJkUjRweTJSdG1WdFVmMmFZMzQ2MStF?=
 =?utf-8?B?YitxMFVpZnN5TWtEaXgxR2xZbmdpeTRnRUFPbFRwTDBHM29SSHQvTndWNzBZ?=
 =?utf-8?B?T255bGdiRThXQjUzRUZCYWhWS0JYc1JyK2pYYXcwNnlkeTF3ajdSL0JMSVRK?=
 =?utf-8?B?cXBaK01TMVhGVmgwYmkrWEcybHh1YzJQak80RzZwVDBJdnl5b0d0Uk44ZmtC?=
 =?utf-8?B?N0x1bU5HdVUvSjZ4TVk1a2xoMllEZHRXa2d5ejExRVNtZlhRSXN0UCtPbDh4?=
 =?utf-8?B?RnVacTFIMSswMXB1bXZIQjJuRUhuTlNEUnh5YjBNUmsxUUpSUVFqTXA0bjdj?=
 =?utf-8?B?QkxzV241bFZmbXUxbHVpZ001cEhxUmpvZDdFSGNlN2lvblNmTjhQZnpDdjFy?=
 =?utf-8?B?YjdpUW50N1MzbjZDR2hkMkRhVHUwdXNSeXpuWHlHLzdRL3BiRzZ2a1VxYkRY?=
 =?utf-8?B?WWkvZlZ2VGNEVlJGeWNzK1puTUNmUlpzanVqMHBYbEZuU0VoVDRqQk9peGVn?=
 =?utf-8?B?SHhvTFVjckNkaEdhRGdFQ29JeE9rTWtlVU1xN05qaVlvTUtHVVlHc3FTVUZj?=
 =?utf-8?B?L3A2K2RwcnVSN3NvbnNVVERZQzVHdHBGY2lxWmYxTmJUSGRzRHRuSTcwRzdv?=
 =?utf-8?B?V08wbmdPc3VtbUd6aGdKWENyRk5CVzV2SFJzN204Vzlwd29RSTZOUnQ3Szlo?=
 =?utf-8?B?N3MyZFlXZC85R3JsMndsS0NQRXhqWVM5YkdUZ1dxZnlpZ2JtRFBqcWx4RXNR?=
 =?utf-8?B?a0VBRGRWeHFvK1pMN1BtRGZ3a1lNNmRmL3dBOFRacWhCWmtRV3dLZEVqeHlE?=
 =?utf-8?B?ajJBdytjQjA2NkpadzJLeU81TDkvOGUrb1MvUnQ4QkdaUWRuYkw0YUtvbkU4?=
 =?utf-8?B?Qjh1YktPekZKNDFrL1d0VjBrUjhjUWo5MGMxUUc1MTBlbFRxTVNkSzdCWFJl?=
 =?utf-8?B?WGRZMk9leCt6TGVid0tyMmJjem1KQnMzckdKd2w4ZnJlL3MxQmtsc1c1WGt5?=
 =?utf-8?Q?t5yBaLpX3wzi43SoDw=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b36ad4b5-e496-4dcd-c620-08dc9da53cc7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 10:20:19.4604
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PNXP287MB0029
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=ISiQhMA8;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
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



> On 6 Jul 2024, at 3:39=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
>=20
> =EF=BB=BFOn Sat, Jul 06, 2024 at 10:01:38AM +0000, Aditya Garg wrote:
>> From: Kerem Karabay <kekrby@gmail.com>
>>=20
>> This patch implements the new shutdown callback method added to
>> usb_driver on the UAS driver.
>=20
> Again, says what it does, but not why.
>=20

A standard implementation of shutdown callback has been implemented
for USB drivers. Since the UAS driver implements a shutdown callback
this patch enables it to use the new standard implementation.

Now looks fine?

Is the body of the first patch fine?

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/MA0P287MB02174EF48B5319A27F256AE4B8D=
82%40MA0P287MB0217.INDP287.PROD.OUTLOOK.COM.
