Return-Path: <usb-storage+bncBCFP7G4HQQGRBIOAUC2AMGQEQOUKMIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2FC928C58
	for <lists+usb-storage@lfdr.de>; Fri,  5 Jul 2024 18:32:35 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-25dfc642fa4sf1558058fac.0
        for <lists+usb-storage@lfdr.de>; Fri, 05 Jul 2024 09:32:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720197154; cv=pass;
        d=google.com; s=arc-20160816;
        b=f/k7BLOh49VvI9n+W0v3XBvFgvLL2jIxXW0gDK4WnsgKyroTemwHoTY3Ap/OydjDNq
         ioiwLGp7TopDaclScSIWKM+7t0iuh/W9lkh4TkIb9YYibuY9C7b00JgNMyJarlTUrkU8
         zL821ZQQf5/EWsDUeO+EsUsZDWHd5R7xaRHwhoJCztjxcHPKQ/kE0+T2L49xPDdrOUd4
         pg8/EIKFm5NxRNmOWULIk2DRWHEDweC3QTRCAlfq7TDEAH7rYPq/+z/rCZ91mnxS8e0n
         f44vYfgyg4x479oMDJYMdn9tNrpIkISsed6T2Fkvm3PEDizAi4+NpgIcDWcbiyWPLv6D
         oKBg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=j/auHDepRgjvRHFPAwJVnUGEh+Yo/RH92ylJpTS5vhQ=;
        fh=ngoT7VovBTJOrk20+2+knTVRgf83c2NyAQboESbZ1Eo=;
        b=QF28D2MYIc4xev2EyTlbnVa4rT/isZoV+8PcmsyYlZktR7mUjac47SllV8chxfENtW
         W3YWg4IGGxdFmYgAtMNXcH/8eNuhIoogIwPGbxS8596yVNenWUyrMe97boNKjSex1No4
         HMKwkTG/wwOlg8m9jvPos8ncXkIJWl74EdLvaklH3BJEzQfyUC/HMnogKIKqKSfgs4vF
         7zMY0sppYXf/5CIsjA9qag5il8GmRVsaILShNJvMpEsB4b5sTKa+5224eZYq+LvTC3Uj
         gga1nOkVh+zYRWdhWq9ViUT7Vu/pu6urNj9ab8W/TJ1cKPWgOe2O5G0HSKFBbYtss5Qq
         2KIg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=RiJ6Asgg;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::81f as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720197154; x=1720801954; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j/auHDepRgjvRHFPAwJVnUGEh+Yo/RH92ylJpTS5vhQ=;
        b=S2LknAkyXJX1VnlJ5jyjYfP5anH4h1ceY1bf7BUA43PlAm3H/Kio03ahiCNW1PeIlk
         Zdxg6yYEi7LFQHhZvKN148nhq9E6AMOO2/eiwC+xqLYX3g3EccJAdX43fA24VogenZLn
         FrXHfQkVmUFOjwbxcu/bPcXwc2GxV2y7slqMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720197154; x=1720801954;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/auHDepRgjvRHFPAwJVnUGEh+Yo/RH92ylJpTS5vhQ=;
        b=dAEtLhXwBGBv3yoadqLKnofzeKlhnh7lLU64SMa7OTkN8poMtalwFNck8MCOP34jmh
         4637dwSxdf93x+nxugJyP3PF5WTGoQEsPC2DMcXQVn6di/O/fN9uyj3YM238k8i7pux6
         qgJuuYggvoteBojt6aAQ4yghWCbTq4qN56/QIYBJkz7EJWhOa4Taf8A0DeIhcan5YLOH
         6GHGGckJSos1O+gnAswW0I6zLSFQV/rjAOxvLjK3choWcSv1f/Qcy30hX2RsOc1VaAWK
         JooORy9JppWzQPchMzMQPJ6pFg6+tLGY0VGEP5s4bkwNNXRgs2jfd8MKr/HQGnR4mnEc
         rlPQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWTBm6iQivIKyk5UJVTq0Yg2V7MImjUdMv0IKdWv8SIC/Fu/J2YPVbKumiGSzKUN2GStv+LS0UuPIzXQBDafiwbfuVTEN1jQ6oE
