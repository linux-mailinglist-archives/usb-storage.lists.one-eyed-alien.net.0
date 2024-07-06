Return-Path: <usb-storage+bncBCFP7G4HQQGRBDMRUS2AMGQERTPRFOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 589C2929220
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 11:04:15 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-447d574cea8sf16771661cf.2
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 02:04:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720256654; cv=pass;
        d=google.com; s=arc-20160816;
        b=dJIArU4W6QxAz88xvfxBN7NC7RurZ/G+6zOfzot7xrU/54b5LYVY7KEkhktSxNhjWr
         fFtlzYWdddfKndJCZsdp8hsQUqH0eUELvnBQ3B5g2UIuBQ5iqJqMA+UbUmbiGRYiU3Tn
         Pox4SuNKPP29aUzM7YwENZ3xVQG2lcHr71aMfWXASCjH/t7IzM8oHWuk529BjKrE5oDY
         c9lKHl/1Tn0PSb/3aVfIidNb3zzFJ4yIQ1hvsjzRVVti+gTcZ6+9+7Di50iEWr6LxQ+J
         wwjgC5w9J9Q8CUDPBlQdzl2zG36aga+xRhcAy/Do27z2lP34txIg4bet6KP+8sUQfn2A
         PXFQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=3SzQgz4M+VxtfB5wz78j1YPqUtxOV+NTJXf8TcxFtmU=;
        fh=jj9y+qZvBGGTNkTnWg96t2/YL6DGt1CIT6Ri0yysjZA=;
        b=gmaiUuyL9YFhaq/YAHXu6nIlTJ52/eQROI1PFOuby8sSwaivjdMxJLMOPx7wku7Fic
         3QeF9yw8vL4t8G6MUxnIwQkFnu+wNeYx7/vCZpMe+hC9vqSN+bxwSil6VwiYZHdYN0Np
         V0ZojhwqZOqsPhLSzVHI1ltChdWe5pZXXWKAdUknMV1dtLyxbSNMLEqOFoaU+kbaOMCa
         rxXMUo8r90Igrsgtr/GwuDEaOmdYO1tgorLzBH/MSsJ2/QIHxGJZPwC1CrUzQlIdhIYJ
         fDNp/6h9Ape5hODqz0jmB1BocHW8YINUbQ5GBIzd/WcAGMiu9BF2zwkPT5LbnGMkQmeu
         RwrQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b="QtLwKBV/";
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::813 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720256654; x=1720861454; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3SzQgz4M+VxtfB5wz78j1YPqUtxOV+NTJXf8TcxFtmU=;
        b=Kr7hxbxt57rdGC4PgFzpcUYubMMIEjuscSI4QtxFRZEqVor/abNgXcvzsqnMKGoEyz
         NECP+b3JV2NXW4fbF4WhOBAKLEXRnlUQ+b+60xqk2c+m++NV0Ksgf+LaKwMGGwtUs7u2
         NMWU13hInPYj45LutkZv8p/3IEdQ4yFHsTVgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720256654; x=1720861454;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3SzQgz4M+VxtfB5wz78j1YPqUtxOV+NTJXf8TcxFtmU=;
        b=FoooHr8xGE0fuuLES9E4zxXEKeHZA1Y//ODUKJL9xqE4ElUZNKtD2BD3xGfoKpHvN/
         fXwDFQcMFABrHFOf45EvaS/eDgKJn5bSTupgwQOTfN+s5Lh5LCbXXUNeTotHE6yuhiDC
         uBdEvyW1LJOwhhH5Gmi1T10Nq51YLWLTkGqznvIwGZlgLSWFS9xWKmqDVcCFtDQ5JhAd
         zJfNLYvplPkRtBW6QfenLFhaVUH/ikz49ZwNgj6OyNabqtBfygp/A6Oosd3ANOpaH0B+
         3kMfAh+rRDqvxflZPrJBHi7u3bFqKTGe1a05IgPvs8e/r/dOcN5M+TduN/Oiuebs1fXQ
         dfyw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCU+/01mL5bO/ClwglyPKAJW/1QzEiDbnXfXHsw+ERpfzQzQ8MMUBM9s4kJVV9HC5klNBXHUfmUYNOmySwtvU30alU5lGte8SH4S
