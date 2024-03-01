Return-Path: <usb-storage+bncBDVIJONZ3YDRBUWWQSXQMGQECGGYHCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-x1148.google.com (mail-yw1-x1148.google.com [IPv6:2607:f8b0:4864:20::1148])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DB486D88A
	for <lists+usb-storage@lfdr.de>; Fri,  1 Mar 2024 02:11:48 +0100 (CET)
Received: by mail-yw1-x1148.google.com with SMTP id 00721157ae682-6092bf785d7sf29380407b3.0
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 17:11:48 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1709255507; cv=pass;
        d=google.com; s=arc-20160816;
        b=tSayKLXHtCZaYxnJV2w/+J7/yWhh8CdDlT7fgI+mlB+wshzzq1LnG2GBeijExfCDEy
         Te8onLC9IqgUQ1zPfmCeqdQL1MkXgGomSC89Q09FYPn86idlOBBHq46u8xnV+tfnJrRU
         ZuBDZttwg6Lw/0Pke28pXISm/YywHHnoyBFK0PWEAyk2Lcw9/D5VKUwiUTkl/0lbOrZj
         C9pktG5urwCCYKOgNwLs9KSw7QNeSiP1H6evsLwjLfjIGFm12LZy5jsLnpOSxkicmAZb
         CLFEm3iFk/uh01xDyaF1R2YhJVX/buoAQIu+SMinmPdNNdge/8FmMnGGcHMMpUbyelkX
         CQ7A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=LZw9lbAtYDCzB2wgOZwwswo2TtCxfBye/9ISjIYVJtc=;
        fh=wlzP2v2aL+j+ku+8HfuQgAvttO1EHMoThFDfQDEEMio=;
        b=nNgiXMbmADQALqkmYx2n86E7xPD2+DXK2bJWVujK4QUkLBdKnFYqNjq0i3tEC/D9aH
         ZqY2H8yjUvGq6KdaaRfjGRCezNYWacRCpX8hYt6FVl892oj+KQgzNWGnQlvVvjBe4iBV
         VBSDFHTIOW40YP9poQ4a1OrMQTs9raZ5K2h1enuuwL7RvsJNdgkoWouXFOhKNx9ygntt
         DM8HqIdiLUPFJ4LNIXxlFsEKSYUwl1TnOC+AgAVfRk4EEHRd6apzJJUc51WOsZ2noVSy
         qh+jlzvaC3VlogvQQXd2yHl61Q4RjtsrM1843K01PRU5hssvT9GhCWJdcDEmtXe6r3Vf
         9OKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=oxuL0ijv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=CpnRB5Ei;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709255507; x=1709860307; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:date:references
         :message-id:organization:from:subject:cc:to:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LZw9lbAtYDCzB2wgOZwwswo2TtCxfBye/9ISjIYVJtc=;
        b=KAi3ET0FY31RpJxqdKtf2aNPN+MUJIVjZR6oqk3Sl5R2vPO6/K4wx0k3WPokL1rW5f
         XNky+nN4vai6XLNuOXpJCFgDKpo5+WE+SUq8GjjPa6OZPNoHqQCg66/AYLczX+8k3c6t
         dqKcRRqmWLVkVOPKa7hyEukBXh48c1McJcQpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709255507; x=1709860307;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LZw9lbAtYDCzB2wgOZwwswo2TtCxfBye/9ISjIYVJtc=;
        b=hKlGx8hjd7lpADAkT9d8Vt954GwsVAEkQqRiHVDfgoPII7Q4l0mnr3hCBNWojbLUqE
         6EzaQNAc8+XYjl6d2cHfJOQY5ok4E5PDR277iatYV5i+odN4EG9OoKzjhbIDFqRuUDXI
         issdMJIYouVt1UVA8U8826HWZB2yf4z52NZ83m0IgsQ7UpguFwdQunhGxLLqX90f6pBV
         CyA5n6fe4V8e/uxKqCENen5nnLIp4njrbX0R2aGq7Z7ELIMn6KZ7lij6s3hJtdh5PTZP
         DCsO6Znmtf25VAtGSBJp1ive04b6EVob82XZKY0c23jTA7lDRx6A9kCS1K/kmpwW044B
         Ilzw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWlXaiZC66m+Ph+AH0l6atleeEQvh81VWrsRW2Fj9TR1gKCEa0L8OjybNxy6peOCcBvowL3J3l0V+/w7uCPYtWYTUqkhupyxh6v
