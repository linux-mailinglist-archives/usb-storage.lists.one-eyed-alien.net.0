Return-Path: <usb-storage+bncBDVIJONZ3YDRBHU26WXAMGQEKSGH77Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 9976A86875F
	for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 03:46:56 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-59fb0151416sf3005514eaf.2
        for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 18:46:56 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1709002015; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0on4VQi8YRw67jTRbk9QvxTc8D/QSsWCe4d1gWHnzSszUdw5zPJEpnIiXPSOFX8E0
         TYUQ0cyhM+h0E4wTyh8Wtyc/frKvkHbjO+8xOe1sP226sksmlIisIWMLGgUfnyt0YbX8
         zB9wMTmstNnXNzTGyQ8we500v2q5s8Ac7wDEn0Mp23G6la9TNlCtDVLTHKoO1grDFk0c
         QBLHQzftWl2Xmqpmp47sboFlz59SSe5vrZ1DAFJ5aA4sV3YNJw5iKl80b5XqjD4H8GOv
         6vth4u4Ny9TP1aWtkACrIwfhCZEXKtPctSvxlu5miokB2aL3k6ZDFkTN+bPW6hoEElV4
         ytPA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=0SH+QtpHf1I0miQ49R29CxB3ICL+dK1NtgzE9PVPXp0=;
        fh=T1MjVvaEDFCOC3TaEOtZ4GC+IiUDfikSxOhuS0F884Y=;
        b=cci30DastKsO5tQ/hD/7xzyw4/A01+gWe67JUe6UT/BBbpkMotUkduu20xT3GkQnDi
         TPGVpdqMBSmyRxOG0V4BxPFANF8Jt+I8IzA1Wa530jyq+X4ohIoqAI8K1e6XDq9/vQtD
         A1gfXxLL195f14MvUnoeNC3OJAlSMQpWj0WJ8xTKYSkZNXOoK9EwtO8Z5Oy8RHyQXYUX
         qMNJhD0uyerAPGzFS6pII4oFzFapH0WYyrOo42RFPPuDYlFkpmTfQKMR7G3jb+KUp0HH
         ZkKWgb73lBTn0EczF98fkVnoeADdUab31xYZofX/I4invDpaaMZZwekBED5c6eh6gu/D
         v+Pw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=fOJPtIcX;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GZ7Wzm0x;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709002015; x=1709606815; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:date:references
         :message-id:organization:from:subject:cc:to:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0SH+QtpHf1I0miQ49R29CxB3ICL+dK1NtgzE9PVPXp0=;
        b=L720YBrEprQ6BxoR0mQ5KbA9IwVPb81luLsWH+1iB6Hwiew72hr3XFU5ZdFqZ0HzdR
         Srm0twZprpuxwr765JcIk8WryLun0GxiCcJlE6c21l1Gi26pF7X8skjh4sDGbISnw8ZF
         1749z8da074dIJLKbwqzEtnaTXN4GLQk9buB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709002015; x=1709606815;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0SH+QtpHf1I0miQ49R29CxB3ICL+dK1NtgzE9PVPXp0=;
        b=Rxz4YpHRUk9t63XRda+avbbxHFUKznn74EQR5ShsGicb4MwvKWHmNsajRbuqoETa5h
         Qj+lFXehxuO1r9jKZawc0O9YB6jpegNF+yI4Xj/+9KiZDjLI40zqlNEsSF9bySYr3Lv4
         TfASUvpQUIXrRcbb9XzFsl1p4zzbDcDzWAJiFFewAWdDbdPCG2TNjRRBbRSngqUZ7gw8
         tKdBe1CG3nQDsjUOoSTg8eMzaCkHrrHhs/pzzuEaaRcRkRYBDDN10VN8MjBCwGYk9Jl3
         jY6NOq3shozH0YAIDJI+ZxKPSH2ybgp/66k5ZkAYepKpMvnrAysRfWLv2/v1hIDzPt4k
         OzVw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCUU5Uo7NZiIuGZnEG7rlYLjjzrhI+GyHLz19sQEObVc2pp7eQ9Fa+5TDT/1V3xa/PTSzpM4JAv9IpYEe3ipe/W6xrR8k3/ihtBy