X-Gm-Message-State: AOJu0YwRz6kKS2pvHSWoZ0C4N+5vhCobMji9FhB6gzpETM/I97BOq9Iv
	NLng8q6FX/1UiT60FPrbOibwsJphB13u9yB/nEFVCH3sp1zX+SZOROsypBGLH50=
X-Google-Smtp-Source: AGHT+IHkXkCOsysDULLOY0Veo+66/gga60FsWceQX7kiReEWypUfwiEieAFf8OIEidy6CIImrNKtKA==
X-Received: by 2002:a05:622a:1115:b0:446:67ad:ed6c with SMTP id d75a77b69052e-447cbf5e6f6mr103896821cf.46.1720256653955;
        Sat, 06 Jul 2024 02:04:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5886:0:b0:440:a6ed:f91e with SMTP id d75a77b69052e-447c9bf0aecls33425461cf.1.-pod-prod-04-us;
 Sat, 06 Jul 2024 02:04:13 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVO4tfRtZsf3/x0/MSy+hzC+xWOl1BybxYY03yKLkxBMsAEAb04c0Es9mndtJwnWsOgmo5wEh29luogSh6j/mTjtc5K71ZfaelqTBt2CC8joaYyIXE=
X-Received: by 2002:a05:620a:9355:b0:79e:f8e6:aff with SMTP id af79cd13be357-79ef8e60b7bmr319793885a.22.1720256653075;
        Sat, 06 Jul 2024 02:04:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720256653; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/Xa0eBTGeWBDo7Z86B1WE89KlXWWYibF0L/RU+RDfGuWn4IvgJWpPNH/cPAvVCz3y
         kaD3KqM7YXbxrrgzFXEAexWAg77v7Wcig/31PREYbh3EfJcRj+/IbNiQ/j4ZVka0sasQ
         4utG7ogD1Mnw1lNtAF02kS0tPMikh86dwhJd0XgsYit0oY1HoPu7eBRWZfl+Z/EShP17
         Qt0q7NbdYDp/gas/Ofz7ZX+SoUwQK18TV+IzQm5ElDLKi8zBNcdJX+xez4W4JEIqMJEZ
         Qw+jh5WAONL3Nhww9DSPgmtbDkturxoK+1IqOn576e3hsUJ12bX4JPP5wml2ajSfSvAh
         cAdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=jS4jJw01VxTX8HyFXREdngZosP8RrXwT4QPELFimGLg=;
        fh=vXkTU5fzqeuR60fXNbRRyp7EdHvTShNHbrv8PHxSY3U=;
        b=NROwXHh7IQbYsEJtpJkMgI/1pEKrzaAOlZBnppQOXBactoeaELAxkbSK+L/7FlsNSK
         YtxvjFIaOLaHu1lvmPmcyi/T0h2XTbtpPfVdMKWCKRp5ibAEnihOHpDR/tDRbLzlC7QP
         FWhUS8z1iMZjSdCn8ezmbs9ksPl7kL7lJ9hsVumZLldaS2pnOSEG6Ksq7iGNNLsJ71ig
         itqbBnCUWe3zvqO09O61OLtg5XzcGhzj0bFEKh6Y1otsFLQmiVRlhNg+4APaSieEG6kO
         azwz2ImOL5ErKWPjNAYWnyjldgwo8OHsFA76xGsctYAjeOXnc8L/iplS6KoKHPRHOdCd
         MmnA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b="QtLwKBV/";
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::813 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01olkn20813.outbound.protection.outlook.com. [2a01:111:f403:281c::813])
        by mx.google.com with ESMTPS id af79cd13be357-79d692f043esi1840759085a.281.2024.07.06.02.04.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 02:04:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::813 as permitted sender) client-ip=2a01:111:f403:281c::813;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tj62jUT+TrETcw6U1F1yAC986Kn4KkaqZPDbtgiCXU6m0XTYl3+ujLtxR32nfyqJ3CZTKZY2rDPPa2Y4PIJ0B+lDBJYfEKlaPB15Ewnyp4BnaX5U7kZREasTcuG6NI0C0FrhZvMdbhoVZGKppHXZSPqGAWy84k/CofgolxyGSWNg18eUb+AugOOwCdmtlbkxmhwtu7UJAdWpW6lpJiN9em7wRGhYj1clqwnivpqw9bKmSP4JK7jRIQal+Q+t7BpVj1hO8dG9ro9Z5yU6rU3FXimgEENXQw8Y+kis3d4ueDRFKnvourulfKpcinE2gAOjIqzkeESKgEZkZp2P3A9AsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jS4jJw01VxTX8HyFXREdngZosP8RrXwT4QPELFimGLg=;
 b=ZgmWqWRxaOm5uPCFYLZP9TEkEFtuVlxm/vfRNnNKD4qzLFC27sYX1sxdlhg/RX0IBlxm5pSSWZsiLXj3WRmA6unsB3PetENjpyo2KZl3pFvdC30liGDUtQdcq48TIRLfanDk0eu4VTW7B3w2qATWpTEqrUDIw9CN1QwFQJpLT2RupYGpc+Y42pjBtHO5KGSeraXiW78wA4qb0wrbtvDfCqIcTDwgoKida2ByWTOS2WJYGqHWU/fuQd27/v5sy6zoop6hKpLh+8me8AQNp9JEN9GU5IflaRfzqF9Te+SRSRnIYgY5wk281I0ZvUHGwKm87wBl9FPJPc48hhF0HKVWEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN2P287MB0303.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:dc::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.31; Sat, 6 Jul 2024 09:04:07 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 09:04:07 +0000
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
Thread-Index: AQHazs1tjVgoALhhKk+BKEcu0nmxn7HpWxaAgAAL54CAAAHQAIAAAIIv
Date: Sat, 6 Jul 2024 09:04:07 +0000
Message-ID: <MA0P287MB0217E5151DBF1D0813FAFE00B8D82@MA0P287MB0217.INDP287.PROD.OUTLOOK.COM>
References: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
 <2024070649-nuzzle-movable-f383@gregkh>
 <C5231A8D-C529-4BAC-9E2D-32F00321A294@live.com>
 <2024070622-alarm-kissable-f446@gregkh>
