Return-Path: <usb-storage+bncBD4JJBHQWAERBHPYR2YAMGQEJMIU34I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC1788D65B
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 07:26:39 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-696afb315fesf1981646d6.2
        for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 23:26:39 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711520798; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTEcs+Qg8zpK8UfLLTKWk7cseizY0cnofxjQJ6ifQQZxtPGc+6T3uCLGG32XUyMwok
         LaKiWetzTIV57JSn2P9Ek+KT9uchZcMvAy1/684zTcTf/A9zDlhu52yDEFB0rZ86cCDO
         JPym/HXBFs+uE8WtaRO00NAHpI0cVvJJU5l2qeTpqd593kNnFhPTZGb4QnXYSnqUEhRY
         jGikt7RxemtvJBoeQqLPJEu/ufxXXEztnMYx5lXbpUBD5/izSz8AqTSRrt36endO4jEH
         83ye3rljym7Y2mGRIUJuAuuA2TrpKYAkp1aa+Rp27ac0tSfGUbmMKwyk4RgacO9CAEoA
         Biyg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Yy0rs/UZRbTOAOSD0KTJ54Y/yXa5Z9n8FKO2T0+Gnk4=;
        fh=tu3pq07jF17GV7Egfqg8Y3zzfLGoOYlHzjx3NuuUJi8=;
        b=SQBTwju05judJ5v2IXQDjrM/GDzGhhNmsKcCOUjjOwXTY+cH5L013t+fxm+pIE0dxJ
         u4Thvyr8pVMdcCK8VfkSDGqPa9EPtEzgo70BkquNDFIj37VlTx1FQ0ijx+bDYszWet/a
         yu5L16F5fQbOpx8DiRttMqv2Nd2NBD1ViPoKWH85z0o/KwlLAO0k9q68rVixUc8ZqTPB
         WN1OYzU41EkXxysnS+bHtdfu2ZzPL7msaSoAYPPmK3lNtyXcC/EvZ5po4f8bORQ3k3OP
         0S7+n9bGycjTtktHLdFwFtTSRPJz408zfFtQP4IqXtSAdO+bj69y0IkEh9DtZfZc1A8e
         nCkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=klBqQFEt;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::700 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711520798; x=1712125598; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yy0rs/UZRbTOAOSD0KTJ54Y/yXa5Z9n8FKO2T0+Gnk4=;
        b=aAp6qh+n8bBjm0Co27POU+QLN8RbTFbrssLVofKW613W6tMJgUykiVISptDuG7izEn
         he5dJyQu6m8QlCVlJh3kodQRZY0gBfvQd0fQ2jE+MBD2dUgUmHt6uSLKFLAxrPuwlfLJ
         bOosL07sVKs6JjUQfDfSACr/UntmpwzXi0QMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711520798; x=1712125598;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yy0rs/UZRbTOAOSD0KTJ54Y/yXa5Z9n8FKO2T0+Gnk4=;
        b=bT2+805F+GP5S3J2fPxB4DvZeIdYOBCO08pJ/nQwaUj88FR75w/u1wmzn27xanBw0O
         4ZTdXP1BQTXOWyPnxpK8TBI3wXLDGyu+T8CiFzaXiii6R3VOHelU4L+/J+RaAR3FRtc0
         s/s3wF3yDOm6Pn/kg3nwcl5teIbhqgtf3QwvZIkN9XZE4udJioC+c9T//BLJ/r58N585
         rHLqJHrPNf657F7Enjxqbfj2ihHGY/8EQMPA/k1+k+8bON0WJh7V9l70vxKLvytxNJSd
         rPh5objQq77GqynnIUcmmOPqEk0VZoppzzFK9L64ci4PPrXoOetI14xpfZaIQs3tnbtZ
         LMQA==
