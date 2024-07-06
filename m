Return-Path: <usb-storage+bncBCFP7G4HQQGRBTHGUS2AMGQE6FNSQMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DFF929373
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 14:06:37 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-444f874ccc4sf33611421cf.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 05:06:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720267597; cv=pass;
        d=google.com; s=arc-20160816;
        b=prI92U+KTdwZw/1XE7IQDzFCsaBiuGyfwL73rMG3PyYk9mb2oVxkukD4RXWHDoPzKA
         +F6UEKh6Fpks2+/BmNRzA/aPpvc1dRlKJ2v3XOlp7eUEhpLJiobwIZTJSGKxkDC8VvK4
         H/hbaO6qj5X61dOve+r5IDUh1V0+OkKunaClZ4LTVWn2F23fXMCbsrjcCnAbZmLNWZfa
         TqGV/hGqJ2s4WY6lvWE5kOv7cEGuP0gW7nfWO/kmZcTMbmUFMmG56WN6j3+kjyFwlD28
         Heoxn1xg+FwCWUbOlIZvXMknemeLaGBV1o6P+aRzJbnosnu4ZsPu5KE93ROrthzW5Kw4
         k4/Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=DwlZmSG63/awpiWgpOq9Q1H77maPnGZjHY50fci/Cmk=;
        fh=razGDpesjmuxSjqsLtnZL+tArE9GslQldhabIUNBA4s=;
        b=y80E0GDP0mWWAnJf1B+e20I4c/BFBWpm0NGsh2oN/yYYCNHU0N0Am6TpxUbD/5/NqU
         lJ6cst7U35SSzOk9gwtQ+2tlSh/bIvljHi/mvMUJMOa6UfLBwzl4+2HM8idy5x5V/Bwl
         b5fQxNgKQDms0vDHayAgnUK80rCEkKyBZDcEiq9npuTVNwDU7Z3Os81S8xc6C7JaecVi
         /zJ6z8e+WJ/vwyo+0mSo7g1y/mJR8mFigXM0h8ilDMKIgUuS1N8Q2+8h01gGgC8PRkru
         7E49zvO7XpYcsadIKqFnUeINBfT4kg5Nl1lXGjHtjJhTxqpzjJxe5j/KR7lKq+tyHt81
         bnGw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=Yqpvf4nz;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720267597; x=1720872397; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DwlZmSG63/awpiWgpOq9Q1H77maPnGZjHY50fci/Cmk=;
        b=CXDSd5pYQdzzp6rmXLipC0Xb+uszz6ooVbc/fHtg+Ju8Qs/t3yTjYh3uAL26XboOby
         grkV2ZeS3AQVwXRofWSXXs7k2sblkg4lOimddBWkxTsiAkpTTD5kO054ueN9Hg4d4X7W
         WrNAFNq2AKVMXGD0ZktXzHT44zxztL6bqlCxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720267597; x=1720872397;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=DwlZmSG63/awpiWgpOq9Q1H77maPnGZjHY50fci/Cmk=;
        b=iLDxS4TJgTBTf7DrUkR8LC9tW017PmF268GeOhcP0KKt2IyahGZSzABisTjHxSRYWE
         dRtQyhX56yeYsQJa5biBuDfMNCi4/20EqNzdq7yD7QqJIM8iPmq4IMyVnsTf42u2ySyX
         AdK2buCpqVJcyQZfQUhwC+Mo40KdlJKerW0aj8Fst+SFonroYa5qDr/xzLwLwDE6ehie
         opbcoO8sPc+7Xsl33PKOgtVgyd5NwaaevBijeuYfARKU7kZ0TnqS3xXa+ZBsCwyAlSDK
         LSqPVR/S4Tw3UMrxYINCJ5qPeCvLcFksKLSWfUyik4VXsit/GqgG5/1uyceABXUva1F7
         9f3g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWWBxvor1SSrdVDewVzEv3dChDVD27xUHWdhFPjD5l3NYh30m5GxM2C4vZYgiAua3Aa7rMvBvBwm3XNu8QC03prtN4Q9q2gZb6i
X-Gm-Message-State: AOJu0YynmV10gCh1E3TSOiWAHGFNJ+qsn0chyaXifg24CclVo1rxrK7J
	kb1SZggufn0Bnww+OXgwnSu/fAKb5MYSqafphQ5SZzIUjJj/wn2VcAKPiXYZX1Q=