X-Gm-Message-State: AOJu0Yy9BDzJCmLnXJVWRDaNDbIV2Nf2PFNGYrTzGQ1CDMSYJ8Lu7Sim
	xlI1M6/3x9Xg7uRcjompnslVOIbZbIdtZEJ5bbUMu6diQHgwl5xB6+wQBjUGTbo=
X-Google-Smtp-Source: AGHT+IFvrLY/U+HYhsg62ogeGZDDm5wOmaGy/6X0TQQxTgYrqUTHeATkxUBX7UHyZQZ/AUCSImcAgQ==
X-Received: by 2002:a05:6870:5b30:b0:25d:f0ba:eab7 with SMTP id 586e51a60fabf-25e2ba25c4emr2691338fac.18.1720197154019;
        Fri, 05 Jul 2024 09:32:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:708:b0:259:8c55:f25a with SMTP id
 586e51a60fabf-25e27dd6d81ls2251158fac.0.-pod-prod-05-us; Fri, 05 Jul 2024
 09:32:33 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVEOjfhVuIfBPYwjI3fVQOwgJB6qsC+LjjmA4fSXhRSHXYAb/++32BjVoDm6W+1lx1taFSS5QmCzu5d6xk29rwX+yC62CCbnkcEDD1PpacIULGNITM=
X-Received: by 2002:a05:6871:24c1:b0:254:80cd:d2c7 with SMTP id 586e51a60fabf-25e2bd760fbmr517144fac.5.1720197153565;
        Fri, 05 Jul 2024 09:32:33 -0700 (PDT)
Received: by 2002:aca:1c0c:0:b0:3d5:202d:f617 with SMTP id 5614622812f47-3d852bea3c1msb6e;
        Fri, 5 Jul 2024 04:22:48 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVGXcNY3urgrpe0WIO3iAlbYBqhguz1vl06UBxREkM1gTF4zg1O/4XFqGW7VLfOply5pdDZz5YgOioGSjTxKIR15kYo2jcDtvNnTHe85ZkfxwbK7FQ=