X-Forwarded-Encrypted: i=3; AJvYcCWXrKUzCswMPFS9LWkB/Vt5h9NlttfVeuN7gdnNsFMpcQSbZFYsIftsvkfVZ3Q7X9+pnMYdbWKrYP++/N3cI5Y6I9Hkk7EVx1tb
X-Gm-Message-State: AOJu0Ywl8KBoPxjgUo25EjBXbFEFIxso2rSXQaGGPH9/boMUsSDMbPmp
	KQOKBilvICjFpCPq+PftQf/hzdo8ogrhqReFzKFaxppYyEQcEOoYbhdUYKLPJ6A=
X-Google-Smtp-Source: AGHT+IFftXUAOt5NmxAGNWiocNcVX6aGd3jAk/qbB3YsiecRUpzUWRfOENndxmj2bGw51BO+ZRnq6A==
X-Received: by 2002:a05:622a:44d:b0:431:47c4:2030 with SMTP id o13-20020a05622a044d00b0043147c42030mr3552722qtx.24.1711520797697;
        Tue, 26 Mar 2024 23:26:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:180e:b0:431:39ab:805c with SMTP id
 t14-20020a05622a180e00b0043139ab805cls1541522qtc.1.-pod-prod-07-us; Tue, 26
 Mar 2024 23:26:37 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWq8K9fLgSvNbKwOIgStpSt9yNCC+iFzYpYFQznl8OYsG7UqqrCuaCJKElSpAAFAK2b68CyBcfP5AniLevDhIXEG00uEoC7ZsXZ1oGvtN2I8/1n6ro=
X-Received: by 2002:a05:622a:54d:b0:431:3034:e7d7 with SMTP id m13-20020a05622a054d00b004313034e7d7mr897465qtx.1.1711520797301;
        Tue, 26 Mar 2024 23:26:37 -0700 (PDT)
Received: by 2002:a05:620a:1a1f:b0:78a:4f40:42f5 with SMTP id af79cd13be357-78a6c1329c8ms85a;
        Tue, 26 Mar 2024 22:45:12 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVLeR67T9nTQiqmopEg0vpW3aeR+Iypge4R1K6XRx1TIShJw3lV+/OPXI1oc+ykGmhii3pNMaKn3a2uzXC9TcdsyoYDmvMoU8dBiKm1zdQYLDr/jW4=
