Return-Path: <usb-storage+bncBCD73EGVUMBRBIUPWSYAMGQEBICL54Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 4840A8966B6
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:39:16 +0200 (CEST)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-369e8da3641sf9506095ab.2
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:39:16 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712129955; cv=pass;
        d=google.com; s=arc-20160816;
        b=WXUwJiD8ZZUx6E+TmW/cuMuVqAKW8xuu42xwWkO2exUaisI7zbYhflsu4js5MCiJn0
         3lCNXHQ2a7ZJEd8SRj2YiggvmBHzWLkhqe0OeiPLffvH36uVf7gzKQD+HhzpkRn5CQRX
         NZw+aaua8HePuofbvZ01zW2Z7QR9E2PxenTTTYUifYfrkEGnI8ijbke8OjKSdrd1vg9F
         lfI/FPHdcWpPNGFFUqa5Re87lpn3q+ZxpdfZJ70TFM4oBzxOghYKCA8738YgoHknF90P
         Ln+sGQOnFdsB4MOTZptFnniBanOvsS/4PdQR5nLkxoTx/pNy1Ms7mivUYb7vg+HEul5s
         gQoQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=5xQZhoJs7Mwgmwfs4ii1A4vWpvQJMX9s3t5gWmIv4oY=;
        fh=vNund5dYB2Gbn+WVhdjPbuTp5FQ/cbkLxVFGOjZDS/0=;
        b=MUzXq5F+CUo2sfA679cGnMLDpqYELfBKEjo4KI3WTPmVCH6bbZTWjl+s9V1YyjN4E6
         Pt9JzvJtbru5Gp9pnkc8UdMxOoDJFPoXkuXNJvdAWoKi/Q1F6oljFtkhztybBO2ueQQO
         tun59rJHznm0u6PpkcwzSM78Tmla0uTfkdJgwZkgW6USMdW9dB32W3+Un2SKpW1Al/PA
         osYgckTSBCwBCwDlzD5X9ZwN41uE8/dcMPLdUnrLE+ZZ+VGUcwI2Zhus5on7sfBzaDqV
         btH4ng2I1aZlE/idhPHEG7vQSeX1Vu8etpZzX1KEcgJx9W8Ndr/J1DszZZ7hSLMCfdOO
         8E5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=lTE+GRGv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="a13Nt/0+";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712129955; x=1712734755; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5xQZhoJs7Mwgmwfs4ii1A4vWpvQJMX9s3t5gWmIv4oY=;
        b=ieZPdc24ds5Iaa4WLvk93aukrfTGbY1tcZyzYug9iw1le4wjTVlPcd6hV2nLWszSbh
         IYZ0VphhoUvPcLYzszOGfU3ESDQ8oyARjZOiu2RpNQCe3MeO+5m6d84Z5oB9J6PRI/S3
         2AcBTxdYibF37pIOfm/rcTJtXMEhCbHBaZWCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712129955; x=1712734755;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5xQZhoJs7Mwgmwfs4ii1A4vWpvQJMX9s3t5gWmIv4oY=;
        b=LfEWCyqmUbiEsyAV+/Yyj9+XWVsRkggXxwG8eSbHIf6XkYTT2PjKJuNe8ZIpT/t8R6
         f+kqMTeMiaZBZh3oH0u1quLtagOnfX8kgmUcRXDMZDjhohMopw87MCHVyM2N+cp6I0gL
         Te3jYvQYe/5HDy+8JxnBn8ISvXHkW027eDOQ1TqEEwhsChGVUsosojgRcCTJPNRhxtro
         y4b0dtr0dKYCGrs3qu3Z4qf/q9EpUnRtiOzCu4j1e47+g6fL0FZQIYlUqzMofXg8sO/r
         w7DbDq58Vt948FSVCLl+QWrKfeTlYMe5UfvTPe4qPsSlGwzjukDjJsV5hJpZ+MbXflLB
         i/5w==
X-Forwarded-Encrypted: i=3; AJvYcCUBsww9TvzmydLPMZaZGckm5nE+ZdN1q16NE7OqW0TyezB1LXwHLimKTVJY92pokmLYn3zm352PbdnXw7/MfAqCLRCm5/zIt5Cr
X-Gm-Message-State: AOJu0Ywr92UM9uAlzYt5RmRMfF7sOT2/+rFAq5iz7dphZYK7X9E9zni2
	1x13BoQh8qiMyc2bLId6vt6F138FqGQikn7RpEI0WGp5GiBSF1qVvEDiWx834CA=