In-Reply-To: <2024070622-alarm-kissable-f446@gregkh>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [lqkRjXrEypxsS9oRNv+53JSku8/R9Tehff/wunDh91xJ/8tZRng5tmtM/F0mgfcDEyhoZGnXtZ0=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN2P287MB0303:EE_
x-ms-office365-filtering-correlation-id: a0f0f820-18a8-4dfd-8e6a-08dc9d9a9795
x-microsoft-antispam: BCL:0;ARA:14566002|19110799003|8060799006|461199028|3412199025|440099028|102099032;
x-microsoft-antispam-message-info: gIXQC5QFHAK/Mp2hBSKJwQMWSRpO+7c33rdq8bpz8Ey14W0KaPJlDamaodQi8q8BGw9R/IbGFTamwzy11yCuf6HdxOgB4jSU8kHA5BS+WFLQ4+1+EwFqGYkKmzShTFwD+lm5I7ajX3KnubZimNfOH1M4wlNVeJYocMxm/+lmsRnSuTTrgybQPlrHZW+oC3bWkloiOoZXkz0t8x5ktiNJiwwalXyMZZaUocqrn51d4RPp8PVizvo7Q11Miw+5BLe98kRsNcFA2F7vEH8Tf+UzaXZFC/bVnSBywvLA2NGdY4l3yQA3gawG2cs7WixQEdWtpsAxZy4HkZG/qBQtqYc8eXQrtKczFW5XzhHZarSgrhCQ7WahGTnovIjhYCfhcgdpA+PrRuso41foh3p7t0PQetpPlFRxrpGBMw+921WpatwKFl5qhXbWdIe/7v1K0y/ogLdMJQ5OO3cXNqIXMvae/IEAoDL3FoFpnyUICK1IP93Rj6PWWza7Af816FnLdWlCvXlNGey6oN8xNFYg7JcEgCTOQFtdWsB3CvJ7VyiWdlriJcGNjfUbnhgkmypQAn8jXztDRcr150BvUCNarieSPQIfy5gw35VFfCPI/fYnOMY3kqi4JsdScDZNDYFRNGhBHPxFpDnW71cShWpfGSPd4w==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWx0SWtKcU9OanhpZCt5eW8xTGxVTCtHT0YxbnBORHZKcWFtMVkrTCs0Ynd5?=
 =?utf-8?B?c2Q5bHZJSlMrWXpzZTcrVlE2RHJPU1EzZUhNNXA3Wk55ekltZHM2cHRidWZZ?=
 =?utf-8?B?amtINXJKRE8xV29tYUpOOFkzdWNQdkNTK3JmT3IxYkpReHUwcVI2V2R5WXFU?=
 =?utf-8?B?d2JWVk0wRC8vUy9LSktYdUk1WG91bTZ5VzhPczMvNHpZdENMOWk2OGc4d1Ur?=
 =?utf-8?B?YXUwZzJzR3JOamJ1VlpPc0EvVmtRVkt0OUN3alBtWjk2cXlDTW5laUt6Umg1?=
 =?utf-8?B?djF5d3BYdW95V1ZQOTRoZlRpYW9GNWNHakM0Ym5GVjJpNjlLbCswK0tzaVR5?=
 =?utf-8?B?c0psQ2N5UlZYVWpzMFYvRU4vK28rUEMrRGJ6a0FCaVhGWWoyQzhCcGN1YUs1?=
 =?utf-8?B?Rit2OHRzZ3l3TDMyZ0U4WEk2RWVsN2NrQ091d21zMk5HZkRhWk40OERZcEwx?=
 =?utf-8?B?WTBNQk8yMHZTYTZ2ZzFISG8zMFBNQjgxZ0ppeXVqb0RzZGdvekJjdHVCK1I3?=
 =?utf-8?B?Wng3dm5FUmh1TEpXVXlhbUFrQ0o0Qml5dk1qZGIzQkNEcFMxemJhV2R4L1dz?=
 =?utf-8?B?Zm0vbjNJbWpsUnpPKy8vWWd6R1JlbVd1QXZhaXVNVEhxYThxOVp1a3RBOXhi?=
 =?utf-8?B?UVlPYm1Ja2RTRFZuaUFYcjJlajRjTWxFZ25TSENURllNSnNFMlczRkxMTUMx?=
 =?utf-8?B?Lzdpb3hTSjVlMzQxWWNTV2hYZHRiR1BFSTVTZjE1NWIxRU1ZSzRRMlozR2c4?=
 =?utf-8?B?L1NEN2ltaHIwNFkrOFpFa1kzVjhqTmF3LzdYOGUwLzdTNHNDemR0UW0wc1FK?=
 =?utf-8?B?UUVyUDNRTFQ0dVUyOG1GcS9KcEwzSnhOTjgzOURHNnNHTkpSUjJHdllNY1dV?=
 =?utf-8?B?aHhZd2E4SnhJN1pYZ2VUcmRyZlBEV0wvVDZxbVFvTWgwbHN4U0RVMlJrNGNz?=
 =?utf-8?B?alVHQ28vVFpwaDVKUUtJdkovQkhMUG9YcU1yTU15Q1lpbGY3N0NMaDhYRklI?=
 =?utf-8?B?dDNVMjNjQmhwRFVYa3JmbFkreG9ST0cvQTZmMUdVZEVYdnEwbzZtKy9nVW5n?=
 =?utf-8?B?VHpOVDJmTGlGeEVEWmdHY3lDdEhqZnZMMWljaW9pR25ZdGZ1R0FwVFlwTEhu?=
 =?utf-8?B?Y08rODR0L2xQc2UycW81VElUd1J6Q3EwVkhxenZHZ2R3K1RHcU9NU0lkNGov?=
 =?utf-8?B?TDRaQzRUNGVlVG80SEpOdHVYUlJvUjJVdkhHS0RsdCtrRnYwazZMcVpEdjBq?=
 =?utf-8?B?OFFqUy80eng5OUsyQ2dFOHc3TGVLZ1FobFMxZGYzcHNOMGJuWDZYOUdjSm9i?=
 =?utf-8?B?TDVqZ2hIOHVkajgyK3k1TXhlcEl5dXNERFo3TDMzUkRMQTNXNWxmcUJOdzRv?=
 =?utf-8?B?L3daVFNpSkEvUXJZWHEyekxpblN1Z28xVWRPWnhqMmg2ZXlIcTRSNHBITnlU?=
 =?utf-8?B?UERjOHlIVVhDczdrT0M5VitqcHNFQVNYZlBURG9OY3dhU2FvcW5lN1YwRW5x?=
 =?utf-8?B?akt3cnUvRGkyWWNvQm9lRUYvbVpHVFM5N0o5TUdaYmdUUFdkL2hyT3NyN2t1?=
 =?utf-8?B?azE1RlJpN1RSTFkvRDhVdUgvNmRkdmRuMW9tbUUzMk0vMWFETEFvNTJwQWhr?=
 =?utf-8?B?T0hvTGZlZWs1aVd6Rnk2SGllYmFyeTVqM29WZlo5VTdHMDRORkZxdXo0c1Ew?=
 =?utf-8?B?UTduLzFEaENqZVZyYXBwRzlxRUJjYkZHS21PT0FVTWFzVWtQR2JhRkZOek93?=
 =?utf-8?Q?A5VZ4QGqKSnw2zVUGw=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a0f0f820-18a8-4dfd-8e6a-08dc9d9a9795
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 09:04:07.3159
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB0303
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b="QtLwKBV/";       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281c::813 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
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



> On 6 Jul 2024, at 2:32=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
>=20
> =EF=BB=BFOn Sat, Jul 06, 2024 at 08:56:05AM +0000, Aditya Garg wrote:
>>=20
>> Hi Greg
>>=20
>>>> On 6 Jul 2024, at 1:43=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
>>>=20
>>> On Fri, Jul 05, 2024 at 11:21:06AM +0000, Aditya Garg wrote:
>>>> From: Kerem Karabay <kekrby@gmail.com>
>>>>=20
>>>> This simplifies running code on shutdown for USB drivers.
>>>>=20
>>>=20
>>> Sorry, but this does not explain why this is needed at all :(
>>>=20
>>> Where did this change come from?  What problem does it solve?  Why
>>> should we take it?
>>>=20
>>=20
>> Currently there is no standardized method for USB drivers to handle
>> shutdown events. This patch simplifies running code on shutdown for USB
>> devices by adding a shutdown callback to usb_driver. It also implements =
the
>> new method to existing "USB Attached SCSI=E2=80=9D driver that required =
shutdown
>>=20
>> Is this good enough?
>=20
> It's a good start, yes.
>=20
> But as you say "also" that means you should split this up into at least
> 2 changes, right?

Patch 1 with changes to hid core
Patch 2 implementing the change to uas=20

Right?
>=20
>>> I think I know the answers to these questions, but you need to document
>>> it here as to why it is needed (please read the kernel documentation fo=
r
>>> how to write a good changelog text and subject line.)
>>=20
>> The subject looks fine to me. If you think it can be improved, suggestio=
ns shall be appreciated.
>=20
> When you split the patch up, the subject lines will get better.
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
one-eyed-alien.net/d/msgid/usb-storage/MA0P287MB0217E5151DBF1D0813FAFE00B8D=
82%40MA0P287MB0217.INDP287.PROD.OUTLOOK.COM.
