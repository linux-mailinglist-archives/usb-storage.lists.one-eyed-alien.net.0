Return-Path: <usb-storage+bncBAABBFVW2WYAMGQEQ4J4V7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C4E89DE4A
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:28 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5aa1b68462csf2109196eaf.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675607; cv=pass;
        d=google.com; s=arc-20160816;
        b=iboDNqiK8p+rjhTXYpB8Y8VVOvCxRvuDksPrTdr5Ra89RcsmoCeuwCEEhLdssxfjeF
         /EXR9u+SafvALGz4FXSBPN8tjI5aU2W8KRFcbbxlc3b3a8NHVvkZM1RKVbHcjprvxocs
         mlPQnKS9oT5cCUBB5tpDQmc+mPeR5ykZsV10rmkzkMZAP8RlZGUfG12WD1yaAgb8G2Pj
         wLceYIOz2TB1Jod5s8HYQ3xzuagjyfGIvuPu7LZfjTpd8ZLuF6RsLjut5KtVamquknpz
         t/FFgVp1aGj44Vx497s8MBYEBWt3uwLJbkNkj9RbAh/vN5g2r82ThZ0h23jjhDeKkr/z
         T5cg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=QkIRMDVXdiYMeNZ9mGAnbVbHaCbox10eSkopHEtXUZU=;
        fh=GSn7GoYy4R/DpZhivFyQqUF0xFGOcNPeEXLWjdWff7I=;
        b=maooKzQdWTZc8vE+0pm9ggMJqhYupU16b01PzIsXl5bREP7/+35k5EghAc7zsDkg+2
         4ZGhPoiXSEl72uSwYVnaaThVpdzOMV4e/IJAvYDyKmw1mRhPoT+QwfEXs3PthFl8bjX5
         NiOgaJgj5E2IFzBJDQL5jMXLLtqqes8CWCY3/uv3qgXE2ot8S/6k+QuGY8E4jIulqtjD
         KTak1OuLAIN6TFiPI3A0gwW6yArVZdullI4cJ4udv3FNNMJewui6FZggu6T4Q2L+ET/h
         ng8FJbey6UHoulDlYJy6A0jSTX5QTT9wFJosYO6iWwp+DNPQqh7i80PJPWk6xYlArNfw
         iORA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ZkNW51t5;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=Uy72Rr67;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712675607; x=1713280407; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QkIRMDVXdiYMeNZ9mGAnbVbHaCbox10eSkopHEtXUZU=;
        b=AoMxvCk/S/RmGTkhMEy8vcZc+Cgrz/+VugkWn55O+D9gwuEtvx6XAf3U1Azqb+tGoL
         Qo2XmIyLWdBEPjOsvaWIh6DDCZE1EnTbwiJJuPnllkFCdocLN0aKzTB+oxt76pZCyJnJ
         g2ZLcnKElaWh8xb2CXuHQZb62dM8l6hn8hY+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675607; x=1713280407;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QkIRMDVXdiYMeNZ9mGAnbVbHaCbox10eSkopHEtXUZU=;
        b=OrIWAPmHUVWpGvkT0pyKqQ43pQXKQYkwTZN0Gzzfi4cKTqrafu4lpaILj3yg62Azyk
         6YpFVuwq88i0aTWhAOKrMjzs0FpYqkRplSVQ6qaeFubcs1f0zejb0VIG6AkvMT9egijL
         O40enwq6ZUq4LZ2sTJOeVKDE8bFzhkPnTrPS34xXFcNkirwaQGmui53GpWW/2JHbBxe3
         qDab5+qM+lyz7dyxv9lq4xv2noAJb0EGTrLrAdMfcEFIYSLCN3ygA2IDLPTbIr+2cHY5
         buMwy6nkcoMnNxAdHhiYexWVPBh69eiMV4ILmRruZ0l81UGTBKSf8Ju5qHFWFZjYzhzq
         WtcQ==
X-Forwarded-Encrypted: i=3; AJvYcCUZxK5IwjTJ0tgARNiL0cDCX4HV74PONdtxx4hjlRqwIYROZRbtdnyOEzcG9fgWNGX0WwW/8MHImUh3NCdRoBS3Dz7EPPJQL8H4
X-Gm-Message-State: AOJu0YyTTrksNNUPdSD+7Mm4mMWxTdVap7+OohIilzqbBpLSr27jw1/4
	ft08e5lOp3cgBpM4b4k6D1uWSIVDeBdHylUXHyIkGLalbM7PaR2dndpTPeRNMh0=
