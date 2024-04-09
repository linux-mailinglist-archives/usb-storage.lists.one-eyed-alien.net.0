Return-Path: <usb-storage+bncBDVIJONZ3YDRBTG52KYAMGQEKJ6FNGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C6589D092
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 04:58:22 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-dcbfe1a42a4sf8554685276.2
        for <lists+usb-storage@lfdr.de>; Mon, 08 Apr 2024 19:58:22 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712631500; cv=pass;
        d=google.com; s=arc-20160816;
        b=EjpytcXyuhrNpCW7m2TtYm/o0E3QxAjQ8OQ4HhV0DzUIp3i/Vtav6zj6rhsx8PHb/1
         +6vJxdKEQ+wndFTCqK5PUKAcKS1N/uiQZ9TceHyBSHTlv/cnm/Gu7UpSNnzeDj90kIgw
         iu8Hyen+6Tm+xx+gI/UF1x63ZzoDLNRy68eoyYqESFF9/rzyZZMC9BxPJDwFwjZyQhFo
         oztuiv6XNKKyggPHbvitNSPIWO3XRYbk3ARLPp2FU68orJyGXMDeLrc26TyG9tTLGqfc
         6f0TMqUflIRq8dueYZ3nK+nEU08iXKWJHovwYDAOMdvinOecZKsDt/LsrsNAJG6l9JBx
         gCoA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:date
         :references:message-id:organization:in-reply-to:from:subject:cc:to
         :dkim-signature;
        bh=nm5dZhq/b2h2fQEdx2Z8tBUm46Z+f36AmIeh4VCUhUY=;
        fh=idXNrQmcyXzk4HpN/eNPlXPKT92cYjFim3SxrjYbcXg=;
        b=CWLm+KklSgOoyPJD4LIVnGl0cWPAsOFBBle6xxQ5BV6bixWd9yseYxA8XZbIVXsteW
         1X/d+RjDoSxvHs8u5+2vs7GTdnO4o5qz0KonwlqBBZB5n+UhSMe8W0ctNEXn0g664FsK
         U5dXxqOC9lGqaRX3vxSONDsyKNemV7/74oJYifHnlKgknT+lkwUkGTbgGc8/hJFS+8fQ
         Pp5sWD2sFu8uwonWkAlsTzHr/gdqlkdinaS1jeX1EOA1srKXN00SFqh9mOx9QK5L4SUv
         HrPXAsSAejNaX5K/qRPqjZbpRwfC1uIwykn48KzPrQNEf4/9e+7p3BwxLYL4Frl+Euax
         hQ+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=eocXQbk1;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=fAscA4ge;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712631500; x=1713236300; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:from:to:cc:subject:date:message-id:reply-to;
        bh=nm5dZhq/b2h2fQEdx2Z8tBUm46Z+f36AmIeh4VCUhUY=;
        b=X9rF3d7ZPyAzz8ofvRSunkIaEO6NLAEA+ENW1mAkfmAq4Td8Va/pYA9Pqzdv3GWar6
         IQKOOoe1qgia+UFEGmzju0lvDdDl79Z3BvIQx8wD6JM72lbQcCebeaMNPaA6mQunAxEd
         haeQBvFpGSlW1DlJgNl2z0E4ByMMcikY/rbBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712631500; x=1713236300;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nm5dZhq/b2h2fQEdx2Z8tBUm46Z+f36AmIeh4VCUhUY=;
        b=rHUznIr+6BorRhnOm0TdcAzsLuBqjLovkUtSbnTCEYFD20Ej6Q7MMHG/yigv8cLVxa
         un4SD0ffyL/0va7iOwzA9Y7KMXRuHu5oo8vVsBbXmpQPP2dOoc3uyai5imIpeuhfkh+t
         9xKTHUoaIQFmB5uk4U+JABK31XzweLrD8T/CUN6IQECuVUj5D74kKiLENBCVBJgj/nWr
         c9dXTJP1FbYLXgXqSRa/u15GIv5EAOBRAoclYp+2rA6dM4tYtr1ySC9UPIyqMes4a2Su
         6SoOPFP13XTYlXFVP15HLzzeH2mu8c0rSXIN1tlrZzcvsswSzPTCDj0lDCOs8cxBgU8F
         uc+Q==