X-Received: by 2002:a05:6e02:1d86:b0:375:a3a9:db49 with SMTP id e9e14a558f8ab-38398a01f5bmr53348875ab.9.1720178568466;
        Fri, 05 Jul 2024 04:22:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720178568; cv=pass;
        d=google.com; s=arc-20160816;
        b=FxERNUOA1jfZ6+oiTG40H/VoHAgSe2xd3eH5T4d2yOuwg/bzoQZ+l8EG6S2uFJcXqD
         E840CBRgkIp11dnA6aCCrVYjONHW5RaGS9BNffymwOf8soyWiEfFBgEZLxN8KjrkMjg6
         9iyzzHatOjoIt7AymgHfjjeZWgt3JXv1sLar0kUuNxo0JBDuYZAzAfPA4R35NKlf5109
         AT4vzmpeI+odH5YTMVeF3eUwVMSjTUQzuSYF+RfiuZwp9ZKQh+ZEqdXmvsopz/RoRHyQ
         Bo7N5kCRKPEv07KH6deA7EjgbpRdUfJ705jiFf5+4+BoUrp/8pm3QDlscHnQBR4bqgTG
         OVWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=qIvlljb+D1ECz2D3UrF/8mHouxS4TQGLM9CC1MJh7cc=;
        fh=Ku45mYGc8AOFNtWNYRT8+PF9bggjsf2Vv7hs4AjN/AA=;
        b=bNQDV9MLzo4Z85hpJQMvOPomkj9c7YKHMLnTnIgexzB+4lyYGHUEYB0aopQ8cfe9QV
         7n/8gicKqfBS17stuMCLmUXDnpKAfqyP5Dg3TpeQejrsmeir8vw4DHnYId0Qp4gyOwc6
         jS/koWNJhc714Hwbjnh+ECizC0/Spz1sM5Zy2kKVXRVFDb6l4P1HKCRBrJuywAZ1dcMz
         StmpCt/3+2yNzRNQ0gkLNg4RLBlVubjs8qowpMjZleB4K2H5SSN+FEWagOZZErhgNddx
         fH7+a4Uj8MtV9HMtb2liPnAnq4A+llmJZbEora0mIUeC+srLEJj0hC+IXeOPw4hw5gO9
         dLwA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=RiJ6Asgg;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::81f as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01olkn2081f.outbound.protection.outlook.com. [2a01:111:f403:281c::81f])
        by mx.google.com with ESMTPS id 41be03b00d2f7-73bddd00752si14778881a12.669.2024.07.05.04.22.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jul 2024 04:22:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::81f as permitted sender) client-ip=2a01:111:f403:281c::81f;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6qzG/HTdHlws6zOCReH1VN0YohWluVy2SJHGX4K2Kr+WJYdT+v6L2tdTCAiocQlotAu4MCy13JJPU0mDMfmIUKpWtx1w2mMP3aqv97WhP8k49XQPGsIb/HzLycixxlj61xmo/ja81iZYlox1YF2Vli/odB7PFo629dTDTcWt2mN/8/v9J1jrsWnNXksZhjM7qLl0q4KRpHJztrZjgoRkQiQ0kVhX7NSGGcFL29oX3wiOupcwub6X/d731Kl6C2S5sJgERv9CKzwrS4+Ufck7hA870EHY8zRNQ7odb1r7GgIH6rNOWJxffxJ606MzXhp4onazyorqLr1ELmlP/0qyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qIvlljb+D1ECz2D3UrF/8mHouxS4TQGLM9CC1MJh7cc=;
 b=PUaym+1yHezKgziMCCIK6NMwGwajxH5C9z/JIDbqS2f9q+NNxbv3O0nvbDWHJskyocgTKY7DMX9DqRj3QmuILYoT73jrLX7WM9pbuPAzHWk6eSV6N0m+dNNJj8PZFM00hbC/SlrOyYkvNLvKtbOQ4qGcqXUdU6MBnBFtrlhGv2K7Iufhr0/jVIjibom3hRVMvwnHN++0KHcIrFO8oAGpPzyvdINaCq7Ad7KfM+0/2TAYfwPAnMSreEtpnMj79oxAgSVwJoXHAmHR9EjDPG1iJckybagKYFwyrNKdcA6U7j/D9HSwgpbJPOFHZdcGbwWvHnpx7zOm8pGiOX5QG3uYjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN2P287MB0837.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:154::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.29; Fri, 5 Jul 2024 11:22:41 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.027; Fri, 5 Jul 2024
 11:22:41 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>
CC: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Kerem Karabay <kekrby@gmail.com>,
	Orlando Chamberlain <orlandoch.dev@gmail.com>