X-Google-Smtp-Source: AGHT+IHkPxCdb9IMqUc15s3bRwNIa1nsnHrxTp+I0gWq8PjpFm0gVEUdQGsXg+N35+9SyIYqHLy+qA==
X-Received: by 2002:a4a:ec46:0:b0:5aa:3d95:d4f with SMTP id q6-20020a4aec46000000b005aa3d950d4fmr143153ooj.2.1712675606927;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:2209:b0:5a9:cb2e:d7f1 with SMTP id
 cj9-20020a056820220900b005a9cb2ed7f1ls1625884oob.1.-pod-prod-08-us; Tue, 09
 Apr 2024 08:13:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUzVqaAryxfNyc0660aL+2S5k6WdNzIRP9pQ2MJyo3LnNAz1kIMylZ22lpfm0fECkajR1WSfiCPrHtDrkuVUr49TlPxHA8TkWRFNGJZxN2zB36YEzw=
X-Received: by 2002:a05:6820:1b90:b0:5aa:47a3:c0b with SMTP id cb16-20020a0568201b9000b005aa47a30c0bmr5229oob.1.1712675606537;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
Received: by 2002:a05:6808:1591:b0:3c5:e8ff:ff1e with SMTP id 5614622812f47-3c5e8ffffb8msb6e;
        Tue, 9 Apr 2024 08:09:03 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXHlIgaXAb00cvBJiCOJMT1BjOEpPnQZvGBb42f+eO2fai4hIPla7qiTFig6xY/4nyVmxfMCtFXvgg+uxXU8HOUNbOf3q6oom815eWIKixu24PwZyg=
X-Received: by 2002:a17:90b:4004:b0:2a2:9f46:439 with SMTP id ie4-20020a17090b400400b002a29f460439mr10349869pjb.9.1712675342348;
        Tue, 09 Apr 2024 08:09:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675342; cv=pass;
        d=google.com; s=arc-20160816;
        b=cVr5q2h7CoqG8H1qcakFO2LGfFcR/vZDrpB0OtdjRZPjzCdW7QJlbtVyjdE6psO8OP
         O0GfKqBtu8RJhiufY4usjcuradl49hZaubxfkbav1PPA0UYj1i9LISvaVoSR1xkqxw8x
         kKAYWtKLwcHO1H/W0++c/7NU0PVdulvp2Z7NM7hufHjqspbE0L2hbh4N0sHAJ6nt/meP
         QpA0IcCy+5J4/d9RWw5T1V8YMOKUOzf/mUUGCOS6qQXl+ECeekSfI3c9W9x1WKSR9cSj
         JsguAplfzkePHeMm+m+qg2n6kzvjW944Nux7vHL7Gi7AfW/ih4EVBhpEaPAQKMlC50Vj
         hjnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=NkQfMaOneR80Xth2aHZqDc97X+EBiwdC6BSMaLLyApJhAf16fwMinJzn49UsIMSxwp
         mapfzqR80EeezpHT23f1G8PjHSBedpZpfU+U5WWA37+343gwFHUykxyeAOsPvR1d2Ct4
         0Vg58dME7Nyv4myk36+FJBTlKjyeqPZH0eKtRZ+Zv6qBEg+0bxYZpvngq1rw6yLLHZuQ
         20ceCek+50T6FkrZ9LGo8VYBoB0pyYVS0BI6E7Tc0333vTrvj5lvTPBZoh6vUI0wdBu1
         pYEtDlJ8OnWtPgxS/nqSIp7gfMZuwbl37eubF61WMIVv2yC/7/45uF0BleojRI7ggJh0
         u32w==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ZkNW51t5;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=Uy72Rr67;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com. [216.71.153.141])
        by mx.google.com with ESMTPS id q16-20020a17090aa01000b002a2bab50de7si10902669pjp.121.2024.04.09.08.09.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:09:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) client-ip=216.71.153.141;
