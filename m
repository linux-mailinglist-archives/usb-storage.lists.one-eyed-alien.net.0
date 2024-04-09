Return-Path: <usb-storage+bncBAABBFVW2WYAMGQEQ4J4V7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFF289DE49
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 17:13:28 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5aa50631da2sf1821631eaf.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 08:13:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712675607; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bvs1WuEjQpqTZXizJvsk0bqQwJ05fVybHTK6i39Mj4dxcdtYkEr4Kvi4/8UZpTf8fb
         ss0iaYouxkAPfRl8mJ+SEF9tfM2mUlUN85v/8mn8lsZBZsrIN5QpzNhs7sj1WpK1SwsW
         pg4Xl6Op+V40RfOE7bpF5tv6qSMkmOWWHOSUPbSnC/F2qparfBe/WsMuvUagWJVOcR+t
         G5AUlg3okD1VkmfHg0LYgTxbxvI2blC2rR8qlRFkQhxLfWjGi4FwqSUh+0+KWajFRqvd
         Vq0WWM8/7OOVKanljUvsku07U8ySeIvmYGY2C3SJeuL0BMJYYMuUTYBk6CeBGRTcfVcA
         oS4A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :wdcipoutbound:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=ZZY9lAjOUkJhlsSLzjf/GDTcEOwZyXqXWmMlSJPHGh0=;
        fh=kozfZvQN5UfqbaTyBeUT0HKIBlnh35u4UQDC+GfEBmc=;
        b=S1Z8SEIt+/xgfjN4H5l7+Jn1/JBoVAB13LRkRCNdFkdxnsY9kGXmhZbMRPDCtQZz9T
         xgdTkgokZSYJoYgKU7+KQk9bQnoijlldgqksonTGh9i1oGLqTSv5UURTPlP4WZdcvpch
         FjzAfb0Br/PKe9pEzp6ufHMEOlzrcOJv5qOHkyVorEfpgLAjrrKAB023oK6OUnIw6lYu
         mA0Ad8TvMOIhmFAcXlqmkIA2qCBPb639LeIBlsm+Mcr7J8z95vlvpzE4RuxbEf+uYmsj
         r9/Y+GfF3UvyaHawBjVqByeh6DVcilKvPWS7YJwquQucrDJQ6ssMAkmhIw1Th4FWjYti
         5EvA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=BUb8qNkI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b="Kf/yv26g";
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
        bh=ZZY9lAjOUkJhlsSLzjf/GDTcEOwZyXqXWmMlSJPHGh0=;
        b=M39cOT9Uu8IhcCg05hJQdwJvjq3qqnpuwQ2xHTJ5HqUaEkJ6gjFb1naf9bb5WxFWYc
         2MDaV+ScEEiUzmYj1D1/n4bgFZqFfQs9mhae4R+12wMZnYpJn6b+MMrTbKe5w9vLyTyI
         DgGwwlIpFVe6eYp1d4RBvQWAti6Gq2VUoH6vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675607; x=1713280407;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:wdcipoutbound:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZZY9lAjOUkJhlsSLzjf/GDTcEOwZyXqXWmMlSJPHGh0=;
        b=psRMx3aRNsxiFmTtlamt6O8xGLN7dB9WUrPG4XA9nmytmvLngb2jz3jWWjcpQVWs2Q
         DFQMERpSZk9X8oXa5qrOaW+asX1wqzEhiUznOYYwL/Qivg/wzvWcgEkX7ZbpRWt7LCd/
         uBFIfn5aoLlnQzlOEvRTPQicLem1zfwkp3PjglNmNyRCRFgAZgp+kr8Bh9vy1PuZGd+s
         C65bZny1hGaTU+TsS0IFlp0fOtGgaBorg0g/zHAo4VY27y3XQ5ubXA5g84BdLxbILb76
         tU0X5uXUA622wuWpkTHkrHGmhzTiuHUL3cV2nU46iPbOipASVDmVPHoYfe/Y5+zX1J7c
         MlMA==
X-Forwarded-Encrypted: i=3; AJvYcCUivvrrmAxzMVKVDf9a01pns2AILtqFD7yOhpxnEJwynxvff2AhBXLrkgbJSmySWz0OFFJTjLTJOxuF5SOX6iUllZSpGH60MGv4
X-Gm-Message-State: AOJu0YzEyw1G5Lwb/GiLvmHsd/9oAGzouhCHDvXVF8DCgUEqo0dkX2xA
	sF/4p0FFg90xoR+rT7ISjStDR3dGi3Powg24DfRIkznzI6ZV+RvZv3jgPlucBX0=
