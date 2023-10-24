Return-Path: <usb-storage+bncBCPNJ44H2IPRBAX33SUQMGQEA7WDOBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 567E57D4615
	for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 05:44:04 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id 3f1490d57ef6-da033914f7csf570459276.0
        for <lists+usb-storage@lfdr.de>; Mon, 23 Oct 2023 20:44:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1698119043; cv=pass;
        d=google.com; s=arc-20160816;
        b=KRqMWKS+S93WlUsPJN/27zuS/kf4wZ42o/8hnnUaTseAYjfZcAbdtg/YzcdsKEN2SN
         /y5mqFQm6kDGE2u5eabdt8GTRTXO99cehiNidBMwFi56XffdD8iyklRBgTSYpFUzYl2X
         YrJ8ijvB4ai/D5gZCcoBZW3p4GxyDxnYLFyMLZv+96Wss+Y2ZfmPkGApTxdyqUVOabZa
         8/XyRj6CexkYzLBsK7xltVMJenxgk1HpDmiB2Ni0/+bb2EB/1eb5CwpGw6zHyOAZ3ZEm
         wMBxZhyk3ywriUCmOwBnMPMFqAzEcqvJLcma2Y0zgoYlK8qEG6KbTgHfzrPThJi3dtnV
         5g/g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=1ts8yNcK3GStvy28oI3xRIfVea9o13I+wbwtMw4LQI8=;
        fh=MHL5g7SWIYriibTAlpxdXR6QvKDVsGBI7vB0mkLY/MI=;
        b=Y5ouknJhgvBGXHTKa3btg2HKX2wMj2xTWHbAckrI8bsFFSSpqF1gsGSqJDwa/4Awkn
         KBwsk/ooqcEYfgPF+XqSWke6JxWNRpN1g3Sch91HHuo2o3b4H8FnXgL+wyWm7S+Ge118
         WnW+AzXri+8qSbzmpMh3/c/eyXE4Dq2Bi1OjyUSRu1u/9QEuFH21QKFJxhKi/Q255MIZ
         tXDa9UYGfypN3kyYoaRXvdBykWoNDtIs0s008g3yFw0kVWUjsrtIJdTA+zRRyE0YOAdk
         86xsMjDOJ9tmIav3LEYh0u0pCx7iehwP1orN+0jjCXvopNCcv+IG3Z2//epBj6MqU/6u
         bT8g==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=rrE82hxA;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);
       spf=pass (google.com: domain of prvs=86611a09d0=meng.li@windriver.com designates 205.220.178.238 as permitted sender) smtp.mailfrom="prvs=86611a09d0=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698119043; x=1698723843; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ts8yNcK3GStvy28oI3xRIfVea9o13I+wbwtMw4LQI8=;
        b=XGSREXK2OaTWlw0a8TngvKa90Cn64Q4yBk/IFTDyOts0ucdRq4G7wj5+NKMBdoePSX
         SGF9EFFAEZONHie9tIzsv5VpZPOjzdAcLsdqowqGkFqfrl9zRTg13o0OViTH89Mk40zv
         705V8OXdLYToDZBOojBQCeNi3xvjBdhWhup+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698119043; x=1698723843;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ts8yNcK3GStvy28oI3xRIfVea9o13I+wbwtMw4LQI8=;
        b=LaevolOuHVkmFRsQZBME4K/bbL15iT0qMFIXtWeubNLiGfjcDSVpdVFG1fU5eFpKci
         k0Ms/bhPOZoC+T0Mw1U4i8AaKUkb5TvqOM/fLr9j0m0RGAwj3TQ8X6qmAT+n15evm7FL
         rN4gmsz3yOw0Z1cwngF9KJv7gmUbElARi6Vv7qar7AG/Re48w93lVQCNV1TuQAgDTmxU
         yHTUCU9sY6iIKSuYqie5ok6OR12CIdvhL24IFrwmd0c2kFMqgNQ1ir7ECG1Lrpfy39iQ
         Ri++cO0QukSk3DdWyXEBJ1DNWh0RCvXncYIGt0ELdOaYvD+27e2F9tgYEwDluoaA4r/6
         HHdg==
