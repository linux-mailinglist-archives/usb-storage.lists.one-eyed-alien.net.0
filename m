Return-Path: <usb-storage+bncBCD73EGVUMBRB3VGXGYAMGQEVC6KRHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DA88981F3
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 09:14:56 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-dcc4563611csf1121763276.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 00:14:56 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1712214895; cv=pass;
        d=google.com; s=arc-20160816;
        b=hlYUq0RQotJHq0vLAahxb9RuVRNgS/lvL+Knt1LcQNbDAVgEEO0BoOsySBHxEuszVL
         MqtF9mwV8292EdyQbGXhYlLEg3/PgmaSBkqywiFtQsZi2FPpnuFjC75E5tw4jEp/OWVT
         1HGPt2UraCgDuYUVcVF/554p5slUNEx/hMQVaVxS3v2WE5JGVEm07dMXIAq9Z88zPBmj
         lrNHmosMuamH0Qnmml6GLQQ3eFW2+TFi6ppSa9dzqcNggO+/ZG+V6dwfz5+f7zmFlJCj
         mfWwrnwpNmWiNzsu27TAnvKPvKn8On49x7kdTvT+GEzXYSkvpco83lM0FScwfNJvflXI
         d2lw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:dkim-signature;
        bh=BSrHtFOa4p8qdEExhYPMkL59yP/hqd9bQG+H8EdCtE8=;
        fh=C2+j912cwvvQRersVO4k0ExtLx/4XaG3HzhYTAIuERg=;
        b=K+cZIZWeKwb/P7+i6LEmj7AhfBvm/aHhZTZhb+B4d+zY5gooOe37J5Xi+4/dmrsuWp
         ztlDxV/ZyrPo+LBjwEzhltlrRGQnajB6Fs8rozZokb7FEKgrn+ZE/JSYAlf0qGEXV6s9
         KhEcQWUAwgQiJzL3cmnQrR3AQxdmJ6EasGIHPut1kw/qtuBp3ePs/hogqrwFNlqNx5rw
         r4ljvSPtCk4YcKY9TExpOIcTWOjEHBxx7hW+wWEWAhBF6OwzzpKT5xiMLIS/qm1QlXs2
         0mkMBbrmhz9HOnil0TyMt3ST7meEoL970Wh45D9JlPLeZ0uyDM9zjU8k3VJrmkF0Zdgj
         oL5A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=B8ibdewV;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=zsSrVFe4;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712214895; x=1712819695; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSrHtFOa4p8qdEExhYPMkL59yP/hqd9bQG+H8EdCtE8=;
        b=llajov73OjXgR7jL/Ke8uEwjFjZjc5TBEEnp9DNPrsXpUiEuppXdxD3L7zbhHKk0ZM
         v3AWNv+rT70brKusGMcm45IXZH0E8N1jvjFYoEDK0LGgP5yFtiB463ii00FY7NqDO6w8
         PIVjghx3F29vjV55Gv0khXTCQ+QAh9kgyz3o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712214895; x=1712819695;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:organization:from:content-language:references:cc:to
         :subject:user-agent:date:message-id:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BSrHtFOa4p8qdEExhYPMkL59yP/hqd9bQG+H8EdCtE8=;
        b=jueu4+3Jp5l9FTUM3M2Fg7FiupHSR7MAGNZJZF1FbOOqeLO+gjoaCAweHEY042w0Q5
         CQdCC9gkL7hxtMY12x5K8h/B7fX0LjR7kJbsu/ILi3IEEpOACNjFXsXo2d88LlQOMrOv
         vmKqhAK00/vRYC0A1XLrG0olo6n5srRRzgAmRwNJvQG4+2vtHjqCORz3KoWNjhjrmrEK
         jN/mp82cbhR4i/JNdMfRF5v+IKv0oJGlNOYxcigF5X8EWaW7+9hKruc7/l2nX/ASUPIo
         W2UI2sn3MSrHjNYYgtCDyo30U3IOnQsR7IHKu0Icg5skwj4S1lFxxmMxpH38NXUhsjrQ
         mqUg==
X-Forwarded-Encrypted: i=3; AJvYcCWjZWZ8AGZEYj59IP4/OwJ0Z4+NItb6ptzSybHUFfcNCfzmKzK9QR0G+T/MRGyQ+OqkbPDR/6OBsH589qJaFcUw5jn7ZkFT9U80
X-Gm-Message-State: AOJu0YzNizuZGXxbu1M3YYeEe5K2i8BDezL0FYzCtbZgcyQkQOeeZHL8
	3JTEWtb6Gf+tsu+pO8Y3Zvj3nNTEmRAClKNzB7b7xn7Y6PRXqcSETskLZYMdXCM=