X-Gm-Message-State: AOJu0YwVxyEXIXUaELvx4zPOLPhuWfq5+f9TJqEoVnONMuNvQMqM9Y6h
	HZJv0Xd6OsCgXwxohn/Gj2pen+F6qJqCRJgumLhSJALSi0fLO6q/6hBlAZDuK3U=
X-Google-Smtp-Source: AGHT+IHtBZ6qlRq08j7mu2+fdOsv1wJf+K+iT1Tb2M152J+h8JaqomFTnN736KzksYlYw1kPwQ71bQ==
X-Received: by 2002:a05:6358:4c50:b0:175:4f0f:bbb6 with SMTP id lc16-20020a0563584c5000b001754f0fbbb6mr6926135rwc.25.1709002015146;
        Mon, 26 Feb 2024 18:46:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:908c:b0:6e5:385d:b8 with SMTP id
 jo12-20020a056a00908c00b006e5385d00b8ls618239pfb.0.-pod-prod-06-us; Mon, 26
 Feb 2024 18:46:53 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCVKTp1u8I2wKliHveaeH591SZ0+5ewMMmH6DLOIdZ9F5Q3JZQl/PAvSf09p2dJpJqJH7NO8GAJNUiyoympIIL1vNSqoZtvbnKR+wqdBt8AoS9ScSH4=
