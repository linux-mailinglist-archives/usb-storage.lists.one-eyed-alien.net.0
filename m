Return-Path: <usb-storage+bncBDW5PLF2TMFBBRV42WYAMGQE6Q75VJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0659889DEFB
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:27:04 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5aa2b311cecsf3886175eaf.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:27:03 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712676423; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDQ4l73NSMbR9dugZO8k0swuhgvklRkOmdSJfZewlxX4N9TWeT4bflUMXBa8V4Z0bV
         qa1K1tAZVqBSqzZJHJehiqFN9JVCDNI1f8LsdVgG1an8px7Nn7JqOkT5hHqowD1+QW7r
         OjHKmnaN/3FbcjUN7zMUcE3t8t0rWhcaEyAF7HMIPcnCINppmCLJprjxDPArqY/e5vU+
         T9BSX1SzdbU4GqCQxwYzaT9s58vfvoA2m1VFnVsFjw1hMAZyI3IOV/vaKR/KVRtrRpT3
         pAeykcf9wQPcPkvGYx9LKR6/g8IP7OZNnN1pseLB313NbqL5mltRx2ga/oo1tCc4rC2G
         vFVg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=wmn9vw0Q+ghwm1DodLquzwNg640smev0USHGImIEiUE=;
        fh=kH9LyMM62YkvDr6EhisPIirtSwrBFQ58qG33oNr/HF8=;
        b=IXSbb4rC2ELXtj1tszJOPkJwFU3RC27sVvNYZoPkI1jN1gL0irkx6N75S7lrToA60D
         zvrYdt4Jq7rtUPq+EBb9qjY4mW5DbEOMO27+BfMLKR7FRGEks80uW0oFKS8lzh1duMQy
         y2JtdARTdKS5WVp7A4ML/HjQ1TftKEznS79IOlH7gdr5N+PtrwhgFsQa4mMIfnFfYQmV
         mm0VU/IvFJCi2Wg4rrL1PVCpIE3l4WjlA7plYX1/a4dBdIfMjENzzP2scfQ6qFHUPjuG
         /aW1+ssSaxaegUeSae9hznL6ZYtg3gV9aSMSDcgosYSCbU+XbrgicYwUea2piQafgAYW
         CwCA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=h5FZZE7S;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=tL2KPelZ;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712676423; x=1713281223; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wmn9vw0Q+ghwm1DodLquzwNg640smev0USHGImIEiUE=;
        b=MUky3n6zTAFXcPYK58i6IfEBBHveY/gFi61H1U5zaZTeptH5ioYTfPaVBP8TR/s+p1
         P2mRQ4KJ7WcUgRpPQF7jXZ4rNufAQmzdP6NKP8shJU/ahUwHpC7O0xKHXeA0sEt3Nduf
         aIxqZj2/mzY2YYMOn7TM07aErc0FkuVFskOB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712676423; x=1713281223;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wmn9vw0Q+ghwm1DodLquzwNg640smev0USHGImIEiUE=;
        b=HciNBKIiuKMSNgZ3gV2BdECK1or8/UBV+KJRxOd2DJIXAoBCyT8Sl83nZgq4khIeR/
         orucyA5uTTPOBXeNvoU9R74EIWfWpG1xZ5ZV8x02zZACZ7zHsZrp4FXvEDjrtfOcoOrW
         Yo4x1Mm9KeTfcZOmPbUhZ7GnxKRlZQVNqcZsZj3eH/lm6XnJN7GBmRwgE+SZBfGlkYK0
         VGBHP1FFWRxx3PplM494mBRVYlC6g8Ej+dt/hkaqT1OINupI/b4aGY5YwDclxyfLue+B
         0REylh2Z3Z9jFkQw9a3aRL8QChLJYiauP6TSioSoJovhjvCp9eyvqu31w6FVUOC5eTW/
         RStA==