X-Gm-Message-State: AOJu0YyR7ZmnJA1WbK+vR2uK2EDY/rsPdBKxsKNcqlCuKFWzTTfw+9PR
	iYuhOo4XFlgKaI8lEKlgFKn12A==
X-Google-Smtp-Source: AGHT+IEUHk6JklzK5f+65F4hP/sTkT6bVvW1Z7NcpFCMeSuO2/4fjjJj+ecYlWAWwpSwvAujr3DS0g==
X-Received: by 2002:a05:6902:1083:b0:d9a:e6d6:42f8 with SMTP id v3-20020a056902108300b00d9ae6d642f8mr13691359ybu.29.1698119042985;
        Mon, 23 Oct 2023 20:44:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:6c05:0:b0:d9b:dbb4:f667 with SMTP id h5-20020a256c05000000b00d9bdbb4f667ls1549999ybc.0.-pod-prod-04-us;
 Mon, 23 Oct 2023 20:44:02 -0700 (PDT)
X-Received: by 2002:a25:bc90:0:b0:d62:a199:fb18 with SMTP id e16-20020a25bc90000000b00d62a199fb18mr10285379ybk.60.1698119042132;
        Mon, 23 Oct 2023 20:44:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698119042; cv=pass;
        d=google.com; s=arc-20160816;
        b=SLVZEPlulVh6sG/ooDPlSs+ogB9n47H5+YiV7flC0dIq3o+nRqbVEd/toVtWdTm4Di
         SwBdzd/pnNls0hllnxVUCB9bX5DgUmzNotHyChhVtaHS8ioGxRrE2v58LYmr5qBCjHP9
         gx/6WLrP7qqitc7mJatcW7xOdFWW34mLQwSDqD8wMwsGWXCKYz7kPpCdTDhlWISJ5hq5
         /UP/H2fNhmNBxrXRkCuZ882iusHkePEmKEtETkOBuepMQcajCrXiMLrO6kxua4nqN3JP
         C+ZiBDTnIa1Fm6NNp6P1KB77S7xRi3TgQv+E0EFjgpw3zIZRI7dHHs7aMe3bhVQK0FMq
         EJ0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=iOZ991P+CPWVfxTnlBRl68jfYu5yE3y66sxn0dEfWXk=;
        fh=MHL5g7SWIYriibTAlpxdXR6QvKDVsGBI7vB0mkLY/MI=;
        b=eB8rKdHT6Rx6aHDdMeogDIjfY3Ky1c2WKBxM1E6A5XjEzKCWXrDzZjXKnfo/wln1k8
         HgmVDWGNAQ1fbE7gBEPu2y6GY+7Aj+4UbyM29AZ1OFasKMF0/a/zrQTG/ZvqHwqHiPl0
         T+9tx6wUQA7XZBDYYZnuVTVBgAS8QMb9FYfI4R2ync98IJMLoLm3iBlYtRIuCYyVUaSq
         etIY9eBis7Ub7RuryfxMyrwwr9g+n3goi0N5e646/tBQAXuS0AMOh8Tvw0Z2yTbzkuC1
         PFHPhy2FxqrG6NGcBE7jt+ZvAWyzvkmkf1pFG9Mb5AoeyAp+FHX9KddCatrz6SipGDy/
         D1Ag==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=rrE82hxA;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);
       spf=pass (google.com: domain of prvs=86611a09d0=meng.li@windriver.com designates 205.220.178.238 as permitted sender) smtp.mailfrom="prvs=86611a09d0=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com. [205.220.178.238])
        by mx.google.com with ESMTPS id s88-20020a25aa61000000b00d9ac3550843si6825815ybi.550.2023.10.23.20.44.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Oct 2023 20:44:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=86611a09d0=meng.li@windriver.com designates 205.220.178.238 as permitted sender) client-ip=205.220.178.238;
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39O3VCQq019993;
	Tue, 24 Oct 2023 03:44:01 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tv3ux2tt3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 03:44:00 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HsET2JMtY5Wr0HhZxSVGeF3KvKF6EobqJ877fsIz+Dwup/hF/AwH7MBEHT3GvpYLqGRRKPIVvMVyGulIfLFNgkTsQxCGWqY5hNb/gN/q0rjO6QZ0kMAVH0ZSkIufL1c8rHInozcOChDh579V6iYCF33LQ0Hq8pytPB6kAX8vols/RNcb3ccFfnZR2tuSR90qWqr9hXWJFXl5rbFVKwRfGsQlcx6MukFJ4Kc12/eV5gYy49TMTS3I5fnF1zQ9QWyfxRGtfVWIGOIuAcSsX5IJaRjfTY1xxGmd1bf5xyT2GnPPjNN3UJt5+Ad7wqI3xNE+j6uO9hqp9rEfQkaeQse23A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iOZ991P+CPWVfxTnlBRl68jfYu5yE3y66sxn0dEfWXk=;
 b=DyDDL6IXxNFYN5ZmZZAOd6mqBzzgw8L++SFBsOla1yY8TxE7FYUzVwnA7huvEVMvlSMd8MzFr3ZrwGaq+EihIy1VIBSWymrsxgYcMD/Uo4C8Jm4oCutDQklu8yO5emFg0WQdn4rdBhQPXjMWxVdOOe7PwSdYgtOpNa3UI5CFbi2/9VpIwOTG9ITafLQrcECM7CHUOWYdEH/C2QzRe3wRion+SVvI7bGlL/JZ50v+D7w0ct15EBDhe7ektOVuCqb1oMaLa8vEBD7k4afQHtDfSXtIj9grD3kPwbozALKWQpMWQOU6ReFH4f9dZSwE+zEGJ6z3gWB/yROQDIKFPcoZkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
 by BN9PR11MB5260.namprd11.prod.outlook.com (2603:10b6:408:135::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 03:43:57 +0000
Received: from PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::6eff:bf87:e13f:40df]) by PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::6eff:bf87:e13f:40df%7]) with mapi id 15.20.6907.025; Tue, 24 Oct 2023
 03:43:57 +0000
