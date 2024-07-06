Return-Path: <usb-storage+bncBCFP7G4HQQGRBCFMUS2AMGQE5LEXYOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B0F92925B
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 12:01:46 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4460f0951e8sf38516621cf.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 03:01:45 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720260105; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hd5TNGTWvLizGEtmZxgg9lkneRkl+EuzjpawZVkxbcfN93vJb4rS+hgEMcMvyP5kzc
         rh07JDuZLfaM7cxO8CgEqkABE85ven/8xDgvJbsi8xHjk5JJ6n0aIs2qcB/ae5Bp/ELX
         4J995kO+Q9yQroAAbPAvlq8xIpfHlWSn6pV4OsBsXMl+JSTeT1VIC74YMA8McDT9yupW
         MdydPOpQi/EaAQuZ2eA0/4rCPWAcxeg0ZdIjyBPffekkgG5KH1fr4OY75a43jygYSPj4
         LwqAdbdmGQDypCUcxZd/H8ab5dukgHMoyCCw5wGE5vQlDE7/ZYo1e06JYP+uTQdNWHlU
         +m5Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=ZBiEXxP+hcOr8njTdqaAsGeqqdC7GyzF8HR9V9Xvhp8=;
        fh=RVhGvjL+KhdkKHghKv3yFh0wH9K95ev2gLjXk0alloc=;
        b=BDuS+10RuO1EMlUZ66K+hsDeZnbcgFrAhwhV/ax5RD665IC9edWnELa9KGPwKHymWF
         KHHaMzXScrOqRE58rtCIAF7/J2Vscp+Ovsyn+ij29utcinshCMPkqC4R8twIn1ciyeas
         /hCK7RYNiVSXs2h+2vtGzwRmDDus7IDdo7aYrpaWfu0SxPZDxd/3tvRQfsbWCm0pR/JQ
         B6H87iYp/e7xnMCHHtwxtPrG2ReFLkjmMpk4veJw9utPTbqYm4Pwmx2FBsTHUp4/Wlod
         pdzj6XP9VITRCee0T26nZ1rvDx8CsVUu2y61MvaB44ZiNs/IlZMjERj21bTB+21V6mM/
         fvfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=loX+f5yM;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720260105; x=1720864905; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZBiEXxP+hcOr8njTdqaAsGeqqdC7GyzF8HR9V9Xvhp8=;
        b=CZBYiWQ8WfmiVB77YhoYYLUbPjV8rIwcqIqWs2xASZjhN1MllZQRM/stScSooq+9Qa
         ysZgfvlxQ0rdZypD88vDYAPZ1uxzkeaoTBCd2kE+btRg4spFTUVz/uxxxD/x2vjclu+G
         3iuN9xFFxz434VAqr7uJr23MWw7JtkFfAtAO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720260105; x=1720864905;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZBiEXxP+hcOr8njTdqaAsGeqqdC7GyzF8HR9V9Xvhp8=;
        b=JG+ZwYWCZ42LkB+5vQUb2lSb/uV7z3HwMkuUR07sOBjyVLnuJcRHYkWBUZitW6VQEK
         Jd0uDxztFESAo/spd58ltqBEqwfpmvnN8QC5EVXNmOEnecDvfilb3oedFXoyRPR/jIrp
         yVXGVjnOD3pldZ8hNnUUhW5OqBrDqA5kAV9tGOzupjyRn/TeoHoacGFgkOxegdF7jnqg
         fwdvzupmmngdGHuMsd6yTUxFPUr0PaejykLeERidYGoaYUiz1MABxPDgSO//Ygpt+z5j
         sfpAFmwU+OVcjmCREbnLZ4wWMBqC2nCVbt3PR9aBt7RsmXphQtbCQmc6SFjl/qZd3Uai
         SZHw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCUA3vEndpT8X5Q6wv6iqai77IR6iHhq4oGaPZQ2Hza+oJl9HvPzTOifIo57x9ToN/1XpW6nCnk6MT+2aPAliBbz2jPiOxj4kHWD
X-Gm-Message-State: AOJu0YwqyzZOjy5/T0XTw3Oj5spOsBnCQBH6S0ydz5S52YOSYdYH0g31
	fCskDqvPaP7SK7i88+UKnjGTixxSY6t/HfGG0qmSeMKUtxJvVX4isJZnkgMo7a8=