X-Forwarded-Encrypted: i=3; AJvYcCU8RNwip7sL0ux3WedOHedtK3uunaTOaSGlcpAnVY9+3T6rkutIHAInQ1b+VAPj0V2nYZ4R6eycCptDuNqHSRcup1vFr7CspkTd
X-Gm-Message-State: AOJu0YzlTS/ohzr9PbCp2w48lpOORBwJRIzFUypCxTLohIEYKzBryldQ
	mNdhrlOmJ/3oFK3KAJhsjNqRtsa2obMTZz9SB2njHlruvGq6jrxlkdrTMmHtA7E=
X-Google-Smtp-Source: AGHT+IGhWJTpu6iJsvSsjKsRfYUKpAFsZwzn8VTDO5Z2r1HlMJ6XIpjxw7wbUpdprHITNB9fuYe3qQ==
X-Received: by 2002:a05:6820:20c:b0:5aa:196f:e39b with SMTP id bw12-20020a056820020c00b005aa196fe39bmr152641oob.8.1712676422885;
        Tue, 09 Apr 2024 08:27:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:2290:b0:5aa:44f9:9b11 with SMTP id
 ck16-20020a056820229000b005aa44f99b11ls2080124oob.1.-pod-prod-05-us; Tue, 09
 Apr 2024 08:27:02 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCU9xgv2LdVmp0ZM6yN5OAEDSZZm8aYo4+jjQia70x6ELgRwgVC3SM45+l2u+qB5fg6QRUL0PyslN6H9HASArQ0Fd4vspwMa7k2vKoZ8zdAGsT2FdoA=
X-Received: by 2002:a54:4888:0:b0:3c6:cb:f282 with SMTP id r8-20020a544888000000b003c600cbf282mr1750484oic.39.1712676422072;
        Tue, 09 Apr 2024 08:27:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712676422; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z6XECKezbJtOmUUKg72s9xbfOUVcS5vexFK8mF59RZhSXKga/MWQLBSgrBRYOcvy5u
         mzSZUuwCnAux1ttoYem8G0qf/VY6LArB15+1I8p9BcAcoDo+B6B8cYosRnNzKjzQ1MPp
         kap54GG3N5ibNS1+Uv1OnGwDE4wU9jKm9DsgXtUuSSVly3YkipY28bpUU293O/pQqbc5
         abOAIYvi/HgJsUVblB2iQYrV3m/6ptO8ofL1k4oSmCJXQ77My9cxkq/WaZavJtVwPY1z
         bCfUy4kPBy/ZZzXT0cDU/Lsebr/9apAl08ZPKolJXS5CO17OEkfIpjQ+7if9sDWr64ed
         OERQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=UTzEbDzHWvG1GeRz693OUbAoA6+uBtVw1KbCr3gYJBHzxjRq7AoYNkf1qOY74hy/wo
         ipAwQPdqRmikr9HWyLvjixhry4AvYSzbEeG7Yy8D53po1uzjktBsyXEhT+JEB9i+LGQ6
         +gTl5xDvyULkhzGFiSS6Lkb+6FWGc2AB5e0abjvc0mOryN8yqf4wM/EAKuaxUep+kMMj
         EfK54CVF+p8WGvHErEty0xBwUrc3Wt6bfOe7ujnMa2X8zeE81JsCUxN5dkwqGnUM4AYn
         YC9/2shInWAarhKxCP1KsL967lEK5i9S5nMOICLVWVz744I1jSAez15MeU7XK4bvxb5f
         q+gA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=h5FZZE7S;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=tL2KPelZ;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id w5-20020ac857c5000000b00432d61ce48csi10793718qta.124.2024.04.09.08.27.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:27:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