X-Google-Smtp-Source: AGHT+IHS2CgFKIcF3HuUqpPjPvS97uaHi5QXMYPFmN0ksABVnopnScarVQvQoo8qnfVYNXHFh8f0iw==
X-Received: by 2002:a25:a85:0:b0:dcc:f6e2:44d0 with SMTP id 127-20020a250a85000000b00dccf6e244d0mr1531954ybk.37.1712214895183;
        Thu, 04 Apr 2024 00:14:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:72d5:0:b0:dcd:a08f:c83a with SMTP id n204-20020a2572d5000000b00dcda08fc83als967684ybc.2.-pod-prod-05-us;
 Thu, 04 Apr 2024 00:14:54 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXthRMnegJEaoixUZkGGuuKD2255DUnfGSb3EngbjUGjiY0F0sP8FtDPKwIznZqnG1SZaDi2XaJjDz17mdY1O0hWZ0Zs6BWmk26LS5MKLOYLwm1kMA=
X-Received: by 2002:a81:a54f:0:b0:611:7132:e6ba with SMTP id v15-20020a81a54f000000b006117132e6bamr1844675ywg.40.1712214893943;
        Thu, 04 Apr 2024 00:14:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712214893; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrdSwPKQuwtYyB2CvSf5SnYkUKJuuK57VWRoZJU3Etey3CE0O3/hWv5whwwJPVXW6Y
         974vCFNM0ZKzvn1k+i86Ujsj8yKB6HrRjOSuGO88UcBiTy//85zUd9Z+8lgEeg9VbE5/
         WTXo6iyPTNbj0HC5rehZOBKzWX9XyY05URmWkEUkRxsSntu5/NCrcjKCVZHVqxe+qKJf
         luxdSJj/21WWK4oaDEYC8p/jxDaZFEfIKJzR+RBPtz5x2ALgP17vEVPbiHu2EjYa+E6j
         TlZ9yVbHCa+u8jfg0i4ARAN1p5B+jEzCe9bstnolQjSKoEc8G3FYOYFcR5kCx6VnWlPz
         rtrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=40E64TJ2LIYTPyRLcD5M4pDR3wJakTocM9rdM4Pmx+I=;
        fh=WxB7tVC7wY9OLNtD5LHxSV0fsAbd89b6fLSDbmbOjis=;
        b=PG6z9guUKw315kXZwgbpxkXz3yJbcdGIPinNq+bi0zgJRCbLutlYSXIRyrX5WPxI6L
         9qas5j446rGX3wtArK82Tn9TqMqI2FZ4I4Fzq7/uR3cfpAhSQGNGIbOFrDMij1TKZ65D
         0YhTtzpw5LaVeR1ri96BGUFeqRjEgF5eJYjtVDurFybvgzD10eI+pH4wSiHGg9gOOBXO
         bUU+1iuFodC2a8Y3D6OAME49udNEosjE+KvKTHyeKZ9TaSUccQ9wQQSv+QsXcVHEScGt
         BskJHQUi+aIUq60ZttLpNqS6Xj+9lOarpw5VHj7qna37IBgiJtPmB19t/vmaYtsqx5eH
         K8EA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=B8ibdewV;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=zsSrVFe4;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id o13-20020a817e0d000000b00610b90b441asi7178111ywn.116.2024.04.04.00.14.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 00:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.g.garry@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 433NOvxa009650;
	Thu, 4 Apr 2024 07:14:31 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x9emvrkgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 04 Apr 2024 07:14:31 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 4346dxho009430;
	Thu, 4 Apr 2024 07:14:30 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3x9emka6fb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 04 Apr 2024 07:14:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+rCX3FKAvUiHQB3XU6WOpSR6wZkCIHdMfrqvI/vc/e+S6nx6dHmsiqWTtP+7WuEquDx6vwad8AulD3329GqVgkIChK4JEWQe6YSwEvyt7cPoWxrFad5qdGyQov8KvKn3loijTucBjKEYIQENpjG8ZL3Ezt9lv/WjMlFLUX3IxsQqH/+7MNRhOWg9+Iu58vuqNb4p9gPZgj6uEpzvgEecnrQdlEbcDdmmJfA/2TWYIxmcvg49k4jXGnMBg1ApMlwc82/lOUPM85mwLK9k8mVKcySqnmmq81mcjhEEvpCRcWdWZ0uDeFkO+oo5CHDDoqOn3HdQDkRTAZy0P23okPD2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=40E64TJ2LIYTPyRLcD5M4pDR3wJakTocM9rdM4Pmx+I=;
 b=ZZPZQUkdzysTyqouNdTfBcNzEcy/muyW3FJ2x3ZlIQM0qy1mm6x3+N7FSq5EgKPPNtnhfP7XjbMF7WT1nxejzE96Prv0sSz5IpOLIyAjakLH1Kpim5lH1SxmP9xgwOPLs+NS+UdhowCIpFo263Ps/cRd/LxW/9dPSE22HJADtkNkNQx/OMqh1iJVqko+eG8ZTuuLgx/SMFERf4fsQ5/E1uqOvhyZZ3ArfG0x83rGLfTc17ve/D/n4fOOtLiAjYi470DNUMmZgietKHM4OR/VCSf5skuerp2maMjkffXgjuROGsmfT2WzXk5hI7HytrhKgEwYcikl7mXsf85kJ1uJhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by PH7PR10MB7839.namprd10.prod.outlook.com (2603:10b6:510:2ff::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Thu, 4 Apr
 2024 07:14:27 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::ae68:7d51:133f:324%4]) with mapi id 15.20.7409.042; Thu, 4 Apr 2024
 07:14:27 +0000