X-Received: by 2002:ad4:4ea7:0:b0:696:a4e4:9095 with SMTP id ed7-20020ad44ea7000000b00696a4e49095mr3139412qvb.22.1711518311978;
        Tue, 26 Mar 2024 22:45:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711518311; cv=pass;
        d=google.com; s=arc-20160816;
        b=jduNLEjHoo7nmnrJKG228u+mNlNhxhGAWnFfNkteJ+lFNzoQaZCnA1kETVU+Mtr986
         ZjD4mjTXllXqfi7t+FPyLg5FITd2vAAvJoZ5LOANnjoei77dmpnHNZIkBXgKQHdhQZNo
         UCj15/TP9+iJIg3yfiBfsHiZbmJo5C0DowugmxQ9jTQF+bQQ/2C3LUYGiHrUCQY8hOMQ
         ye1Uf70QjA5wS+Yl8y3mZSeJ6TMi9jszkIbFlhA5jVDwIS2BjvGpsCqeTy5K78X4ByYN
         nGy5WYkKcwhi2YDCVdS5+b9VObgD4We0W54tr4WPNV4Is2I8u7d7EqDA9bp4ZIDatDGp
         DSCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=a6g1k8vaWviVcenabrA4wGTHHxp/jKeST2qd+QA+Ps8=;
        fh=JvshXY5IgDaugzmDfE0CAdGWCO47f30mzKrc/1++kB0=;
        b=qpR+yNLZFXgfkLyNjeCt3JeSbY8ewpaScYbeCxrtz4P2x5lOA0lTEfhEIGPIldQED+
         5aDiOxbW4c/PwHE8zmuwScZOXVCMSO971XtCECdicDrOf4CxDl0Tj6LufHEdt1vFLUUt
         SPwiuvxMDvpuyy6zwj+cNDsPHxSqad2J+2JvayEnxOFzeQ5CKWWHa/juXXvVwNnVkYpf
         kimlFdivY+KvFLsAgC5ouxfrGIIz+FCQHfSd4nzYgLuLUe8KXTcqpyYraxyF8MEsJdVn
         6sG+MCzh32HZk8RftDGYVPjdd5hnf3UMh7QCOeYVpWohffOkiF3Tqx1iyWW9gYptuvHq
         FO2w==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=klBqQFEt;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::700 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on20700.outbound.protection.outlook.com. [2a01:111:f403:2019::700])
        by mx.google.com with ESMTPS id jv9-20020a05621429e900b00696a4095219si2235862qvb.402.2024.03.26.22.45.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2024 22:45:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::700 as permitted sender) client-ip=2a01:111:f403:2019::700;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PntNfRmHlnEZ4kWOGb5AV3QKiGyyP+mz7SJSfEkQPxb4broKCoyJeFwwf9VZ1Wc83UOEh5DQBPExUQnZwVWVx7gYpDRoyR8zrqNVSkJbfGGEhIEFACo0zb5hP1GY8DmDrkitx13sJocb/+fRd8Dn0PygC+djsroC2hphi1tVc/34e2pDsJp7HJoNTgZIS4wuT+OEGZxRruEPLgXOHy52zHwXBlT+Rr6vimzYGPzkV8IQbNfFopb6PTuHYCwI//bWLLLLBlOeGgmXU+A5Xaad8xnQq5DpEd6uFNGJVhiq7zpfzTGFYijjfAW4hYrqgwb0CPh3389+aAvnh+yPUsf1gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a6g1k8vaWviVcenabrA4wGTHHxp/jKeST2qd+QA+Ps8=;
 b=QFe2pcoBYrOW77VHr1kfyaXD9Pce8MTUGQD5h307h0wDv06T8w+UmK7GnRhSm9uMwUGSYbxTg6PUB0pP8ly/bqhnE0WClp43hZRoCnukmata0rkOyq+EzHZ1HKdI2Lv9hII/7et0XI4ioyC65ZzhqfvN3f3CMVmeRiRI7x2IZgxkkh8Q1BVH99TOh8nnwKYh4SFoKv3QLUaDX4ZX1oQS2mHYG1xd/2detJC5u800yFPETWi0vhiPLFTI2nOY2a8NR7AWun6thVWraFlw41Fo7VBPlOGVEhZUYusKe/1a1ZDtAMCl3hKkZXBu8WvTBItIiYX7v6M4zDlqgfsFZbH0bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by OSZPR01MB9329.jpnprd01.prod.outlook.com
 (2603:1096:604:1d7::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 05:45:08 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 05:45:08 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH] usb-storage: Optimize scan delay more precisely
