Return-Path: <usb-storage+bncBAABBHFW2WYAMGQE5GEZ2FA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FBD89DE51
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:34 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-22ed8166208sf3325450fac.2
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675613; cv=pass;
        d=google.com; s=arc-20160816;
        b=mrmxsJIM2tFaqjvXE7iaBkuO4bSyAcO8ZW0pwdLRfe2jslYnihebajsrvh3flBGjgY
         BMDkYwOFydw9DlNz73RDuJO6xyXAgmoHC2kmavVSioJbW3EV8RsXIs5vyaoKXrAXNx4q
         NRXpqIH2B5AOzhW5fdGYn4aqC1Tj80ZXXsWOMJ2CkRWQL65zfW5GLH5HS8kWbm3jr3kd
         J5cQdAeQqXcFAxRRrlCjbYzp+CeA7cJkHHNbZBt6h1oCQkYArnawpi04eIhij7JBTR+2
         I6a4Lj3pgDv5mGs26lLeuUISahnFJj1iPnjTwoC1jQ0Ipyii6glHAJ8VCivMSOFUW3la
         TvUA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=Yrs/cWbjsLMZlbSPKjrCA/19TPrYGrZ6Wn2yejR7ZbI=;
        fh=/Ms1otZaQy8EmDWZMWPt70alAEYKj2ufLhBa0BQYEDM=;
        b=ladMrTu2qPgfJTIYtS9k1M4zXOAZX4+qEMHaeca3Gc9ziOW5P4XbeA5Z4We+X4LmhW
         QDYA0DIITBKaSaz+De4x6LlELTSL/xhMUdlLGUifP8q1ABfdfKWxzIsSXSxP71no2dUg
         zoyFGMRPkw68pGlYYL7Dg6zE9O7yz/13abqZVVCvrcBM37w4ZAk8WN5Q3HyDO0X/nv+3
         GmsXr03slQkO1KUvp8lqsYFPRV/lyzHDZrZKtfjT4wtwiWkG9KT5dl5dJKQ0dWCKcf8f
         +oYfmReKPyLJT0TTVnGWX4Sk75t8ob08AVVWLWKweo1zXnGCuW8WWSlhhQUxJHWvhkFw
         tBvw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=cVO28qjG;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b="R5Jz/JXk";
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675613; x=1713280413; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yrs/cWbjsLMZlbSPKjrCA/19TPrYGrZ6Wn2yejR7ZbI=;
        b=bC+ZjD0GQNXTYornsDrWFf5Hm2m7X36owIllJqe5PuqlRCZDV6ifApPIoot3oUvPKP
         nBiJ20dQxUc2UKNlpEW9taKsB6TZyL7yeqCxSVfnNYLHNUKyePs5UFJL+KLaLK2l1ei5
         92YTOlOsNg6pf9rRUadiVSkdmuB4yY9s9BdpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675613; x=1713280413;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Yrs/cWbjsLMZlbSPKjrCA/19TPrYGrZ6Wn2yejR7ZbI=;
        b=PEx15ckCrHqiWFCGT20YiGoLPY8eWk3Mc84CNFzLqkB7BQAC9RnB3Fwe8KyNFIdupI
         warikms6iOx8tTJRNEOkERUcCZkSKDS7juAwLUR2ONv++OxciQZf1ghSMb2ZTs4UfiU5
         E9TFcoaCaGkgSjyjBlUCXkba6+GUNd10CuTrX1tYgASN/UTaNaubZEr/v6v77ZLjUgGF
         yTai2h0EUNQ2/C2CgVEAn2roKkmohe81iCPTrXYnFoPm15bEqur4BRaShhN1Hkx7aYWy
         +1F38kLZew75BJhsOmuHhLnIJ6aLXmFQiKiU3xplJOdMWq8vzylRFNwbtlArmc5XNDwf
         vbsA==