X-Google-Smtp-Source: AGHT+IHoXv9WKPxa6T+9LanZZo7ShvRRfQ2kzleAOCsBDbS+smnb8XDHpMTWRztpRI/sj8suYUzxjw==
X-Received: by 2002:a05:622a:1815:b0:447:e532:b370 with SMTP id d75a77b69052e-447e532badbmr2538601cf.10.1720260104808;
        Sat, 06 Jul 2024 03:01:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:478a:0:b0:447:e58d:2be2 with SMTP id d75a77b69052e-447e58d2db0ls325011cf.1.-pod-prod-05-us;
 Sat, 06 Jul 2024 03:01:44 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWVStFG46A2W9hJyTAHdOwt4V3C2Xs/OtjtS1VWSn4cWupHtVDrXYUrqPvOuMGqeS7d6j1rxCZcNw1uDhOdlsj/jvtOo4eP37jqh5Leu5kUllUS8V8=
X-Received: by 2002:a05:622a:589:b0:446:385f:a58c with SMTP id d75a77b69052e-447cbf974e0mr77776571cf.54.1720260104023;
        Sat, 06 Jul 2024 03:01:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720260104; cv=pass;
        d=google.com; s=arc-20160816;
        b=c5UD8PoyyvrVcgHrYkeOmGi76xdA2fIbyd0QBSp2veSWY+eop2o6EOfOOlLxRqfZFN
         k6zUIH/GbvgVfqzvAIGwcrcldOZJcr9RXhcdMmlMPcW5ejVxpZLOOa2dROH5yuKK9D/8
         Hn0YTwJ5gbz8DxnUgyRAJLiL1F+EMPXa2Nd3qA1ngaiP2yqBJ+SdzXuAn65wosSNNu+4
         fEcAwj3uXd0p5qOvqCEX6JZSCZYcGaJVd7oH/3EfxwED39ABqMoXKNHuXxnC+gHpR7Y6
         KKP4bNS+uBSbx3/CE0HIEpycweq2XL29bp9Y787OmDbnpJH2ctEhjKoPsraXXRu6BpoS
         OAIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=IFjMji8+ZX2RUdQlqvZpqojMNot+BRk3/n7pqXudwuE=;
        fh=4HWS1BnKmyzr1jKtPfMCWRzQy1hmtF9bNCvfHraD4kg=;
        b=v465JK5bPFykMgt6pWCvM8ObQxwl13I0SLJbetPG21vgwArkNYsPvG23faiIcXoPjc
         2y35x4n31dZZb6iMilzEAGRy0+1JBe2n41c/5kII5PIl1Xqs0WYKgP64g4OutNV1CC1k
         XHE9u2ZRmBrfXzkHZ0jduBiQseh0d1kox7SNPzmGJ/l0s279Ygis5/kHAReqNBTU3TKp
         oqQgnHlRuvENdrgyjQr4bG6x79QqnT4GQ5gg98zd75p4HRAX8Ip03xxmzCJ65YciNxHU
         i00GEnIB8IcbcPfrspGabc5O3odE5pzVPmGk0I/3KsGe/O2tbvU+LoK4dviVgoABpUYz
         oB5w==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=loX+f5yM;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn20800.outbound.protection.outlook.com. [2a01:111:f403:281b::800])
        by mx.google.com with ESMTPS id d75a77b69052e-447e0502b0csi11909021cf.754.2024.07.06.03.01.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 03:01:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281b::800 as permitted sender) client-ip=2a01:111:f403:281b::800;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MEhBBVq64vN+AYHzuGDwASBLA8ywxRLRb27FrywRUBW7+IDflwulfV2Rdl8lj2xJJEYEV9Hs5MTqBvDObq6kV/3z1VTSMXFJl0vX30gMDj5h+MhObGEpAYwdiy4EAGJisuigs0piKUkk+hkT+eCZhVHbHBDZ1nDYrVv044FFHwxosyuKjH27w/BE3tQNVqHDtzPdeURVcktFF3b/iA5YjuQiaYbZevsM2J8KcNP+qNxPoP1VGcz3rOditurcxl7dTnUFuLaV9umWSaHl4aOFWcZa1udMe8Yzvbux3hNRSDQsAH5VhjW2HSA3Jg7k7lS21HnIxqsYCKx6L3jKoGD4ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFjMji8+ZX2RUdQlqvZpqojMNot+BRk3/n7pqXudwuE=;
 b=QzVYe9WANFrA39g6W9s3BThmVT5RP3/sQ5+teWpG72ZII7cmTtJmJ21RfwOx8BXNZEReHWRVe1sBHsetbNlmjT29SqEMm0ZN6N5IeFE3cIwYv5kMkJIv/B1XPPUr0egPKTx8D1XhW5DapnsN+gcB3hRBxuzQc49qK83cxGQJ9e1+gOKGS4OK8PZDccL1FLuAzplpnwn0QbSMruaL0Is5ezSW/Ima8TWRuBeuizDObQX8+cPBwqLwJ1xyOKcGWEe0qYR7NJoykV4iFM6e2mmvKxYg9KhYl71NgPOw6zGpcqf8aiWNPeIRAH3IoRaclboQJjjhYgnLhAaI2NTGr2EY5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN2P287MB1372.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:1a5::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.33; Sat, 6 Jul 2024 10:01:38 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 10:01:38 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>