Message-ID: <34c1f31b-2a67-4c3d-8efa-b08a50f20e31@oracle.com>
Date: Thu, 4 Apr 2024 08:14:20 +0100
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
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
 <fd99a58b-37c4-45dd-a738-cd2b49341c70@oracle.com>
 <20240403125116.GA19332@lst.de>
Content-Language: en-US
From: "'John Garry' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Oracle Corporation
In-Reply-To: <20240403125116.GA19332@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO6P265CA0014.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:339::12) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|PH7PR10MB7839:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ax5FqAk5rlhFtX6G+ecDo3RaeLK2JsH3HAdadd2HAaAPYnM0zVnEPOtPB5wIejJRoSFS2qp1wWGxwErCk75aPdhvxWiV+oZwuQ72OzPxv+6MgQDWPu3HqYiOPRp/QPED6URtbCYRROezoolb98PDbYeBMfAORSGClX8BhHP7K2A9m9OzGG8EIZp2yA20YH31ZMyMvvPDnm83DelN/NV/nKW1wtkoiwyVX25j2eNRcyTl7nIWqDGjtprN+NDK8jh7VNr4RIdP0YVI0/GAywyCFjjLLtUL7JLr81nF5rKdHTAxbNYdr5lWsdKGx8JYy6TUKiL4wS+H+R+UyIUznXZ1jeo8js67JdvGegnD0+S8prBUWBxtYdrWe0loWqAAxWadrky1byiu3XFVzZGoXBh5M7iVMvmwuV6lPjhOGU/JHyW5BIZkkDB+Rn5pZ2P1WllRZdGzotqkYb/IrlHiTmIg46vM2VkczWehM3fbg6M9phcnkuVvEuhYG8zMH3dUnKLPzLzGq9muNqMQa/Gaj/8VnV67eX+ce8HwGtTH4bFbTgsDuB1a+rqV9GuFzdjlCHaaJh6msiyMsSgGSuOQ3s/59UT0YzMLfdcOxzA1Y/Ct7EFSI1va96e+TF2ft0igI9LUADGGDScN5kB76H7pGg+TpYDn0Eb248krRDPFFkszAWM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4313.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(7416005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnIvMGdmOFdDdWRXSE5BWUplM3h2MTJvSzdTY0NocENmVEg3dzVpRnhNZzh5?=
 =?utf-8?B?V2ZDck5uL0trdGxkbExIUHJEVWlpemo1UWRidGdTcXlDL1VYWlZlZVF0dnlZ?=
 =?utf-8?B?Y1dBSEx1bFVSNnlLNDR2N3NiNnhzNWpQb01JeGN4aGYvVjJTbE02ODhnZnp2?=
 =?utf-8?B?QVFLWThCZ3Z6dGl4MWhkc2V5Umd5NmE5a09YWkRpWHpUT2RCNGx4Y2tuMnBY?=
 =?utf-8?B?Znc4UTY2MVVUTStMQ3psOEZoeTBKSFlyT0VTRnh4c1Jzaml1aDFGSDcwWGNK?=
 =?utf-8?B?SWFCQUYxbFdvcW5mZWZCMVRBeHpZVlkxNnVsSWp1UFZ5VnlLSG9laFBMR0w2?=
 =?utf-8?B?aXJibUw5QlcrWGJUSWJmellRL0hsVmcrQ2FMcmt3b1lEVjFRbXZSTWcwa2JH?=
 =?utf-8?B?a293d01VL2ZScDVqN2lWek9EcEp5OHQyaWpIbnBQMEVHaENJMmFrdUg1emE4?=
 =?utf-8?B?Mi9QelhJc3ZiNU5ubTNRL29yR3BkS3hMdWRuVFg4aHkvU1hTblFpVU1lWFEw?=
 =?utf-8?B?UkZGeE52Rk8wM1RtdjJIQ3U1Zm8xTlRwVndVbVZxdnlSLzdPSHVTR3IwM3ZG?=
 =?utf-8?B?S292WHd5eUh6MnRHOGpFRzVLSjI3VWl5UTRQdHQxaGlGUnN0RzhWOGJpKzZU?=
 =?utf-8?B?T3Z2VVhsVzg1WHVnUG51RmRYNnFzYjRtU0pMdGlNNDVKWVNzL2Q5QmFOeDR0?=
 =?utf-8?B?WU51c3BubE1DdzdsVjBtTkRrblpKWis2YUZwQzlMc29JOFljUkJUeUdlaC9W?=
 =?utf-8?B?clRpM25qSzMycVUySExBV2hEdHMwWElhMXdISzg0T0JJUUJaclV4SHVuN1p4?=
 =?utf-8?B?VGpBdEJmcWxTanFhY2p0WEh6cTNEOVdFNkR0bG5IOU1JY3VrVVl4dDk4UHNy?=
 =?utf-8?B?WUx1WU5vaFA0UkM4Tm1KUDUvV3I5UnBwQkhndU5MWDQrMk1nRWZTK3hDQlQw?=
 =?utf-8?B?blhsUm91U1A1WHNnSFdDckhneVBFOGVBa0h3dXhWbzNka1QrVEtlTDA3eis0?=
 =?utf-8?B?ZGM4d1Z3L2ZLZSt4UWdtOERIS2FSYWxrcVBuVXIxZUt0TDVyUTRWbEpYcHdJ?=
 =?utf-8?B?MzBwTEszZU1jUHpFMm5GZExxY09aTitXYlQyeFlRcXRpZWdXZzVob09zVU0v?=
 =?utf-8?B?Nkd1aUg1cnNiUWtzVXEvR0Z6WnBnL0VLSXZhTUQwUk1LaXhZdk9XKzBNWXFS?=
 =?utf-8?B?aFNDajVEN3NvQjVySjRVdXo3WUhHOFNRRmJ6K3NDUUxNb0x1Y3BXbmsvbENP?=
 =?utf-8?B?d1J3VjNKdVdiNjFHamRxNmZTUzVGZlFpeU9jWlFkcjFDdFF0Q1BiUXc0dU5k?=
 =?utf-8?B?ZlExeFRFLzd4UTJNcU44cVJzYXZQSzZtWEp6c3ZZQ1JzQ3IwMGtPaFlCOCtS?=
 =?utf-8?B?UXlUNnhTbXBlcExqRUZCTkhpcEVSWlB6eGZmOGhUSU9LWlczUmNWeVdYdDh4?=
 =?utf-8?B?UFBCY2xhb1l6S0ZWbUpWOExoR1VOOG93eUJjSCtyQnR2Z2R5TXhld0NJZE1Y?=
 =?utf-8?B?cFQrN0lXNUJpbmtMaU5IR1NxMWxtMWZ5OVZ6QUd2d2lNYTFHaEpuTC96ZXFw?=
 =?utf-8?B?QmF1VG8xdG9sb1lMa0V0SHhBeXY2L2svdjBTam9BdDdRdzdNKzdjMjdEdzd0?=
 =?utf-8?B?MTZPY3pKN3FKMmxKZDJHaE83MURZTCtYVWV4WmhuUmhvUkhrNWR3T2VWd1V2?=
 =?utf-8?B?YXN4bmY0dHNUbTFKVHdGakN4ckZCL2Q2TzJSUUpMVDlNSEZwTkNOYkUxRU5n?=
 =?utf-8?B?N082REFKNlZlbmN2cUtWMjRQc1hwRHdXSC9HOWhTZEhIVm1IQ0F4RURCdEpD?=
 =?utf-8?B?L21lZnMyQ3pTZWUyd3JDNU1udWNYMnJXcEpxZEVERHhxdE1lRXpGSmtlSzRz?=
 =?utf-8?B?NVV1NVFjRGtvbEI2ajdYMWR3SFZZdVZCRUljWWo4YTIrcWJHNm9yNkZQMENE?=
 =?utf-8?B?TXRzQUZCNXAyRjJJMHFwNUZiRHJhWGJkRHFmTFNPSVdiV2JJWUxFa3RQU2FU?=
 =?utf-8?B?K2xOaHduMEtySzJPeFljQkZlWU5CczJJZ3p0WVNCSFM4WUc3c0pTK2N2M3cv?=
 =?utf-8?B?MVJOUjEyd3NmR0FjckVvaVEyMXRnMWo1QTBZdHVlTzNvNitoekxsVCtQaXdF?=
 =?utf-8?Q?bI8thDsgP5xMFETHDNdjx0yuG?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: uTvCylJPAkzIYpOMb5lPHdSjLUiWzoBjNz+fxFEuSYa3If3Eax0d6W/U5VkTSYDAeuNOyxwaA7zscIpN1WYNMH30hxhgXCpd+sX9r9dnmhOXwjd2rZA4pEjc5rR5gHHG9ZtjxDNxR1ZtctNwCENcRsWk+kXU7ezXLIARn9beEJwNGj9mXS9/kCEu5tAkQcA1Xey7Bq2eKJYeRCC8boP8/DpjMBcqpGpmNqLFxVJe8DW1kuPdCxnRTzdLhtQjOctTC8JfeiNZK6jAq6yVQag7RKeL2CJIxDbG6GmWIvl/EqedcJGQ9fj6BrXp/9lnULJ8p+BiXWyz2MyWbESGx0yKPdpsz84eTPf0fTNqIDIVERfzt5CQNgDu04RShnVV9IN71TZJawUYGON3kNKh+2a6tPeOQ7vEnEl0J6yZXqBEjPFi/MPi3AD1CxclwNXueg1c0BLGDAcDRl5cagXVhgoLDju8fvvs266TEekcJAMgTKyUll2g4+JfawtqK1vRyqasQNtLPWxm2I7UmkwZ/QqrncYxdPWuZgHO0n2pA5h89GT+ilKIkVXMlEZBoy46nVk/CHx5cVS70UjwVhOHePqdRJ4hranksxKTmV/NEEC2PQM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5c3fe52-b983-49d6-aabf-08dc5476dd42
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 07:14:27.7085
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aub3qfelobV4xgz5E/9FJ9cubjtoimtXuppx8P9R/ays8t8VbCzEC4VkvgoCt17VFKlUrLdGNOEjDFkMyPKcOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7839
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-04_02,2024-04-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 suspectscore=0 adultscore=0 mlxscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404040047
X-Proofpoint-GUID: aGDqyWNbwQ2RPJn1-7rUvZQYOb58ZuLR
X-Proofpoint-ORIG-GUID: aGDqyWNbwQ2RPJn1-7rUvZQYOb58ZuLR
X-Original-Sender: john.g.garry@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=B8ibdewV;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=zsSrVFe4;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of john.g.garry@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=john.g.garry@oracle.com;
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

On 03/04/2024 13:51, Christoph Hellwig wrote:
> On Wed, Apr 03, 2024 at 08:38:42AM +0100, John Garry wrote:
>>> + */
>>> +static inline void queue_limits_cancel_update(struct request_queue *q)
>>
>> Just curious, why no __releases() annotation, like what we have in
>> queue_limits_commit_update()?
> 
> Mostly because sparse doesn't seem to actually need it on inline
> functins.  At least I don't seem to get a sparse warning without it.

JFYI, I am noticing this on v6.9-rc2 with vanilla defconfig:

john@localhost:~/mnt_sda4/john/linux> make C=1 block/blk-settings.o
  UPD     include/config/kernel.release
  UPD     include/generated/utsrelease.h
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      block/blk-settings.o
  CHECK   block/blk-settings.c
block/blk-settings.c:263:9: warning: context imbalance in
'queue_limits_commit_update' - wrong count at exit
john@localhost:~/mnt_sda4/john/linux>

Is that a known issue?
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/34c1f31b-2a67-4c3d-8efa-b08a50f20e31%40oracle.com.
