Return-Path: <usb-storage+bncBAABBFVW2WYAMGQEQ4J4V7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D5089DE4E
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:28 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-6993f345d11sf43779806d6.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675607; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8f19FTDD8oFKRiW8XhBe6nGvuNKLM/mWQfwNtLEfRNrdax+rF1PmcdVZgcIKVovfT
         bnpZN15l9LtwnwOFq47YfrNRpbSEzYNzaApvrckxGWhfnA2dNUMU8aCAUho5X4ay6nAT
         p0u+ABj5qkdyA85+wKpESeqAIqpCTV3LofXOa8eKW8T6VkCbgmTSTrXuqAxPUsuBMcBT
         1xiwHbu0wt8CzqUWlBAjyzE3nrtz7yVw1P5wx0MF1GEFBBiL9jy41DWzE2zr3vPq6yZh
         8fWah36eRo+pJYnzXkNRUksSW+HZ8UpR6OaALjCVgS71syxUb3RBgz61RWelD/ioGgRN
         S4iQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=jbUzmoKZzBVdAbKGLI6wFQYpRjKfxNG0A+JLryDr8aY=;
        fh=MsXEDdIFraOX+Hf1Dk2RcPq3PlfdqVe96G15g52ixaw=;
        b=vWGzGDntex2IJMfU7xmitC/fp2CKGECKEKLCZf8FJrusFxUpSSjzHKxQ/j30S9SmeZ
         6abNaaXLc1RfZJ5Qv+5sPTCoMCPWAycjaegJEBNx62hT+oX24ib1AISUJOY7mI2rs71E
         UbwUdIunRWaw8SpwEkw1nyosNooUOFWh04q1WZgLvcK5HbXDMHEMwPNQTSNP1cIGaJ3V
         UMOfNDJGHPM0ewQ3/6VRigmMV2//5dmgalKnBCFWNRrpO1F76eJBjVGVpHS2s/UlSuwC
         ZxF5eBO9hp7MVjCR9h1gbB+Z83iD5mNLCa3wdhN+uZlP05qh10731LvSKWHsQOXmTwse
         //YA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=EzoAqnx5;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b="yiV9/d8j";
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
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
        bh=jbUzmoKZzBVdAbKGLI6wFQYpRjKfxNG0A+JLryDr8aY=;
        b=anPGVhunamDcTokX2b2vLx+T74y593nAhOyw/+TCzNYocAAGnF+xZDqBCbPeAxzrbJ
         Dzx3gm/eAG1xvgGf5jw2P31sGQKl6Cb1ddB/7eWzGLzGFLshTbh9RAeDQ3OBqJEpEGv7
         6JgDcvvTnvkcF0XGuAaolkvuRykh9LEONAyPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675607; x=1713280407;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jbUzmoKZzBVdAbKGLI6wFQYpRjKfxNG0A+JLryDr8aY=;
        b=UlMzytrZhvMQ3eC5q4nnnWbJQ4acyP7aIH9zMwh9H2MPi61tgB6KzJr0u9GBrW3WQs
         Etd3c5ut4OfunaGhBbNp2I0BBbbmE1MdOqS11Hov5wlY0dp/23iZzAlAnVuDBJ4RcG/6
         E+Lfr7waqg3pWkOhmjgyAu+b3ck37/qM5GUAQZ2ZHs7A2BqMCX5gF+YGAC2omXXmlR8C
         B0AZj29u+aDUSQY7n7GuIfdmM3XA9xjSqplolWghaax6yxa7fkv+odqW1qfnW6826OaX
         7QgYlFe/oNpgsv+LaUG/+MC6AInzXmsTww3nJGAhGoOJsIdr4ZN/Po3jNKR+lbK2+sgx
         XZJA==
X-Forwarded-Encrypted: i=3; AJvYcCUCfT1r1Wmr9tdpHRY6GdgWbjX86c7lNFMe89z0HcMct9zdIdc3GGQ9HrdlmDJTPtnoOBVeT9FpBgZ2Zmin2IdWnqBvZxvc1hVj
X-Gm-Message-State: AOJu0YwxO3VEDngOT7/13VuK6+7IEuVahsNr3IyBlZ3p8g9eYbKIEFOy
	91LUwXVciLQ+LZbKea9ZUBM2stTYJXkxfk7fzeQ0HCul1RU8AwqLIjeq/aKGCDQ=