CC: Kerem Karabay <kekrby@gmail.com>, Orlando Chamberlain
	<orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH v2 2/2] scsi: usb: uas: Implement the new
 shutdown callback
Thread-Topic: [PATCH v2 2/2] scsi: usb: uas: Implement the new shutdown
 callback
Thread-Index: AQHaz4t+VjkiMxF+7kWm0GtAei2JZA==
Date: Sat, 6 Jul 2024 10:01:38 +0000
Message-ID: <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
References: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
 <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
In-Reply-To: <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pwObd6efDSo5L+n51THClYj64pmXlzlR4hhgqZrXw9FvJqeYQkeQmecd4ZtaVn/g6yWNUeLNXQI=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN2P287MB1372:EE_
x-ms-office365-filtering-correlation-id: c2ed1494-49b5-4d21-63a1-08dc9da2a099
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799006|19110799003|440099028|3412199025|102099032;
x-microsoft-antispam-message-info: Vgz5ZHmBuaGT7XnpoXYNu/xYfoh9fg/Lyro8G7QCKkEuXOErwxgDVF8yVXL+R/rHiBAD7iATI1TRDIjgLc2fcj3cWFFwLSLIgQtBYAxWkH+YNvNIWy+R4qsBV/LShVAIonrePMBoRCQGd1PPFtJwcdUyMFiSiaXX8faDrN1xLnd5AWB5Ae7DJuavqjQAL0KKmitQy4ESF2B9y/Bem8BReFcA0gFOvJmjW6Se2fTpwse4mcIz0qMVSU8OmEyRAH/wPNuMWDH+mRUJ+X3bwqkwmdhs7AmkAlE0yA58mFUXAUoSc7yXKzx5ER0x8BUdEKrwtaRBlrNTppk98WKiDjOAW3Pn31c65tPk/rtQQe9JO0HjAWoJM+Okyg2S+EbSUKhgAZqiUNf03+6y4uggZkcx04Gzh3b9Twgpb9MtW/A/Qf63eh67gMKSSSJwg8eF84C/YUrPy0zqLcnxwkzh4vfb9rF+jRhyepPb0hXfSJdMPaSFrUnB1jxbADNCyC0++Z7tc5/F5kAJwepdUlMV0Y0PY56jo1oetZkqC8U9zu7cxmXmsQMC3hxrEqSds6L3K5wKPrjMsJ7pRL8HNK8topy3VKPVKyikEQEEcrDfUACKnEyWlMs8e9sM86JBTJCB4wNCxPfaHVAoKGrVqPcb6o+O+w==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9xfhOKjb54NR8NyRSbY6j4lohbxwPEe6e4l2Se+gtfbvgZ5Da1gzrTOGsE0i?=
 =?us-ascii?Q?JO2hIBWPfAq/e3kRoJ0myEkI+MiIyFxWYRl+Ino15qME50QKvT3zWP7zFFor?=
 =?us-ascii?Q?w9AbUhE5OHp5odj2kk+80yqJ9ogloc41OtaR3oIg+39rDZ2hlO+Bw5PWCFf6?=
 =?us-ascii?Q?sAzG3DGKDwFp+dlH3n+PM0DuQ8KSRxtmmlrpuDnvyrvPSGwIeaVOAcTnmJyo?=
 =?us-ascii?Q?xQNWIA8kdDDA9oTSvM780uBDD8VBzI4ICmkVoBHXmbH4fIldxuELnc07x/Ho?=
 =?us-ascii?Q?Tq3cRlF1H0GKOA3988u/QcxDn9tby4r9d8E/4asG6XzrsXGPYPyrkQ1Ovxez?=
 =?us-ascii?Q?nVaATszjBRxFaabu6vzWJRkIZKZEGGtGsPPVBXF8FZ992zJP9XsFq8VJ8/rY?=
 =?us-ascii?Q?49uquxV5S8vWHzO7w7aXjQl0JhN5Upa0vHmkVXIfbS90l6NQ5lEUJ3O/+2M1?=
 =?us-ascii?Q?Cb8R6Yni/IoxuTIKHGOQHiynuxjc1zRdyEstl2BsDnv1PYEvbSNRwj4Pgqx1?=
 =?us-ascii?Q?+8skArnsOwotfxfMYf3C/L7cSRPJCkpK7R6LkwzqAt5Efi7amL9FFGjiPWZw?=
 =?us-ascii?Q?MXRdO1xMjQYE+obpy/jpqYMRvYhXWQ5vZwScKMO5rVlt/YCIYarIq2xi0AUf?=
 =?us-ascii?Q?QSAHhDJtlftoPG6o1GjtAHstaXrUfSUZWZJy+dRAvTG956LnU42AxyR01K+R?=
 =?us-ascii?Q?Mk/2qUR+SQ9l07c8dws4QCb2fr/WmngXZfqHT4h1WjpbjLi4lOHVYZAOdU1/?=
 =?us-ascii?Q?H5b+37q0aShxPky7ZG/r1LUFvFEaZmOuTZr/6U9hSFL5q/Yc0OBDMmp2UtB1?=
 =?us-ascii?Q?svl5bOLQk47+c8xs4kn+CvkhMSJnpXRMF5WE5EMi53faUwVEu4dt1iQiT00D?=
 =?us-ascii?Q?SWKk1FRqxtTGZulSsBZaj/JryleeFBlXoUiTPq4XwHs1jynht68W5qtS2qDK?=
 =?us-ascii?Q?rhGfK2QXtEDbhqZCl2XtE3eibgN8DWKgDxYzRZIRVQWDLDZv7mYOv4EocHR5?=
 =?us-ascii?Q?/rlNANB29xSjdIJmuawiohoJnMoHlMu+6o3/z+9WD3CYVEvfL/SgAFr8xllZ?=
 =?us-ascii?Q?37WrZxh20zGhC9rQ2zEKyvjq/6tuNU7Q/UzZ7eR5nNBFGTcSRHgYi6bEMEqf?=
 =?us-ascii?Q?lbnnYLbGRb1YqboE3CUrKPM92+lSDP0Hs3g/uqDV59gjon4Ac2HmD9yAcc88?=
 =?us-ascii?Q?QBdeoVb0oG6d9+M+qhqNTu0gBsnauBHK/J7FOlYHD8VbMTP09tjisBazQyMc?=
 =?us-ascii?Q?mkJJskNj6JNKQNH/U69aZNIdO5SuYWxm9qJMwsY5l6XbpJ7vl71Rtsbe1hlP?=
 =?us-ascii?Q?WZj9y+hEXLDLrOg2QBejmn3E?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <19EB418F74654444830B8815E68C0254@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ed1494-49b5-4d21-63a1-08dc9da2a099
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 10:01:38.4084
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB1372
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=loX+f5yM;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281b::800 as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
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