X-Gm-Message-State: AOJu0YzBqTKHnFxIVs69TV67SICuTWzIaGtaijJxVCX9typByD+XZXqE
	NLXEyiLVG95vQpP7OhUzaKfu5HYMUc0josrNHgebJD3Kt0D+eFIDD42BojtHy3o=
X-Google-Smtp-Source: AGHT+IHwaXz4h9RzF0J/k9XmHHuOqaPGC6n+GnkSg26g0IlZMoDONKFxMuDqi/pgv9PG2d4u6BOvLw==
X-Received: by 2002:a05:6902:4ca:b0:dcc:32cb:cb3b with SMTP id v10-20020a05690204ca00b00dcc32cbcb3bmr121389ybs.44.1709255507046;
        Thu, 29 Feb 2024 17:11:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d011:0:b0:dcd:202d:6be8 with SMTP id h17-20020a25d011000000b00dcd202d6be8ls1065203ybg.2.-pod-prod-08-us;
 Thu, 29 Feb 2024 17:11:46 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCXVDUnx5auoq9EkzD41WkjhzVyw9wAnuh/WuR6ePkK+6FHejyckqFUL9k+Gr3IzeBqoWZn8hUmfBgV5GnB9WIs5Mn99QLcboh08H9f8pdBDHdPoGsk=