From: "'Li, Meng' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Thread-Topic: [PATCH] usb: storage: add shutdown function for usb storage
 driver
Thread-Index: AQHaBXOS0TY0dBbnMkyFvU8OyrUaFrBXvqSAgAB6/iA=
Date: Tue, 24 Oct 2023 03:43:56 +0000
Message-ID: <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
In-Reply-To: <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5191:EE_|BN9PR11MB5260:EE_
x-ms-office365-filtering-correlation-id: a4f6bdf7-f752-4dcd-e7e7-08dbd443738c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oCzrps29zAgV7EZl5H/XTt1845flQ1dF2B8wZKaCfhpOCvvBIw9MsmEadxx4qlIhesEUFXV0GmFV6C+jE51LBuLDtN0+vmSq6CghcYe9NnYvorzifpdMepnBNUmiYdDTU+RG1pVj0bf8FDyZPjGCvK0CqRy8EABX/WswER1IZpX4wyw7EJ/9dnk+IKLHMgv2iiTUPVzL5eQsuldxFwx30FyHlVE9Run1K/JmffeEaeQu534RAszC0c+ULitBBa0I050Wz6t/BnHchiyBWetlnKM98f/qbsKb1+37Jtk+Isf00dZhEkDPsrwXraAJwUck78E3GJ2+AO0JigvAESNTpGJudQG5/VmGRmMf3ISPkINdgLavkZstgFGIHUcrD+LbEJLYhO2c1mLboJ6rB2lBq7uSFcmGCYjw5L/D27HQVTXwYPaDAk/Ejb+Ol6ch3bAAR3/lpu5cjv5uQsEj75k46jMgiNmuXj0Dp+NBYiptmnQfceXA6NpIFzo4QQuy5jU7XXUx9rHr8+TDxQjoCcfO9Jc/Q7X4yF3lmsWXawR5ITV3s94jaiH6LiFBvAgUMDcHe1K1RgXe7twnuITiyXDE47vIy+4/KKhSY2K+hP/9F7C87b0axi/uQ4UN+kD1SbwH
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5191.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(396003)(346002)(39850400004)(376002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(76116006)(18074004)(38100700002)(316002)(55016003)(66556008)(66446008)(9686003)(64756008)(66946007)(6916009)(54906003)(66476007)(2906002)(86362001)(33656002)(478600001)(71200400001)(53546011)(122000001)(6506007)(7696005)(52536014)(4326008)(83380400001)(8936002)(5660300002)(38070700009)(41300700001)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GSTqgLZLfzr8Lu5qY+Ikir1RL3/66kW5p0tKxWHrVvJZbB2GfgujCfk4T4ur?=
 =?us-ascii?Q?HoxeqWNSr9Jj934/xG2BfeunCHoRObWLP7EVDqjPF48GJgagdDXtrs4AkLlb?=
 =?us-ascii?Q?WeiXF7Woh869bnOI4mm+HDCvRoCSrjZRJIZyIs9pCIsjTuv3BJ4huNeqVd+G?=
 =?us-ascii?Q?o7Sb1i9CSLpS3Hp0sF/WGUCh316ZXCUy0BqvYhO1kKl3p1/Qq8PvqS1EevjD?=
 =?us-ascii?Q?Xepk51aO6rfGGvIhnoTPqoMCDB/cUy93iMCqvk3H91Qq0q3I8bx7Z6+oFH1Y?=
 =?us-ascii?Q?4YPPzlVisOBf9/1xWjTP+AkUH6mNfaWANqaLzoWhACs2aPhcfW7j6K1iDR5g?=
 =?us-ascii?Q?1ZtTWxq9x6kjWN07bV5/JXIygEAhV3loxwdKRvvX6UcBys/1ewDYs+CMRrnn?=
 =?us-ascii?Q?YwWQFCExcWyqh76QO7ZiAlAe0pxkGTGdi99rhaXn6Wp2M3kPzp+zayNGVFLq?=
 =?us-ascii?Q?IJZFBmxzjpKWzJnvsQC3L8MCcGGNRyL/2062/o0+dDHks/psjr++PGGx+pQM?=
 =?us-ascii?Q?qWHE0B8zpetF7xdTUOppGAWA2x6jrPyiu4Dypi3Lk9qYtqYarGRzU0N0X2n1?=
 =?us-ascii?Q?zWYv0sEkX+s2tol+Tze/h6mBBmoXb6acQE+x6FGv3C0XJyw6NGNKwEq+s5BD?=
 =?us-ascii?Q?Q2FR5wfEQaTm5LE4teDBUXdkaJxmZA1I/cjRiCrVpq6beczjFfHJpjaJbKes?=
 =?us-ascii?Q?bhwnEV7I/0Y/OudNaIBlRebD/mFFcEslzIwETUgimwlqLLIc6pGjtRHvXEkB?=
 =?us-ascii?Q?NxdJJoKji6/JeDKrrQp8WwxSD+/yMS8cyAZARVsetgXc8eXNIefnaOwZ3qjx?=
 =?us-ascii?Q?3H7ROXVcF8jiyHXVZN2BzY1QTuXkoZvkT2lszE5WInVxA/RdNwi2iOkXiOZh?=
 =?us-ascii?Q?MWSBMf2K7s/UdY8ZWI/q+lVRKk9cArvh9JQqa+o0Md1VF7ri1FkSpqNy3oB1?=
 =?us-ascii?Q?kzo+oUpxSCypgyZgOUKegs+Uqme2miSZSubHqwakgNc3UZs108t7wPPlGHEf?=
 =?us-ascii?Q?2T1Tn4U22b4mRnFjHmLK/uU0P6ejZd6By41fHNLin6dHymbJRfRo09q91O8t?=
 =?us-ascii?Q?xStT4UfBUXNK/f4gaoKFcx9A6SpedaiccsUNyVMdlCBK9ZWJuufJVccWFtfa?=
 =?us-ascii?Q?pw8Uz9ZIRyMkRAzsc4bGh8MrOkG2cgv0S5IL517tXprmOWWAmUChTbZCj9m2?=
 =?us-ascii?Q?gXeaQNvrxbgRjHzs5ajDivWwLtTqwjgBL7lMhAZhWMpgZVgSM23ogf3ymdhk?=
 =?us-ascii?Q?sR4TdNeUbPSmvqTWnwT5GromXnqsqL0hCd8VFlaFv775LdCrObpRGiELCBwW?=
 =?us-ascii?Q?WRWrgk6zG1rfcqz7lpUxzRVOHscthRZP/QRgUvgzZgQP2tbqi9U7K/OHBTUW?=
 =?us-ascii?Q?pLdhH2iKxOLGCbWiXr91krLeh5KhLbMj2wixQywv2a6gk0iY7nOfss0JR2IP?=
 =?us-ascii?Q?CG3Mv3+CexGktE3Ts+ubmX8G6BxLTIrnl/VTXvwtJ7Mlt49iERoPkBR2tYk/?=
 =?us-ascii?Q?fCjyEbUTrmcrm6J6mK0GTDsfyh6H0PiI4x31M9ZHO4FPVFgzexQuGj0rLQ?=
 =?us-ascii?Q?=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5191.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4f6bdf7-f752-4dcd-e7e7-08dbd443738c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 03:43:56.9158
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: umy4ZU3CPx1SDCWOnCgo+ILGbCttjA3d/KXqXwJ2QhB4xxLffsgwepRboc2Czx2bpcX8NuacWLWYYKFCtkBsxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5260
X-Proofpoint-ORIG-GUID: qATaCanPE3p1jhGkn8VoOaGSXFBrL4nM
X-Proofpoint-GUID: qATaCanPE3p1jhGkn8VoOaGSXFBrL4nM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-24_01,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 lowpriorityscore=0 mlxscore=0 impostorscore=0 clxscore=1015 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2310170000 definitions=main-2310240031
X-Original-Sender: meng.li@windriver.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@windriver.com header.s=PPS06212021 header.b=rrE82hxA;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass
 dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);       spf=pass
 (google.com: domain of prvs=86611a09d0=meng.li@windriver.com designates
 205.220.178.238 as permitted sender) smtp.mailfrom="prvs=86611a09d0=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