X-Received: by 2002:aa7:9d9a:0:b0:6e4:59b7:1dd4 with SMTP id f26-20020aa79d9a000000b006e459b71dd4mr9231035pfq.31.1709002013334;
        Mon, 26 Feb 2024 18:46:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709002013; cv=pass;
        d=google.com; s=arc-20160816;
        b=EDf9xE2ogwnZGODRdMQ/rwaIhm1f8PvdqOBRkS6++Kaf7gW59aSypvDnPWTMITIcF9
         rmJBsWvfjLBLnay2rwXWL0Sd/5aJtUvWbROTrlvkBxB+QSHTnxC8Cfu1s6OKATfW950P
         G+AYtZIfnqOz1j7zu/tJviy+LsX+7/sxTg4IIU/ltgQbNSLIT2W0uFXZbxOLHQ5NcnQn
         36v9iBDg3a9kIR+J2T2wwSmwWSTOjUkXrN0+M7es49mciQg9zmhGcUUjeCnv89Ng90UL
         TlfNfMd14Ctk4JQHfWKywnuI2e9TXe1E8z2Zf1iW6o10qtEY2lbFwOU5L+8NgB3bKaMU
         aLUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=cMqEkRjiq9An9UO54ilS8d493nhm9HdvBy2jK7fV3do=;
        fh=xybvWSyinzWNoSOddQvPOoCkUuE4PjI7pXfy5vA6+Yg=;
        b=puxePZ/TfcMxkRAPfbIpEKmT47wi4bWiJd1rzv4CU/XL3MJcORij/Bc6WL3S7xTN3F
         U73I0iAK2kd0n/Um18yIsofiGZfGet5PvtqkbCRe9/2jhOVYwWPEP4x8P2ddDY6uC+CS
         nbvbniieDwqQLmboKllM/LNyY5FITbkkSINOHPExDmRRrhPQ0ulr7r8gKm6wZ3+WuHvy
         cvOOJcSQJ4EFFl2JIlFcn6I1LBb16IFp+Yk4drvjrPzV46zYYStxQQ606P0IRCOux9J4
         b6rrwJCp1Px2qcFewzYe3+YNZuoJax7JKYE6bcWSMITCay2ZQ2PAbAHDll7wMqb7KS1v
         lOYw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=fOJPtIcX;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GZ7Wzm0x;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id u17-20020a63df11000000b005dc5070efecsi4599861pgg.825.2024.02.26.18.46.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Feb 2024 18:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 41R1E8WT024468;
	Tue, 27 Feb 2024 02:46:47 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3wf7cce1bm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Feb 2024 02:46:47 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 41R0Q9RV019220;
	Tue, 27 Feb 2024 02:46:45 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3wgbdjbt19-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Feb 2024 02:46:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZ+BS5hliDoo6rT3Zzjrm1fTp00AggBYW0rvnGdvjOWIql5rWSLD2ad9bvLPaNP5RzRZlNbJBFxpKm7a5LSx22xbb6Xdewfeu9r6AGRVk3po3DziI9GHYkznu3FTXpRvbuxL4q/gx7i1DMEwagSa6RV7ruh2VWMrvn78x7iTEHdkVjOb8oQDadP7MRGiWE9ARD2irCecahCgVr/udB17/H1FFfLQKCdIbHNMZEhK4geMz52KBdoXknmNv93M3SwiYFUIjhAE7GUb0vA1NaF2gh7RgT5uxBM08sOKDeWuiyAju49D0j81SXzsq1UQPrFUHcicN0w+Cn9ZXTqjwP2jrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cMqEkRjiq9An9UO54ilS8d493nhm9HdvBy2jK7fV3do=;
 b=MVLw6oQCSoBwG4uhrIj3E3w/5X2EfNF5HGz4pkOof/vBOAnu75ITI9tOn5g93CMV7GF3EiuYM8EgOuVIm5htikoucR1Fq9qS7sv/dYJmvAelv0x/c4/g8Z150NA2gBdF+JrIbJO/dytuqK2rdDNkn5FbgWnmUliHwHD/HkH/WBUiloNoreOC57oiB5x+b1pmZoqL0p8qn7n+NIKOyfbdAHLyayHOjG0zXCP5WvI2GrNfIpyZky5MnaUjI87Pj9ynDuv8QPyPToNySMNgw4pNP0qh/KisN2SIZSP6fzFP5d87iMFVqR4LSDPmjYXF+2CKux1Kt0Q6U6s/YX79DAygiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CO1PR10MB4754.namprd10.prod.outlook.com (2603:10b6:303:91::24)
 by CY8PR10MB7314.namprd10.prod.outlook.com (2603:10b6:930:7b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.34; Tue, 27 Feb
 2024 02:46:44 +0000
Received: from CO1PR10MB4754.namprd10.prod.outlook.com
 ([fe80::e542:e35:9ec8:7640]) by CO1PR10MB4754.namprd10.prod.outlook.com
 ([fe80::e542:e35:9ec8:7640%4]) with mapi id 15.20.7316.035; Tue, 27 Feb 2024
 02:46:44 +0000
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Oliver Neukum <oneukum@suse.com>,
        syzbot
 <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
        bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
        tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1cysi4obq.fsf@ca-mkp.ca.oracle.com>
References: <0000000000003eb868061245ba7f@google.com>
	<99b0fb1b-37b3-4da4-8129-e502ed8e479a@suse.com>
	<9bbc5b63-33e3-44de-8bce-4c59dcce5e92@rowland.harvard.edu>
Date: Mon, 26 Feb 2024 21:46:39 -0500
In-Reply-To: <9bbc5b63-33e3-44de-8bce-4c59dcce5e92@rowland.harvard.edu> (Alan
	Stern's message of "Mon, 26 Feb 2024 13:13:01 -0500")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: LO4P123CA0064.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::15) To CO1PR10MB4754.namprd10.prod.outlook.com
 (2603:10b6:303:91::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4754:EE_|CY8PR10MB7314:EE_
X-MS-Office365-Filtering-Correlation-Id: 156bc20f-f3d1-4954-f304-08dc373e5551
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8L2oxgD0szIDGfcZg+XB8x8kTnWI8Q4cgKhN/WqazU+orpeSOip+CxCwK+TFMW4ba09xw7in5BQX8tulshXPT+d+QFuRhBjjHKHLkGYmse+q5DTFrUFzYv0MmDNfZZ67dKl4DJIinNhF2noO1c9ReeNlPLHnPBfcxC2XkjQbid+ZyB5YvbF9rEyCQQl+4VjyhrCjn3u4t7QrTnH3RNfXKkZL3Vfkp6iMvV58Pk0cZy+hdygezxXpQYbqed/dGI9u1ne5GTw3NzoPZtkdz8h3lPU1ZsuvxdR2Lb21fWJe2tcKSqkKd/ntn/6imLd3pcC0TCt7so+rNRgMVwZL6BPx9GrYq8Lw574iFc2TrzshNGNqQ3onkSfPYmIAQQ7ZXcY7Vi23cRME2geIgbWG82Vw9L7WCk8iOmxiuE0wGx0b4s1/OaVhguGwaXW8PZOrABJYjv7B8uhuXxo9skml9sef+Uz4Q1ykTNz0QLX0m1q8eRmTLbzw1qej0C1rpgLz28+Ryq/ot/I51jgP86COSvHZb8h7Va6hNVxaTpjEqf2U6K1aMdzZKpn2alU6GRaM5mCBQrIMr+4gWEDRBowJZnp0Znb/VwJDyJ0lAjY/Cj4Izk03D6neSvykWOw3dUIpc5TMr7LTjfpO7+CjYfNdR/VSng==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4754.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KUv442u0SwS8bwgJAEQBdnLhUrX2wi58gpvCTrAO4N1QJnizUSSwejt/llIh?=
 =?us-ascii?Q?QOkeuQNf6r4tGq01m8U+Qiq/p9W2Qk0jMScJ5Z6VU3dQczaUbYmQV5TFsmpN?=
 =?us-ascii?Q?qgwoNSN7zlJUWVGJ3BN4JVFB6eUjORvzp6YCZhgkKPTIviJuqKeLa4cUICtm?=
 =?us-ascii?Q?Du1+7NRJ26EAU6EYYH9AxmLlKczm8v3FOq2k4+DTb9xf+AQVc4e9HuY7J80p?=
 =?us-ascii?Q?j0UVLYchuMWiUg+gPZ+a7fHpxzba3otIErUQUT5fnXxnASvN3JS8hWLPIdgj?=
 =?us-ascii?Q?mMiw4MwYXlZYZGsY/YPAC0rd3jBZtwrjWVDWowIfxpx6h9qCOrGlgRsdYATR?=
 =?us-ascii?Q?lTmXiKCl4GKlfMnJfcIgCREHSGEVM2fWApGokpXjqs14Li4LtADKP9pudc2g?=
 =?us-ascii?Q?aEZE+jgCnbv8K8Q+kqqrOrAH2fKE3AXC6y17bOOny9vZI2Q56sAKQn3MqCbr?=
 =?us-ascii?Q?ilfInU6Oxb63SyX09YZB7olrxKhwu8nfwbWfFRBToN+yYsmub8X0/VWW2Jqm?=
 =?us-ascii?Q?xTOktm9+F9qn+XKaQjcFc1Ar/jkit7YIVNDfhbTjZDNzbwWRoKCeOBYZm53a?=
 =?us-ascii?Q?gjcQc2HfIES4Zbg7+9T5tr1Q03WytTCBQKVqjVDMFsGVyDRDbtMwuF2B8CtF?=
 =?us-ascii?Q?8GOmoC28CvV1vXGS4YZHiKvCbFrv3w2p4BTXTrVsK6t2nKEzcxcVFeKTVcyg?=
 =?us-ascii?Q?kK5By75azgw+Ux7ylCoh202p5FSujmt4WPXpC4Czd/RvhTgBHnEoCkPoWgU6?=
 =?us-ascii?Q?wHDUgoJP5lTCjrzmJIKLVZvj7gjZXKNou9uzV+M+to+2P+xfp2kh5QmPTsNj?=
 =?us-ascii?Q?FK3Pt9trMeYGltq4KOOykHz1LayqEQnVDp7QSZBfD40sVRDkKsljeFrDYZ+K?=
 =?us-ascii?Q?l3mgqyW7mahqGztvMb9GWwQDx6L/e7l3wY9MwInPPqGcL/Q31PluXCpcwj27?=
 =?us-ascii?Q?mOBp8jEAfOB95UIsOyeQpdQIDE4AGj1pO+bJROKRDHtbtGEgraGfhjiu3K40?=
 =?us-ascii?Q?fH7mVzUSNv8xy/RqKt8aeUdB8F33qk2JEtiOchfZqbDOeclmHg1dLN/U25RV?=
 =?us-ascii?Q?wpVUhc+cvSdky5mPm8k8dDpwtj+8p++V3J3OKvK5DphpmyL1OEBLqJuiqtIT?=
 =?us-ascii?Q?DTUPc1VNRD7tolBfLr7/SDSryYHfLNC7ySTg5U7I2YYa+LH9rY9wsuAmR75r?=
 =?us-ascii?Q?DB30ZR0c8HBkdEEAkhfQx/SH0rUpXDg1gCcJ71X+kiUbiW9IbOnCsjtk6cS0?=
 =?us-ascii?Q?IqVWmAUQIl6/ZB+4Bt0lBHoQbed59Xd+rQY/JWJFq6dMSj4FSdvm/+R8fzfl?=
 =?us-ascii?Q?8Fd4QPZG9utPAaT+noDLQO76X/8tO0m96oieH8T5CjMSbbZcMAnJCJKUKGdh?=
 =?us-ascii?Q?pwr6dhTmhNwpp8QJDz4YvQmmDfrCWD2jn3m5romvgECjFDz/xSWmn6GBptDd?=
 =?us-ascii?Q?XZDtN+TMiHWtO3Xd/vbGKUZPInFzGUYHCIM82ilQCBvKC+EEZ3CLL+0Xrb21?=
 =?us-ascii?Q?9iZLd/rtAMqzKwzuvqiWULuC9ey8eFL9+KhlNmAg08vEcyy5DfsY9nn55wBH?=
 =?us-ascii?Q?LOfXDt1uWhjssnntAHJU7halkgDQ8Knt6w1MS8zKkDQ/nVapCWZg/bZUClFM?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 7pr7VBkzfxokkDibF68/hSpFUv+GQRuZXHrLHK0SOYgWtsIkJBgcS6kPaAMfP+N/WgjbxnXoxRtxh4XD5OLBYWdUzqhIlTtebp4pn9FrTW0kcELErdeRHuOq0UREMMP6Ht5pjF3Bdw0HusBXPKsBOHraoVh3YRZiaApTUCgFdzy0+5uq6dgGkzotnEvPZ7U60uJGv+tWB8udPGh4eXff/vjmxqo0yosKhINAjWqQFKbGx4qNxptngM92e6xQqVfDMjkog3fgVa74q3vt/tU02NLQjHielEjRlQM9BxhVFVABshklcLjf2YKNGeGJVuo9Bj3bn75Qo180wmo0kc5leLYxGgpmpfecF3tduV+kWdX0eJYx41LrSqlmOjYfD5GL4ORKk3zrEH9dtBzwXhEkSHaVDFX8f4q952zfEstu7JsUnLK6BKn7T7l/Zsdx46RSIKHVQ/PP3RyRpOuGuxJIG3kpMdTYgU+gwiIiCgQXq9gyHrk/bGimCQ+EY/bwch6DYO6MD6TJdXseUjg6LOjlVxRNdWoJSFuaZi7SZCsmI/CkDt1ScE0kebF49kxbbY1yeBp4EOd4GWAn/m3R8QqFQtXff3m5BnfQx13eAx0+iBA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 156bc20f-f3d1-4954-f304-08dc373e5551
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4754.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 02:46:43.9405
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nWv6nKrB4MyHY0fiQXCCcwm6GzovmErls6UpEkCWSWD3+om4spAwZ/6Z9rRY7AQTaDmJLKe4pMaOcgaA8vHed2gCZYNVqp81p3+TzKjuM7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7314
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-26_11,2024-02-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0
 mlxlogscore=968 malwarescore=0 phishscore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402270021
X-Proofpoint-ORIG-GUID: 5gPl9eym5V9bJ0vOIvIfF2NUj3pGRlno
X-Proofpoint-GUID: 5gPl9eym5V9bJ0vOIvIfF2NUj3pGRlno
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=fOJPtIcX;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=GZ7Wzm0x;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

>> in isd200_scsi_to_ata() because it must not be called before
>> isd200_get_inquiry_data() has completed.
>
> It can't be; isd200_get_inquiry_data is called by
> isd200_Initialization during probe before any SCSI commands are
> transmitted.

How do we end up with bad inquiry data (or rather bad ATA ID data)?

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1cysi4obq.fsf%40ca-mkp.ca.oracle.com.