From: Kerem Karabay <kekrby@gmail.com>

This patch implements the new shutdown callback method added to
usb_driver on the UAS driver.

Signed-off-by: Kerem Karabay <kekrby@gmail.com>
Signed-off-by: Aditya Garg <gargaditya08@live.com>
---
 drivers/usb/storage/uas.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index b610a2de4..0cdbcf825 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -1232,9 +1232,8 @@ static void uas_disconnect(struct usb_interface *intf)
  * hang on reboot when the device is still in uas mode. Note the reset is
  * necessary as some devices won't revert to usb-storage mode without it.
  */
-static void uas_shutdown(struct device *dev)
+static void uas_shutdown(struct usb_interface *intf)
 {
-	struct usb_interface *intf = to_usb_interface(dev);
 	struct usb_device *udev = interface_to_usbdev(intf);
 	struct Scsi_Host *shost = usb_get_intfdata(intf);
 	struct uas_dev_info *devinfo = (struct uas_dev_info *)shost->hostdata;
@@ -1257,7 +1256,7 @@ static struct usb_driver uas_driver = {
 	.suspend = uas_suspend,
 	.resume = uas_resume,
 	.reset_resume = uas_reset_resume,
-	.driver.shutdown = uas_shutdown,
+	.shutdown = uas_shutdown,
 	.id_table = uas_usb_ids,
 };
 
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3%40live.com.