Date: Wed, 27 Mar 2024 14:51:30 +0900
Message-Id: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: TYCP286CA0200.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:385::6) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|OSZPR01MB9329:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V+Y8tbVRDXKvLFTdI3Md7n8pWxerRyvpm8G+kUzUdrvgTf3I8ts97gTgYdmz+6qdlARQZuHDW6LhY//GvZoXlqYljxQsbGB2QQ/Hep7lujlhTBL1J5782DHYhO6osmCb0Kb16JjUBcaeeyIttKFYwcZD2h+CPGYq2zFCrlLtnfeyiY/gBTSbO6wTM4CSoIwgbdWhIl5K1UaviJWsqPiYAcZ/TMhea5+MBE2Xhj6Q5hd5yVF8QNGIn7m++4gF3QJMYme6VsFQyucIZOuuLbR9xE8jS1fjxtXvnt7Eo2/ntveGAm/OmWn3coD8byrIewknS0zIexJkHhtLBoG7+H+sMMeeUZ6hN7w1c835SYZjxojDsOGeea+DwR98B2Fgt+ejx8R78fvBPlV1CTyd+D6GCB+f02nKD59VpEUDhnCvKT2LrCPJxlN9iS+XPIRtEJlLxhG/ZGslqmTPqzCw+2NP4jEQbEgZ4OkOrIli3qq4P+1JxJaVLJdvJB4e03P+wr+R5Pi7lZLJrNGFrhNJ92uXC7yRUVDCNNqVxnXfDYrtYwfDqeHORX5zg5xZpEV7hlp8gd9g2KgGrsNz7p57eqgIs8YQJyPph7vtchsLNRWvmLqiYG3fm3ZR7hYsgmPQa2zQ9b5GK5jIPAesYi54NN3p3Q43sspdzTWUoLEVpxpJSpaEnHtLnogusiJIG1d18BSXv7W3Isagcd2sYtd7Wcg5LmF21e3klLAFGdOBCe3oONY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(376005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dmkfGP4jcxxEW1hoFwbG6/iGJM2nliiN8qnmuJpPNI8MMd/DBnYy39+WK5lD?=
 =?us-ascii?Q?BPi4mhnQ8KVakEjHuStLyNNVNGZgimBnwKQuEgrdCgu2Iz3KWHtdjcFXTXQM?=
 =?us-ascii?Q?o36Wy4gX9SYbW47+BbQi14/CKOHwCHH75LNrFyulzu8c1D/I6CvVEk9tkdTg?=
 =?us-ascii?Q?vN57esqpoIZC5q1RIpkZBRswaCC+drSfs2ve+2kIpluq+4b9pDWECCEG8wQk?=
 =?us-ascii?Q?9Pxo7wL1Lz6D/5j/ABt+ypJqf41tLyhx0jLPa+5Tn6ClrjXJpNaxJ2/YIdDE?=
 =?us-ascii?Q?pfHrvpy3GDq+uJHD7/dfhWPM594kAibTm6UL1Hj9uKhOOrNrgVORSPDkx1F+?=
 =?us-ascii?Q?z5TqgpEHNThB21IsTp1QGH6/Oq3OeCrRuaLYh74F9MtkfogCAm3q754DDFwi?=
 =?us-ascii?Q?XWWdFiDX7e+DaaeQiqrViq/inMci2akwo2v0+AMAHW4jsUrTrtl15GCg7U8U?=
 =?us-ascii?Q?0Dj2LNXaBB6+Mdh+4LWgLClOBy14h801gyVpZbhpDERWrgd227VEZtDZ3y2c?=
 =?us-ascii?Q?7aGcTQ0mvxp1LLkBax0YAkzHOUPbucHsNZpF1bSavgtfQxrmLsg12Lu78QeC?=
 =?us-ascii?Q?P346Oktz+0z18sPmmexKgtgtzqKl6XZbQkM3BtcbycRlSKuXzUCKRcJU8auZ?=
 =?us-ascii?Q?e7flRo7A3XWtFwyR6a9SNcRf3r9yCRVm1EU1fZq+bo9/h7otSj/3mcOOmteT?=
 =?us-ascii?Q?ia1xfomiObfSXSlNQmw+utdNACQr97KtvY3ZFhnB9CoIDVSnzpdvIrfkkcku?=
 =?us-ascii?Q?qAeIEms9YCVG5sKKAY4RfMyfPCKwuzMSwxg/tSkTPg5PWfzZ25l/TkaXhRoa?=
 =?us-ascii?Q?YkS6YKMav6QiynC2yZAj4nnCQDLKuKV3yNv+GQsFPMiR7/yFzeT5qcwwMQox?=
 =?us-ascii?Q?dGJ+iestFT5i5G0yPvibq3DIM3ByEiAcx/KO7GLpak1l8yI5GP6Fxmzdf27z?=
 =?us-ascii?Q?PagjpEKin7W/jmz6x0F3rnRdSf7EwDIghns1BaZ/WM48y00pCTx+8JQ6jbhA?=
 =?us-ascii?Q?O870zlf3H3SxF36Gz2JQ59xFx/bkdmzvmwuuz5CRT1Wom+sGcnERJVGZ2lZ8?=
 =?us-ascii?Q?nAIgbfe2EmTGgsJ6/j4lubjPDSb4+k8/OOXY0ciJjL65gxgUTiEDCh2M73af?=
 =?us-ascii?Q?KsIXl3ozCBBBrNEmWu7ROClIr/jxFRXpigXCgytXMn7YcKL/roRzUXiKYn4k?=
 =?us-ascii?Q?+1C4/2SE1sc5hwXZoglILJ0eRxq6e8p6DcdohJKLzzLW2Q5r4WipS7cRD2II?=
 =?us-ascii?Q?cs+djvMeGOJFTAQQXCHctX7/TlB9uAeL4IkTGFf58bjo/jr395TKbkmoEhhS?=
 =?us-ascii?Q?/DKDwnCDEnrSxIpvVNlqgz7qMYYLmf4DkRc8YAH71Xr/x8na188elMhncDT2?=
 =?us-ascii?Q?d8KyIhb/EHKDuKlPIv4fb3NLP4s5xP/O1GLwjEn/p1ZgRFxAQ8BbE5r1tG0Y?=
 =?us-ascii?Q?15E1PQUAPw9WM6b0mYmiW56PUU8JxeCNJ1meeZtXLAUuYNAr9P9bfQ58iqfG?=
 =?us-ascii?Q?JuX4PnjjN9wkMW6gvGVfEK3u6z2ohVw6RBKil1+/iQ+l6KVjRHu+ReC+Z4m3?=
 =?us-ascii?Q?wiYRLsZIAX0Jin4Y1rTLBxYRJVuCCvOBjy/uXwxl?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 741c1a02-6d5b-4a6f-5cc3-08dc4e210f5f
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 05:45:08.0464
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OCg9iFOTG0uyAHCwC5jP+vt/Hfd3s9GODfxkn7Mmfx6zuS6uAaD8xWuAsU0YnXaKbUwBcZgNMcVb2WogeZ8P3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB9329
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=klBqQFEt;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::700 as permitted
 sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