X-Forwarded-Encrypted: i=3; AJvYcCXeKiIP89ZbgsX/fB/dEwBxhrgaTqEcRsq/TvoYNPw/IICKgiSlQ7SnMTDuyBfdBQgSxccNHVqgJeVjSh14MlUbcwEb0jOHQWU5
X-Gm-Message-State: AOJu0YzODMtZ37Awb1yFSHkkvqpaBDlYRftYpKdWmR2KS7Ao0zBtErqO
	C5kzc5LppQehgtzyrb2/nnbic1/zb2Aa8IEHTcSpeH1GQnEuQRtxNXkJ66nK+3c=
X-Google-Smtp-Source: AGHT+IFBrbGIuqH6ahbtPOBzrlExkJdNGOhiK3LeLOuej+5VeuU4w0cCVe0MIBdqtN4zmzfrdkuPHA==
X-Received: by 2002:a25:ab67:0:b0:dc6:57d0:ac9 with SMTP id u94-20020a25ab67000000b00dc657d00ac9mr8860201ybi.6.1712631500600;
        Mon, 08 Apr 2024 19:58:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:750b:0:b0:dcb:f35a:afeb with SMTP id q11-20020a25750b000000b00dcbf35aafebls1809677ybc.2.-pod-prod-06-us;
 Mon, 08 Apr 2024 19:58:19 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVo/YAwwu/LQlNrtow3ik7Qa276sYuM4ItiFQ35hdFuenlxWA3izTPmFJwzXFKHxWnGHXs/PW3/OH9WdkIzq9BWsnTDrj1LG2jT8ieoYaTBa3Oe+lA=
