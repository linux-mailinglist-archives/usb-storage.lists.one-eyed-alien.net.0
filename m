Return-Path: <usb-storage+bncBCD73EGVUMBRB2W5SCYAMGQEVGDYF2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id CD86788E652
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 15:36:27 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-366b97b571csf67752005ab.3
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 07:36:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711550186; cv=pass;
        d=google.com; s=arc-20160816;
        b=VXZM3ZNYhA+Rto18+WBCApZukpSIE8MnKLnP4/IbPrxSdJ4WnOd/VvRYFMmkzGFTHr
         RBjQczhuour4fv9jyxhmXAKjVy5zeoL8HdmNleVtw4ZSM9XxfCfOK9f4RlAGoLB0ef+X
         7KG9CxFZWLjqPm2U5xhQh4wMJ4b1CiPbBGARbcY4pWmg5v9jkhAWbxG13fg082u15Ieh
         LV7720+qKIzZSwiXMZ6Z5Nd7qtHftqfFm/CIVFnUtniub6ga5hHEkk4jRCwQ+4/f0WGs
         uUDsbAVju4SQ7nOYxUbxRcfNLTBpINlWJ4t0XH0cLOdkQgiv8hxAij32TYSbJ5lNIzTX
         +kPA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:dkim-signature;
        bh=Me5YFr9zKCQBzvcvTVA0b5joUuA+0loZ4D0cDcDWnDg=;
        fh=ggp8nN5Yb1oiMThq+6vOtCbNbdetjXwWD9D7v9i7JzY=;
        b=PQkO23zu6DJsJTJHOQqVITvtfu6TJAHlOYFWKOtiBv/Bg2IhyH/SPTubCypXu29xgm
         dD6e0IOJYCU27yXQpB4aIHOi61pNVl+fUvjSkWGgYlj/lRBet62ck0Ljs3Fj1MyWb4Te
         VYMcqPusO/xaxJRGSHSTZMudlJIY0fYphk0exCuRYS69C+nLCePyZwAhQuRlTeA1wpu4
         oBg4J5JfmNL9X7RG4Tm1gZ4SjhS1FowDb8y4DgP6wwInNXR35DBxeafuQlFgbpq28Ihr
         ljf21H4I1+/lzqIsw0g8mcMcWNRHf0NiQCAbaQ6oXa3Kn/AGB/3rky30ZzwneyKmJExa
         UtNA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=GgXEEorn;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Xc9HKzt+;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711550186; x=1712154986; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Me5YFr9zKCQBzvcvTVA0b5joUuA+0loZ4D0cDcDWnDg=;
        b=Jg0gh2aeOWU7zPp1nbhvU2+1YSYgQzFN4hDNPMoce3zCZ3bDi2paoeSmOaw+6idXu7
         eI6I8irQWybdLX3n2bjOY1NOremTspLR+7WepeKlOWHL5AEDALSyKkRcsidG+i6UlISn
         B6BmCYCQ82l6SyOaYiP2lMTnQcFEjQXaHosoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711550186; x=1712154986;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Me5YFr9zKCQBzvcvTVA0b5joUuA+0loZ4D0cDcDWnDg=;
        b=AM+eHzdnmnURy03Xm2tmgB6TSnOqtN71hFplGTdBqta34h2dVOPWLATkH1t622yMmX
         w7bn0H0fMUE9aUEAfhRStVJDwyh21FvABzKiKoG+cq8n57SUO1va3qbufO1dybETmhVz
         kSWMyxgNc/EilxGMXrSfbfuvRUWND8GiMcbUgcZt+/eoinSyZELHMwSSgHHTV3wWlMfE
         w/jlGaEZnByI/L21oh0fxwgP3FTpxecA8h0DL/9ktcFNAR9oBUxAYiMKacm5WGMNrrSI
         psMJXYr92qdG5BulOo2JkaHxJW3LnlXymPGXt/QJRI/N1ZJn8DjHDw0IVuX9PXqjS5VX
         9++g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCXMkNI+beAFR5ADGLYtpA1/b0ftL32KVMBEPYDJFJaFSs7Z3ENsfRtcVbY7mfeITNbgII09Qm+Xa3YlhTKj3EHfgDdeVo0OY3se