X-Forwarded-Encrypted: i=3; AJvYcCUMligqvgLu+vqS4RMoS7c4Sig0nVYSGz2hlCXUAHyiH18xpIIQE81A5NQpIwxnQUzsh22ZiKlM+y55W4Jh9+JvjD6a1DxGzCiZ
X-Gm-Message-State: AOJu0YzQVrK6NniTSGqbdNbZAMy66xjtEWTsZzkN6U6fdpSYfVtRpBJ0
	06XHDZdlxqmmUJBGOZe7zvoSyUbnfXEi/VUIpq685O6lxTHffjrK2YPwSLxMmWk=
X-Google-Smtp-Source: AGHT+IGhVwQkSLqZSJVIi2xr6ClEB2qRZ5+89oyWJ5remwYqjw4vlUKpXiPdwkZCS6k05v4kx+KxiA==
X-Received: by 2002:a05:6870:8188:b0:220:941d:18b7 with SMTP id k8-20020a056870818800b00220941d18b7mr11965521oae.59.1712675612815;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:6489:b0:22e:ec66:ae1d with SMTP id
 cz9-20020a056870648900b0022eec66ae1dls2816782oab.0.-pod-prod-06-us; Tue, 09
 Apr 2024 08:13:32 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVnLF4oRp+h0Fst+2w6yprUGl2uw1cTSTSqSmFzMu2qqNhOk4FYCXjU5FQOVZDagWvWhhErbMetqUp7j54WRU/6ruYY8VSnAXGAMo1nYDE+q4gfops=
X-Received: by 2002:a05:6870:9616:b0:229:f431:1c1a with SMTP id d22-20020a056870961600b00229f4311c1amr79614oaq.8.1712675612427;
        Tue, 09 Apr 2024 08:13:32 -0700 (PDT)
Received: by 2002:a05:6808:1591:b0:3c5:e8ff:ff1e with SMTP id 5614622812f47-3c5e8ffffb8msb6e;
        Tue, 9 Apr 2024 08:11:41 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUi5JzGBAsdzN2Kj6b7Ne8pmfbUUgk9pAcgCFvtIrmBoLf2Rl6UnlnzY7UYREhwBXUC/3H2u/w8TvBKZ/YedR1fcmegK8jz2vduFDoMfcCaOA2WNTU=
X-Received: by 2002:a05:6a21:9990:b0:1a7:824f:bb31 with SMTP id ve16-20020a056a21999000b001a7824fbb31mr139891pzb.8.1712675500309;
        Tue, 09 Apr 2024 08:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675500; cv=pass;
        d=google.com; s=arc-20160816;
        b=SjgERe14AaiUYtmQm2O78RRV68WopVMYg14dnLPWNpUXkN4fXSwjjpzplwz+dBJQDM
         fpHA3BEBXWgBPHi+y9OTVGDJ9RAG43Us65s9WRgct6Jtd03WF8SnEZrfWqBn/SemzT06
         kWx+VGzE52LoI1eyCg8f89yM/QTBGJq5FHNFA1in8xcXOleIAqwPCdM5P+mEILMofZEE
         OIRtZ7MgQ1AVJi8arUKUDTTKE5Vn/g517jXiY3XkT9HNXVxsibH4IwKpvmUaHBSlh2iC
         ZL+xX6xe3c4r09UpL3sO59xLhvryLxoPzzMfHR2i54RBUXdDYQHMcaf3hjE/NGKCrJhY
         d6yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=VO+7aHQAWMKjzQWe7A1JwC8PIgGRdnNgr5l+XajRqzDFh9SGQKTXYW3gWhOuAXsaRo
         3nj3xNY9gI91iR6CKxYR6xCBLfdhUW9EDl61pC/F6vuMt/7rQquBKeZ+fp7nkuNQwApb
         iwbVznGCezmQqRdToUSKuMSrUWKWW7I0DoM8X1Fg+0iXxaS8FRqyL5TvOTSHD/Uob0vF
         1xu+KNBlwITybiyaYs/owjGpD9bFi4o7oxD03qNZN7wU7CR6poS0i3woQqupRDUA9sxC
         Gx25OLNKqoIhG9KvRe30LiMaraXzERRJorKmlXx8Xc0YPG2Su2ScYy3BfTDYcsPyUe0j
         2mFg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=cVO28qjG;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b="R5Jz/JXk";
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com. [68.232.141.245])
        by mx.google.com with ESMTPS id u8-20020a656708000000b005dc528a9d0bsi8544697pgf.241.2024.04.09.08.11.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245 as permitted sender) client-ip=68.232.141.245;