X-Google-Smtp-Source: AGHT+IGLIeWDTPaDj4o+8I7fskbfNP9of9fPyKAGwxhtkXKNB0/Ix24RnsXSVuOTbrNHU8wesOhjrQ==
X-Received: by 2002:a92:c56c:0:b0:368:9913:7ed9 with SMTP id b12-20020a92c56c000000b0036899137ed9mr18135412ilj.18.1712129954780;
        Wed, 03 Apr 2024 00:39:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:3f86:b0:369:c893:4326 with SMTP id
 ds6-20020a056e023f8600b00369c8934326ls1606055ilb.0.-pod-prod-09-us; Wed, 03
 Apr 2024 00:39:14 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVWdoNwpbHgfiCHB5cUULExA7nX4auTrxc7943y513aRCcP48brARUSxWMQxzQQ6d2ulJeGerWfzYg6XqdpDo6x+9K0MBMoyZ+vN7wYkD7BltEXvUo=
X-Received: by 2002:a05:6602:1dc6:b0:7cb:ffe6:b320 with SMTP id hk6-20020a0566021dc600b007cbffe6b320mr15355393iob.5.1712129954052;
        Wed, 03 Apr 2024 00:39:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712129954; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9vlSAth4yqs1DYIfrQgmBPg1exqzpzf9WnaqbtiOr8+H4YF0sNCh+pBWl/Bqtymdh
         zke6NB8sOEqpBCa6tZc4D8ahpU9Kp772aDDIokqJgIjAMcqtkL0+CQ0WRXRFbeJsPDe/
         dyKkD97mOs/1i+QYUW/iMmT9useEXSLCQrLrCrpx1f9g7DGHKnSEsIZ3xJoR6/8LPy3+
         ybnLGCPqTqBe1zShKKisz5T82yBnkBF++D4sTU2RIwim3Fnw7bFDK8zAsJTpDC9HGVOd
         3QwuhCnQ0QTfQo/NgrRe+HrQOYvN15TXoeFvTQUP2+X8lLztnxP3/dQ9NAUyLBJFQgb3
         pnIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=ZPqzJZOnuq2QNb4pBTUI0yQNszq+Lho9zYhbA12KAYQ=;
        fh=5lWv4x+216uw4ASKpPpEtJeS6+EwyFxVU2/QNdmJrGQ=;
        b=kleWICkwveHDRUfShuE6nQgA4vMvrjMbAJ89FQ5AdH2vNu/T9ECpVod7HdSJJs7B8J
         sgJ5wRl3E65NIofk6wMU2GnryGf5BCP/oxd1xCpIznr8iD1Mc04eVbAim9Zrxc8nOxoT
         p2qFrtaIYv0NsZ5TzWOjhLrNtlsY4HulpPqDcaR4uXVwwBpIhZw6lXHM4d5SC9S574w1
         /qVRQkX5bamvIeKPsngI3AHznGMtv3Upm7KgXYTE/dIftD1RnhdG9dnC5isWWUrVTFMx
         jftHhXG7U3O/b8u+eoE1EntT8YBlP9WGbs0otfE3j11acibOnMp7zDnQW3R6sqwo/K3r
         2Xtg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=lTE+GRGv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="a13Nt/0+";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id bb9-20020a056602380900b007d0600bb224si5403395iob.12.2024.04.03.00.39.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2024 00:39:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 4334pSrQ024855;
	Wed, 3 Apr 2024 07:38:54 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x69ncpgqr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 03 Apr 2024 07:38:53 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 43371O68007138;
	Wed, 3 Apr 2024 07:38:53 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3x6968671t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 03 Apr 2024 07:38:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaBjBkv4S8HA97pAVdUW62KrxByDREwbZuA/9Svxh41wQln7kIihajbxM/AiCal/e0kQOOblF2ZnjQelMWWHhca+bKwPu2lWFoqTY8u4Oo8JJLJ79phuil/uxxfqc5/pqN9f8tBnP9Qbx6Lqix5PLB/se0y1qK8TIjvFly3FIHz9ZTmj1+vzkCY6SCfgwzEmEMkcvt9gVRsMRbFwWWpbPfk+YNBNg2FQ6tzlgE7+UHPSXENSN5sqe1Dry/FuKDWC1V++u9Tim3PBapdW9ZjyptpX6igcdV3ubr+ZIIfTscxbxSkniFukDxZeB7ld7ml2pybSM9QT3FfsSFZGeZQS5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPqzJZOnuq2QNb4pBTUI0yQNszq+Lho9zYhbA12KAYQ=;
 b=FYNY1r/6StWVgAAOjyu+pE7LVMxafOlMU5SbZ7IywquLVurlT8E80FByake0vKrejoP7499L12ffUqCZ7bMqenqKiMXkP5O5AFIvbtLQLYCaVPAGtdCZjeV+mgzBrBaOb6iMiZtFW8zPBlr6RW3wD41irKHEZArekmYvD0QuKq0AyrmAw8S3BPgoU63HX9++WS4eup+nPVCNwG2WfdFXLluf3E7nVwbnWO4FLW5SMenvHD7wUGRcXtPAqYpaZjKYi+de48EtDspG21qCvXrspaVI4YnD5wmiqJNXEb8uo4d3nelsYSTRy+KKmqlgXfy3RHnal5czrMtPEYFqUmjK2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by CY8PR10MB6706.namprd10.prod.outlook.com (2603:10b6:930:92::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Wed, 3 Apr
 2024 07:38:49 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.042; Wed, 3 Apr 2024
 07:38:49 +0000
Message-ID: <fd99a58b-37c4-45dd-a738-cd2b49341c70@oracle.com>
Date: Wed, 3 Apr 2024 08:38:42 +0100
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Takashi Sakamoto <o-takashi@sakamocchi.jp>,
        Sathya Prakash <sathya.prakash@broadcom.com>,
        Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
        Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
        "Juergen E. Fischer" <fischer@norbit.de>,
        Xiang Chen <chenxiang66@hisilicon.com>,
        HighPoint Linux Team <linux@highpoint-tech.com>,
        Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie <michael.christie@oracle.com>,
        Jason Yan
 <yanaijie@huawei.com>,
        Kashyap Desai <kashyap.desai@broadcom.com>,
        Sumit Saxena <sumit.saxena@broadcom.com>,
        Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
        Chandrakanth patil <chandrakanth.patil@broadcom.com>,
        Jack Wang <jinpu.wang@cloud.ionos.com>,
        Nilesh Javali <njavali@marvell.com>,
        GR-QLogic-Storage-Upstream@marvell.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
        linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
        MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
        megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
        linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-2-hch@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20240402130645.653507-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P265CA0120.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c6::7) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|CY8PR10MB6706:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gIe1DoJ71pd7XtD20RFqGP0sleR/dUDupLlqqay59RjsXJLJJRE0yty6UjN5Y5YfBXUzy5E3baWSjtmjW80T7CB4JCZFrYR749bdsPsdQN2lyvHguEsVVQz/oGlxrifCAzCxJ9XXtqqBJCE3ASF91obAJ126uwldHAYmTX6cng5SnkYEuHktxONuTihNDtYBIc+6+lTbocDNWNlP/P7g9Vnq07cQNDxDY27lNNGpRnFu1hpJfUtlY0Dv0F9pCcx6JaBmHXKLRZUOGeGm8M/YEvnUba/mzYfVaSSe0YU9p6NtkdIi2h0l3hkb1vucO+HBx+lCzMa240O/rYvc1Jn92D2YeT9UXro4zHU1ncTig8eeUVjGCGGfB2ywLhsbeouMuqG1UHhxDeybqGZPZI2CNAZq21/NOrA+HF8DQY38H5B6Slcpm2AmZB7ptJARMqxNPD/SzqmfPx4X/El9EDXxzg/lcGi2IjO1K/7E09fQvlXZenIAt/FU0hO7/JmcMKpqJ65WEgdejrrtd7xnTzxyOHNJrKLCMkzNWHYpVVWFb+2nlWPRXZlt5DsyWUWfWrKk1Rc3G9Jh/6J0POb7RqPJoEteuNdf74W7HPvMGVjhi6oP5/lNTgWS82EA4wqa7qe8RjlvD/lYiJlrmQxuiVfPQLRowAQk4c9LN16wUo5Jv2I=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(7416005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tzh1UEwwZHhQT2pEdUoxMGMvYnNYTDUwNjhMbDg3dzRKbTV2eUtUQW43Mkto?=
 =?utf-8?B?QmFIM3VWY1BNSGt6UzFnZFF4blI2dzAwYVRvcU9ONXNZVm13M2thb3BEWERz?=
 =?utf-8?B?VVMvWDh0OWdKaVQ1OG5JNVV0cHc1a1NvQS9XOVRlaE1RMVc5c1lra1VORHdB?=
 =?utf-8?B?VjNEeUZXNHdvOTREcGI1SzVrcXNEbmE1QTZnaEpvRTFIY2szUFI0cDQ0NFRh?=
 =?utf-8?B?Q0ZWTnFoa1lOeG1CWU1PRXAvaTFMMjNMeFR6UmlIc2hHOE80d2xjTDRKY2FY?=
 =?utf-8?B?MUh0SUx0bkJOQjZZWFVtdHo1Y1BOSUxqTFNOQjkwWkFCMnk5eDM4VWl6N0FM?=
 =?utf-8?B?a3A4d2lBYWRHazdYU05WZjFNMThWS3ZsZFlwUU94S2gzQ21MTTdrVERwbXBC?=
 =?utf-8?B?ZjBWRWxqUWtOYkZPdkk3bEVXUkNEMG0ybFY5OUVmNWkrMkE5cGszaWdzM2RP?=
 =?utf-8?B?bnRwcWkvODk1WFZkQ2NVVE8veHZ4K3Vvejd3K09qZTgzd0Q4ZGdRSWFvNkxl?=
 =?utf-8?B?Tkw1Mm5RZmtCVUVUUmMxU0dpb2xxNzBPRnIrOXB3SlJObWQvZ1ZTY0hhaEY5?=
 =?utf-8?B?cmFYQ2VwYWV4cGowV1FhNkVZNXdMWk9Ba3JEVlp6Q3lkald4ZC9BQy9xdGdY?=
 =?utf-8?B?OHhITXVDaVpDcGhndENlKzRKRzY3YzRwUW1kMnJmMjJ5b0hVV0ZENmloTDF0?=
 =?utf-8?B?TG9tSGQyeExSeXBha0dibkYvTWw5dnc1eVJOZnVnMEd1ZEhHTDdQQllVYVZW?=
 =?utf-8?B?MWFwS3o1SDFWbE9ySXVobnVjTEdXN1JsNHBxVEwwZVJLREFxR0dWTS95cU5B?=
 =?utf-8?B?VmQ0bCs5U1lzZXVsTERrTjc5dzcvSVZIcFFYaTZUTmhudlBjU2FnWnB1NXJz?=
 =?utf-8?B?U1dNRU9obmEveEdxOGNqOWNhQk5VaXFhNFUzZHVwaUdOMXlmbGsyb3pzaUd3?=
 =?utf-8?B?UXRtYjNqQmFEa3hqRkgrZlh1ZWk5cXkyKytFYk5uQXNFR2lwRjJnSDhqcFBU?=
 =?utf-8?B?M3IvN256YVAwRGl4bTladDYwd3pzdytXUldneU9nV1Avb1dGUzRDMytudVVT?=
 =?utf-8?B?WHV5cnRmaFNRMHNXb0pVYWpoTXRVRzJvN3IrY0Y3Y0w5LzQxR1BIODFYRWxU?=
 =?utf-8?B?SHh0VWJES1N2ZkhUSytEc3pMSXQ4Sjl1MzMyK0RxOUozMDRQQy9SVFpQSFRi?=
 =?utf-8?B?a3M0akxoZjlwU2szL2g4NnJTUjUxcHNPWjNndERmZi9DakhPMDRUNTFVRktZ?=
 =?utf-8?B?SDVMaTR1Vk82Q2s1dFM5ZjF0bXN5NkxTUmxzaXRFNko0dkg1bzRSY21MZGVl?=
 =?utf-8?B?Rk9TQWg2UzFRTDJ2amZ1ZEk3aTB1NC9oaEZiTTJoUFcwUUlkdVM4RCsxb2dx?=
 =?utf-8?B?UVlvVWY0ZWFqUVBjUTV6WnRpazc0Q0EyTW9pUnUrc2JETjNWTS9wU0FFdTFZ?=
 =?utf-8?B?bHQzTXdRMHBPQzhaRUJZeHRsUThRbi9MU3RBV1Q0eHpSS1lTeXdqU1hsbzNk?=
 =?utf-8?B?dnRKeUIyRFpOZHBSd0l3TWdDd0JQVk1WelJINTVLOW55TjlHV1ZLNG1Ha2t4?=
 =?utf-8?B?SzRoSnBGWmpvUm5QdXpzeDRqdExMcklOeFQySXN0OG41TWowT2tZdzE0bjNE?=
 =?utf-8?B?YlV4NGlvWDQ4RVJ6NHBtR3lGbWRtZDhxZDcybWVkZ3F6T3NVdk5BSmp0QjJy?=
 =?utf-8?B?MXNUczNmVlR3MUhPUEJ4VENKNUlDQSs0TTNqd2JQMEFia1JGb0E4VThsS0dy?=
 =?utf-8?B?TUZxYm9ra3c5d1hLM0hDQzNuY2d2NklueWE4TjNDRW9GQjUrbWRMWVc5SzQ0?=
 =?utf-8?B?MmRjdUxjZXkxTW9OUjBpT3NlcDcwblY3ZlJUNWNrdWg2cGVhVG12MnZtVmtK?=
 =?utf-8?B?MXljN3FVYjdyWlhsREZJS2VNdGpYRUxFWTJMazRYY0RFUXlwdHhHWW1qejlq?=
 =?utf-8?B?YXhOUHNwc3hibTdoOWtDNkVzckJibzRaQTJxSTA3R24yclRMM3hDM2tRUlRi?=
 =?utf-8?B?azRnaHpTL0ZDMXVMY1NSYXdXZG1ZZTh5TjRFVkorNnpSU2t4bWVrSHU2cUN2?=
 =?utf-8?B?eER1ZDJIQVdnamNWOEsxZEtsSmhjV3dMUTgwWFRCRjkzVHkveEM4akVLWElX?=
 =?utf-8?Q?q8lW+GsDtl+/yrfxAKAym2hoB?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ZhqnB0XSLscIMRlkuG07aivicyLDuHW8nDgrHB19PNAq/h0z8i1gHjoXad1ZqrOjJNdVUZ46P3PgseuKOviV3QCTE21CA2No5fqAGoLvTf282BlN+4nlvpjYgfEJjMwGalqy+FGG+5Ji3sj7Zf1jLLr7kdXjmzzOSQjAqyRHRGkSyMRSVFD+942rKZ2+RUOr3kT7/1nyyCgm38VD/6+7w03PuSlGgIRQvYPIKKeYMX8+dfjvhcgQ2jbayDz3K6QcFkgBfXxDfYENR5UfaLJyGAGUDdcr0Dfj4iEIdNFyopFfkHxmAtQuiVwvNDt1pcBPhusR2dsR+RWKeFcN4NdSqZjJLnCzbX5CuJrvhF6JHnnwkYR67tllb+1QZVhFfOUB1hAlD9AWMDa0Bpw1Dvr4PZDGQAZTIGR0jOne6r8nVlvjGs3gh7B31UyVUdn4N9iffsXLB4WcNWg2CInP9XLmiC5QGyOG7Y8xPhDoqbr2RpRbzuAtKTWbeTyhgpSHH5rqL1b5Fl4Lv7DBkBobr6rTyXJSw68g+fjazILX9oLIXDDC05E2Uab20zazPHFMh498oQbuhWow7xJIUA2FZkzn8zIBLFi1KrdMVhWS1VeXvaI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af70410b-6bf7-417a-1e87-08dc53b11a2e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 07:38:49.5906
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kWVZx1FtANzoX/yQcBuPLJcqKkahXi6EKwqOIabhUFlHgs4FiF0aTmePengz/ikezjdAs8OrFZSzWni/6L9GSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6706
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-03_06,2024-04-01_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2404030051
X-Proofpoint-GUID: ebuKG2HGVHhqQqfRgRcMV8p5lrdt-qD0
X-Proofpoint-ORIG-GUID: ebuKG2HGVHhqQqfRgRcMV8p5lrdt-qD0
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=lTE+GRGv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="a13Nt/0+";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
X-Original-From: John Garry <john.g.garry@oracle.com>
Reply-To: John Garry <john.g.garry@oracle.com>
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

On 02/04/2024 14:06, Christoph Hellwig wrote:
> Drivers might have to perform complex actions to determine queue limits,
> and those might fail.  Add a helper to cancel a queue limit update
> that can be called in those cases.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/linux/blkdev.h | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index c3e8f7cf96be9e..ded7f66dc4b964 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -892,6 +892,19 @@ int queue_limits_commit_update(struct request_queue *q,
>   		struct queue_limits *lim);
>   int queue_limits_set(struct request_queue *q, struct queue_limits *lim);
>   
> +/**
> + * queue_limits_cancel_update - cancel an atomic update of queue limits
> + * @q:		queue to update
> + *
> + * This functions cancels an atomic update of the queue limits started by
> + * queue_limits_start_update() and should be used when an error occurs after
> + * starting update.
> + */
> +static inline void queue_limits_cancel_update(struct request_queue *q)

Just curious, why no __releases() annotation, like what we have in 
queue_limits_commit_update()?

> +{
> +	mutex_unlock(&q->limits_lock);
> +}
> +
>   /*
>    * Access functions for manipulating queue properties
>    */

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/fd99a58b-37c4-45dd-a738-cd2b49341c70%40oracle.com.