X-Original-From: "Li, Meng" <Meng.Li@windriver.com>
Reply-To: "Li, Meng" <Meng.Li@windriver.com>
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



> -----Original Message-----
> From: Alan Stern <stern@rowland.harvard.edu>
> Sent: Tuesday, October 24, 2023 3:12 AM
> To: Li, Meng <Meng.Li@windriver.com>
> Cc: gregkh@linuxfoundation.org; linux-usb@vger.kernel.org; usb-
> storage@lists.one-eyed-alien.net; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] usb: storage: add shutdown function for usb storage
> driver
> 
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the sender and
> know the content is safe.
> 
> On Mon, Oct 23, 2023 at 01:41:11PM +0800, Meng Li wrote:
> > On ls1043/ls1046 rdb platform, if a PCIe-USB host controller is
> > installed, and an USB disk is also installed on the PCIe card, when
> > executing "reboot -f" to reset the board, there will be below error reported:
> > usb 2-2: device not accepting address 2, error -108
> 
> Do you mean that this error occurs after the system has rebooted?  Or do you
> mean that the error is reported while the reboot is taking place?
> 

Understand why you ask me to clarify the time of reporting error.
Only when the reboot action is taking place, there is error reported, and then system reset normally, and there is no error in the boot log of the next time.
So, I am not sure whether it is meaningful and worth to fix this issue or not.