X-Received: by 2002:a25:ae89:0:b0:dcd:65fa:ea06 with SMTP id b9-20020a25ae89000000b00dcd65faea06mr159667ybj.24.1709255506057;
        Thu, 29 Feb 2024 17:11:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709255506; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xv1rJbkwWqDi3JoG5WGR2ipYT5zQD7UOn7oarLx0iHkfGCGTo7klLiDsqzuZNPCJHN
         hfWeKI4Ya4X50jZvvlO3QnfdUfIO815dZ0ohlLZWXpkvPO2eyJcm1LZlJGuG3ZIqgXAy
         5a/KB/WCPupwZlYF2eksu0naMAWFDx7Mvo12PP4dApwGL3TiLmzpk+TyFSk2UQYEOnny
         aVislZSTzRJ2PBcjqx+7tyIIfVZj3/BfCIRaFvTUj8YDo3t/dwhC/MssrcaI9JO89RcL
         cHEbII+74ktLblkN4H9NF6l8AT3lPGoXtlJ+NKS+zEEZqnvV1cmpk2qptUDz4XRYXP27
         vlNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=5Gf+aWGTNupAuj13n8eWQRuRG2xV+UXF8r0lKE8BlQM=;
        fh=auP6J6aeuWm2XCwOr/zaLvODxqWJuM+T/qvojZ44YWM=;
        b=bueVGzReuZO8BXBbpkiO554ncWm1cqr4L8/wlu0ZHLno5RemFK94QjSPq2rzjbUP94
         iQcSnC0cZMCr9XHQ664+TAopKMPk5AWfDHvVgC+TGbaJkgPXIUOy9F3NYTZmEAFdIYIy
         P9xZ8HefnHkIRGHA/Eoc1oGOY144YnpPfwksaPsskAGS8vjy9axDSfuB8qc3mjiQw0Qi
         Mh0jPG5nDXwp9uj6PCd/61HV7x21T5+7VKGM6XxQevAQA8mR5ORX8P2PCCWIU38bzR24
         63uO/CMTiO+cBVnQkZZvzSp5s7grCo6V7PjVCLoBbRcdtc3eKhd1hJVNKlAxvNK/JSYA
         Udbg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=oxuL0ijv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=CpnRB5Ei;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id w129-20020a25df87000000b00dcc361852c7si1325820ybg.518.2024.02.29.17.11.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Feb 2024 17:11:46 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 4210hol3012335;
	Fri, 1 Mar 2024 01:11:41 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3wf8gdqgya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 01 Mar 2024 01:11:41 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 4210mtUF022341;
	Fri, 1 Mar 2024 01:11:40 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2041.outbound.protection.outlook.com [104.47.57.41])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3wf6wbty6y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 01 Mar 2024 01:11:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oRkLFiCHKUPV63+0gXUAQRLBjAHKAQZ97RHIt9YjP0sCgQiyujVJm/4jEuwJh7rET42VCVq1zmxn7XLhZ7PW1b8gf6GiN81L9OUutf+Yi2ajCLmiL+jl2MUfmzkbItpdZx5WWvgdKIytpXhUN3VhUhK7T9UQll8QnY+xgVUWe1ys/syGjbIRsE1aZK2adRWDh/gf7THaNjvVgXPKpqfMIdIefHMzg/sdEihAAuxgntnFhEIRx1JQ90n/A/jiMrxMohk/r8ss5F8J+Dhh4lxdbAkqRRJuAxqwi0YGMwnwfkcqvGt3rJ/dXDIQmowIIVIh1amICBZS0HB907jJ5zsYqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Gf+aWGTNupAuj13n8eWQRuRG2xV+UXF8r0lKE8BlQM=;
 b=Amp32RcO8HFMaIGgnYpWIWfJ5dssWER4DDMolouG2eGVtxBR65GIiTHZvsVEOcKJ543sU06Gn9dzGjEtYmF+uwMAT4VGGyUyu4SyHO7tF+8y+60YTkMwMS9dGKLOdOg8xOz3arSizHevK9UmVyen8tHXKMWs0hZH/PZdYfFCuPvHeisrnqU9xlixNtaz5CIKWaRN5rkCnxlhFj5m1J86SwV8wyGdBlGVjbMzBFNmfyQaqKwrGV/AdMvs7rkdUdXL0OpW7KuL9uQMiYq+0XsrPr/fsXx2w0pdVN6jpdVQzVv0Z2x0w2yZ6xN+fJyrz4NwdRuTcfwI7J2bkn5pFvVmSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH7PR10MB6081.namprd10.prod.outlook.com (2603:10b6:510:1fb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.36; Fri, 1 Mar
 2024 01:11:37 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::7856:8db7:c1f6:fc59]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::7856:8db7:c1f6:fc59%4]) with mapi id 15.20.7316.039; Fri, 1 Mar 2024
 01:11:37 +0000
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg KH <gregkh@linuxfoundation.org>,
        syzbot
 <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
        bvanassche@acm.org, emilne@redhat.com, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, martin.petersen@oracle.com,
        nogikh@google.com, syzkaller-bugs@googlegroups.com, tasos@tasossah.com,
        usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] USB: usb-storage: Prevent divide-by-0 error
 in isd200_ata_command
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1frxazrgx.fsf@ca-mkp.ca.oracle.com>
References: <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
	<000000000000102fe606127a67f6@google.com>
	<b1e605ea-333f-4ac0-9511-da04f411763e@rowland.harvard.edu>
