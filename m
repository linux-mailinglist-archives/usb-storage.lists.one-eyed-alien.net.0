Return-Path: <usb-storage+bncBD4JJBHQWAERBNE3VCYQMGQEHWFDHSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FBA8B1C5F
	for <lists+usb-storage@lfdr.de>; Thu, 25 Apr 2024 10:00:54 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6a07f485f75sf14804796d6.1
        for <lists+usb-storage@lfdr.de>; Thu, 25 Apr 2024 01:00:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1714032052; cv=pass;
        d=google.com; s=arc-20160816;
        b=h3nZFK74F3stLT/JJbbOChc8MmlyT5t1RVBHmbjdgrvNj2dDkWAxTgwNWKFBAXZQJl
         MihS0TjdUAUYd39u6imDuxNXFA7ontpFt8uBWIPPPiVfcOHoJJf1zz3jyAp4dmNrtdC8
         b0572K9BuNHISOA4ULGrNfsG2FTME55DXTunpq0J7fCR1tj151LrEJxKOWwxXdKX6YJs
         6mDiB2FX50Wg+ayfS7XT/US0KsK/5JSI3KVbOpB+PatCbuwwP9cgkSju4k6lOQWBhmDL
         yAk48QwYksfB7vlEsbjk2GlVrKrHE1J66iO+aVNRzTIw5WJOhFUbiKeI0S6AFVyh07bs
         QiIQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :deferred-delivery:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature;
        bh=++cjmVHnkMFw77KzZl+WldRlnM0JuQmRejvzp/TP34w=;
        fh=sj3TTuDdgCr6II5RgeFKhYOzmZnv/Vd9CSUEGGs944o=;
        b=AqMmFmWguVenBFVhsI5iJK+ug49DGZGrTZ49tTVlqYuKi6myTvbhqJytsb57vLdoIB
         8lsF51IeWDoEj3anOjkVCuX0uUB0JooWgSMI4E3E7tyLoiSELKi+dkjEHmM0bEsr3cLt
         XcUPzb4RwWvJOpog/3CQehAg+5eFVlEKpAg9qYWgbBWonEjqMeix6+z+uQYgaLcVi1NW
         9nHbumBKG3DuwJKO5G5k+G1Rf3sDn+hvqpnhVR1l6McEKZfyolbLxaA0ebaFcN+YdUQ2
         uF7ufkG7yOrRiVzkneiv7ADYmjB3thocg35H2ixqBYHUK4feH5Et+ti7maJvA1qMAAjP
         tXPg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=bnj8KwJZ;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1714032052; x=1714636852; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :deferred-delivery:date:thread-index:thread-topic:subject:cc:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=++cjmVHnkMFw77KzZl+WldRlnM0JuQmRejvzp/TP34w=;
        b=QeefXU33s5S5H3LzDe2J+6Xi/faJ0VeLQncETKlFJzZpkQafSXrz1kI9StYiT1gM81
         PXbar2zoxV9oe36cgncGd4JR7GBNqTAoFzcKRRMLlTXM0X31P4Sag5AxbUnw867UEicc
         3Bjb8Aht+/ALVlCgQJrcQOdFwIbwUbWBQ44Cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714032052; x=1714636852;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :deferred-delivery:date:thread-index:thread-topic:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=++cjmVHnkMFw77KzZl+WldRlnM0JuQmRejvzp/TP34w=;
        b=ESjCSybvYGy9HeXMD8Di7nhMCkvOxpqCZSrUs9aKfYqPdBcfrqCBI/i+S3EKT1kut2
         /JzTWOb55TY0DE2azZy2pV1qSMQfonJzyPSxkQ3+MYMkmzAd1qa7mNZAmB+C7lHsqEr/
         hYSXQD3c6P/zJzYQdMKinvIJdJy9Uwwo/htIYt79KaeMTTvQtGZlFVjWKSvTNPUD1WXs
         vhjsbeJi0oyGxSoykveCdUY1fGkY8uzruCpbKiMSg1X8TSABdGaoLyMfO6WJ7jhgGEe2
         skKItXaQLeZujK8iyfkFLYiKn7svss6xR64CCTqXvEdyhbQ1gPfiqUJ54r1uiZroWrym
         3huA==