X-CSE-ConnectionGUID: bwj/zQuUQZC3xrvHyQHd3g==
X-CSE-MsgGUID: 3PNjmfFgQ/6fBCiDnSrddA==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13848180"
Received: from mail-bn8nam04lp2041.outbound.protection.outlook.com (HELO NAM04-BN8-obe.outbound.protection.outlook.com) ([104.47.74.41])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:11:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gHGyXu9hK6Pww8QA8IyIy/u4pHet9Im9lr9ybSdOL88W0npsyMRQEOO6BEtYyIErAa5DQxTkTR6U7K2ymBC+9Pr3TOzLZWWwrq0iuwF6m/8Wdnb8ruHWbZbwZqyu717suSDqo9bxs79iUtgqL5Dd0xnhRCgjVB4P0wLdAQ0+L7/1eyR8DfB5wUMxcPmRv1UWBPcIe0J62+s47T4cfSsBgDY11IlWss2mG/K40u6t1+px+9cicXCwFJRfQPI5+Yq80OvmbuLutcQDPASGulA0UNQiI6Ip3o0UbtTV7XjAvqNukLeZxTsIdOd/GyVwUrBo7EvZSWaMSQO2RHOAmGueLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=AwySnBWITh9pBsfFveHRRL67EGfpMrCdacahGLIdfGafamJe2bASJ8JTz/9qsWNY13UXBrBT/rqBBu2Z4un90U1rb7CnwFsdUaTrv/fui/eWkXoZnfzk1+whJDHPHpdAzCtgcusJHKmptZwnh8g/bAatfBDl+FnB7+0q6yMfW1U/ARlqPUNMoHt7oIyolNQssLDWHoyP1zpRsd3TQ9sjufiNmXSpNURms99Mugm+6KhPapcDJfW9+MvvAh35I70cQQVxXinFFpQ4v7iRjrKzRkidgs8GPMESX6x0L+GmL4rUu6QtQwEswGh7PhwRIWsa/xKWp/wUpGWq99AH7whNjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CH2PR04MB6760.namprd04.prod.outlook.com (2603:10b6:610:91::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.54; Tue, 9 Apr
 2024 15:11:32 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:11:32 +0000
From: "'Johannes Thumshirn' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, "Martin K.
 Petersen" <martin.petersen@oracle.com>
CC: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>, Sathya Prakash
	<sathya.prakash@broadcom.com>, Sreekanth Reddy
	<sreekanth.reddy@broadcom.com>, Suganath Prabu Subramani
	<suganath-prabu.subramani@broadcom.com>, "Juergen E. Fischer"
	<fischer@norbit.de>, Xiang Chen <chenxiang66@hisilicon.com>, HighPoint Linux
 Team <linux@highpoint-tech.com>, Tyrel Datwyler <tyreld@linux.ibm.com>, Brian
 King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>, John Garry
	<john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>, Kashyap Desai
	<kashyap.desai@broadcom.com>, Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>, Chandrakanth patil
	<chandrakanth.patil@broadcom.com>, Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>, "GR-QLogic-Storage-Upstream@marvell.com"
	<GR-QLogic-Storage-Upstream@marvell.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Alim Akhtar <alim.akhtar@samsung.com>, Avri
 Altman <Avri.Altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>, Alan Stern
	<stern@rowland.harvard.edu>, "linux-block@vger.kernel.org"
	<linux-block@vger.kernel.org>, "linux-ide@vger.kernel.org"
	<linux-ide@vger.kernel.org>, "linux1394-devel@lists.sourceforge.net"
	<linux1394-devel@lists.sourceforge.net>, "MPT-FusionLinux.pdl@broadcom.com"
	<MPT-FusionLinux.pdl@broadcom.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "megaraidlinux.pdl@broadcom.com"
	<megaraidlinux.pdl@broadcom.com>, "mpi3mr-linuxdrv.pdl@broadcom.com"
	<mpi3mr-linuxdrv.pdl@broadcom.com>, "linux-samsung-soc@vger.kernel.org"
	<linux-samsung-soc@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] Re: [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
Thread-Topic: [PATCH 08/23] ufs-exynos: move setting the the dma alignment to
 the init method
Thread-Index: AQHaiovL1oGx34zpC0ubfwdDr3o0YLFgC1EA
Date: Tue, 9 Apr 2024 15:11:32 +0000
Message-ID: <d801d477-72f3-4342-a391-18e28fdac32a@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-9-hch@lst.de>
In-Reply-To: <20240409143748.980206-9-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|CH2PR04MB6760:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1Z55vAMuxtlgYKHrYEKVwdGL0bJ9yV6qD2DzlvQJWb0m2UvvkWyiDJPQxe+ElM77EG4bXLLOKiz3wRYMAiFmpmkWiG7bXJ4U94oSGIog5Y1u1pgVUmoizsRsRoge4rv6/XGOdRRr+4P3jZQfiJRbujMMqXelt3Y9m2Zi0ItcovcGBwo4LMW/MUWDLPZKBSTWoSdHla+UuNq+8BGvDmLJTYIdeXmWq/V6qy25Yk3uDhNACmT+IgFIM0Ar727YN/gBouBsFEV2xt8dSjMncbtV8ekxzB1Eh5HRb+6kElKewN3MvmN71gUb6AgR8YcfAc2IDW09z3Yg7uGZ9WNClfjbKqP9gDf3sogDBXlMOfLJ4Y/OgEwQs4TBysl4NxRrqlHlVXfAo5xRxsB++8F773FsvqY9rRuxnmAJt4DTg7vDOhWQ3XQ8Zb+ZIA2/5J9N2WpEWfudQZxo1u+6HPh62RJPYGuM15vAMW5V41LuU80NWp4n08lZwHAJqUztKNnqDsPrPU8vpJvei/vSbxf0kMdFMvMaXfp1YMxMFXKaM0ADgFFCQs8qXMoSufhG7+5q1B/y86vnM10WoOB6Z8z1i+sVMnrItn8NkYNCBIpVlJnuhEYldSM/fYnBqs0ymzDv/4Nz2uz/kh2vVVRyWJ4bD+SKZ/VRGQqw6i/iJ7KeKw4f754=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TCtaTTNpbnlwM0NYVmpmczR6Vk9xQnF4aVBWcDRaY0w1Z3BTcmtmRDJWVmdj?=
 =?utf-8?B?OW1teExuR3ZVZmg4Y09pL3MrTSt6eEhFUGZETU9Za0FMUkF3dms3REUwNjRx?=
 =?utf-8?B?SU5IREdEZkIrWmZqUEhuK3B6cEF1aThNZU5sQ1VBelFCL0hUNTEvNThXeTBQ?=
 =?utf-8?B?TUJxTXJaUFVVZWVLN0ZBc0MzTHJ5a2wwdWRHU096dVdCWDd6TWZkYTZzL1Nk?=
 =?utf-8?B?S1VLbzE4SUkvWWpiRXd4UGQ5cFpiazJGcCtGdVVpV0VEckVtaWFsQS92UW1p?=
 =?utf-8?B?bUJsQ3p5VXlOOTRxN3J0dDJxS1kwL1FqcXordkJadWxBTExPV2pUUUhpTWsz?=
 =?utf-8?B?SEsrMHBxd0g5ak9LdUx5WkpGQVptOFJVNGRnR3lJVlYvV1RHSDNzZE1NY1BN?=
 =?utf-8?B?SU5seVgzWlJzayszbHJoWnJBV0QzcXhnVW1PaWpUYW12QVgyUXJ0cUR5QURL?=
 =?utf-8?B?ZzhnbmgzakVzT1NBU0MzRHdHQnNRSktMUG11YlQ3WWRXZlN4eFVzSzF6K0ZB?=
 =?utf-8?B?UHhkUmdMdGVyN3d1NklzLzl6WEJJUEoxZjBYL2dobmFUbVY2bnNpUVRpMmFy?=
 =?utf-8?B?bWJsTzBsQytGYm5NY3cyRTFKTStkdmFraHR1eGpVU0ZBOHg5SXBzYmxFcHcx?=
 =?utf-8?B?Q3ZZcVl1b1M2ZTMvUXJqSTlUYzNnQkp5QldpSm5Bbmp0NkFKUVdGOWhodGlQ?=
 =?utf-8?B?eEFRMThRK3NiUERjNFV5MUhveDNyaFNsRWJ4U3ljQ3pLQUI1SVhxMzJLRjZw?=
 =?utf-8?B?Q0xndDJHdmx4Nkl3cHV6WHpyVlZPb3JEVmtkZUR3YSs2RSsrMTNsbjV6NGF0?=
 =?utf-8?B?OElhV1VkNFRrckxLeDdVeWhxYkNadWpvN3dOVVhnQWhKR3VTNEx1NFA1eDdB?=
 =?utf-8?B?RE5PODdiSDBtR0ZmNEpIRUhDTGxldVo2d3JiUEI2Wis0ZlcwSlhWelB3NzZi?=
 =?utf-8?B?NFJjc2s4N1pMbjJReVU0WWNTZ1NQV3YvT0JNM200NjRoR3huTWp4TDczVEo2?=
 =?utf-8?B?aUlnZ2RtSWJSTjExdUI2QUlUcWVIRGovemtMTUI1WjZGUW0vdDRPYUZPRk50?=
 =?utf-8?B?SnNLSjV3UUVuN05pVEtFMld3eUpZclRaZzJzTlBsNll5WjF6K3FlY3QvYTFk?=
 =?utf-8?B?ZlZkNlg0VzFZVmN3bjAxRW9TS1dKOXJjUU1US3V0L2JVeWJzRDRYdFNxWU1W?=
 =?utf-8?B?SkNreEVCcmdIKzdNV2RFWUxZa0NPQUdPZm1rTURlU080a0tmMDN3K0FlQ2dl?=
 =?utf-8?B?L0ZtYXkzWXFkbjNxWklHUFZJYkw5ZDIyR3l5K3F0RHVEY0trUm4ybjFKQ2RY?=
 =?utf-8?B?cFErNTljZWhEUVc5QVR6aTNnMlJZWEwzNE80bVpYeUpWbndKWk1EQmcrb2FM?=
 =?utf-8?B?aWNhdjJmeXZoOEljcm8yVUVCRHhGL3VKY0dYRjRraTdlbzlXNlhUaGJScUov?=
 =?utf-8?B?a2ZlbFM1c1dLWmQzcENoQnlOU2ZQTTB4aklYT0xnWmttMllqZFVrUlozNElt?=
 =?utf-8?B?dU5YeHMyd1ovbjQ0MEVTekZuZmZhTGtBSkJYUzdQc1lPSENlbFBkNjkwVEV4?=
 =?utf-8?B?ZzB5QkJ4eHFNODc0R0pSazlHdnZobjZPY0pORTBMN3FxRHdLZVdnclEwL3RX?=
 =?utf-8?B?V0dsVTlldEdzV29GM0IyZi9FWi9jQjFubXZBQkpyYUZUYVQraWpsZTJBNE82?=
 =?utf-8?B?R2FwbXZiR05jSTQ0VGx2a3IvY2pzeFcva2VOYWE4Y29VNHY4YmR0a0lWaE9m?=
 =?utf-8?B?bTQxc3dpS0V6UWVCZUFORWtxZWJKWUJLTENYWXJJOEI5R0E0TElyT3JlV2w2?=
 =?utf-8?B?dU1zNm85RXU4R3Y4cVJSY0Z2cWdtTVNSSGRPYXhMaDluK1FzN1hIMHlWWU0r?=
 =?utf-8?B?UXFYVmFDb0EzMnBqSWI5MWtiTHdnVFZlcTEydDVjZWZ4RmNSZm1GcS9RYTdQ?=
 =?utf-8?B?b1VQbFJyVG5tdzRaUnN6bHE2dmpHd3YxYnUvVDRXUFBtUXJndkhCMW90NU9j?=
 =?utf-8?B?dlRQelJNRFFkajlmcmdyUFZXNUNGbmN5VEw0UVZCYVFkdVNoYXpiVzVsbFd4?=
 =?utf-8?B?L0JIVHZjTzNSdnB0dzRUbjdvdktvS3NHT2JnK0Vqc1lhOHJoT0xBRS82aVd4?=
 =?utf-8?B?RGx3NnlCcVlxWVE2d0JObDAxKzI3R2Z4TVdVdjJsZXJEUmJOQllUall4UGta?=
 =?utf-8?B?SGdlaGh3UkNiNE5DYmpYYVM0UUl2a0pZMjFOdnM0SGxkbUFOVklhdFJWenNC?=
 =?utf-8?B?Q1UwQ1pQL2N6aHRqamVsRUV5L0FRPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <1236610A34618D49A1288BB05C2E8F7B@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: tFLouMdM2IHG2vAkE3zbCPdudy5LVhs0G+JPkHHFU+wuGC3/YyUfXymAuYjvmFFs81xI4JdgPuYgKZi1iQdUe3EY+tUZ5+lckMPNe+PmWHE6/CRRlGUPE/z7RDSZ0TpriQDGCjZp2uGyYaPPN5fKewcJRxqSTYaikFWzaWyzPOJC+pSZHINpTJ+Y51VcnOguD4NmsAskpOun45TO3gd/BKTcnEtoECMv9ntRpA/tRRib9HaejqsVLSFVn9KpYYOFlWmaEdUO1mvuo7A0oPLtOqt6loJy46kGXAycn5Nphx0ti43rmWlsUmTqUX72BrRonoslXODrUNVSRo+qy6P4WAODJ8SD9jAPoVd4RSfIx84SxAwv9DkuYgxWI/Fw9vlVz1dRoUiliVACoVq1SP+U+FGYz5KgWQ/co62s4jAh4y5WvBM3JiNP7vyia2tHDR7c1fLxA0dImII+8oNyEe73S2r69SbP/f5RhMRNNNITLa/9HXaCXccQZJjZ8na+87aTDcaE59fwzzRb97Pfco1xCsy1uuuCKvs/NBI8fjm4QSyGd3HZDPNPgEEeQU+OSZz58qHtoGCxo/f5Qtr4AonDffvG/AeNGrmYNTtTsdMFgR7u+HOHPaOu0sRYWXoA3gLi
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ededfda9-6eb6-463f-182c-08dc58a75734
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:11:32.5498
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nmuh63YGxzdO2VwHAIA0GIZqgTkz6BTqyVqPEUHqsv/SwQfLGWZUPnAcd76Vy8Bob5GIEAfEIohsRpaRoxUIt7h/zsx1zESYmLhZS6xjQgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6760
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=cVO28qjG;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b="R5Jz/JXk";       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.141.245
 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
X-Original-From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Reply-To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
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

Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d801d477-72f3-4342-a391-18e28fdac32a%40wdc.com.