X-Received: by 2002:a05:6902:4e1:b0:de0:de85:e388 with SMTP id w1-20020a05690204e100b00de0de85e388mr5878804ybs.24.1712631499421;
        Mon, 08 Apr 2024 19:58:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712631499; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jw9wQ22dJ+ko0aK06/KyZfYmKBrcIm8nHLoqe5/tQv54OHZBCXmzHHLfQDDHhDqqWZ
         akKKhTkdAuDsusbESSuw2ufk5eTs30O+NRuBqzIn+bQDTNDUfrMual0AcSmrl6MP28yk
         dfxk3ezExRi1yMc7KsFyVp3e1zgNXqgG3oK0dsKWNu+QoGVOo3mKR3fk58PRVu/SxY3M
         +bRtw6/IqSUC3N40USpytirD6nt/+1Z29SXB5ALdVloqfqyvzmD+QXHACkTRq5BJJcRH
         386z35tlwfC0toKvOM/KH85aXTB/Z6ApWPru1xpJlD3hLqZeODkHrAd7cvZTMl5ifSKD
         lsRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:references:message-id:organization:in-reply-to
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=5J1UBsxgGIEx7dcEv7FXYoe35liVY3DBMvQZeXkmQLI=;
        fh=q0vZzivYPjVX1CSS6Wuyn57oesQryEYdOrrCGGXIiaU=;
        b=Z0zLFMYNWXnE+ZKvRTf9xUZ2tqN5a8Y0rBtvuu0xn4Wm7uTr+zWkHwa8unpqoO8XuC
         0VIeld3+R1wcBxSi3D0d9uaNjM/dmEjV1LnAh+olLI3vlXqy770d8hMs9uB7fWlN1ohp
         DDYRadLYrLmtVmPEw/RZpikW7ZUmggDQ4R5zokWAPXqtmM/Z1W4KhTrazA5Ya9xPVyX0
         zlQxmIo2QO2xVKCxWrhxrfSTsRLzjnys2WXFQX4k2Ec38ZARwY5plV2K0BRP2DyGzyCk
         WF0oTa3x5hf9PwQFijHPIvE/cG/lw5JIx/0X+nQs9Km/NwHHWTJXd4yvH6Wr1xogK+vL
         NdXw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=eocXQbk1;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=fAscA4ge;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id k10-20020a25b34a000000b00dd17299add1si3807870ybg.731.2024.04.08.19.58.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Apr 2024 19:58:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 438Lmwlf018610;
	Tue, 9 Apr 2024 02:57:51 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xaw6445n5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 09 Apr 2024 02:57:51 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 4391AD0C003080;
	Tue, 9 Apr 2024 02:57:50 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3xavuchhem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 09 Apr 2024 02:57:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M8HyM4gZG5CRpEjHMJJvhpH0S1n1HbqezXZ27qP1tOQvM7XkqA9LbLgzJ3AkoWSGramR78UqyUr7iwTadyoUOlges5laMU8kWa9CuY2NxvM8ZATcsW+W4DgrAzLySGEqkSfJ/sqMydM3mC73Bhp7P+eyE6qV6Vk81vQ6W4gjanlEv7AOORBwsY7NciP9SvoSCNzNW/paZBUCDhznXJB3d9ggDXpPMjqoHWL+TA4WHnwQ5qLnU/Vn2/7GWmZGufnY4esuSnViXme342c82Kb8m6GT4YXF5FZQpv+kID5wvrXUexWpKa8Q8iFs1GasEk1WxF4qZXhy9uhAVNj13H83LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5J1UBsxgGIEx7dcEv7FXYoe35liVY3DBMvQZeXkmQLI=;
 b=n4CvGIHM/VZtigvdrmpPHj/qHwaHTm36vw+9FG4JYTVj5uJoDVymofNyt3gIfUWe0rqQ2vqeuKsRFC66W9gZxOGdcdLCmS7bWdW4b6uG6mLKVTkLFAFIC5qwDsSKg8XSJ8A1qBY3MlaHOrXauA6PO+cLdnJOCxuP1LmRXh4Jk8Ls6l31hKxVY3n/G4siNjw+CzTAGWLh2uHJpO8OwhiXySbiYkphTQ+9ahobZoPhEcI2SbTEMWHL2GbNoZj/achyBmdriBJ9Pj6DkOk5HPOaJvD9LdKqyVHRJXriUICMxy5GZOl1UZsK+QEkHmZiKFv/iVCi9HxtWMNqomaAoU00yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by SA2PR10MB4746.namprd10.prod.outlook.com (2603:10b6:806:11c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 02:57:47 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::7856:8db7:c1f6:fc59]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::7856:8db7:c1f6:fc59%4]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 02:57:47 +0000
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
        "Martin K. Petersen"
 <martin.petersen@oracle.com>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Takashi Sakamoto
 <o-takashi@sakamocchi.jp>,
        Sathya Prakash <sathya.prakash@broadcom.com>,
        Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
        Suganath Prabu Subramani
 <suganath-prabu.subramani@broadcom.com>,
        "Juergen E. Fischer"
 <fischer@norbit.de>,
        Xiang Chen <chenxiang66@hisilicon.com>,
        HighPoint
 Linux Team <linux@highpoint-tech.com>,
        Tyrel Datwyler
 <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
        Lee Duncan
 <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie
 <michael.christie@oracle.com>,
        John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
        Kashyap Desai
 <kashyap.desai@broadcom.com>,
        Sumit Saxena <sumit.saxena@broadcom.com>,
        Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
        Chandrakanth
 patil <chandrakanth.patil@broadcom.com>,
        Jack Wang
 <jinpu.wang@cloud.ionos.com>,
        Nilesh Javali <njavali@marvell.com>,
        GR-QLogic-Storage-Upstream@marvell.com,
        Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alan Stern
 <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
        linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
        MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
        megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
        linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: convert SCSI to atomic queue limits, part 1 (v2)
From: "'Martin K. Petersen' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240402130645.653507-1-hch@lst.de> (Christoph Hellwig's message
	of "Tue, 2 Apr 2024 15:06:22 +0200")