Subject: [usb-storage] Re: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Topic: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHazs1tjVgoALhhKk+BKEcu0nmxn7Hn/aCA
Date: Fri, 5 Jul 2024 11:22:41 +0000
Message-ID: <66B65DF5-489B-4D38-A556-6E076D82565F@live.com>
References: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
In-Reply-To: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [H1IoaqjHoPtcUaCzp0MMCTeS1e5PqR8+S1VWPAN5Yd7hCuQZinGga7Ydo4JNL08D]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN2P287MB0837:EE_
x-ms-office365-filtering-correlation-id: 05a7282e-03ad-4238-9bfe-08dc9ce4c8f1
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|19110799003|8060799006|102099032|440099028|3412199025;
x-microsoft-antispam-message-info: UqArtPlO5zbshNARo9IjfEnPP/H1FR18lHP07O+N5E4uM4ayBMkUGMsT/q3HYBdPlwZb/0nEIyBnGg1Krx1j0D3Cb7D6OK0z94eAfHC7kh7EhE/XvBODCXDlhv7GEElE6Sn5hp7TKgfJLN91FQajVuwvlbhttJ3Swp/qocLAagbDNIPi0Y2JTiOjlyeJ3KcWcBceZjnpdm2Z4QvLbNO5SbY+uvo0QvVVNeT0K+gs52wK9jY3cVyrq8tocOZpwLAJdPFPyutt6NUStKXjZpwRGCG3l4E5zgILnaxGATPLesoTus66JIcrAXW6Ds/FCvZdx7egFNSkAdzXSQx17eK+X+LOLInemh9+udI4Xk/Y5P53OgSxUx5xIKehS8trgt/BkTf/OF9HKT1GLXMiK0Fwck2n99e2KszEUEohHOO9UUKtjFqQJUOl+io7wQPuuQe6B4Z87VDodNoiaOsTHP+f+8Al2/Cfw2QSEBL2ASXIC1I6OKxRaYMX+GFwpq+hH4HF3P8F8Ydwgmip/N4haPaKRalE+MPzMGh4lgWGpm4gMJ2A4+Ij14vi0HJBzE81BUvu7OTbwg8A3aZydFwY3zC4G9DDuh6vU3j+Uf9NGPfCyrt2d7oP3gNhNmA+L3LhSjuJuI7vRXd3xq7mqSLY7EVG0A==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1F6bEdKUk8wdVh5Yjd1RGw2ZXFld0RhdmVoNUhoQUsxQm9JVURwQ3hiY0pJ?=
 =?utf-8?B?cGFZZittb3lyNWc4VVRRMEpOblVWa2dBTDdOaU1EOVVadVF0NU1VVURZUlZz?=
 =?utf-8?B?NmhJbTVleHhRWjFyRmowTE9qR3ZsRUNhQVNCc1MzbWxGelhLMFRtMUVNYzNy?=
 =?utf-8?B?LzNPUWVIUzUzdmNtcVdqVWs0QUw3aFRPQjBlU3M0Y2MrZHprVW5QdkFoTWhx?=
 =?utf-8?B?VkpObzhVRFdBc3lEUjRPdTB5WVVzaVBPYklnVG05QzVZbXhoNVEwZ1BxQnRF?=
 =?utf-8?B?WlFEVmR3bG1Vdjh4WnduV0xmUmNXUTJ2MkltQnd5Z3pUSjlDTU1RcFljRmVa?=
 =?utf-8?B?NTFTNUlYcXc4WHFLcXVUN20zaFJKU0k2U2syNnZtOU56TXo2OFdORE5IVXU0?=
 =?utf-8?B?WlRqek1raWoyeVVzNGdrbUowcmF0UlhMWFR0KzlVV24xa2M5b2E1cldEQ2tQ?=
 =?utf-8?B?a1JNZzFtTTJCN2w3TTZ5SmZzNWJYaGx2cUtSdUN5enhqM3dsZUpMN0NDZTBG?=
 =?utf-8?B?Y1RwQWNBb1k0Nzd4Ni9pemsrNmE1MEhRcWNYTUlCM2s1Y0dYeEFPcXJyY3Jo?=
 =?utf-8?B?OUcrY1JwSUMwRWsyYUdISTdPdE9XMjR4M0RLbUpQMEdQUnY4MDVtSUV2QTNQ?=
 =?utf-8?B?R1JMVkloZUlqcWxVM1ZmRWxqS01yOE5uTVg4RysrN0V0YUZUOFNLYTdJVVow?=
 =?utf-8?B?MU1QS05aMkkrTVVrZFgrdFlESHQ5Q3piZFdDYjVKSkp3VUNtZmVFM3Y2Mmcv?=
 =?utf-8?B?MGJBNFBkNUpZaG56OTgxTC9BenQyNXZLRnhiZ0pEdSs4UnZQVDJiWk9IbHpv?=
 =?utf-8?B?T2g1VmZabkNMYVQwU1RJUTRuOU1EWG9WUWdpV1ErYUxKMTg2TTZGYURBTW4r?=
 =?utf-8?B?UEc3Wk9LTzFmbnJSWjZyRjlYS3ZKOEhZL3ZBS095RGFCNjJoWGNjYmYwT2Vy?=
 =?utf-8?B?YUVIS3lraHNxMzdPWnE4cmt4MHI0YU9nNFhMaG1iZVI1WkVsdzBnMUpyQk8v?=
 =?utf-8?B?TVY2SW5qbVRCRDRIV2JJQVlLSDhPQVZqNU9zK0ZzdmR0QUpMWStyd3hqMlZM?=
 =?utf-8?B?RGdIbnljU2N5VU90WFgwMzV6b1NucUsrekxhU0syZlVvaFNJU2NRQ2N1MXl1?=
 =?utf-8?B?bXN2VlhzcjBwU1RDVjB0Nk9FUkluQnpDQ1V0YUE2OUI1cUxhd1dFdjhBaWlT?=
 =?utf-8?B?UHpuZ2p2azJVRXJaeEpsUTV1QktwZUh2Z3VZRUcyOUV2QnhRcVlQRnJjeEhu?=
 =?utf-8?B?VGRxb2NrcCtYaDFnYnFyTXY3bTRaOG9VNm00TGdFYWd3MWtsc1BLdGNQSlJP?=
 =?utf-8?B?VnJ5d2xaKy9SOGZtSjcxVlRyZGE4VXNWUC9UTnFLZ0xGZkk0eWI5NGRQMHJt?=
 =?utf-8?B?QktMcEhEaEVaYnZUdUxKaFVHT0RoL3ZmSkpvcUZiZGQwNzhHaVF4MzZXNlJM?=
 =?utf-8?B?RjVQb0h6Wk5UbTVEbXZTbGxmOVdrNWVHOC8vNUJzVHoySURYazdYbEY1VFRZ?=
 =?utf-8?B?bUhjQ3RUaGVkTnVEUVpYT2xJejdVSmJ1ZTlOVEtYenA0Rm5URXJuamdZbXh0?=
 =?utf-8?B?aGdKeXNwL251cnVqQlNRWWVDdUozM0lWYm9YY3dWZERFMFo5NitxYjZ3ZGR6?=
 =?utf-8?B?b1hZUXRZaklWbmsvakVSQnp5RmVhbzZMRGpSZTRqYkRRTU1BZUxWa2JZZmNF?=
 =?utf-8?B?eE0yc1Y2M2w4ME4xdUVBczNqLzkxL0RmODRVby92OG9ucXFXQkRkWU1jUWhO?=
 =?utf-8?Q?7e1YEs1H4OQYkGg3z0dy8ZdRdqpxtMPVPVquim4?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A948F03F2E7DBB4190D1EAC68B7C225F@INDP287.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-bafef.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 05a7282e-03ad-4238-9bfe-08dc9ce4c8f1
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2024 11:22:41.7451
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB0837
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=RiJ6Asgg;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281c::81f as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Replying to this since I forgot to add the author Kerem Karabay to cc, so a=
dding now