Date: Thu, 29 Feb 2024 20:11:35 -0500
In-Reply-To: <b1e605ea-333f-4ac0-9511-da04f411763e@rowland.harvard.edu> (Alan
	Stern's message of "Thu, 29 Feb 2024 14:30:06 -0500")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BYAPR08CA0031.namprd08.prod.outlook.com
 (2603:10b6:a03:100::44) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|PH7PR10MB6081:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d4ddcb8-9a4f-48a7-bce5-08dc398c8b65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v150zFjdMrCjtwMWZhWdcMUB/VKLHk/8JW9ngj/hikX32/yk/nFtY/rcvPh4K1lbJ5C9PoysrFzG/DumxFJH2xDUJax24bhudYbwvkmSrwcjJWyOYc8ialhBzH3f8rgm2Rk2H7ZuYTp7avWJJZ/7FqxFCJeGn8IZW6K4Fii9iIgsYkDxzSqMTVJGsy2Nfq32bqIxoOiBF0+wqugN5h5nEjzee/2n1bn66MFVljh+eBHKyTgCEiUckxqgjLbeavwOgeGuWOabONwvN9hiHEn0FjPtzehzj6o/XQfyyjKa/WCpYbPk8dMFc/ytbdNs31LrPsy6TNFG+RFDCnmE5yOKUpoUT+XhykmTXR2Ew1ipvsj0TsXYn/Gog92FK47DTHnR2Fuoqe2b3tXxGrnQktvik9BejaVmr3q6wWrqMVcbOgJFjFXkLQx4KNVPkXaQGFHQNjM1H1nwtFkahQTHar5dBiLyTU5vmdeMuXu2kmKtlMpi09sni4DYeP0S3jdrfRN0tsNwmyo4NjYVyCXT1jBcfoa6moJeVkQH/sLf3jGnOIEpGK3KsSuwJbs39aYNNO/nB1WXA2Bg0tE6NVs+KMomCRFFKfZUliQxkxyuKdd/QJmB7bwwwgzIB+kXG34M3dorL9aHOFYWURPpJ+C/3evcOA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yy8ChXUUo5yDdR8xz+7ovcAxLZcuwU1+GDypOcktuVL+0AsGDdOm++1chCtb?=
 =?us-ascii?Q?8EaSTfrgWtIeTBMBTUjGMJw/IvXwgeEDaSK6YokdeSavFwCgyTO2lpnwpnQ3?=
 =?us-ascii?Q?VvyrKAvkllbcC7o5O4O7RDASxzm5YmhKwZl5e0IL5gLT2sUgLrOf8g0Z3BgO?=
 =?us-ascii?Q?LRiusQ9dCWGaJO43DYm8/tKt4bpmJz1v6JSztcEwPw1dv+o+Q8I5pLqmWDGe?=
 =?us-ascii?Q?RoffiOciVliFih1jHZzfts//y6aKLqywCns14XDYCbBg8rwvHQ0/ojxwEWYl?=
 =?us-ascii?Q?mBsZhRDOmIcSyzaEpogXJwzGGJBIf17HGnLXTgRiqIDrjJjEdexu2N3sdfjd?=
 =?us-ascii?Q?i5tiJnv0xike46OYnZtW5hRMXel/vHBsWZlelf+eZpVo54MsnVX1OXZr6Y1F?=
 =?us-ascii?Q?7cJN1KT2U89R/+7CMo7Hcyz/EvX4Kw/8vsfsHzZyNnajPs1AYFuZanfADQAD?=
 =?us-ascii?Q?S27GWJVgjM0pKFXPS/3mhpsEJYDdX5DzKlKTHs4+2m8nrKXMxnd60K9WvOjH?=
 =?us-ascii?Q?dR93nxGBD+M/c5KoAabDnX4L3iCdjSemHtsFhQnCSJESbHeZG1lfWLqfLr2o?=
 =?us-ascii?Q?VGYTdvSCAG2oxkypmAC1Wwgm+Ftz+e1DqtsNhjQtLLwk0OqE9KpO9AYmeNBc?=
 =?us-ascii?Q?4OslzsF6XeQeQ9x64wFLOUnHO0I+xc57EW3jfVp1ithKlRsJL3I7JtuiE1FN?=
 =?us-ascii?Q?14Pwh43j69taPPZg3bh/Hoso1dmhZYi/LmsuVvQ3r8lRROweX85qrqrNVbRA?=
 =?us-ascii?Q?Unu8Rib0ta7CWbQNeIVzMYfkJStGgrxYGKOTIc7nGe2FF5R4Metywb/wH6XX?=
 =?us-ascii?Q?RxsRHnRw3XtilWTmqaWc26bNxLA4dVL/aCS74rpXTaAVYcK4lQzVL4LHnL5m?=
 =?us-ascii?Q?aqT8Uucr3ZhOQ/t4Omr4c4d6O5DAkkWCAxwQvRhGRARXU3LjkI5RlmQAPInd?=
 =?us-ascii?Q?W6lsOSE/moALeNMMChgKKoZYT4UlMoFxUqFB164b5Kev5j+p6YrkoKAZJuDg?=
 =?us-ascii?Q?Obc/ZFMb7esxNSDD+b1uLG+hEUyd0eNCWzAjPCheBhG0l3nvQFoyKilx0nev?=
 =?us-ascii?Q?9YMs8cb5u3owQFXBX5UREGe5LbQR68s28YN7o2gVGLJcQkEYpVH29IDYkP7m?=
 =?us-ascii?Q?VMBoo9Z1b7hT+GtybEt3alDj/n+WgJRo3ULgakDe36QiWV23lDfVOr56LPTW?=
 =?us-ascii?Q?Bh+KihlhQv/5KnPi3gWZbFvAgoZNJHza9YHy2Eq4sHbB+vKZ1fzG0LuTHBSO?=
 =?us-ascii?Q?W9PLHLJD/iOSI0lhbeqFLVWNA4rFcg1YErWTX+SV6HDen2uR0jH6paAUaSrq?=
 =?us-ascii?Q?Ttotlmbn+cpIwgCuki6KA/2u3AV19GGrcymoBaB4nbKo8fW2MPU8H6eSCqJi?=
 =?us-ascii?Q?ABFRczezuB2C4B8Yt8v3UJIzVOQS4T3euEzwxWMJuaGqxIFNM+y6WZRZEAvD?=
 =?us-ascii?Q?4DwRvyCTv6QiezvpL2Ca6JP7u0kKiuI4O4rh1WHy1zINsnoWARbiPRCzub/e?=
 =?us-ascii?Q?rqec+JKqlEkMk3SmdcD7Bvn6CQuNEM9BO/kcPXDGHDm3GF03jTtha7OEDe99?=
 =?us-ascii?Q?H/1KgBDBECykAN7/Ld9LrxYWzq79y1PrwZDmf/4kW+k4ImpdXUQ0hGyOKQAQ?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: TfSO8SgLuMVCULvgjOC9f0teWjUKOvkOcXJIpbSsGNH+ml4SD4twMxVZk39CEckFPZLmb5nTYRZfUVPnXMpMuwHoTYIGBvJd/jwK7ZxGufk5YTDsWQsHd2PtKXS+pZJ+pPni7bd3k1jqu5SjUqyq8mRiNO/sy3IsjhnWmuounv/8GP1TlxcdMh2Z52/wtzP7YGNEZeAJsbILiscmkkC6wx6JQ5dsNPGU6iLddD/3E5gG/fJb8nM44n7Xs7fGkvCJfZad7tQdKHoxvEdQcwgmSOZ/9PK1Hcy8xs47OUNOWtoIaS/S7/oblcGZX8RYVnS9wOC7X22Dvqytin28YM7hlwcnU9aHaDQklV8aEIus/up8ljTXJy34PHOq0ZmZJVoCEpDwzpKhMIyAJOfvtvFNAsjYnibKLMx7DutN5TZC03R16GaQlkiiZ4/cJadw7Gp6gWsbvz32l+sn7pqQaVeQtLAf90rSILzdFZ8hnq06R/JVbUmvStU/CxK+r+RM2ikTSp/XPByxDJAFrXi0c4Ok3S5va/ghqLySYqGU2GNYgmx5h1tBC8wPuXGOvtV8AFyvs4Qs46swnaspDAgdOBi9XIwR5izl4/Q9QazWBnzmM0c=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4ddcb8-9a4f-48a7-bce5-08dc398c8b65
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2024 01:11:37.7787
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IBV5JodMi1uYUFpmDzqDTxafZdhteBhIad+lMjp4UjdjV7JZkyxxjYkvwcv2wOKewS/7i0kNYdzjh4HEP6ULxlnfk+KVD+Quop0czYOJt1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6081
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-29_07,2024-02-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0 spamscore=0
 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2403010008
X-Proofpoint-ORIG-GUID: rcESslzUhW-pClFl5dDdAd7yMk7Hx6Dy
X-Proofpoint-GUID: rcESslzUhW-pClFl5dDdAd7yMk7Hx6Dy
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=oxuL0ijv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=CpnRB5Ei;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Alan,

> The isd200 sub-driver in usb-storage uses the HEADS and SECTORS values
> in the ATA ID information to calculate cylinder and head values when
> creating a CDB for READ or WRITE commands. The calculation involves
> division and modulus operations, which will cause a crash if either of
> these values is 0. While this never happens with a genuine device, it
> could happen with a flawed or subversive emulation, as reported by the
> syzbot fuzzer.

Looks good to me.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1frxazrgx.fsf%40ca-mkp.ca.oracle.com.