X-Google-Smtp-Source: AGHT+IHHSmhWYTCNc9yKzpwvZmXlK1KjLI3gIOYH+dLwNDGDTEOHMgsRHfEStsiYpgZUs/ewKJPOxA==
X-Received: by 2002:ac8:5d15:0:b0:446:51ef:f641 with SMTP id d75a77b69052e-447cbf7f6b6mr88865321cf.52.1720267596569;
        Sat, 06 Jul 2024 05:06:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1ba1:b0:444:b79e:50cf with SMTP id
 d75a77b69052e-447c9b5c54bls32942931cf.0.-pod-prod-03-us; Sat, 06 Jul 2024
 05:06:36 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVwV9c1fiK1D/g8ahq+S/on74le+hn67Eb8cbzQOEIWWa0jqeq54j6uK6trFyq3+dRSK84HfyYqxk2txqinAKq5CrrpEDLFOtp26GC1VXXW+3Si3PQ=
X-Received: by 2002:a05:622a:1991:b0:447:dedb:99eb with SMTP id d75a77b69052e-447dedb9e7fmr37362081cf.60.1720267595843;
        Sat, 06 Jul 2024 05:06:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720267595; cv=pass;
        d=google.com; s=arc-20160816;
        b=QrY7wsmcqAfLbe6p+g0qFJlTypIsHCieFK3o+W47ew/kqD1rJqF61PJpLnm5OKskR7
         tFXXhbuL5Z6bM28i7f6/4HR32nDveqANh2jsrZ/Nt5p4qJKY6LAtOvBc6uw05vQUvEZO
         jSGNiM+XiN52YiwxOizzQ3VTdAn3AMpzSuSywcfFR/+l9arzNMN0HtZcunkcrU/9F5fD
         E7cAu4H8lR4LwCZMXET1xuRMa0XlF++UeAIapQAGFJPGXMtaTQZBIu3rrPE9XwVswYWx
         aKbUVXcMUEzIXxzzk3zw0bxulSeOBiqKa5Ryo+BxHIUfdz5PJO/s+r1gSAph/hvao0mm
         NbpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=AVS05Pk84k8Yf8DGIYGyW3B4JeQKI7+SgXNHVyaOZIs=;
        fh=ckEDp2FnyVnpr6Oz+EVf3BXfz23j5KNJCpp38Y15hrM=;
        b=uELRaUd9Zkb6PhlLxYE4Acekvdr1UJMc0dEl83JFqZR7kN8SfMeAvw5wbwf05JBdW9
         wYCPf2rdYc/o6BesgnErzBHunIy4o6niQ/5AhKWzPIqK6EegrbsOq65c9mvMlKC8ppsG
         n0FrNw7joM6t4A5/4r6ZcpXc31+xL3s7LSQG5ryB72ByfIucPPWlro+pFw2/65thvdSb
         syUz+QRiejmRDpoQ3R9nf1m42KCghN6nuE+1sQPpAVsOrNxDqT9SxiQVecYdeYk7I9kt
         tfKUWObRgltoS4Yb5OO9avjQYRuCcJT7OTDxsogLphb/ITYF4OOVymTzDi+xNRQQiExq
         SdHg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=Yqpvf4nz;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20801.outbound.protection.outlook.com. [2a01:111:f403:281b::801])
        by mx.google.com with ESMTPS id d75a77b69052e-4465149f81csi187812741cf.397.2024.07.06.05.06.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 05:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::801 as permitted sender) client-ip=2a01:111:f403:281b::801;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1Dxbw+9QjRS7MsMkd+m+zCzCtUQ/D/dvXsmdmQ4qW8Kk6J6GsJ+FEpR7/vj6RdV6wYxHUa66i7UtJcmB6qOTbsQwur4anU0lXzDRz2z1jTQGRPkdmZKpOIx738I52RU/uvtz/jNykJ4mnB1tzGDJXcUxp8kZMYCobYUrf1AXtUrHhVzikjg3E57p774f8K1vis4VEU9p43iuEqFm3JwzmzxJahRmuteHkG6gVjzRchvwF0ZcbmG1IXjZzyezOGfpRSfVNogM6vPP1irWe4yi+lcnGc3ZCws2DPzLD4dL0aNzdmrNhDox7lI504ht5BM1Sso02jCT2JyHKJy9BWG4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AVS05Pk84k8Yf8DGIYGyW3B4JeQKI7+SgXNHVyaOZIs=;
 b=g/HKUw1/nVGzHUYq/ea8IkF9jHUtM//78YjrCOCctRtahZoLhNNt+aNwrRL/qhN7KlovMvuzXoE+35wbXQYNa5G3rVHahbO6tKqfE6Rf7LDJlOxJsvD7Ac9XIlbTjNPVxwBa2AcUPSKKy3+7X1pdqlnn3TaB0DHhw/l204p2tikEE/Dvp4LkAJewITrubn2BvEvogz1kwTeZVv7k4isqOGiCvnN3IC7VFaFJtca7MjyLNgYhvwNfdYETQa5ghpjT1UH4sAIErAh5rTVTDwYfHkSNXYqgxpQjKZZTcUnFMaHv8Gr+R20USxjOrlo7+a0teoWEDH0gYnbUzZqqML6eqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 MAZP287MB0611.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:10b::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.31; Sat, 6 Jul 2024 12:06:24 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 12:06:23 +0000
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
Thread-Index: AQHaz4t+8wEhfBXSYkeB85QpAZZdlrHpegEAgAAgsIA=
Date: Sat, 6 Jul 2024 12:06:23 +0000
Message-ID: <C2389234-19D5-4967-B63D-82E5AE102A1C@live.com>
References: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
 <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
 <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
 <2024070603-deniable-slang-f93d@gregkh>