X-CSE-ConnectionGUID: n4il4sKZRamglQMU7UyOsQ==
X-CSE-MsgGUID: UspeHDZOTHGjJ9ARTpV8vw==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13602876"
Received: from mail-dm6nam12lp2168.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.168])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:26:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVXeHE2VUYyG44iunfMhPSlU1Ia8/3Hdk3fC8lfVzlTyLy7LBVQE2M4lCzV0UX/2jPfCgmqqDYolqO6aFDerGik3Om8bPOQU94b3H+zaGXvC0hxq6Ay/ohukQg2VC8SirxDNe/+pjpty5+Ex2Ihdwrj+ePT3qWm6+YGxXiGnknFJ5VD/tn2xqlnzpjftg0wTfpnsHQPs9/6n/vsIWKRTnAWNCtZBfZuCg6Lj7S4vCmom5QftAAgCUqDqGACJRrRJYOY+DYPg059i6aVXT/wTupwWA4agytZ9HtXwKicAQIldnVv5JpIJ6tM6UKXfnfzvR7oakvlgyoAGJQZ76uFLRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=mYeCrw95tj7R3ws9JY31Yl/D8PZ3niQY0eHs4vxksBdmplijcHabnFUIbfKmfeTkN7LZa7ap5MRlQVHNSJBToGNFeTmwxDm6juS+EQwmEZstcg6uWKJBxvOdQwEGEzkC1sXr6jONW/ESk1iCjhpqCgbkQM/oNh8pe1OY7OnGGqncygq8To5Xv5awCMxT6aBkKWd4OwVrmcLzD24i4vdEgZELAiuYomJmfKsANYOwFg7RqHyBuYaKZ1GISOopIgod5LneVlP8JLL7zccI1LhZu4nh4Kn6DAkCQJFFY03KdZPpCk6WIJuAiARe40GWhLKTfO0xhSgxvLG67J70Gh0SYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by DM6PR04MB6732.namprd04.prod.outlook.com (2603:10b6:5:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.55; Tue, 9 Apr 2024 15:26:56 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:26:56 +0000
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
Subject: [usb-storage] Re: [PATCH 23/23] block: remove now unused queue limits helpers
Thread-Topic: [PATCH 23/23] block: remove now unused queue limits helpers
Thread-Index: AQHaiowmaLIeTIqrt06GNarXiPTxDbFgD54A
Date: Tue, 9 Apr 2024 15:26:56 +0000
Message-ID: <ff283d29-8c9d-4975-b7d8-58703fae0c6d@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-24-hch@lst.de>
In-Reply-To: <20240409143748.980206-24-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|DM6PR04MB6732:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DiHsPlgBa8eb7Id1N+DFCy1JcfzF/5vXpa2YBpf4Bs7JzgVcTt6DCG36qDIdbRgEGkuSFEVPl2IJiFz+2o5DszvW8smh5eKYLfaYdpeXw2/3Ryi20MjzXPShWN2I6fwsW9mJj4igSuxHKvS/7fLUgjV/OUIoi67F2nFlfF24KwayJb7OwVTGtF475d3z7DO5OUvahZhuXzKTgXVLIkdvidd55042O1NTCFXsEV4NgHTRN6O8S6wY+/JZ8Y0zRyTtVGCWDX9zwjx6RIICdEnq8zNOdpKB/aqE/vfYrckKFPPtO9NS3kX/4HAdlQ3xIPee2R03CGIOWVa/Q09xB1q/XByuaoak5CZ8iNzSZnp+VNcfpVEfVmqlTuJLon3u2+yTuTXvjxVLd6xQ5y2lSK+FFInYrqhAaZu/1kwYyH7+8tgkDx3F3pazhk7ndEToHkRYxaZyrH0aZqy8s7Eh34xwx0mUIIXh3lX3virrFpWJA2jL8Ue7UHL4z5DoWBbAuGbtJmglfMY7T6VWsuBIeV5tVqnC7kk2el+5mnMzke+mvcJPEErl6Xx9F5xnd0jqdI24VT2/BcITFRin15DFqLJBOU1viz1U1JBDJV7an9A0sI62mi5fV3mHYC7RVeSks94KivsLQn/maQIgKTC9BV1cPh3icRXDOZ4WYLfNr2XWbuU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(376005)(366007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHJsaElHb0hIeDhORi9IWXZTOGJZLzVIUFp0ZUtmLys5QmVPMVVOZ2ZFTWIz?=
 =?utf-8?B?eDZsSUp6cjMrYmQybFc1UUR2Z3liT2hCSjIra1ZWQy9sMCtoc1l6bVNSU0Qr?=
 =?utf-8?B?UnRwUE0zNDZCL3cvZUIxaWg0dlRVRVpyVjExSFIvVlZHNXptMzJrUTBUWWhF?=
 =?utf-8?B?clRGcUVmTHdhd0QyRG95N2h4NjdEeXNndHcrbDl5S1RmVGNuRSs4ZVE1VkxG?=
 =?utf-8?B?RkpmRlhyWGNFL0lTS1BjditkVGFncVFGUldOeTdHZEtKY1U5MkJXWXdjUXhD?=
 =?utf-8?B?L1J3NWp1Wndla3kwWFF4OU94ZVJhTGFaemh0bERuczdEVndnUkhya0trLzlk?=
 =?utf-8?B?a1VLZFUrdVdzRmFsVUcvMjgzcmNoSnZxcll1VUt6TkdaL1JZRUd3M0pHNTNI?=
 =?utf-8?B?NE5PQW9HT2k5UDFIczc2L0hKVnhyZEpNS3NMZjdLdW9GbjA4Vk1XUVV0Tm5X?=
 =?utf-8?B?bWJBbW4zQkc3QytTRkV5cXNsb3FNVFdaakVYRHJoTnFDS3FiOENTUHFqOEYy?=
 =?utf-8?B?ckJCTjFreTM4Q3NkUndSUytKdSt4YlgvZ09vdEhBM3Q1SGFJTFNERE9ramky?=
 =?utf-8?B?ZTBodU9EOUxVNFpCTkh6TU52MFVTZm83MjlYYzlzcFhuWkhXWTdzbllYSGdP?=
 =?utf-8?B?U0pDY0xzZlYvdGFiaUtrdDZyM0pWM2o1cDVuQ2h1bStUVWwyU3B4V1huQ1lF?=
 =?utf-8?B?SGdkVkJoR25XY2NuL2gwSnQxL1lzSFhITTJNaGtHZFF4QUtYc0RyYzFXYkdT?=
 =?utf-8?B?Y0JrSWwraWZ3OHNtaTloeXZwNm1nK1JFWEltMXZvVEtsRy92TzhhTGpldlE5?=
 =?utf-8?B?SXZDMCtpUnA5TkphOVdKZTRxK2J2Y1A0VCtKL1NWY2tuLy9IRzZ2MGpiLzYz?=
 =?utf-8?B?bmI3QXVLWmllc002cEMyRTBhNXVOaUszR1FlV283aW9wc2pPZVhiVWhGSCtq?=
 =?utf-8?B?ZzBNWjQwVHpnS1I1SkY2enJGSThtRVhJb1hQQzBmWVRUT0R1VElhMTNFZDJz?=
 =?utf-8?B?T1FNYlYxMmtYcG5pUjVTL3g4YmRzTVkxSVd0cHVGYmk1ZU1ySVZ6UU0zMEhT?=
 =?utf-8?B?TFZsUng0c1p3azZGb1NCVWtqMFpIdmdnRkp1SDlucVpsTnNYMmhzcGlIVm1J?=
 =?utf-8?B?UlIxRG55eGFaMEFhK3hhVDlscHFZS0ZuRFA2alNpcjNtQ2E5UjZIUmNveEZ6?=
 =?utf-8?B?WnRHTWcxdFNWV3dLT3lqekEzdE12ZzFnV2I4N2lwSThvSU1ZRi82eEZNMTBH?=
 =?utf-8?B?d1NmZkg4bTcwOTJOYklkdHBybWhMT2l6ZDZ3aUpzMmpHVWdLakZvZDdnRXBz?=
 =?utf-8?B?K2ZsL0thRkpHZUxkV1hoZGZXcDZhVmJvV2NmWGpwZEUzamtTZXJ3UUlnSWZv?=
 =?utf-8?B?eW1YeDR2dVhIeTVvQkxDOWdnQStybUFheWZ5cmxCb25YRGxDTDJPNUZBNWYv?=
 =?utf-8?B?NUs5YkhZb2loTFFiMnU4dFF1ZWlXeFNFaEUzS3hTOXBjQk90aFN2Qm43dXVh?=
 =?utf-8?B?Q0NZNkcyQytST0FIYThielRaRzhtZGdHS1FvbyttYnMwSFB5KzVuU3IxMndl?=
 =?utf-8?B?bHJhR0p2N2dBNVppNXUzV3NVa1oxTHNrWVBKWEJRTVYyMk5xaGJxVFZRV1lW?=
 =?utf-8?B?eDV0TkF3MW9LNGhvbVVGajhMcXM0MnVOdExOK3RhYkRNby9MaWMzeHN2UXNq?=
 =?utf-8?B?L2tMY085c1ZpQW9zRko3MUpGK1dVTlZOVEE0MlhUbE9MMnJiN3NVTkZWQjNY?=
 =?utf-8?B?ajBjWjBDaWlDbGJueXhPOG1STjNwSVNBMXZwdmw3a3JnamRFTklJTWJ1RFVB?=
 =?utf-8?B?UWZ1UmpoYm5ObnBYWmFmMG01Z0JMNVh3R08raDloclIxeUUwQUR4UUkzdzFC?=
 =?utf-8?B?N2FjaE9Nc0RKQUVubTYzN1o1RDdiZEtaWUJqK2VEajBnaEZQQUNQSnVSYVNC?=
 =?utf-8?B?bmEwdGdycldBWldMN2czemdkUmFpdkdYaG8xUWZCNVhQcG5oZTF1bEljZzRm?=
 =?utf-8?B?UnZlRllsd2NpNktFcGlxRndLakRvcU0rUStCRUQ1d2h3K05rMklBb3gvcU5n?=
 =?utf-8?B?M1VTYnZleEIvK0NrQVYyQ0dLbTlFRVFrRUtuOUJPVzJNb0kzSENNZ3dPUlp6?=
 =?utf-8?B?V1B0NzBmNFA5YmdVaWNOOE40dEx5dmN0dUc3NWZFK3ZBTHpuajlMWWRpOEZW?=
 =?utf-8?B?Vi9pU1N3bXRBblFoWk9JcERlYjZQYlpLcGYvOForaUo0NUJ0c2hEUm9FamE2?=
 =?utf-8?B?WDZxMktoanY4a0c0bnNhakltK1lRPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <B275413BD936224ABDB929A8145EED1A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: d8URclKVjNIm2jv2/UZ8LD1ac4H5OtYVJkbcrGAdr75gyLIs9cUUlTBsM3K+fWJS9FycN3cuyfwIVm3T4j6Kxw81FeCkLzkysyVgMNgAA6pTU4ZrE6DsnjgqGsUDMpgO5q5QyLOYyOsHNNtJ2X24vrK5rBImw26ZsHI9mXVSL334ICcvpvPDkkRQj7PuTWy6d9iybZwHC7WDCeNjArogsCn4YDuSUQsJD0+ArRPmDr2Fv6u0KbbNsi4O0NWc52Zui0tVjWTC/zDecLFkZimpFLLmLZqBFtkEd4Sa7PbJ4Uu8koRfIK/qCvRVjy21XHP0dL4uLkOD0VUJN1/qNVmhlJkaRCea9OZF4aGJO5GAcBaBVVy27jipFBKR32YUehWUjMl+OfeNokHy9EFS3U+nIgQaQKxlc8h3rdv44owZTtPikz6N+cHScpj0aetZJK1EzyWElWIYP3ZLdyA7o+VjqNWyh1XrDgplwSksYBsA1ebCFRbvce0sVc8hO23RfngtHIty+5r8s5QE5J2AQc35U3QSgG5ePyl9uXy8kYcc0QwaubZys+uFQiKywiyUa+sUpXtjfwQi2y2u90i3CRkqAWYnU2pL5UL04Dir5QTvaPGBkWLfII8RZnomMtmoXit1
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acbc72ac-2b32-4468-b72f-08dc58a97e11
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:26:56.7286
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vYixFq6JzWzX77rGjRfJevNRBvIwZYVtsTaqMNbzgYLg5WyC6mSP95e1VewZ5pIHsTPrxgHxeph+iPjaIq/dmD/2H/MW7SheFKc42zV/v68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6732
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=h5FZZE7S;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=tL2KPelZ;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 68.232.143.124
 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
X-Original-From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Reply-To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
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

Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ff283d29-8c9d-4975-b7d8-58703fae0c6d%40wdc.com.