Organization: Oracle Corporation
Message-ID: <yq1jzl7nt40.fsf@ca-mkp.ca.oracle.com>
References: <20240402130645.653507-1-hch@lst.de>
Date: Mon, 08 Apr 2024 22:57:46 -0400
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MN2PR14CA0002.namprd14.prod.outlook.com
 (2603:10b6:208:23e::7) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|SA2PR10MB4746:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eDp3IBdSTZ4O1zNFmFDtDSqtDXsHXTMRtQIvQlW8F5NH1m8MZDQ3BxrJOQ2Z9eH+yF6qTcB4nToEFTTRw8M54xxAwoJKiekNaYRQi2oN73m+u5r7zvQNJpl7cIX2nTCcxaMJWsD++xaAgIKXVmpeJ25zyjgSb4UioZ2V0S86qyINXO0VjeXUCgh1yt6H8D6+AbjXn6hGlFMcKsyF7YXZPZqcGhXkG593/dmVxh20tYmzcpQiVwbIRWKB8eMo2tiriqWvOqCjAG2++WaDiuJttKM8oNEynwujuzA35/cp0DPtyM2oZdklKIKzkipULdjlFmowf5tSOXq0Fqh4e3AGOh+YWIeMBKWvd2FdttmiyPJYTrkPrFl4MZVO2WhoYcFXY0OKWo7DiYBtEJDjeKZTG4nPuC+/VO2AUZpAYKGF9gh+7lGAJ3HsTDx0Yw7QqYdWdK81NpvnLctqcG5ZMd+UcLqE6fAKCMDYUFca00gBg1fuov3pOBeChQdyaSQukAnMg+SMXacEaGBRKVRaDhZofu+2tt9dzVGp55/yseHG2lmFbDujyepSa+NXxra8TtlP2pmvMtIeGsFGklSfuiVJOp4QLgqpDfvtMjZHrvZSPD+CLS64VHTLCcXRr+SQDrHZEzcW99NffvZPYBF08qIUjyPTh8FxXthOEnVrAne1ta4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(7416005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8sroKBFLira5qRZt862V1katRD01G+TGH045+mvkY8P+qwqbVd1+LibYz+uf?=
 =?us-ascii?Q?2sCPwJCiWne02qaRQSJqxAMQyQRSPPgSBrKUAhP7QzNEtBaCunsPxDy5MO3W?=
 =?us-ascii?Q?CEbjWB/M5Wjr+tp08xSZXGynlwVJYKR++sq6buQTk8ftC9FaKWXpy7iW5GOM?=
 =?us-ascii?Q?jG8U5a9ghrjW2IaOJ6r3yg2FZQ8q7dW61a0GJZk4ZASNsVr4Yn5FdCqxzadF?=
 =?us-ascii?Q?0uAGLZfJpBoS7wurl+r4SHcXL91wZRW6WFlDPmW3RfhGRnyv2+e2OqcLbLOS?=
 =?us-ascii?Q?yPC9lPhczqBfLaPO5HrHzVGy5DuGUxvB/LHUtNLkwqSYVlaDYOnW14xgopVJ?=
 =?us-ascii?Q?DzVs1FvR2tbB3NA8eL+YLz+s3hIVTwwm6TXCVW8jwVQrj8VO/gsQkFa8jkQY?=
 =?us-ascii?Q?ADKHC8pFYmnGbits0F7efQgD8T7TKe3+HYz0bjJxgs3RwkiQWQH+jXpC6drO?=
 =?us-ascii?Q?CAO0pKnf/5PvTERTnMqVPWexF0P2qUrlK4Z9B7Pp7CRypI94mVI0YGLuaYWl?=
 =?us-ascii?Q?AP5ZCF+fSJGn2ahZuEFuF16xBoIaSKp/SIEx1afDupGC0dycvG2ahCGzC9SY?=
 =?us-ascii?Q?hxXixeDCkpp2+G7B/hXbBDKtQtWBW5TqfqfMfznxiYUIurng8yDPoyJQbb8f?=
 =?us-ascii?Q?8YkbL5gqqrNZ4VT6grLrl+rBvMxWFjJqiT8FlER9jVOEU0epo9aGhkv1DPHn?=
 =?us-ascii?Q?XYrLB5rR6+3SXD8JMrAF606cZd8KOwxmLMxIXZ/28pz+heQdG9sbx4fkZUah?=
 =?us-ascii?Q?YOwlQcdgRKQo2ae0bnuBf35f8CXmN/g67sYY7RY6b9zvvwAJMEjMelscdfVF?=
 =?us-ascii?Q?9WhmqAyssfQkBTU0j2cJAxRsAI4A3jdTCY6eq5uEVpWfNX7NhQYoaNDUeTnX?=
 =?us-ascii?Q?Ba51r+vzu4gusgSDO1piQKuM+zf8vzEG7K+QsxDVEq2WA46RLLycU9mzE7lB?=
 =?us-ascii?Q?73CQiMix/Xr1QU3HB6Tl5MYN2c3XmN3PKQqiDHnSqpZh0uvpOBf2clVt4PlI?=
 =?us-ascii?Q?ArbPxwteeHZm8PQnAD+MQDBAHBmRlKqriaT4OcJPo+3alUNM1mfMTIACqfwh?=
 =?us-ascii?Q?/V5E+N1xUL2qrIMpMMdDv/WS+KzvoxEQXRG2CZV6PIOH2z2aTHOgzxltzEWd?=
 =?us-ascii?Q?HOqSGHvAbFpGGX5oC76cL6TASUyhRTHtHyNNUq2NFX5ZdLDxaYt+JSfL5Yp9?=
 =?us-ascii?Q?cIig7xhIpIBYFFHm7F3ujLN4iktbBbYL5jdxZG7bxXudF4J54Qh1Up7U4djy?=
 =?us-ascii?Q?h6pkCRuutOZekfUMfmI+JeyxE86u6b/M9B9+BDE834OC82hR0XBIyV/yuPcj?=
 =?us-ascii?Q?Ia9ofI/jglQmw4d8I0upV9FLoftV6cPKoNRORn38FQHD7U55wjVgMRkQkwwM?=
 =?us-ascii?Q?EbiQNPLre642Fw0yZrpE81V9fP7Q7B/og1yEscCfZRK8Hu+sT07rPn6YJsba?=
 =?us-ascii?Q?ILU5ir/IP+Sdk5SC9qgAfkiUzkIVAgSnY6juuO+mIE1dvwoyjmERPtslXjrL?=
 =?us-ascii?Q?jC1k9V0MuiNGGmfZNTURBy8XkZ69rBo8J8P7G9IRryx8BA0hB3L54UxvRq2Z?=
 =?us-ascii?Q?T9MqYAJj8ofwA6an2XAbdDIYVKIy6VZSq4y8iU9LCVlL82QasOhm6cUfhG3o?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: kB6OeUYw18TH24dYq1FxPX+oa6IxMXuQEZvAXEwmJBf8eMS/Pd5c4HVbN1H9c28bJs1v5k0V4EnKK3wrS6+FU9pBH6hc2nmYKKLVpAbyCusACMwCR2BZXQELv66EbyEFGOxAh6UAGkKNOKu1pLemaXJbOTmXfy/1aW12eb/qTnsalWV/3CQbDcCtNsr3OWs+mDrjaB7YZsZdzDLAJ0dV58aM23kmxpFwpa9Y/g5sfip4Bdn7ASYgxRzc2DsO/kXdOYbR8X4IoVH4JWTGx0QWew9Tcb+YE/56xWX7nYyVEXs0wB7t193TBpz3eT0TNV+f9xdYkKXCdBHzBSqbY80SqVzJ7Rck+hENKzGqTykPOBtD2IfUVJZbHfRtpofMhVXnx+IF/loi1GfI9UsyGLd4hh8X3Q/CkoPBFVJnfIOKzzU1C61FOLj63fPSoCsraEwZW3+xXjVKbO/MDyxocORRAVqCnF2f9BmRkf31IVRI7N7H7USwUFVUqVJ+UZbYv+jKqfjqQ+5WuGTvl5aXR27DFtCkG5i9BhvBeFIwqL43KZiGkLTupe/JTJ5GHcrgmQ/QxfG5ohu0qjxfBvPr6KKoRrljgYP1ERWgRPXgtUt1kXg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a8edd04-4bb6-4fc9-f5b7-08dc5840d645
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 02:57:47.7473
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2HX3g3+kYQeWVeWktTeHHuUVsP4FjnAK7U42pLYxfhfi4TOIbn0RXO/KI+IURuWgSAamdQgmcsIe0ZHhUvjpnN2eItqyOv1b+Wa7VpjveCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4746
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-08_19,2024-04-05_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404090016
X-Proofpoint-GUID: OMDxbmlyocRiOzJr0eCa1xEcODEqiHzl
X-Proofpoint-ORIG-GUID: OMDxbmlyocRiOzJr0eCa1xEcODEqiHzl
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=eocXQbk1;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=fAscA4ge;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
X-Original-From: "Martin K. Petersen" <martin.petersen@oracle.com>
Reply-To: "Martin K. Petersen" <martin.petersen@oracle.com>
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


Hi Christoph!

> this series converts the SCSI midlayer and LLDDs to use atomic queue
> limits API. It is pretty straight forward, except for the mpt3mr
> driver which does really weird and probably already broken things by
> setting limits from unlocked device iteration callbacks.

There are a bunch of conflicts as a result of the libsas template
series. Please rebase, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1jzl7nt40.fsf%40ca-mkp.ca.oracle.com.