In-Reply-To: <2024070603-deniable-slang-f93d@gregkh>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [xYYHve9iU0ad75yOyBrn8yCI35ymZ2ZzWgYgMFLam2k9Pq3E7tKB6Saz0ncIFxbEhCJpJ14hTWY=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|MAZP287MB0611:EE_
x-ms-office365-filtering-correlation-id: 7c33ee84-f09c-42bc-a9c1-08dc9db40e0c
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799006|19110799003|102099032|3412199025|440099028|4302099013|1602099012;
x-microsoft-antispam-message-info: z0kcBevtXHpeKKBXayRJuauSuiXx8qtDjGrc+U25uoTovXF+NpLdCVdNqSLvHku8we9upUPOZJDlZJ9m5L8O7NP2fG01WeinTaSD+IET97Ykp/2doYpGKnqKOtRhOTRtdymjj6TCjtpZi0dEinyb2ytYz+e99BCBQYRiYRyRmkID7eetAkKj4bCm92vqLn/S9m3NVJBkwr+8hn1J6h8aUOq33icM8CwOOpz54vHjwChAm1ON7bfvQe7VIeqn/D8/gCNcz/445aujP/by7bfpAmwTIeiwS/xeg0DZI/bAA2Z3jZVW+Pd+kclHGNjOwB1083t8ag5oXDSrVwj8E9gYbyPe5khzj8fdS6av27NrSfdkree7TcgkAAlraVYf3BDGE09qWvUTiRkFVUc70hR7ZxVtYyFLcwKiXWcAIxgDA4n5Xm83fNRM8HMtNKrQhonIBoluqac37gam1mo9Cia4z+2k4yi0fxGa3UsIPsS0vLYoog7PQfEm5kaNLdx9WBgTMIPuzD/b+21IOU579BbFqBGDBnYMGG5YI0rYGlzQxeznkQDqayBZMhMitZ76KUYvjS3Ui/1cFl1ypBFomG0oPGzV7v9vCnjnuDPy+O9rbzz7yv4+VwYDbQpH6toSBmrAbMhi1whPuMsygeQgxRJ+mRnFskDyCeSWwCMZ9+Y9PH4hwrR8oruNCjhmU5njTqrLh3OtxlVo0yaTR6k2BD3jJgmTdoT1gLLsvY8iKy9M7xEx1UN3FJaKgrR4niDxFYp+
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cm12a1IyeGlqcE1UWjVHa2tQT2hQMThhd1k4aVg5dlJvK0Rmd0ltL3FQcVFt?=
 =?utf-8?B?S0xGQlhEblkyUHVMalQwWHpMb25lbDZvU2ROSW56S1pSZWFIVkJoOTNFaUMw?=
 =?utf-8?B?TkZmRlQ4U0s5NUtYY1MzWngreWJQN3FZSFBFVUZiUVpkL0xZU29sRXdibVFT?=
 =?utf-8?B?cVpXYWo3bzZzanEzaTQ5VTZmNDFJNStCaVY2Y1dmWTVZc1hYOUlyNVUxZVFv?=
 =?utf-8?B?dlFSTGZNZUJlRVF5WXBWdXVOa0EyQkp0MHRqcHIxY0I0eTMxeFU1QkxCR2du?=
 =?utf-8?B?dWxkYmF2QmhQbENiU21DdGNsNVN3YU1JZHk4dHVrdkR4VWlRYUdGckNXTTJr?=
 =?utf-8?B?TG40VFN3cVorUitZYU1lbmd5czhjWnlGNVJaZTFMYnRraFpuRDdqd09QSXMw?=
 =?utf-8?B?VDJpMmN4Ym1NZFpURTRJcWZFbzJqaU9QN3dkbno3QVhudFpJMFN3c2R1YXlB?=
 =?utf-8?B?eWVuK2JYeHlnU0krdjliNm1OeGxncTdBeGprUUlYUVZtNGYyUmswVzR0Nkk3?=
 =?utf-8?B?SCtHZ3djVGh3RWxvVkZ0Z0xUTHkweHcrT1Rnb2JPd3VrN2N2cW9kWmdRT3dK?=
 =?utf-8?B?UHdqZ0V2d05Ca1BGWW9xdnpJTFZ2UUpoVjAvbUVaamptWWJGZE9PUmNkUEs2?=
 =?utf-8?B?bmIveHlLS1Vhck1PUm5aTytkekR1YVE3ZG91UnJnUEVnbEwxazdsMFlBWjcr?=
 =?utf-8?B?OU5mS29NaEV4SGN0clhQWnBLOVFBRDNQWFBQQUJoWFE2Uk9RWkpWdXJ2NENv?=
 =?utf-8?B?TEtpSndTMTg5Q0hjNnFsanhzL0JmSy9OZ29YL2lFYVRXZVB3d2pGRERaNGV3?=
 =?utf-8?B?UnVROUNORzBFM1FDMDlRZmlLY0tMaDNIZXdCUHVvL2owZXV6QVk0NHVBSE4w?=
 =?utf-8?B?WEM5bWIxUldEaHpkeERxaW1FRDBkL0hja3QzWUNyMEZ4Q3E5bnRyUUdZOHIz?=
 =?utf-8?B?c0E4QkpnT0lLUWF0VTZBY2g3dmVuajc4bGR1eE4rcEFnR1Y3Q0sxRVFGTzBJ?=
 =?utf-8?B?RVMrWmZaM2d0aVVtcFJxeXl4UXpieENVdjRzWGFoTHNnUVozeEdGbHBaMVNT?=
 =?utf-8?B?YmdPTTBTRWIxYTNBNVlBcUdlRXpIVGhRcGhmOXlLVm1PSml4VG1qMFYwT01s?=
 =?utf-8?B?MlA2T0JObE1KcVdQK2VDU0d3eFBlMmpOUGRvVDRrZStxS25yOVgvRDNNRTRF?=
 =?utf-8?B?V3hOQktkb2s0WjMzRXpCeUFVcVhYcVRRUms3MVpQNXdHeTEzaUluNXdNL0dR?=
 =?utf-8?B?R0p6dTY1VDlVRloyeDVDa2RTRHZRRy9KdUJFWnh0ZWlaN1A4SVlLMllNblZj?=
 =?utf-8?B?WDMzV0F3ZzFiSUttUk51L0IzN01xTUo0MnByTHJpR0U0SGxRaVFKL2hneGVH?=
 =?utf-8?B?VVBhc203OUtNbElEVVM2ekxCSlRjc2p4T3I5ZGpOeUhtVDJ3Wm9idzRlSllD?=
 =?utf-8?B?elAyQVNkb3E1eVNsbWswU2d3Tnpxd3d1ckptM2QzdmxBRHN5dzRyWHlVaFNq?=
 =?utf-8?B?dGg3c3QyTE5mVWkwUHZIWm5jMUlPSnVCVnNEcjQ2TDBTM2QySndydDlhcElW?=
 =?utf-8?B?WXI4QTg1SFJidzVQQU9IZXhvaHNrU0IwOUc1a0REc0ZMUWc5WFV4S1Y5bzZo?=
 =?utf-8?B?S1Bhemh3Tk5zT2xvYktDcmFIdk4rU1dydklLaGJmUWRpeXlFVVBnQllBd3VG?=
 =?utf-8?B?TXQ1MXlsWTIxY2NSMm1PeHo1VWMyWWIyYmpiOEFyNTczUlR0bVFNQUNtVWE2?=
 =?utf-8?Q?cxoM7f2U50VlRtFfkFynP4zKoiETC4rh62ASsJP?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <450EFD3AD0D144478D18F23D7C511D8E@INDP287.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c33ee84-f09c-42bc-a9c1-08dc9db40e0c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 12:06:23.4896
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAZP287MB0611
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=Yqpvf4nz;       arc=pass
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
> On Sat, Jul 06, 2024 at 10:01:38AM +0000, Aditya Garg wrote:
>> From: Kerem Karabay <kekrby@gmail.com>
>>=20
>> This patch implements the new shutdown callback method added to
>> usb_driver on the UAS driver.
>=20
> Again, says what it does, but not why.
>=20

Sent a v3:

https://lore.kernel.org/all/58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com/T=
/#t


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/C2389234-19D5-4967-B63D-82E5AE102A1C=
%40live.com.