X-Google-Smtp-Source: AGHT+IFvCCXlQqu8Ay8Y3NGCLmuQES4VqEyCv7NN2XtYICWSCB6lEgeMAMP0WPuwXXN19tc9NtMwog==
X-Received: by 2002:ad4:598e:0:b0:69b:13b6:f30f with SMTP id ek14-20020ad4598e000000b0069b13b6f30fmr6007213qvb.5.1712675607151;
        Tue, 09 Apr 2024 08:13:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:484:b0:699:1044:f17a with SMTP id
 pt4-20020a056214048400b006991044f17als2777781qvb.1.-pod-prod-00-us; Tue, 09
 Apr 2024 08:13:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWDY/l5o8KCxeUiJCWNK1Ui1bAcluZg9CBYwl1S2K2A0t5gqpsnzw1jGbfXWgumHryiheJFi/dHghocDEzmrkst0WmfFqntXLSlIQPv2CZ7SKYdZCs=
X-Received: by 2002:a05:6214:a4c:b0:699:3879:b508 with SMTP id ee12-20020a0562140a4c00b006993879b508mr14625qvb.5.1712675606491;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
Received: by 2002:a05:620a:4102:b0:78d:32d3:c413 with SMTP id af79cd13be357-78d6dd8872fms85a;
        Tue, 9 Apr 2024 08:06:19 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXAZs1u4SgN32WZg2ITfTBAt2+u1netuM/WfUJ0w05dEOkO7FIrPjZ6NmgDajNlHHoJlvHBpZw85nOqgtaiFYvSdD+pWN+Cj56wZ70eFcHJvi1z348=