X-Google-Smtp-Source: AGHT+IGrMV/qO/hls9H/tQJf/dhUGMGY+YyY9xstUi8kB1irNjRTdnwrMomjbKPGjKRtJPB1d/+3BA==
X-Received: by 2002:a05:6820:1b10:b0:5aa:4fa0:eb4c with SMTP id bv16-20020a0568201b1000b005aa4fa0eb4cmr168328oob.6.1712675606939;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:98a3:0:b0:5a9:c6ae:59da with SMTP id a32-20020a4a98a3000000b005a9c6ae59dals434357ooj.2.-pod-prod-00-us;
 Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUXz0AV4/XrOcox0671Cobsx2j5TnBB/r58nXBAIx/Hf39uoreGpOLvw7oS0IHvoa6MHVYT1Xiu4Yx2bfY5ZPn2q4e+gpWSy/DHapBI3L8NrJyrmVQ=
X-Received: by 2002:a05:6820:230c:b0:5aa:1b3d:be29 with SMTP id cn12-20020a056820230c00b005aa1b3dbe29mr160785oob.1.1712675606537;
        Tue, 09 Apr 2024 08:13:26 -0700 (PDT)
Received: by 2002:a05:6808:191b:b0:3c5:e773:977f with SMTP id 5614622812f47-3c5e7739855msb6e;
        Tue, 9 Apr 2024 08:06:28 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX121T0MZOfwT627i4Zr/bVO4difc4UYKAWsdAw83zUxaA2xeSAZFur+gFisP4iGaJHKyBijEbUcTYcMWaN7hgKXlfgr6jCHfXMauc4hL50wiDSnYM=
X-Received: by 2002:a17:90a:8996:b0:2a3:6e4:31e7 with SMTP id v22-20020a17090a899600b002a306e431e7mr9777235pjn.8.1712675187847;
        Tue, 09 Apr 2024 08:06:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712675187; cv=pass;
        d=google.com; s=arc-20160816;
        b=DqrOwGTZLE8EWAzFmE6nlQV/4gm2sZW8LWzIpb+jMmJBzwoz3lbcAx3dbkn4/B9TX9
         DfZNeJSxccPm+GuQwZdCoNatIKYAoSa8vMB/J6GWjm6mOq26PJm09SqyzKRPkYysf5Gl
         44/038tnQMB/YAf/qMNw3bPfBV6SetxN0iMZbfOn1+iSsb55l/mCWcQxLgPpj1qpvroV
         UUztyrDtPMM1DDSAz0O5rmOq6rThTsn8mDQMWhuwWdl1fFVUtgK9u+NDaNernawEB4Et
         9mqMsfl1ygU/iWuSNQzJVTCq3+9/MeSa42Qqqt/qVhe7/VQ6hOH1wXhlPa/k0DlvKeIe
         P1dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
        fh=jnofLmv51csmmpeVpzDtYOt+AG9Iswk8lTlnmuq23/0=;
        b=Fly7sOrS3mxY6mRKAa5puK+ld90i2iKufhKufm8QOG6FMaQoIdAwgr54C5/yJI4qYa
         kr4s9bJ4wyKwC0Z4QSfPE6BCAQj3TJ5Lyza9e5nknN/q1coxxA2D1K53UcE0gd6B4HF8
         XdaPVVXJf22YiIFi+68+KSCbWXHNLl18zL3giw9lqH7gbJwGJmT0Hu/sTIl7DCq1ztDE
         73Du/0KQyigrOg/vtqMHOzJ+3h9gpaY6U+7B2kBakg2XB+jDRl9dhQzFHQ3latKd+xFT
         BIrMboyfParc6EC+MmTLYA2JqP7wOFalowjX52Q0Vi3arI2VtfjW4TI3e4KWzfoPMZn8
         kbpQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=BUb8qNkI;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b="Kf/yv26g";
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=822d48576=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=wdc.com
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com. [216.71.153.141])
        by mx.google.com with ESMTPS id n7-20020a17090ac68700b002a52c195c06si3785652pjt.28.2024.04.09.08.06.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Apr 2024 08:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=822d48576=johannes.thumshirn@wdc.com designates 216.71.153.141 as permitted sender) client-ip=216.71.153.141;