> That "device not accepting address" error message is generated by the USB
> core, not by the usb-storage driver.  How will changing usb-storage help fix the
> problem?
> 

I add an WARN_ON() in USB core code
Call trace as below:
 hub_port_init+0xae0/0xcf0
 usb_reset_and_verify_device+0xe8/0x3e4
 usb_reset_device+0x118/0x24c
 usb_stor_port_reset+0x70/0x80
 usb_stor_invoke_transport+0x234/0x530
 usb_stor_transparent_scsi_command+0x18/0x24
 usb_stor_control_thread+0x158/0x25c
 kthread+0x120/0x124
 ret_from_fork+0x10/0x20

> > This issue is introduced by linux-yocto commit 837547b64a34("driver: net:
> > dpaa: release resource when executing kexec") that cause to spend more
> > time on shutdown operation. So, the 2 platforms with DPAA are not
> > reset immediately after executing force reboot command. Moreover, the
> > usb-storage thread is still in active status, there is still control
> > data transferred between USB disk and PCIe host controller. But now
> > the shutdown callback of usb pci driver had been invoked to stop the
> > PCIe host controller completely. In this situation, the data transferring failed
> and report error.
> 
> That's _supposed_ to happen.  By design, the "reboot -f" command is meant
> to carry out an immediate reboot, without using the init system, unmounting
> filesystems, or doing other cleanup operations.
> 

As my above said, I understand what you mean. I also thought over what you said.
I am not sure, but I still sent patch to upstream community, and want to get some suggest from more authoritative maintainer.

> If you want a clean reboot with no errors, don't use the "-f" option.
> 

There is also error report even if I use command "reboot"

> >  Therefore, add shutdown function
> > used to disconnect the usb mass storage device to avoid data
> > transferring under the stopped status of PCIe device.
> 
> I don't see how this will fix the problems associated with a forced reboot.  How
> is preventing data from being transferred any better than getting an error
> when you do try to transfer it?
> 

After adding the mass storage shutdown function usb_stor_shutdown(), it will release resource with bellow call logic.
usb_stor_shutdown()->usb_stor_disconnect->usb_stor_release_resources()
in the usb_stor_release_resources(), usb_stor_control_thread thread() is stopped, and there will no control data transferring.

> > Signed-off-by: Meng Li <Meng.Li@windriver.com>
> > ---
> >  drivers/usb/storage/usb.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> > index ed7c6ad96a74..e076d7e3784f 100644
> > --- a/drivers/usb/storage/usb.c
> > +++ b/drivers/usb/storage/usb.c
> > @@ -1142,6 +1142,15 @@ static int storage_probe(struct usb_interface
> *intf,
> >       return result;
> >  }
> >
> > +static void usb_stor_shutdown(struct device *dev) {
> > +     struct usb_driver *driver = to_usb_driver(dev->driver);
> > +     struct usb_interface *intf = to_usb_interface(dev);
> > +
> > +     if (driver->disconnect)
> > +             driver->disconnect(intf); }
> > +
> >  static struct usb_driver usb_storage_driver = {
> >       .name =         DRV_NAME,
> >       .probe =        storage_probe,
> > @@ -1151,6 +1160,7 @@ static struct usb_driver usb_storage_driver = {
> >       .reset_resume = usb_stor_reset_resume,
> >       .pre_reset =    usb_stor_pre_reset,
> >       .post_reset =   usb_stor_post_reset,
> > +     .drvwrap.driver.shutdown = usb_stor_shutdown,
> 
> This definitely looks like a layering violation.  If devices are to be disconnected
> during a system shutdown, the USB core should take care of it.  Not the
> individual device drivers.
> 
It looks like a little uncomfortably indeed.

> What will happen if you make this change to usb-storage?  In a little while
> you'll want to do the same thing to the uas driver.  And then the usbhid driver.
> And the usb serial drivers.  And so on...
> 

I add the shutdown callback refer to uas driver that has the similar shutdown function.
About the usb serial driver, there has been serial_port_shutdown() function at a more reasonable location.
I am able to test all the cases with PCIe to USB card, so I am not sure whether there is also the same issue with other drivers.

> This does not seem like the best solution to whatever problem you want to
> solve.

Maybe. But this issue is caused by usb_stor_control_thread() thread that is in the use mass storage driver.
So, I would like to fixed it only in use mass storage driver.
Based on my current understanding of usb code, I don't know whether there is a unified usb core interface that can fix this issue of all the usb driver.
I don't have ability to touch use core code that has so widespread influence.

Thanks,
LImeng

> 
> >       .id_table =     usb_storage_usb_ids,
> >       .supports_autosuspend = 1,
> >       .soft_unbind =  1,
> 
> Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/PH0PR11MB51918DD50651DB6BE937BEA3F1DFA%40PH0PR11MB5191.namprd11.prod.outlook.com.