X-Original-From: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Reply-To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
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

Current storage scan delay is reduced by the following old commit.

a4a47bc03fe5 ("Lower USB storage settling delay to something more reasonable")

It means that delay is at least 'one second', or zero with delay_use=0.
'one second' is still long delay especially for embedded system but
when delay_use is set to 0 (no delay), error still observed on some USB drives.

So delay_use should not be set to 0 but 'one second' is quite long.

This patch optimizes scan delay more precisely
to minimize delay time but not to have any problems on USB drives
by adding module parameter 'delay_scale' of delay-time divisor.
By default, delay time is 'one second' for backward compatibility.
For example, it seems to be good by changing delay_scale=100,
that is 100 millisecond delay.

Signed-off-by: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
---
 drivers/usb/storage/usb.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..f4a755e364da 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -70,6 +70,9 @@ MODULE_LICENSE("GPL");
 static unsigned int delay_use = 1;
 module_param(delay_use, uint, S_IRUGO | S_IWUSR);
 MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
+static unsigned int delay_scale = MSEC_PER_SEC;
+module_param(delay_scale, uint, 0644);
+MODULE_PARM_DESC(delay_scale, "time scale of delay_use");
 
 static char quirks[128];
 module_param_string(quirks, quirks, sizeof(quirks), S_IRUGO | S_IWUSR);
@@ -1066,7 +1069,7 @@ int usb_stor_probe2(struct us_data *us)
 	if (delay_use > 0)
 		dev_dbg(dev, "waiting for device to settle before scanning\n");
 	queue_delayed_work(system_freezable_wq, &us->scan_dwork,
-			delay_use * HZ);
+			msecs_to_jiffies(delay_use * delay_scale));
 	return 0;
 
 	/* We come here if there are any problems */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240327055130.43206-1-Norihiko.Hama%40alpsalpine.com.