X-CSE-ConnectionGUID: PpHAif9/S8Gef4923YLxzQ==
X-CSE-MsgGUID: SJC6Aht+TPq0dhehVwfVNQ==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13424886"
Received: from mail-dm6nam10lp2100.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.100])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:08:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZVX+atRiaqRUPw+jml+lQmeeq9o8ix0k+xU0dGNLx63WsvmtOOUYl/TYsUouOPqE4yQn8KB3OdvAAQkThtuDPMWT2rQ6Lv+Mon3T1wgcoZ67pKpWnmnNBKH9CZEi5bICOwR2WutbHUtPGQ6Y14UL/GjqrXsPY6Hy5PrvdzxAAR2CWEDx9CMqKQV1Blix2sux3mlAkA2SuIi7xnzAPSibG7qZvSJgL/hBHIiwTkFxnbNek3tS+pikj7Is34Lx5wzqi23T9UNhXN61UONu+UTxESSnmcrOIywrLpB2mwG0bvZ4uAUI26ZNqYMtZyxkzLk4VlK8EdVeGlIQOKSf8X1lOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=lBQjKiWt70/HFZ5gAuyVj6nPCE+Ax4pEfT36hkztwIq1JTCzzUDQetceIuu7VqFjr5uu+EBAjl8tmYACCLXTSWgNmXAcvh0zRrMNCIPs7ynwgDwoWVCTgSUep5lU9gb2cpmZfJcZZxYOXVIeAcOqPHyPSb3/qmzk+Kf0n9rE593j4VgUQ0EJTc01F9d3V94+ZD5jlukTbyrtoNaOgJR4BZLH3VyYcVAk3Yahsey8PS9VwxLQo8KKWghIvLxJgBNcpPXyPmk/BkRCafiOmebuJZMaaI9TNlpTahge6rcYhUuaSIotvwj5n/6XNVa5AJfuf8g8Vg6lDyqjaRFLmoDDeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CO6PR04MB7715.namprd04.prod.outlook.com (2603:10b6:303:af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Tue, 9 Apr
 2024 15:08:56 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:08:56 +0000
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
Subject: [usb-storage] Re: [PATCH 05/23] scsi_transport_fc: add a
 max_bsg_segments field to struct fc_function_template
Thread-Topic: [PATCH 05/23] scsi_transport_fc: add a max_bsg_segments field to
 struct fc_function_template
Thread-Index: AQHaiouwYtEGhQUVmEuzsS21aXSkibFgCpaA
Date: Tue, 9 Apr 2024 15:08:56 +0000
Message-ID: <f9146b43-77af-4c58-a49b-07e9a8e3e11b@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-6-hch@lst.de>
In-Reply-To: <20240409143748.980206-6-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|CO6PR04MB7715:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MM6/471eUvUg5uyh0Qv1lheZHW+dF5kZXm49u1/MC2VL796QgipdEIJbelmvMZq5f6xsT3RW9S7A2ORmV0HOrcbaEHrZIOuPOLSZa9fE8bTMQ0aa+YZY0n+9wuk5LSZO6e//E5vqJbtbulfopunQyf5utsOztXbrYWiSE0FMQb+Ia6uNYt8Nnus8b4GLCtMRwbdB8Mf48Vac6qso8vCGIqp/vQv/CjjCbtEm+NJL/Votd27INcKLQ4IK9GVHNQxBg9kypZ1QL6IhhwDFG9Pz0F4Ys/S8rnJCYlugxumPvlxht5jUMp2Y3ijxmxJPB75ItSpW0YmtcAmCorvdJTe+2GN9sh5+yhyHPiuqm8CphkNMNQ5yus7lbnT+F7oPBN1iwNzq13JNXZGtX/LPfhd/zUl1627tGd45nAQUyaf5+9fauYW0hCZ7gLQ4q7Rkct5ft0Z4teyrAOYeRps8nI/HS+coOlb5Cw4DRIqXMe5wQDKdstexb3ZiuYVm85Jiz48qUmTSIhEoSz7/hUI+g0lPk955CEfxzEhT3OB7HERldem8SxhjYLznqoa7j/HMcVe566H/DtzDY+FcwyaHBCiMxW9GrDUX/WghHsEdHIBQhmu53v2pJStmzh4ubSjJLpK5yXf5ejGb6y1Kxdezgwrsc22w4pbnoJEuPU3JqGXrbQQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0Z1cEFhNWl4NkpmQk5yWWpUSXAvRzNoeEZFcEsrVHVGc1ozYXluM3NYTkkz?=
 =?utf-8?B?eTZyRVBzSUViWjE1QnZkSFhmVVhGTGJiS2pkb0o3S2hhU2wxKzFlMExpd2hC?=
 =?utf-8?B?eFNydUFqcFFLWVk0NlFRbk9Sb3BJM0dNMTJYWlBvSDNWUi9zVTk4b0Y4WDBB?=
 =?utf-8?B?TDlZSzBENVgrVGE4bHJTMEw3QzNMRXU0UEZ5dDlJaWxUVElzZkZSUjV6RGxF?=
 =?utf-8?B?UFRaTno1Z2FUU1RueG5NN2tIQ0MxaGhhb0VxVE9PK3duVnpTQ2xySW9wM2ts?=
 =?utf-8?B?ZXp1bTl4dC91eG0rYzM0dG04NnRUMmdiU1gvNGw3cSs0amZwM05hM2dzRXYv?=
 =?utf-8?B?YzI1VzN6WFBYb2hsdDBuRTlKcjVieG1PQkpGa0lQZGFxQVdSQ1RtU1pNNHJY?=
 =?utf-8?B?M1NJWGlKVmVJYm1CTUR4L2Y4bVYvNytRSE96MzVXYjJjZFNqa2dUTE9mQVBO?=
 =?utf-8?B?NG8vMW5TTERrK2FvdW12Tm1YTGREbzBZWWcvQkJ0SElhbUZWZGFmbGNhc0h2?=
 =?utf-8?B?STRVWktzZExnc0dpUUY4SC9xeDdLeVVwRThUU3lKSEZuR21zOTFEczR6UEhS?=
 =?utf-8?B?OFlLekRFVzNROXN1Qmc3S3EweGZ2QVlZNG9hL0dQc3pNTWEwMTM2WU9ySHlu?=
 =?utf-8?B?UGl0eHVWbDBLeFQvS1ZlL08xVm53N2pyU2p5YWFTMk80eEx5M0hpM0JtcktE?=
 =?utf-8?B?Tk9nSlRWSk5DNVBBS3hYbUlRRUF4NmsyVXFJY0ZGUlNNWCthWTkwazJ0UUxs?=
 =?utf-8?B?aHlzeTdITzNDNmNhMDRBc1pkajczNVRNQXZKNldITDZoL0dsWmR3Njd5djZY?=
 =?utf-8?B?aCtQMXQ1SVF0LzVQeDVycGlJR2p2V1h5MG5mZmV4WC9uUnhqQzA0VTFaaFgx?=
 =?utf-8?B?OHFhOVBuWnhjZXJYbnJCdlA1elJndTFldnZ6c3RxQTRjM1JjWGV6U0JaSjND?=
 =?utf-8?B?Q1VrMlJSZFRSdzVzOVFWcGI1aWJqTVE4Z29FQ2EvLzZxMVhLNTFkV3hlR21D?=
 =?utf-8?B?RTZHL0w5T0RhUnovUEFjOEJVcjVtMFB3WVUvT0wwekJSQUJWeUl4emFKUDdW?=
 =?utf-8?B?R0VlRHRFNmtmUGJQb0tWVDE0SG9HVXlFcHRVeFREWXhTZ1h2ZlVwU1RCbzRT?=
 =?utf-8?B?bjIzWFRlUmRLVlBZR3g3QUNaa2FTblRWZmk0WnJvcksrb0RFMzY3RytnVkFo?=
 =?utf-8?B?Rk1vR0hVcHVMbHBrcHV5MEloa3FtN1k4NW12cmVDRm9GZHVmUkFQSnpVYVlO?=
 =?utf-8?B?VENTMDBFajVOR1NTSnBwRE1yS1JtRkdKYzRYdUpzRmN3YXpjRmZDeXpQUUl1?=
 =?utf-8?B?ejVhR1JYK2ZTeXczSVc4bS9jakNZZVpzb056UnFzeEszaFdKK2ppNTNXOXQ4?=
 =?utf-8?B?NWpUaThyeGlBNXBEOGJuRXMwTXB0NmxpVWpJWjVxQnRCNEVKWkxucWRIVFBi?=
 =?utf-8?B?RVFobi9rWnE0Q2tuU01PT09yRTE3Nk5iVms0bkE5ZGRnbFQ0TmljY3JmUis5?=
 =?utf-8?B?N3QwOXM2bTN1TG5weGhzS3NhdkZ0Vy9CTkJ5WC82WTcxYzJNSjRpZ080TlUz?=
 =?utf-8?B?WWszczIrbWQ1Y21uMnZkVU1VUy9WTk16RlZEV0s1Z3EwNldKdTNPWW5TSUkr?=
 =?utf-8?B?aXJWSmhLbU1JcHloRGpkT0hONm1CQTlHQmdjYWs1ODM2TC9uNjJYSjR6ZVpu?=
 =?utf-8?B?bERxQ2oyRnRwemZaUXNRcWpZeUtVZ0hnUmF1SXpGdEtRc3JLdFZ4dEFHd0l2?=
 =?utf-8?B?ZkR4UjU4NEVWbHVzYmplenZudHBkM2RmQTd2QSsrNGxaL0VIb2lqdHNIeVNP?=
 =?utf-8?B?c1k2V1pMbFFKSjFuMkRESWJqUzJ4S2tra1BkOG14dTE2MGJEWTFzOVZCU3NN?=
 =?utf-8?B?Qm5Pb0UrSk1VZERzZmo0ODZkNmlCcWtGSGp2RmJscE9yWUlrUHp2RWJNVXJj?=
 =?utf-8?B?NHJBTlZ0WjlHc2VBeTA4RDV3aTh1TzJIVUdwbkdjcnZhZzNVTVlVbkE0Wlcw?=
 =?utf-8?B?VjZDY2g3TGlaTE1hN1RuNzhZNGo3VlpDYVhBSmhHTVFicnY4c0tlM083VlI4?=
 =?utf-8?B?eFlhTlIzVitxUk9hdE0yM08wZ2lyMDhkVGNRK2k1K1BESkZBS2lPTm5kRkZB?=
 =?utf-8?B?OFIvOGV6THl2a2RlbkQrNHhVNmZzbERDa1ZlYmxJUGc3UXVBVHo2cWlIK3Rv?=
 =?utf-8?B?ZWQ2Y1VsMFJtbjFhR1U1bm9qMFFsSUo5bUNUbVR6OVF3bUxHOHh2MlhQUlNu?=
 =?utf-8?B?eDBKejV2NldSdTlCYzI1dENDcml3PT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <78A3AD573A72C343AA7CD9588AD19739@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: MN3B1b5f62vHyNbmmqkBQwSfMzHKh7mqjyTctBUgsnTPyY9XareleWGF73czh898Lle+gCkONT/DR4yyuVwqXjiVm25lhwmme5R4PxLCh9ZTGYxd86hVu2rIUD+HcbcIwHsCQ9gWZvlJZ8iVxmLuY1hwQGJwNNRgqs9NcDpYR84zVb5LSwDNgkuI82o1Xaf0OSOA1vhKdKmwdUGrd2oWY13p3LClExqptb9FdGbSehJDdbbggLm5ilGYoshdGVQjTDdnvRPwMVdKxMz+Vh5uM64/p2w5CaQZLGd/QD2s4CQIij/6mNiOJwNVZWNfwJf0T/eyKhIOHnHb8L6Xf5x11HziydeoI/Y6V1gFs05aQ16krZ1Y6/cLoM9fz9ZErp6tLJcUzppIRbW/pzVuBpNQxBaqKPkNkbOcfw/65hZQOlUbPL4nRFFzvx8+43E7lwULf6F29xDQNQtgTDBOLqaWKWwwQdpJV063nrwIZIew3aqjyQXJ15QTWX/SPSmW2XuFWASUdbNDKhgTILPpSN+8OE350UyQgIyv1aan2n0/JYNiICUZ/BhH9GlkN1xoTBQUFeeJouVe9TYODS64bd0NURjSsBCdxaGRRYm09x80SAlQSs7zfvg9P6zVYEvx8ZPx
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e10a1ecd-7a59-421b-ffd7-08dc58a6f9ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:08:56.0377
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1QUbUmG4tkZDU590fecuTnsrmG58YUHaw5aF9PEdCWjmP16Ryvl7T5LzT4NCIYmKqhd1AiEiyH3d71bSblsmVAwqTbTOrAWcEYJLGewcW3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7715
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=ZkNW51t5;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=Uy72Rr67;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f9146b43-77af-4c58-a49b-07e9a8e3e11b%40wdc.com.