X-Gm-Message-State: AOJu0YxIsGyjujvjwSuwfl3SceqMOiVjQT7yADt6mcHv1/uR0KcyrHqG
	Dmwe/2IXI4twF6nJyfIBheqqnZjyof81Um/TTxfOZzRH5woQofHyOz3tGkgeMfM=
X-Google-Smtp-Source: AGHT+IE8UqiDD2W/olcOjFH2Ukxb/G+pgKMD5YphXACiRK1CRdRAu16WMZDWj2Vdd/DjmV5A1R/zHg==
X-Received: by 2002:a92:d5ce:0:b0:366:ab6f:f6a with SMTP id d14-20020a92d5ce000000b00366ab6f0f6amr110328ilq.24.1711550186317;
        Wed, 27 Mar 2024 07:36:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:168f:b0:368:8695:d74c with SMTP id
 f15-20020a056e02168f00b003688695d74cls2611056ila.1.-pod-prod-08-us; Wed, 27
 Mar 2024 07:36:25 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWAppRwAcN90Vstgj1i2IeWgjmDMg5fEK81NBvQ35TQQ72RPiJGIlroFdUCD82zFMLhr90vPoZc9dpcE+m6/4yjHqP4seggjzf6ZeyMEOIXV/KCTAA=
X-Received: by 2002:a92:c083:0:b0:366:b889:4a90 with SMTP id h3-20020a92c083000000b00366b8894a90mr146106ile.4.1711550185442;
        Wed, 27 Mar 2024 07:36:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711550185; cv=pass;
        d=google.com; s=arc-20160816;
        b=R9kVC/W7hjZ+0gvHMAmIV2rCrBin6Ct0HWnSmgblCj87CyAOgGJiqoHwfQpp0qEE+m
         gTEmMRhBjXTb4ktzps8tcjIgLYugE4PCEUmoyrOJMhE3HYHVXo7uS3IdBqe8Ve4e1qt4
         0/CIH5zCN6sWW+9THlu/I0Bn2vdaM6WQvANkHuRhjKYU0pLcJLk/7pAu1jdZl3ZiAdRo
         m6TJELIdSHpOUq/DDemc2To48odXqGgbcZG1UpUwlKFY01TxiBmHE6eKbncEyoOIKJsA
         LZxi2Lebmbrz4MsdHACxphRul9B6EpbSjjC9FUT9lAKTDwbkepMsWGb9mgJqY+2tK8Mc
         3NKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=Hujlwld9cT5wVYaLh4UjECYAF6EW2ELaDsxYLF+oUHo=;
        fh=qzNRNGvGDUykVC6j2/B4suc0ASzZpUEXc57dytsAsvs=;
        b=rH5TLvrbEx6l6GUFFvb/+LzhMkI0UAX4z00QfbBFNqPY14VHzFnGchX4/cU5D9rPZ7
         mxEwsHNtm9WqXG/I08OVODHImUUckOiMGTj+BjDZt4ccHvtESQVEMUreAVGL/UfLoZAy
         7VSkzpJVDkRKLNrYGCVQrfAi8IUHiChG7yFvnKM47wtjNunnpRvnIKn0hJc1qmLSB+zp
         QJnzrqRvHnOBV8BFHKw1pcGIDthAJ7Ry4l1kV4CeYj9hLVwV165Cyzxz/14CgBvt4FRy
         PGBEMcFLSCLrEg4tDSAs+closafP4OMDO6h3zcxb7c9TeCHYhSdaLUTWJqL3W52jv2L+
         legA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=GgXEEorn;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Xc9HKzt+;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id f3-20020a056e020b4300b0036600b7070fsi3400745ilu.57.2024.03.27.07.36.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 07:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42REVH1o009571;
	Wed, 27 Mar 2024 14:35:50 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x28ct6w78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 14:35:49 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42RE8EEY018284;
	Wed, 27 Mar 2024 14:35:49 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nh8ttfh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 14:35:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EZu+m1VGKt2rtspn0fmQOc1PuMvcPzNeHHBcF8vC0GZ4PhYv7HC9dUaflmX7qaNZtE308Msy35vl5Dl2FNaAIlXK1UI+nJUZepJ8WxSSwng1PpFgMtN6MAmuFyQFTm/+SkTl9AEYDb/1mP9/B4P7hc9kM+7UStp9mRYakfJePpRWhxt2XDdxobR5akp0g5Mb0FkIwQNndvFwIivhdaHNU+lZ3FHsrSXluL8gKlOExMEchaE2cgqnq6QK9MHJHwhNXBgTbDdGeNc8tqOKSP4MkGBShBceZLglU99qzEfMK9UgYmuB0WV5wlXJUlK5VDyoxrHMRYCehYNYXf0vRRqOSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hujlwld9cT5wVYaLh4UjECYAF6EW2ELaDsxYLF+oUHo=;
 b=Dnja8DZgM5NkDM5cOh04p5+WGV+BtJvd1CAa78Y5rtFQ2ekHi/Y3ICRxZmk9+d3jwTokCdIQzpWzPVLUHxRGj3ShVBCffdHW10FE7HFeW0m209dPqqmkk5aKaQEnPLp7TTZ1YlLTHDEi1svtCa2KkLPnkvKJKEbrai/Ym7lXCnzKPMqH+xIa2zIpPVY5rI4PHvi+6CsMhmHmqkY+YJ1QcPz3kpzCnRx6l9vKgk/DJsTIx1oRK2IwtCaPR47vLqTVMty6xDXIc8hOYleAZUslEw+zyDK06SLz/F33yb7g95kISxRu+Jr57RAfAG/45UTbWzTsFXpP7PVGVbZRTCwJRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by PH7PR10MB5814.namprd10.prod.outlook.com (2603:10b6:510:125::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.30; Wed, 27 Mar
 2024 14:35:44 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 14:35:43 +0000
Message-ID: <a652b143-9cb8-4d16-8577-274d9b8b4a2e@oracle.com>
Date: Wed, 27 Mar 2024 14:35:36 +0000
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
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
        open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
        mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
        linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-3-hch@lst.de>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20240324235448.2039074-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: AS4PR09CA0011.eurprd09.prod.outlook.com
 (2603:10a6:20b:5e0::13) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|PH7PR10MB5814:EE_
X-MS-Office365-Filtering-Correlation-Id: 26198811-13d1-4df0-6f2d-08dc4e6b2f01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gj4JOZiEBXlmAdB/J4mL5Di+fPYnSR74hb7hRCm1kKS5/hov84uC0wznB5YbAjikhYdv1K71lOVgtZn8YhpFtgcOGi+XTc563LO8PfuBrI7TYMf4RC/kFDhP9XCmSd6ry83MX0g0iOjscsrUz/JB2fY2ASx8xh8r7so53p2Fix04oAI4uaVuyS/6v8sJVOvgeTFvr6feKtbFVRmcGA7yAsMELK5KGuSzA2siYJ7gxIktt9yNJAZZLPyi6htZf790QJBLa/PwV5oCjLBoxorMxUb/AxVXHAVryXx5oaprsHJxP1pQxJwqQ2fkU1pYLOx+SMtQJ6dY4E436TlZVCF+8RDa1TvcTljml/G4HvRzDdzXrEghfaLeTt7Ql1nZXyeJfPML06Y/edNEtv6aR5X0b1XLbd3iPvpqm2gUOOugACgNXpgc3qbiENpeUxfVHaX2rb919U7Gk3LqIpkgxGmDkrM55y6E+myHFAhZWhrNXFgVeBx/QzO8UaXsmXZGlQFGR1w54aH0SR05tkhoi3ZQZltEBdDfkLuWX5Z5sLeB9PMa/mq2iwOOUdiUlzuEivUCfGq6vdrvp4r5375ix9q8KEgI0JmorCKGlOcUuZkkwMKjuWiBGaAZy5cq5x8CXYOvUhMfooj8qSILznv45RPiHveUGImpRS8th8wNrZ8FU2E=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(7416005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXN0b3k0NXFmMHNZY3JUVFZnMzBQUFhWUVpTTEpFMFpSRlM3cndSb2g1dnhy?=
 =?utf-8?B?THRlYkVNS3YxckZCZVVrSDhhZy9SUDZOTmRIY0dhMm15YjFzS29DUlFpMmpo?=
 =?utf-8?B?S1J3UFRBcFpvcTJFWHRxUFI4U21VeHRIaHVUaVp2TUdkS1E4TStQa2ZWR2dz?=
 =?utf-8?B?S0lnZEh4eUZndzEvZW9CME1wZTNJYnlybE1nVy9JUFUrNFNPdGhoZzNiYkRw?=
 =?utf-8?B?cDJURWxOeTdlRW8zWm5NTWlycHAxQjVmeSs0eWkyRngzQTRscm5LcXpQZ2oy?=
 =?utf-8?B?K1V6SXhkaDBrZ2lDY2J3NnNkY0VhT3R1SWJQYU82cUZUVkRGU3JhelppSE9B?=
 =?utf-8?B?emZHZ1l3eUJvSGs3Q1ZsOXZWeUtQSHpWR3JtaHQveldaSVhFL2ExMXpoekxz?=
 =?utf-8?B?bWtEUGk1QWJjbTJLK3VuOTJJUDhpME1FczdCRzh2OFNzYkZYWTcwVDNTb0JJ?=
 =?utf-8?B?ZytxekZtVytqM0hnaGY5ZTdaQTgwaTBLRXZFN0RSaFJETWF2SDBDUy9pa3p5?=
 =?utf-8?B?YnhYQ013LzFMbXRxSnRQU3E3MXQwTCtKRmZ5UU1YZ1BaTTVPUGpUSlp5TVNq?=
 =?utf-8?B?UndXYmdxN0NpL2dvWjhjeXNnN3d1UXZKWWtET1VPMFZSM2VSTU1kSVQxbjRX?=
 =?utf-8?B?emdQVmdvMmFvU01TNk5iQXdIU2F2b3k5WkpGRmdwUlkrWGRubzNieHdyZDhn?=
 =?utf-8?B?ZFZMQlAyVTB0RUN1M0Z2bGVueWNKUVU5azRmdWZJY3p3NEN6R0ZZcXR4a2hW?=
 =?utf-8?B?Q09EcURLa04ydDRaUlZNcWtGR0FKZlNrL3FXMFlDWGNoYkRweTRReFlYQzUr?=
 =?utf-8?B?Z1RNV1A0OWV5am5aNW5zdnJObkZLVEhrRTdYRDZZOGJJRGFiSnFFenMwaGJl?=
 =?utf-8?B?am9Wb1lmL0F6SW8wU3l5S1pYR3lFamZKKzJFUVZmVnh4b0x5ODVaTGdUdjhT?=
 =?utf-8?B?dXNlc3hZMVA0a1N1TmhXOW1lUEpLRTg0NlQ4NzlsRkN3czQveEYrbys4RHRv?=
 =?utf-8?B?OVU3SWIrQTlBZlpJendibjJmeGlxSzhMcXlXWmNmZTFHZE1pMWh6VHNGUmVT?=
 =?utf-8?B?d0RFNWpQOGFnN29LeEFtMFBxcE9FRFltcnNITWlJYnNRRVNFdlh5c3Q0WGYz?=
 =?utf-8?B?ckdIajIyd1pKN0ZIKzVBTWRaaThUR0NxdWtBUCtKZUNRVTdIWkVYYlV6dVBI?=
 =?utf-8?B?ckFlcG5oTDJ1eFEzTlBiRDVTTURFS1NxWCt4RnJETzBXZEgyRU9UUUMxa2ds?=
 =?utf-8?B?MzFGaDR3cVhEMW9nZk43Rm0wTHVqbG4xQmhTUi9IdkZWVTRtZEt1enVIeUpx?=
 =?utf-8?B?VkNxaVgwMUU2RHJ5aC9rSTZyOU40eFg1aDhOaGw2RWY0Z3NkanlIRGZpV3Bs?=
 =?utf-8?B?Q0ZDeWpzRVZ4TmRTY1NQeDNtWjJvMlkrTzh5Rmp3ZHhFUmlzZm94NG1qZDBh?=
 =?utf-8?B?WmVJTm9DMExGME5pTjZnUE9qY0tvQWFUS0ZqMkVsMHdFbE9aKzFKYkNDL3BP?=
 =?utf-8?B?d3hUMmxsamRhNzMzdnFJNkZVMk1kVkV1SE9ieS8xSzBLd3FuV3hhMFdIMmcx?=
 =?utf-8?B?VHhYUUk0SnBKL1AvcHI3MGJ1QnF3YWYzUFp5MDFPWUNlVmM2K0dkMUkyZFlw?=
 =?utf-8?B?WnU1eXVMMFl2eEZ2eVZpbSt2NWRYYjI1NGNNWUxEMjN5YXdFWXlNNjhJZ1Br?=
 =?utf-8?B?aURDRjFDQ253ZnJMbktnc0RKS09KVTFhOXozL3RCeVdWckkzYzcySjZFV2JH?=
 =?utf-8?B?cDRReUx4c3FBWWtKVkRiWjZFWVVCTzBBQU5BM2lZak1KU0R4K0RDVkoyeGl0?=
 =?utf-8?B?Ym1rcjhFbDZWYStEZHpzRlBkMFJ4WUZtMDZjaFczcWtPVUJlZkdTc0g1aWpH?=
 =?utf-8?B?dGU2cnNoZUtVSExWTStkbEFqOVdRVEl3UGc4Tm5Iaml5bXlJcDBIUHRkM3hZ?=
 =?utf-8?B?d0pOc3RoMVFWM0IzMFFmQ2J3M1NSMDRqYWdYUnVIU1lDYzBsL3R4T3d0aGFD?=
 =?utf-8?B?NDVuWk5DeXc0V3IxMjhGL2QwNTRBQmZ5dUNHbFBHR1o5OTBROXd1cFdvcUpO?=
 =?utf-8?B?aG4yTWJqak5oNVlaZjRUK2pURUt2TGs2aEpLa1Y5RXVjOUx3eldsMEZ3bHlD?=
 =?utf-8?B?TGVidDk2aGQzemR1QmRyS2prMkgrKzFKWm5pelYrV0lZNERHWWpPV0tiSFMy?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: O6IlwkjGdwuIzO+rhRO5fIo8CIq5LFnBJg2rI/Xa7htEZ2FEZGMUEvDBSxf1LfUebhLSFK9Mjn9JDxkzrmk0GAxyjY4UD1V0R5e6hfxtB1A8LR0tLNNvDcPdcxH1OhLuh/jyOcbQFABBTfyOv2v2N/2pqz2PqWyk0CcDK19dVoISwYazm/m2bmg0WYKvO9QQW5EfQtDvWPMcx3sNtIP09h17skxJivP+GRMW4LsU2d4soZDnA6sVbmpEUJWGEzkuBUmdA1dlPw/LUhFdgoxV2Tf1Rvq5QANPBsR37oX6gFidongR52GJRlSemDgGpDDCNN1pZU/ikvb4CievMKgtX9hzzyd1uInnhJ66K+lvE3u7FKCpERP7tw7P39+TPKup5kwWvhsU2lDctJWSdi/A7+/li07CIXibHcrCUYfu5p8xhgJdi785jGW9fhEAQ9U8O0/1vFmMZfnnNgqmi+XJdBw/EdEo1Rv8YoVkNuLGI+4/b3pv5l1EQaf4SdzM3csFZRd6uWKJczZwbMZ7mlg1nAAgXM6xD4V9pL4JxIavLu+pqWqZZxxc/LshoaZYBCzhp1BFr6B9Lo3Wt44FkPGJ5r0wmC1bkt+uczhhpFk/+eU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26198811-13d1-4df0-6f2d-08dc4e6b2f01
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 14:35:43.8816
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74ebrqynXqfFPKNFFbDKIXTXy28JEDSXIj1lWGSdbaYEukBkKJ6Hctmvq2S4Wyzakfkl0MIcDYmPuqlcn0BPTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB5814
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_11,2024-03-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 mlxscore=0 adultscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403270099
X-Proofpoint-GUID: fJ8P_4QcJwXLtgPpVgt48EBdVHTnQPiC
X-Proofpoint-ORIG-GUID: fJ8P_4QcJwXLtgPpVgt48EBdVHTnQPiC
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=GgXEEorn;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Xc9HKzt+;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 24/03/2024 23:54, Christoph Hellwig wrote:
> This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
> set up the limits at queue allocation time.
> 
> Signed-off-by: Christoph Hellwig<hch@lst.de>

FWIW:
Reviewed-by: John Garry <john.g.garry@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a652b143-9cb8-4d16-8577-274d9b8b4a2e%40oracle.com.