X-Forwarded-Encrypted: i=3; AJvYcCVAcm93OPnJZMP7zwrrSIPSH/mLdtVI8R0//4MRJ2mP2qv8hsuvY/VSTFHv7OeFGpqY+WDE+hwgvMi4rCX4iDHVzxYFESg+VUFV
X-Gm-Message-State: AOJu0YzJXSKd1hGE9J8g1ga0z+KC1B2PqtZPzvbj01zkr/+lTI+DAcmk
	cf2Iz20jJv+pM5/773oA4VMbN4ktrLjvlel5cB5CU8P6M9uzZ16QkDBpe6ngX2s=
X-Google-Smtp-Source: AGHT+IGo8Mdl0pFe8pZlirYKrQf7XwftPBgzwPuM0QOc2jz3PUJcYpqEmgMtGrFYo+vgFufmRGqjVg==
X-Received: by 2002:a0c:f789:0:b0:699:2527:9843 with SMTP id s9-20020a0cf789000000b0069925279843mr3516901qvn.5.1714032052518;
        Thu, 25 Apr 2024 01:00:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:501d:b0:6a0:5da1:b6d6 with SMTP id
 6a1803df08f44-6a09c61a682ls15139606d6.1.-pod-prod-00-us; Thu, 25 Apr 2024
 01:00:50 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXOVay0dfYBpIf4gofWkvNWgv7lgsVLb0S/wuGUG3EQYtfgEn1SOKsN7cIt6DhncFS6OxilWzWF0VphvJHIfJh2dSmT1NNP6uaGGcyvBgna9oLxljY=
X-Received: by 2002:a05:6214:e82:b0:69b:7363:92a with SMTP id hf2-20020a0562140e8200b0069b7363092amr3331914qvb.8.1714032050555;
        Thu, 25 Apr 2024 01:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714032050; cv=pass;
        d=google.com; s=arc-20160816;
        b=fI6GLN0pacWJRZKlHBLcrNTEu3jdMtcrXPv2ToOQp79zSwEo5bcIGeRz5AwfJk/9dZ
         7ghK8SWnDq6PezjrzHUVtWGufhfcjREVCJjivYfUW7xNnajMgisjsOGI/TA/zSq8sl5s
         rHeTW3R6Eodh/Ci/dZvLbV9+XtGWhQa8G9VUZbx8rd0/x+g5VGuTyJkFyXbjWO4Gf5Xz
         T5LnMDECaDSC6z6Wy9btkQR12DOxtKktnx6DCRRZFNqUiFuP/X2yPs7ccH50slYTFu2k
         2ySN8TWqpb5HBIRLh75DYj3Y24dteRRGq/7TL1vpxUDwNhhFYdzaCDr1LsuhH82cKtFs
         8Pmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:deferred-delivery
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=MdLGeZwpaaL78Bm3fNtd55+k4TJuGO6oUlVHjzENf3s=;
        fh=7GvZ5+2vkX+pDOlzKvxaT7IRRmFljajpPehVEfhu5ME=;
        b=sApA+eR9LhJwrbBicfq+6mzI4ZaqsQvTM0VZvHKiUERdmdef7/w0W/8Nb7+th9TX0K
         xJa9qhYWtS94XwvBtDA7HBuuc5Nxd8HMTvKIdQSMk59AQbB9Mb1j2GQNsSm2FK4eHalo
         UJUiqVdDFKqUbpg+TBb7KrW+cvCEgM/Bb7vO91Tc+/xv1Hpzx0onSe0y2Ii5GwCH8kVK
         oo0sL3rONrQkW/BGjZnFRbywBiQuk6AC7fUsDCwz1EYibxQOr6E78IdEH8wbzrHj0Z8F
         j5Ny7igC/LeSYqx8sUCm8jN6/aaFF98xwT6wg8g75NnJ/wXPrWvBuGzSKXbXDAhQCb4e
         6jPA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=bnj8KwJZ;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from TYVP286CU001.outbound.protection.outlook.com (mail-japaneastazlp170100000.outbound.protection.outlook.com. [2a01:111:f403:c405::])
        by mx.google.com with ESMTPS id j21-20020ac85f95000000b0043155865b0asi16330477qta.313.2024.04.25.01.00.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Apr 2024 01:00:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted sender) client-ip=2a01:111:f403:c405::;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L1SZ5K3mEriPdSDwS8Z9q2/qlKgxBL3Qg+kuWLhNjHe5VH/xdrFgIPhp1fT0glDbm2YuR6FZQe5daJ5MXz+IUDDOuLcDLigzZSdwitubQR22mszsRFBVAUf6vNhDcHIHmUozAbEtJ/Mj2z9htNhAs0QsF0fJjbXQMoYrY8QMOb+3XG8nHfara6d1YKhRaUqJrVhldMxG89E7faYlmt6oiI3tc9br6J5AJWMNW+LHP1HaROekmiGbS6U16z0gt0BFIYg+NvjMIFkRuLynOT1g7bjYmx7dM9Fkkz7F3/3P5x4IGyTpVKlDV5M9X91lbWLE2ODowNCXpFOqJJ/od1GfDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MdLGeZwpaaL78Bm3fNtd55+k4TJuGO6oUlVHjzENf3s=;
 b=c2GkLit+4bt34+kvKRUSVISMA4wOuAkdwhssNQ5xkzJFXWxDOVurU57KH2ovJ2fO9Uf7CgEUfroo/I/srUKJfb5lySiOYCIv0CRq/ZUbD/yhQziBw5B51iA7YKZyydnH2RGmRb/i9H3CHScoKVtZ/vx5wH413od5ek54/ft23p+4ZBz3pLVZSEHp2HvFOjv1UJ0VeeSGJl29Y9vP6OTWG4t6pAZDwxXGUBJ9f8NcYJGDAAqkYSPDVxUdYd3iikNgkQvSW4aeub/HqyWBMu120Hd1BdsRSeZ3hf9G2L+KGTq4Xb4rXAk5rmohMK/QObzIUtm4NbqMBEZNItJVFUFqIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYWPR01MB10773.jpnprd01.prod.outlook.com (2603:1096:400:2a5::6)
 by TYWPR01MB11018.jpnprd01.prod.outlook.com (2603:1096:400:392::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.25; Thu, 25 Apr
 2024 08:00:44 +0000
Received: from TYWPR01MB10773.jpnprd01.prod.outlook.com
 ([fe80::5ef9:9250:d1a5:1aae]) by TYWPR01MB10773.jpnprd01.prod.outlook.com
 ([fe80::5ef9:9250:d1a5:1aae%3]) with mapi id 15.20.7472.044; Thu, 25 Apr 2024
 08:00:44 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"corbet@lwn.net" <corbet@lwn.net>, "linux-doc@vger.kernel.org"
	<linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] RE: [PATCH v4] usb-storage: Optimize scan delay more precisely