X-Received: by 2002:a05:620a:1084:b0:78d:6ef5:f10d with SMTP id g4-20020a05620a108400b0078d6ef5f10dmr2218562qkk.65.1712675178840;
        Tue, 09 Apr 2024 08:06:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675178; cv=pass;
        d=google.com; s=arc-20160816;
        b=SeQf7RiQlVkzXC9glWPtXY4d1UxDj4ApmHI2RVMSyJpMcly+ckd2t0aJ4Hv1JrW0qK
         po9FWjCJY+Jnh+ZTV07cOv2EIfSEZ7+WtaOBaFYAZ4pWCzXjo4Wp6jV2dSRTK5vuQtqL
         /g0EXBXRdYOI/yKHDHZeZ8WTzg3mI8xbQ7w2Yx6tfwA6F6KuFVarnF6Qay9fVE1/yj58
         wHC0oyLAZvAj4ukEg/SGT1WsZzasinA9tUSLlYXpKpSyHtuRPTy4A5KQbgr12oIPQNj5
         b3Arj7495M3tte/wyflSNJMhDmzMllLiAa3bh/QrkosYpY3e4hx7QuQqeQXIfy16pS9u
         IXZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=MKr+i0xJ7ec7/8BeHdXEhQngv/sXfzkUadgGJA2+T1w=;
        b=hNqXSY9pvIRfRpbgz+R75WEtGJEhze1xieeMjP9TQgVhUQYy59prMb1k7hhpOHQQdZ
         QrtN8SJZGYOCVNd3KTqVXaFffEC+2KAeMgz4sM6gFDN8mDd4wdr6CS0LtPdJxcOnKRM/
         mXnDu9yagsS6Tn0kWp9HuPQRokFuYSBx+rkkcuGn0lXHFeTeya9mtyFwYM0zkhc8qsKh
         M8X8Vu+HdtTAsLcSxdTPA3chkT3rWZUzOTc7nFfHZsWYxb6kl6rRhmWgksjWZpnA4STl
         Cnlz3RPg0/2VDw6as6nWZUWhTWijb7dB5SeEMnbuF4t9XiHFC5jlQ4MbZXmBCPc1//Bk
         47LQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=EzoAqnx5;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b="yiV9/d8j";
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by mx.google.com with ESMTPS id i21-20020a05620a0a1500b0078d6394e223si5037578qka.462.2024.04.09.08.06.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:06:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
X-CSE-ConnectionGUID: TqMKuWl3ThG62cYPwji63Q==
X-CSE-MsgGUID: Am0Q+FpjQCCzXQQKVG7Spg==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13601228"
Received: from mail-dm6nam10lp2101.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.101])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:06:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afVGE3p7b9pYiPhXubJxtMnTKwXoLdUYhhqoKUQpjjIAHyK8POXoc4bP0RAJJEM616oj/FmZcpf2NogUPrYmjhpL9QrnMNO4UC0JceOKOGzLTp7nmQ458Ir18K/0tIlK0f2FaqpHVgqS4ZCwc75+WyQaPs60CN6xtcj38hNU+iNuenCBmd8I92O3+sYM0paqxZ4Sox2tSIpkW7T2HRCHvCX+jylH5dQLAcxBqlhXMWVUaYioJHYsPd0EWc10bf9OJfk7BGbFsA45EER8xVurC8IzBDuJkPtWchFU8W7U1npCP14iCAUkSDz3Y1p7dg8nbnwVPjk0iOQHlxSvC0nuNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=d35/5EmeZ8M2YHfAzntoGgnAEqSd4bhnydsQO1lppOdF+Qa6MqbULazfzisEpKZGQq+8RWIXPupZa0IdaVqem39X5U76nys92JEAPave7kflLkKPAWbpvjl0/maUsZ9PdJ0TJ/AYUBvny9CrVsnXJr6BkrnoqOM6xntZEKe1VoiMfQbzi9eugA2vpb/ruhgpxsm4jtQaCOv0j/iTS8wjxxlSykn8pVG0KmWOul2cZSb3Z2UEVV1K8gR3WjXOK6k6Q7kkd/utibkO41ZunVHh3tjat+6n8N7LcJClqaN7dZA/gc4cciNgC5FbelAg/HHXZc7z7XWndvjsgsXoOudSnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CH2PR04MB6760.namprd04.prod.outlook.com (2603:10b6:610:91::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.54; Tue, 9 Apr
 2024 15:06:08 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:06:08 +0000
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
	<usb-storage@lists.one-eyed-alien.net>, Kanchan Joshi <joshi.k@samsung.com>,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Thread-Topic: [PATCH 01/23] block: add a helper to cancel atomic queue limit
 updates
Thread-Index: AQHaiouc6oymJ0ZL402bahR3WO6rDbFgCcwA
Date: Tue, 9 Apr 2024 15:06:08 +0000
Message-ID: <1145fb5e-4b15-4cc1-9266-1734c8a6b5aa@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-2-hch@lst.de>
In-Reply-To: <20240409143748.980206-2-hch@lst.de>
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
x-microsoft-antispam-message-info: T2tA4gvIvhQ46N+4BpKzoMR7Xen+Gt814KOtzXmpmkrKrDXfjYuih/QUrONhvR4ZqglNElGtuEyfe1Y8jAgeZQ8mLJpeeJnNmAIXLuT8b6hrI6OvAtuGdDlTfsep2fSzs03A0TcXsX+XxqgWneTN0vGB2tmNGuRvbkCASfSldpBFD9XtayAxLKlkLWUmc6PlgJj1g2vN6Wucb6Smgy++vMPxFNsv5tdsnlyYjt/JXGBjnTcMcNlwEl4bebBHpKMKfW6wnB7s4Z0JZw2bxmPt1gcRAB0cuItpkfMwznH6VU9x6G8OeGUAn1/Jo8/bJ6xHusJuR+VQ6nCC45Ue1/kTvHOtgdgQpxUoklk5yLwr2Cz4StdkArDpLvJUGVfujBKqPOEPMlk3kKfr7nh5QuedOvvZmCc7dJ/UuiLyLP1FQMmqN0i5UX/vyD9J/WZd+xg3p1pjK15e/KdSGK0sOyk9i3mBDMYbDpaintL+eWPmHXTzZpHfeolwwzlWKDHTu/AuhkE4WvvgZyOZPhLptHhmF4+/PGAZ1MIzRckiljjKyI8ToolgOX/TOqyt5A1HxwzLzHZ7ybNSAX6QYasNZTSRlRa/bYZZaeDtQ5cQ/eL/KvCPxYScUaOaqpSFpC3Jpo6gv/ufidcxzPtLAGiBMb+sKiPPlHx2R10ophS3iAPjNak=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTk5a3BUelhsMDNjazB5R3RGY1FCaysxeERoTGNTZW1PcTh5aVQ5L3pVeEFk?=
 =?utf-8?B?L0Rmd2V6VVREcGtlYUhjT0dSMzNvYTg5MVFsaytoTFdaU2gvQzRYR0YzT2tl?=
 =?utf-8?B?WEphRHVFWDFWbHpKYkFZY1RJNzdISFY0YWFRNEY4U2Uzc2xpUkhNYktLVnV0?=
 =?utf-8?B?VS9oOFgyeEFxUEsvNTBpbkZ2VmxJMTdFNi9rbFJMRVUyd2ZtR1FXN3A0UC9s?=
 =?utf-8?B?WGRlSXVZaldwTk9ucEkwcm02cjNoWTM3M0FFRm5IVVZFRGFEYlc0RGNrUTVi?=
 =?utf-8?B?ZjRtQ3pKbFhSNlRhRjkveEFESzhmUnkvSUE0TWxWM1RUdGlmN1lPZExJSUtI?=
 =?utf-8?B?Tk1OVU1JWVg1UzB4MlZSYXRnU2FmYzdmUEY5RjFIayttd09YNUNtT3ZkY0RN?=
 =?utf-8?B?VVNadjJ5RGFGNkhVNGpRakZHQlJ2dkdKV3FMZWtCT2hyb2hCUmtBenRwT3F4?=
 =?utf-8?B?Nm9MeEM1UG0vUmhkWFp2V2MxWUUzeWFaRjRhbTJOeU9IOEtVSFczVlJ3b0Zz?=
 =?utf-8?B?Z25oWGdZU0haSk1RelAzUElRVEcwNzUwNmhZT0JGZm9HZUgxYVRoTEhMVGg0?=
 =?utf-8?B?N3F2ZEtETFpsemo5L2JQTXNjYUZiMW42VitBUm9qZ3VnRTBvSWhWVG5UUW15?=
 =?utf-8?B?cDZvOCtiaGwrc3RYbVdIR2pnajZxazE3ZkRYbUdxL054aUducldaWTE2aldP?=
 =?utf-8?B?MlVJMWdkb2tkekh1RHhBUmpQRWtYdmMxbnMwVDY4SEZIQ3kvRGJXRVFaemRL?=
 =?utf-8?B?VnpLSGUzV3k1U09ENXRKaGxmTXIwZGllQmRCQytXMWRuTFBtQ3Q0Y24xa3p4?=
 =?utf-8?B?aUhOdWxUZmNmTzZGTFE5dTNPSnV0UUlWY0JPZFM1V0tUdlRXMGpqR2RlYVZ1?=
 =?utf-8?B?ZkNPNlNINnpVcW4wWDRtV1RMbTFuUnBNWGJJaTk4UjNqazE5WVp0eVFvRU1G?=
 =?utf-8?B?SnFvL0dxc3RFQWVKN29IWFIzUkc0bHVUVEtyUm91VlVRK2lyU3lzSWxWMzR5?=
 =?utf-8?B?V0c4Y1NzU0pXY2JLbUY0TnpTSUxlRGI5enEyQjV0bDlZSUY1UkpRTTZ1ZU1I?=
 =?utf-8?B?cXZDU1NVZWVOd3FXaHIyTnlscHhNOUxSb2VUYVNYeVBjb3gzbkpaQXAzMmFQ?=
 =?utf-8?B?YkdGRE5aMWNuM0NmZzFvNzBLbFloZkpQYllTazJ2L0tOSmo4MWhXYm5abTlE?=
 =?utf-8?B?YndSTkV4WGkzWWpLRDI4V3NhVEpycGkybFlmdEJJaFlDOEpMNENTZy9PVDd2?=
 =?utf-8?B?TExhU3g3M1FDdFJpcW9TMWpWSFo0Wk03WUZlYVUxY0dEUXpybUtCbjRlWGxF?=
 =?utf-8?B?bWFCRDc1UWlNY0dEUTJaU1oyUmxJcmxzZHlJMGJvdEtFMGpielVMVmFxSjZ6?=
 =?utf-8?B?TlA2bnIrMURUSDRBZ3gvVWNwdHR2RGltVUxLNTczaWJMbFV1V1FFZDFzVHdS?=
 =?utf-8?B?NkhweG0vbzY0RnloZmxnbG1qQ1VGQ0ZmWmo5ZkhPUTcwbW4vb3hTdXlJb3lW?=
 =?utf-8?B?R0FMblVlWW96M1VnVDNldzhUWUExOGRmUDJpcDV2RVpORDc2am9UUEcvdHdp?=
 =?utf-8?B?eXR3ZVZ4Qng4bCtOUjdnR3VyVERWRW1SYklQVE8rUkVZdlhEMllzS04yRWxC?=
 =?utf-8?B?N0ZBVnViV2YvbEEramdqSjVTeVdkbkpjQXNpYzNVNnJjZTNqcElRMUhkdUJY?=
 =?utf-8?B?OFlNMmxzRXhTVDdQbzJnc2MxSjRuWGw5RUhWVXRhaE5Fc1VQWW9aQnB5Tjdh?=
 =?utf-8?B?Z3hXZ0Erd2lrRDVVOUt1alZmLzkreWJOSkpLQXRTOFQreWlzMDJzZnVzMEpz?=
 =?utf-8?B?Zk5OTk0zYzBlaEI2S1VtM1k0bHZGdkMyQnlMUDhNUE95NG5NUlpTMFRyK0x0?=
 =?utf-8?B?eVM2WGZ4ZlpYZjBoNW5YSGM2K0hvbDV0WjZjL2xocGp5WXl0anBMZEEvN2xO?=
 =?utf-8?B?OFY3b0ltT2J4aTJYczJXK2k2c0FJbURJeTlZT1VhckFCblNrS2tOMVJncXpB?=
 =?utf-8?B?bVVLY2FwaUU4aWViRmkwVEtCZDEvckM2M3VTQzhQVlIydmpoL1RQTGM5T2Ex?=
 =?utf-8?B?SEExdStIUGlmL0xDQklST1kyVWV4NCt0emYvVG9JTnNiMVRjS0VqckhING1U?=
 =?utf-8?B?T2IwWHlGK0pHNksxVm1SbG5WcmNiby9VQ0xHR0lBSW1LUlpRcTFlTFhVTlJk?=
 =?utf-8?B?NURyQmVxTFNVcFFGTHZWaHRJSmtVTk1pQlJJcFp0YzhUZG9IOEliR1dFRklt?=
 =?utf-8?B?bmJTVFlQSFpPOWcwdVkvNXJxOFJRPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <E9FCFCB06023954B95CBC2C583FCA1DA@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: D27d4Etd+Tsz+8tQxYKQw9LGwwNDMrW35AJvHn2Lf5ArcSgatTrvxueQq7ex9LIlhH1PuNK4obG2K7sxsAkGe8hpvqUDzf2hJQWoXPOCDqaoQxbXbVwEnuqzRgU+kE5tkmyOP0tXiI3vUhmM9WBoCFm3n3DGhh67WqaE32sCJ5cXbic+gFD6k6dOe4UK7JvzcbyqEl6zCUL4Lb76c7nGcAfPeMv2vKM38QEduW6MgFdaDCyLR8aKRWETreTlQ02tjNnSNPOg+agcVnhXlYthmhBwKTPBfQFfFoSibqfygUhNWnyEhnrhT4p6cgZtkW+okZYLUOmb9TL2wSorKoiUdtaYVlWe5+TCRPiPWX7NTIowvLJraCsNBPiL5c04QkjgQp3sfk//T3E9M2BEkjHepToWjZboC4kMvbIqkBq4jD2JP7Vx+J2RR6XgxP/6caqycRbOvop+cvnwKoXtC3Ar6+jYCexryens3E8GmCp9nLzipJ587Sm6pHaArBFCWB2jICPafuyBTuftKxMYXC4gC7jUtN95zJafD4eASm38yoExSZRcZ+V/+r4JglBpE5F9LtaVPCyMHos3zlULriXFSFmlUwmoOadUSPCx7b4leb+aTR7HiuZznH23Df/q5jEE
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aad345a1-a323-4f37-8a19-08dc58a695cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:06:08.0258
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pzcivJv3SAIK0afUuWTlXJ0yFoAxglUzZAncghFKF0S8sq7bvO19qjysSQaO+wSw+iRohpKckaR5TNt3m8OieD586OhExBfrAWjo/6woxg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB6760
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=EzoAqnx5;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b="yiV9/d8j";       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.154.45
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1145fb5e-4b15-4cc1-9266-1734c8a6b5aa%40wdc.com.