X-CSE-ConnectionGUID: OElsb9BORkyIvSuoAs6M+g==
X-CSE-MsgGUID: oWoH50g3SS2H+RoOCVTMLQ==
X-IronPort-AV: E=Sophos;i="6.07,189,1708358400"; 
   d="scan'208";a="13424337"
Received: from mail-dm6nam10lp2100.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.100])
  by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2024 23:06:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+SDp+/xuajLOfkcv6yWEpyy20dlzbWbtJ6T5AtlizbyyyxD2qczYawPd49+jiHwElTT7aIVvd3+PvNCuFtIsiHkvNhDn9NiKK2I1NS/4qHPNBW0nKE46iDfqWsUpmHYYSNomH1N1zU35Hxrw77EH3z9YaXiiFEi7E1dhx4b7eT9pzdk0I1Tmsoj6uhRfJdGYPVvraTUQq2c4iquBhfGR6/1CQPvRWjVEhN4tPH/O15qHRf2aIboZzjjkm2pYTx+naf2CMJpaGEV8KGpnWtrHuWYu/SSH9geNX94J6alYUhR71eVo/TMCsrFQvtEwppkoe8ef0oIw6O2quGs6cGhkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk2hUJbB8x1kfmvsTSguaM0YPcY6xrQ/6geYb6UO5dM=;
 b=cKmrPKEMCYpxvYpC3Gtz+TdbmfpJZ32+DXVSQAXrd1jet7zOLKyK+h/ddCZFgjWUTf+yRY70pQFSrHhGIUouhfOLEs86tPf5tudYB6qH/6/YUI4QYGuY9QQ6WZtiLQRKF3oug0Yaf0FdeuUoiu78bbFR5lhWEE8sD8YUWf6BLleeJtZeBbyMrmZ8GW+eKl817U0LnRt+nhChlIYlmhvqTPkiYwYqGIWjCX/wTFyoAMGP+N0BYpvuxEbtlQnif9Isx/JKFpXmzunxLootyT82eXRyFN1rktrEsQslxv9iTSS3IuOvXrR9Z88SoHIYolgblydF1+bOfT8482fn5SdGKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CO6PR04MB7715.namprd04.prod.outlook.com (2603:10b6:303:af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Tue, 9 Apr
 2024 15:06:21 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::48bb:3ec7:409:1907%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:06:21 +0000
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
Subject: [usb-storage] Re: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
Thread-Topic: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
Thread-Index: AQHaiouiABQo3wFikU6PDFwt1R5sVLFgCd0A
Date: Tue, 9 Apr 2024 15:06:21 +0000
Message-ID: <70e10f2a-54a2-46da-b2bc-24ae2262e1d7@wdc.com>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-3-hch@lst.de>
In-Reply-To: <20240409143748.980206-3-hch@lst.de>
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
x-microsoft-antispam-message-info: +qRenYWWeyCblm0qRyUzYZsBdTDDsENbpLQn1HZMXztAQKryGEx+dHGSV9fXUpIUKyNeXK3wlF4YTyhmb48vHumg/5nY4I/0dludHoqgw4v/qlAtZoFC2sxuexkedFSfsdHD27DSagafOwgZpuFhxVob+6uBWQ5CI3+7fuOqD+2d3MYpNVj05tNPrYyWVI+vll7M/jxN/12WgkGrV4Nxxr7Y0GHahqrOPxzLZrfNKI2NFDmaO0kLt/9LmtU61HXN+jdn9lE/5LZW5BllvNobyCNgbvSzJpMwBTSTO4pgFxmKBZ7/Cc75Qhe74eYuvPQc3Uro7qocQa3+9suG+nKI/QXg4SUpptAUveZrsFTY+Y0np7JH2+xtQdr80sbrk1TZ7GzayJOjXXMCdid84Ke3GldFrMNDZokrUalpVxq33BimN9bbV3yqtMb4IpCa6KRHpgv278nv7UUF0J/mKxQZnJQ8SteqlxXw8J7uRk+OCs84fK74fqTkL6tEUa7DjAsl3KwlNJVDAkvUjM0JY4cXa0IaKRS6pXJuBa2mJqDm+Ss5/QkgaiD0DfVosQXfNZg+qpZFEWDbP7f4eSKIG7SdULe7LVveA5DAqBtss1RbxkPEPXsyLglA4ivhlq0ii53wA293CgGwLRNLTGtqssTQalg9/UisZjjTZAk6lxqkQec=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(7416005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVpBRi8zZDMvdmpzcGdkL2pUOEUvRmdnUGhZR2JXVkcrRE1qWnlieGxlaXZR?=
 =?utf-8?B?d29lTHpsTWtDTjdvWGkxVnlIK0dmY1N4TVJhS2JwdjZYMjZ1MTJjTjVnVnlS?=
 =?utf-8?B?Y0tab3ZFNHN5VHVZK2FGdWdSTXV1UXgxVTdLMVhnOTBpc2pkbEN2c2NLWGcr?=
 =?utf-8?B?eTRnRGJNR0ZUZnRMWE9tUGx5K2lmWU81UGl5OW5VQ1pFc3JJR0hZdGNrbVla?=
 =?utf-8?B?K2lZalN1SXJMSEpwVlIyTzRmMkdDdVNhKzBLQWVsSHI4M3gzQjgvZ2RDR3Rs?=
 =?utf-8?B?TmVBV3h0eEdhbThsVTZBNjVUdTM2cG1JMXJhTzdURUhpS3Ztc0EvTFVHeTBt?=
 =?utf-8?B?S1Q3Qk8weXhQSUZ0M2JOVXI5T1FwTVUwUzVWUmhDU1dDM2dRU3hGVDlBRTVE?=
 =?utf-8?B?Mzh6Rnh0TE9PRGFCZEpiU1V0N0dML0pKKytGSFlxYitlWkRmOUE1RnZ3Uk1W?=
 =?utf-8?B?RkRyRG1uaFUxdlZZTExJclBhMXk1dmY1SjVkMGxOdkJRTHVtMFhlTVlZQ3JC?=
 =?utf-8?B?UEV4VHVwVFlCWEQwMXpMVWhkWW5Qa1V3OHg0T1BjakhVV0NIMEpjTTBRa1Zm?=
 =?utf-8?B?Tk9CcHJPMzd6RmF0MlVWWTh1cFM5RUpRS0laZHM3eVZsUDIzSVk2NnZYbFFR?=
 =?utf-8?B?SlFZQWVYM0lJN0p1TERyV1p4UXRJOFJ0ekZGM2RPNURkMHhZaWM2TTNNR0Fv?=
 =?utf-8?B?MzR6VC9NTXJSanRISWNIWHluVDJtbnIyNFZMMnM2OHEzaGVGOWdhNmo0VVR6?=
 =?utf-8?B?Y01iNkdtNTFIeHdtN05vRml3OFdLSnB6NHlZUE5FcjJraG8waSt0dUxRUFkz?=
 =?utf-8?B?OGhXU0dsbFFsUjVSM1dYVkcyY3ByRDlLS2Q2SmZ4ZmpqZm1JZ29ZQ0YzMWZE?=
 =?utf-8?B?cnZIOFVSOFA1d0R0M1NOaXFXQWtCT3JqSHN2MGJsUkVlWHdnckUrZVRYVStk?=
 =?utf-8?B?SnhiQjN2akRTNGxPL1R3MXZBWjdmbm1QdjloSE95eGFDRHNHNjJiQXd2UDBC?=
 =?utf-8?B?NUp3Nk1jOHNKM2cybzdiNyt6Yjk2L0VzbG1WMmtuelBpaWNTM1NSS0o3TW5p?=
 =?utf-8?B?b053bFBYbVBKYW9pTTFxKzhxU0FweHp1OHdqcmd0dVJxWG41Q29BcXRiQko4?=
 =?utf-8?B?OWRobDdKTWRodkpITnA3UGQ2bU5xZjlURE0wUGJ4NW51Qi9jUFBoVWl0bThJ?=
 =?utf-8?B?UmwzcXZielRhb1MzVHlxNFo2cmF5Tnd1dzByR0hOd3d4N3lWZC9VNWJSTkZ0?=
 =?utf-8?B?RWh3TnM1YWY1d0FYQUxaUFVvKzJJbmN4TnA1R3Y5amhqdC95ZjlZNVZHYjIw?=
 =?utf-8?B?MUt1ZUpCdzlDd3JYR3pMVHZKRm03LzA2Z0txSGNualFFQ00rZUJUdlUzdC9v?=
 =?utf-8?B?dXNsc3ZHL1VXV3VlWHN2V2htelBWSXZHNjFnYUV2cEROcDdDMWIvRFl2VkRZ?=
 =?utf-8?B?Yk1ERVBmM213K1J3SjhTY1o4MlJod1psTVlJblhzL1lhSUk4NURvUVk0elBs?=
 =?utf-8?B?Wld2K0FrSm1RUG1yajZET1hmQ0pmN3dRTCtWZlljaHgwRWpKSktDc2RTZVdC?=
 =?utf-8?B?R2t1OFgyQjJQaEpkaUp6WEEvNWVndlNWWFhPNkkvcXorNUlXTHQ2dUswOWdO?=
 =?utf-8?B?UXV4NTZqNUhJekNJME85MUl3ZXBEeWFYSkJMVklqb2hqamNHQXVHczZ5ZjRD?=
 =?utf-8?B?dGhhV0l0MTV3WXFucktZcGw4eWVYbjZxczNMdm51SW1FRDhVZHlpcXEzTjlD?=
 =?utf-8?B?bTMrZWpndXpoS3lMTHM4TTFsUG5kNUdnZE1uMGNqWEdSZE5ibHVheis0eEIy?=
 =?utf-8?B?UmhkTEpUWVhwbWk5b2R5SjdabUxmdVdBdDVZdGVTR2NnQTVpK3ZPWTA3Smpo?=
 =?utf-8?B?Q0NYZGJWUENGRWtkZUw0ZXAwcXBpVk55bmY5SXlwZldWVjBUeGcxc1NPQms3?=
 =?utf-8?B?cUFIaHJQano0R2xlSmw1S29wUUVmZXhEczcwNmUxN0NnWktjWW1rQWh5MEtL?=
 =?utf-8?B?a2RCSjlLbWxZWnN4bE1pWUNuY0Q0eGN2QjJlei9qdDFEbVZoUm9UMk1QK25D?=
 =?utf-8?B?S2hrS0tjVVBvSytxUGJMS0NvUjFxM0tlRTM0RTdycmZpVHVjRElFc2FaUmc4?=
 =?utf-8?B?VG5uc0pKYjBPekFQeCsvNDR5Ujh3eS9NN0lDMXdnL25ybVZtZzA1Y08yZkRz?=
 =?utf-8?B?aVBLWjljN1lHNUFkYjZKUE9vWWdYVUJNR3k3b0RST3NZUFlJWTd4c3ZpN3pI?=
 =?utf-8?B?VGExZFZHREJWeFpUT0gxOVFvRzhBPT0=?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <0F8DC5B123A93F4699F64C81BADC7292@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 6lkYCIeD2GueRKT+jGXeTP+J0HZgw0RyZALJGmCeHQ5E9yIoks7DpldiQ07ag70N9+ockND0B5l03MKGYq33iRvr3eARLhIJJnVhVx4sOgTiylngX9SUqTxTX58fbD64khcNcHhYO+XA8fAZh3lyZJ8PpHLQ6E0rhEVVZj6V+ZxgzpO/k6FBKuXPt2rxMnXwQHD1zuwe9Xsl/marpOb9klJ5IYtsR6Fvswye6HTjZwfaLxQqD/w+JktNUv5DVgt15AXOKabmiM7rOJtFZqMls6wk2Vuj/f/rl26wBa8EWIWYKJ7RNSyswtf9OqGukLP+egSS7LjYLXHaVK5JVc6Tt7GmGB2dP7Hi54b/mqonjHc9UA/lS7Wam+jOC5f169XZo5roG0OQfMOftHZmKOjS0vZXyBJZMmQQotB5wxh8nvuSPMWEf+82OlP6xZiapfwXobwXi62lzHSu7NMHzB3ouQqX7NAx9gcXw8pStTgGnNm6zyLQcsEpQiaQbXHMWzNZT5IDnqenehWyuuhyFQTAJd1ZK/tJ3BfjVoPpOskL0LB/BBy/WctnZrEFSY44ib4C5C1vLiiA0whBSCpqb1d/zX+pEyq5bCtgNGUfvZvIoIuug8Dj3uCdgkPtMl7A307N
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05144b57-1a01-45e1-d5c7-08dc58a69d95
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 15:06:21.1238
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 091iljQRPY4ILK+7mL6/JXETUxGivSj3P9KlIwORdVOYVMxroWaw4lZlWLo8tUukYbGHkUu9Uvw+LSb6kKfOaKgmewTFYzU5GMjaJpdVlyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7715
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=BUb8qNkI;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b="Kf/yv26g";       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/70e10f2a-54a2-46da-b2bc-24ae2262e1d7%40wdc.com.