Thread-Topic: [PATCH v4] usb-storage: Optimize scan delay more precisely
Thread-Index: AQHaleZUfInJEgZeY0OV7izYkTBKmLF3ghuAgAAB4QCAARgpEA==
Date: Thu, 25 Apr 2024 08:00:44 +0000
Deferred-Delivery: Thu, 25 Apr 2024 08:00:00 +0000
Message-ID: <TYWPR01MB10773C220D1E6C1AFD1BD2F8890172@TYWPR01MB10773.jpnprd01.prod.outlook.com>
References: <20240424013134.17307-1-Norihiko.Hama@alpsalpine.com>
 <c06aaaa1-a2af-47c6-a615-602f2c70de86@rowland.harvard.edu>
 <515c273c-9bb0-4830-a3a5-e9a485356434@rowland.harvard.edu>
In-Reply-To: <515c273c-9bb0-4830-a3a5-e9a485356434@rowland.harvard.edu>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYWPR01MB10773:EE_|TYWPR01MB11018:EE_
x-ms-office365-filtering-correlation-id: f1ed80dd-05cd-4b58-2e06-08dc64fdceec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-7?B?TVVka2VtYk9kdm5MTFdGR3VqNnAzdFBYZk9hUTdqdkZJWmsxVGVPNDRrUVQ=?=
 =?utf-7?B?Ky1jUzZ0aEVwcG91TGZ4OGIxd0o1bENkR1RMYzJCQ04zTFZHSGFUc0lvbVlh?=
 =?utf-7?B?eXJDbjZLREYrLUxUOEpxMXFpOTRiN1lvSlI0WistTEI2ekE4eTkvVGNpQ3pj?=
 =?utf-7?B?TzRrb2QrLVN6NHhSaGpSenNRbE94SmhMTEllSENrTWFpMUNwY3RCY2ovVlNF?=
 =?utf-7?B?dlhuZzcwWDZrTlBhZk9DUVFCUGRpQ2MzbHExTXFIYWR0WVZGU3h4aSstalhI?=
 =?utf-7?B?QTRQRVh1djRQd01ucUJ1NGlsSWIxcXVTNmp4cERBVGUrLUpFVzZBVmRHUUJX?=
 =?utf-7?B?Q0hGcFFSM2EvbystWlZtZFBPMnFob3ltU0JSb3Z5V0Rad3U3UlN6WlpXNFBG?=
 =?utf-7?B?N3E1ckxVZS96U2Fock0vaVp3OVpiY0NIbG1jN21sKy1WSTBXYldNY0xQWlNo?=
 =?utf-7?B?dm1laDFOdlVPU1FOYzRxOW9YTFU4dmxydWlITjJGR3A5Ky1iVUxTNVFLMist?=
 =?utf-7?B?MGkxMHVZVmVDamVnTXl5M3BpcU5LQ1o5UDBLeVpxclBiKy03UlNyaUhTVlFt?=
 =?utf-7?B?VnNubWFnT1dwdm8vUnNuUXdUL0wwa2NiNDByWTFuWEE5MTBIRXpoem1XWG5Y?=
 =?utf-7?B?dWVnSnJKYXpTbjArLUJHaXZzek10d2h6ZzZEMHhmV3ozNFRFazRTblRTU2ty?=
 =?utf-7?B?RU5JVWR3WE16UDdScnA0YnphKy1pZFJGUHVueUgyMHpHNTBNSmp4YUNXZFlK?=
 =?utf-7?B?RGlJNHQ3QVcyMS9XWmkyOExVTkZ2U3NuN3FRaVh3MHZ6NVNtbzFzOUpGblFv?=
 =?utf-7?B?QlUrLS9sVks3R3pNN3JXV0VPNG5sYVBtdmdxTjdPN1ZtR1JodlBuUy8vQkJr?=
 =?utf-7?B?OEZSYXM0dTR6NVJCVistMXZReWdaaFBpSmsxN2pjSDdsaUZzMFNTbGRlZUgz?=
 =?utf-7?B?YjBMMXp0bUFFbDQ5SThBczlFc3NiNmhrSUlFM3NPcG5yQnhLdWRVeDNUUkNs?=
 =?utf-7?B?YkxoSEpxbGZRME04TXNUVVlwQTA4Mm42elMzUk1TdHc1RmNRYVZtZ2lSUVQ0?=
 =?utf-7?B?dWlTaTFFWXU2S25rVXdreTZCbTVpbEhrbllmZ1g1WDRySjQ5Q0xiQ2dCTzVv?=
 =?utf-7?B?S3NxL3lJS09YR2dLTWk5R1lnRWRBb2Q2bSstSFE2UFpxMEcwZUdZaEp2OWds?=
 =?utf-7?B?dTVLT0ZLZ1llMFBnMmRTYlJpVVFzUmdCQlZtUXZWTlUwUzVkajdWYnVRWmkv?=
 =?utf-7?B?WHhVRVgyaktRdFV0M1lMRHdaUlR3bEpZM1dCcDZIWlNJWEZhWnREVUNXa1pV?=
 =?utf-7?B?ZHh2eWVMbm84THJrTUFXd1UyZGJXN3BMSVVLUzJmZjJWU0VYbVY2djR5QjBi?=
 =?utf-7?B?Nk1EalZ3VkovMWRSU2V0VmNJdHl3Uk1VY3lOVWwxMjErLWhRYVdFT0RCaXFt?=
 =?utf-7?B?ZCstWlRqaWJMN2hMTWZ4bWRuMmdEZG8wdHNHVkdWME5UdFlyZTcvZ1plSDNX?=
 =?utf-7?B?L0xkUlJqZXhuOTBFczJnei9LM0xoQistN1h0Tkl4VDQwVk1Tems3M3NqSjI5?=
 =?utf-7?B?TDhCMmhVVldpV0NCZ3kxQTEvcGwyUE9GS29sQkdvZistdUl6dWdxdEZIUVFR?=
 =?utf-7?B?VlVSM1Ntcy8zMXo3dXdEdk9rOXNGeWcxM3BJM0JoMkRJN2p1Tnp1YWdud1lQ?=
 =?utf-7?B?Qkwyb0lpSTIvUFM5cEd5TWV1Z21uV0ltWmVvTnFTekRYbnY0UkZGbFJ2dTdY?=
 =?utf-7?B?MHYzdWdUelhZcHgvaDZnbzk5VHFrSFRVUGFvdVJOdTVoRCstTUJTVFJrdGNS?=
 =?utf-7?B?dUpQcERPYUJIMmdhMUxiRzBlc2JObHdwd2tZckd1OFRUN0kwQ1ErQUQwLQ==?=
 =?utf-7?B?K0FEMC0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYWPR01MB10773.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-7?B?M1M2dnVzNnhXMWl6N0NJZnBSUVFmRkpteE50aXVqZkRyWSstSEhFM2NwU3Mw?=
 =?utf-7?B?SHRadDJsV2hERkYyWUF3WEJCTGFzeU1EYS8ySVJCWC9HWlFuSC9pSi9RV2Vk?=
 =?utf-7?B?ZWFwV3NRWTBDeHgvS243OEx6Z1QwSzN0VXVQSVR1dzU0U1g0TGhMaDFKaEVt?=
 =?utf-7?B?bzRiUzhZSER1UEFsM3JESVEvU2ZDdVpTRHFCNGxKcFpaMFhLbG03andrREMv?=
 =?utf-7?B?aW5weistc1IwcUFFTmJTb0JnWHZySXd3ZHh3N0k2emxRaUFDNTdBV0Zvc1Ey?=
 =?utf-7?B?NWd6ZUNKR0lrdi9ZRGw3cVQ1RDluNmpkMG5saGdoVjYyNThsTXp6N3hZM1Fv?=
 =?utf-7?B?djJVcDRiaTJsRno2dzU3RnJpOW1xQVpRS2ViVGZOb0w2NUMvUXl5QnBPbGRu?=
 =?utf-7?B?MUZiVktjemg5RERTVmlVbzJISE1PcVdrVkZ0RVRYRkFDbEFiR1pOZ1F2Umlo?=
 =?utf-7?B?bzNNTHNlRm1XM2R3bmxraXpwd0tiSy95QUkvYVk4VUJNSHBlQUhsSTJSVXdj?=
 =?utf-7?B?T3hjekpsU21TNFd0azJ5TEhNaWtwS1dkWTVSUllGOFpVV28xWm1ra3pXcDZl?=
 =?utf-7?B?QkpLWE84NXQ2d0VmM3pqTEZ3R2lsSFJzMUlKSlVnWmVhM0tyTWNxREFoYmIy?=
 =?utf-7?B?N1ZMWkJmdDFQOEVwZFkzZWhRQ1pHS21UUkZ4czhhaDY2L01ZWElXYzFQN3dr?=
 =?utf-7?B?WTNNcXRQOG9XdDNZSlVPeFIrLWx0YXpBRzFYMmY0bFZnTmRHSjdUNVpiRyst?=
 =?utf-7?B?dUcrLWh4SENNU1paWXhwaHJlanNBZi82TnBVYjZyb21OMWwyKy1NcnNMVDBJ?=
 =?utf-7?B?N29CSnRlVDFvYkY4Z0hveWx4eWkwTkhSN2VIWjIxbmE3Q1FpZjFvcjh5eVZs?=
 =?utf-7?B?Z1luaFVHKy1TMXZDRHdMR29aVXkxeS9mc2hwN0lOMW9FYU1qOHJTeHhKaGta?=
 =?utf-7?B?aTBlc3d6NTdRUFBMOUxHMzdOanZlWmtmRk9GdWl1WU5QSVgzUS8zYmhWbk54?=
 =?utf-7?B?Q1hVMVE3eXFpOVhzS1JSRlhWUzFpNmt5UHdYN2V4Q3QveVZ0SDZmWm8zSURu?=
 =?utf-7?B?N2RRYnJDSEl1OGVRV1JwcUN2UkRiN1VSZDJudi9sQlRIL2x1cWIyMDhpU2M0?=
 =?utf-7?B?UW5sWEE3UmIwRU1SRE1kYmFGeUN6dzZNblFQNGtwdWVyRXdTV1oyczByNHFV?=
 =?utf-7?B?OUlvelEzeFIzUmFGR1M2UmZiWDlqTXVodTRUUXZHdGpOYWZJQmx3QktraUJU?=
 =?utf-7?B?UUt4TS82WFFTS3p6SndFOGpoSExrVllwZEFnNUN6dTZGcmVla0J0V0RGRUNK?=
 =?utf-7?B?WlJJWEw4UmZOdWw4WkViQVVWSG00RldlbmNrQmkxTGExdTU2N1EwUjIxYUFC?=
 =?utf-7?B?OEZKWklHckZKZ2xKOUYvUVMvUUQzZE9BbTRoSUZUckVITTFsRVk4M1VNS0pi?=
 =?utf-7?B?b3NwSWJVWDJhTkwxeXpkQWtZQWFRL1FaWGVPZEdrS0lCdXpLUmxxQWZxcEVT?=
 =?utf-7?B?WkdaUy9xTTJuODNtSlZTWWNiamptZ05sdzNPc0pTeXNXcFZrYWl2YjhYdFNV?=
 =?utf-7?B?NEk2RlQvLzRJeTZjRS8wMk9weXBFVzNzU202T3pzYkZIU2tqbHlaRTRzdWtq?=
 =?utf-7?B?SDVXKy02RXorLWdRN2hyZW5BZmYxakg0bW5MbEhCejNoRkFobUxURERUV3hR?=
 =?utf-7?B?VTB6Q1A2TDNnQ0pmMFJQSkdCWG5IKy1mZFNLKy0rLUJOTDJ3MzNDaHRmV1dT?=
 =?utf-7?B?dEVFZmk4clA1d3pXNmV6SElrS1J1RGlHZHVlcXBzdWt2VFI2bzVKRnQ4YjUv?=
 =?utf-7?B?OSstdC9sZ2U4NzNzQistVXNENjgvVU5XY2pwLy9OOGpLVldQcDRBTFBBMWpE?=
 =?utf-7?B?RUxZMjlIZG9DTGRrNWVmbkl0T2JrdTBnbVNTbUd1Q0xYckxFRTlnNDBEVVdk?=
 =?utf-7?B?VG5MbXBPb1dYS2hpSTFYUFZFSnlYNGF1SSstZHcwVnhRL2djMFRBUE1BQmQ=?=
 =?utf-7?B?dCstVVNvajY3Qkc3V0UrLXRUKy1kVVRkUzlNWWtGOFc1eGJpRDBxN0NKdVFV?=
 =?utf-7?B?d2t1OHZPT0pNQ05vWlBxSFhwdm5YbjVyaHJZaGlYSzRYMFV1U25NU2lBKy1Z?=
 =?utf-7?B?cG9xeE8rLTJNb3A0NkFRR0x6dG1HZGVtbmhua0RnSktzbmhSaXR6WUtSOA==?=
 =?utf-7?B?Ky1MKy0=?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYWPR01MB10773.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ed80dd-05cd-4b58-2e06-08dc64fdceec
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2024 08:00:44.0389
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CeENFSVZ1+igDer6yGCmmSDFGe4dstn8Q6msIDe9Rq87My8uURlwB/NiShginPW3GDAjK1p86/rd9B3CEHluJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB11018
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector2 header.b=bnj8KwJZ;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:c405:: as permitted
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

> On Wed, Apr 24, 2024 at 10:51:57AM -0400, Alan Stern wrote:
> > On Wed, Apr 24, 2024 at 10:31:34AM +0900, Norihiko Hama wrote:
> > > +			Example:
> > > +				delay_use=2.567
> >
> > This could go on the previous line.
> >
> > 			Example:  delay_use = 2.567
> 
> Oops, this shouldn't have the extra spaces around the '=' sign.
> 
> 			Example:  delay_use=2.567
> 
Thank you for reviewing patch.
I'll fix it based on your proposal (also on your previous reply) and submit it as v5.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYWPR01MB10773C220D1E6C1AFD1BD2F8890172%40TYWPR01MB10773.jpnprd01.prod.outlook.com.