> On 5 Jul 2024, at 4:50=E2=80=AFPM, Aditya Garg <gargaditya08@live.com> wr=
ote:
>=20
> From: Kerem Karabay <kekrby@gmail.com>
>=20
> This simplifies running code on shutdown for USB drivers.
>=20
> Signed-off-by: Kerem Karabay <kekrby@gmail.com>
> Signed-off-by: Aditya Garg <gargaditya08@live.com>
> ---
> drivers/usb/core/driver.c | 14 ++++++++++++++
> drivers/usb/storage/uas.c |  5 ++---
> include/linux/usb.h       |  3 +++
> 3 files changed, 19 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/usb/core/driver.c b/drivers/usb/core/driver.c
> index f58a0299f..dc0f86376 100644
> --- a/drivers/usb/core/driver.c
> +++ b/drivers/usb/core/driver.c
> @@ -514,6 +514,19 @@ static int usb_unbind_interface(struct device *dev)
> 	return 0;
> }
>=20
> +static void usb_shutdown_interface(struct device *dev)
> +{
> +	struct usb_interface *intf =3D to_usb_interface(dev);
> +	struct usb_driver *driver;
> +
> +	if (!dev->driver)
> +		return;
> +
> +	driver =3D to_usb_driver(dev->driver);
> +	if (driver->shutdown)
> +		driver->shutdown(intf);
> +}
> +
> /**
>  * usb_driver_claim_interface - bind a driver to an interface
>  * @driver: the driver to be bound
> @@ -1053,6 +1066,7 @@ int usb_register_driver(struct usb_driver *new_driv=
er, struct module *owner,
> 	new_driver->driver.bus =3D &usb_bus_type;
> 	new_driver->driver.probe =3D usb_probe_interface;
> 	new_driver->driver.remove =3D usb_unbind_interface;
> +	new_driver->driver.shutdown =3D usb_shutdown_interface;
> 	new_driver->driver.owner =3D owner;
> 	new_driver->driver.mod_name =3D mod_name;
> 	new_driver->driver.dev_groups =3D new_driver->dev_groups;
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index 2583ee981..591fa0379 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
> @@ -1221,9 +1221,8 @@ static void uas_disconnect(struct usb_interface *in=
tf)
>  * hang on reboot when the device is still in uas mode. Note the reset is
>  * necessary as some devices won't revert to usb-storage mode without it.
>  */
> -static void uas_shutdown(struct device *dev)
> +static void uas_shutdown(struct usb_interface *intf)
> {
> -	struct usb_interface *intf =3D to_usb_interface(dev);
> 	struct usb_device *udev =3D interface_to_usbdev(intf);
> 	struct Scsi_Host *shost =3D usb_get_intfdata(intf);
> 	struct uas_dev_info *devinfo =3D (struct uas_dev_info *)shost->hostdata;
> @@ -1246,7 +1245,7 @@ static struct usb_driver uas_driver =3D {
> 	.suspend =3D uas_suspend,
> 	.resume =3D uas_resume,
> 	.reset_resume =3D uas_reset_resume,
> -	.driver.shutdown =3D uas_shutdown,
> +	.shutdown =3D uas_shutdown,
> 	.id_table =3D uas_usb_ids,
> };
>=20
> diff --git a/include/linux/usb.h b/include/linux/usb.h
> index 25f8e62a3..5f3ae2186 100644
> --- a/include/linux/usb.h
> +++ b/include/linux/usb.h
> @@ -1194,6 +1194,7 @@ struct usbdrv_wrap {
>  *	post_reset method is called.
>  * @post_reset: Called by usb_reset_device() after the device
>  *	has been reset
> + * @shutdown: Called at shut-down time to quiesce the device.
>  * @id_table: USB drivers use ID table to support hotplugging.
>  *	Export this with MODULE_DEVICE_TABLE(usb,...).  This must be set
>  *	or your driver's probe function will never get called.
> @@ -1245,6 +1246,8 @@ struct usb_driver {
> 	int (*pre_reset)(struct usb_interface *intf);
> 	int (*post_reset)(struct usb_interface *intf);
>=20
> +	void (*shutdown)(struct usb_interface *intf);
> +
> 	const struct usb_device_id *id_table;
> 	const struct attribute_group **dev_groups;
>=20
> --=20
> 2.42.0
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/66B65DF5-489B-4D38-A556-6E076D82565F=
%40live.com.
