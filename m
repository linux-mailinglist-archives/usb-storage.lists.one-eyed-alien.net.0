Return-Path: <usb-storage+bncBCJKP7ES3YDRBXNA7SMAMGQEUUXO52Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6D55B58D3
	for <lists+usb-storage@lfdr.de>; Mon, 12 Sep 2022 12:56:31 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id w1-20020a63d741000000b0042c254a4ccdsf3806950pgi.15
        for <lists+usb-storage@lfdr.de>; Mon, 12 Sep 2022 03:56:31 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1662980190; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+dCl2iuIYo0DpxQ5pOtX2CQRyjVPWOAHlC+Dehp1fSXVvLUuLuTz6fIJxDpP5RWhX
         49GXcfEt4ZBHOXuoOpGstG3Y1zcl6bqT0N6kL2devtKOsSRW28whpgAJClJsvOtdPTK+
         y74UBbtoKsKPyTjIFlMm8cOr6EI83F5A/kG//jM2ayAnpReDcl24rp00PlHq4NMCeRbt
         5c+104uSkHq5segfq97gjanEDpOXQ+tH99HbBoADcPgVCz64d3rIuuYJrktL9gifNi5u
         m1xOYzKUKnfkPDBy3odwq26cTA7VcXmJL5yZcEwUwiDPyK4Zh6T6H+ArXd98s+qvWdou
         FA0g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=XMJJ4fyyAGVBG0vXbAkKhZEm3eZJ9y0aFqaiASM2TwM=;
        b=SdtaXTCBzCCz64pD7a/UyQ8pHdDKVVslmTUFsZdtL1nro9eS3ZRQR9j30eued/rvT9
         wt7evbpvf8UvXMQowwrg0l4ifMRSpIGF9N/OG8xn9QE6Kc6KCJ4KmK7gN5fr8Fkjbbl6
         aiwNydYAo2B8pyPjJBKt6eUa6oBSFYqugM981LozcR0j3NwKQooTWeye77ZJ9M9Ee3e7
         D1qlSf6+FlNcTKgCc3IfoexAtrKCmEqLLRathQ1QdenikuiPCsefjg2HFaV5s/SfLoFJ
         GFGskSwSNKJe2OiH6S52NXTsaWBmUX63x6iVRXbcVGdwRxetyP/IaYFPxXy9gDdfqy5Z
         Ptrg==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=sKd8tjbL;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jilin@nvidia.com designates 40.107.212.60 as permitted sender) smtp.mailfrom=jilin@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc
         :subject:date;
        bh=XMJJ4fyyAGVBG0vXbAkKhZEm3eZJ9y0aFqaiASM2TwM=;
        b=by+96r6SKOx9wKSRSSSUGpKjGd36cXbElxcfO5hYmUNwK09/VPf1o11RnQBXCOBsnk
         0gUvXGuGELhBY7EbkXDHbynhnv+JqBzDrZY8iNiUL99HcdBPj+5mHdAHgKHCrENuWl/N
         SUUESaurGXPjNZBV8sPr3E7nureExpUs8kpio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XMJJ4fyyAGVBG0vXbAkKhZEm3eZJ9y0aFqaiASM2TwM=;
        b=mbOKYnqZaWqvgzQ4xlXG81ioLe88xMPAgdCLixLwrx/iLHtU5xEDtrNjP2W3QfL0Nr
         SUV8OVMtmaW9OiJrg6pbsn2AANFc3IN468nWHn8YprLRMVTDYY5kPjZ7F046Y/ww3mid
         w1ofTG1CHspXW3kjOGoZ6hNo1e5ib8W2G0jAgF+cWXcurU74ofZXlP5uFnpKO4IX+w32
         UdUdcIqkColZVMywmjr8Tt6y+LAxNqkqKWO/pDb7TZCeMaUHAtmsrTW1rCFWf4tyw5ds
         UWEenr3ybzuWB+/o7v+2DfoziWHyE6FERMXNGSx+Qidus3QwGsqrvENmQsxpEif/HnPW
         oeNA==
X-Gm-Message-State: ACgBeo1bqS1eqOaZLTJmnG2iAnT/FJzDCYR1lGktTNJBGhadlM0Jqx5W
	8pQpAJcgQc43PLI7C8/qFXF+mA==
X-Google-Smtp-Source: AA6agR5Kpsq13i65P+RI2bsCb4L6OqmWuygTWghor1sWEQiH1MWa3LPgkM7tBglbn0dVDQDgrgaSdQ==
X-Received: by 2002:a65:558f:0:b0:434:4ef3:77a7 with SMTP id j15-20020a65558f000000b004344ef377a7mr22905196pgs.27.1662980190179;
        Mon, 12 Sep 2022 03:56:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ce84:b0:16d:4224:4877 with SMTP id
 f4-20020a170902ce8400b0016d42244877ls7489963plg.4.-pod-prod-gmail; Mon, 12
 Sep 2022 03:56:29 -0700 (PDT)
X-Received: by 2002:a17:90b:384f:b0:202:e1b9:5921 with SMTP id nl15-20020a17090b384f00b00202e1b95921mr2069652pjb.130.1662980188895;
        Mon, 12 Sep 2022 03:56:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662980188; cv=pass;
        d=google.com; s=arc-20160816;
        b=tL4g4NG9O9+2J/p5169rSyRFz51XiJJFaMDglxHr0DkD1Y8ueNDqN+2DAYCsaEqLk/
         X2obKcNzslZPWVugmmZaviKZgojyGEFrDTcZAMnJveYlFoMDwV9hSl7VSN46Ur7Lgfv1
         SD5n7Xy1J8fk6yyJOYN6GyX4MvAFgMrcW6y5yrtarO1oBO96lEW/9fZoAeRhFdT8/5il
         xaqutmpyzXLmUwMXoBtYaJtf9p0kRIlJMYHLWfm7iIOLLwTPfGstzqZaJe+nqxOsugvz
         y8wonLL1FQIp5vBJdqIziL//0Hlvwy4YyVnhJL0/qkJoVoC2U7+CX7mpr5GiOiguM/e1
         vnTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature;
        bh=noa39egEjMqZnk2qKew4RR3zBoJRjOEUMfmwtcF3dsY=;
        b=z11UhRw7j5Loc3p4v0GoGhYOCXJEYUuu5dpPCjAoLiM5Cign2FbxjEHU2MFTOJRv3i
         nQMZ6KvJAx/XpuikdYvHIUv2Fyy/OAOySxPH7bHSiW2s9GVrExsWk7Tm3wUY2/A4gSiC
         ibOw9GJYy5dahwYiCF9GV1FDacplQ9cpmy3TTk28crjFcjXX7sTf/0lE9kMKDsWkyD9z
         Y7Ef5VpHazzidB6o5hKsn8GWUkdgSj5pFjbWh5UufVMxN490IV+9nKiC0S8uZyZxvT2x
         7ePsMQWJTlGBFmp9opKS6eRq18mz/YVAJNLH01vrQNDZNy+7OjwBY078lMsV+mxqf3Ir
         /Quw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=sKd8tjbL;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jilin@nvidia.com designates 40.107.212.60 as permitted sender) smtp.mailfrom=jilin@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2060.outbound.protection.outlook.com. [40.107.212.60])
        by mx.google.com with ESMTPS id u26-20020a056a00099a00b0053e79de3fc6si10294634pfg.50.2022.09.12.03.56.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2022 03:56:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jilin@nvidia.com designates 40.107.212.60 as permitted sender) client-ip=40.107.212.60;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZTIOUWaVVKofo9AHx+brLORc6vhZa7S9ZqVwTWwb9rXof/mLEkwRE0ToFVus8BBYKftdedltbeJhSOlVzUG/zishWXU2Utch8O902JI3mN4JtqE/xD0XYoaofsJtd8BDQ0lwj2EakU9RHSlWLV9vD94bsd0iu/R5QIpJhyiolIJKtO9VS9FeFylt7/qOsmrLPiGwbx2BdG9+dluX5i/Gyg0t3Y88q10ehgRNxfILjBTw4TizWu7kxmo6vGpxYBiqRrSYI6jeaXgmSGc/O9/9q4W3ANvb3u5zo9E5/lw3snKjWatOl76kaVD4wxJWTAp/AmZo/jCFvqNL8gZnEf6pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=noa39egEjMqZnk2qKew4RR3zBoJRjOEUMfmwtcF3dsY=;
 b=DXpM+QOStabVuMPb4TYW37ZlcPIVYDWHeU/KBAH1l8AxogEHIarrDzZL8Uj/Imu6umhLV4/n7qRilGUT6aS/45bFDIfy3rTecZc8mXOtbRpXzAyYEK4be/G3Mi7CAV+2rASjlE3JdUMI5T/k+mMHLM66yIXj1N2X/+KUxuqoKNkiuB0C+Mby8g9Zz5pzcBI1j6KTs6eClPRmOrozmIsRkmaj2aHVxPoE/CMiwbsqvn3FvdOb6J+AUt+YZThaeVuifu+dIPGRvpq6Eo3eOOogDEq3YogaqeeFOLlffm6X2RhVXPlx4SjmKJV5L1hOkPcTGQNkYJPrGvdyMhzlefucZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from IA1PR12MB6603.namprd12.prod.outlook.com (2603:10b6:208:3a1::17)
 by SJ0PR12MB6965.namprd12.prod.outlook.com (2603:10b6:a03:448::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Mon, 12 Sep
 2022 10:56:26 +0000
Received: from IA1PR12MB6603.namprd12.prod.outlook.com
 ([fe80::20f9:c1a:4c85:e92f]) by IA1PR12MB6603.namprd12.prod.outlook.com
 ([fe80::20f9:c1a:4c85:e92f%3]) with mapi id 15.20.5612.022; Mon, 12 Sep 2022
 10:56:26 +0000
From: "'Jim Lin' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: "nowy08@gmail.com" <nowy08@gmail.com>, "onenowy@gmail.com"
	<onenowy@gmail.com>
CC: "atanasd@gmail.com" <atanasd@gmail.com>,
	"usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, Jim Lin <jilin@nvidia.com>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
Thread-Topic: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
Thread-Index: AQHYxQvYt2Lf4RvOTEeKMKy/hg+U663bonAA
Date: Mon, 12 Sep 2022 10:56:25 +0000
Message-ID: <bce970787428ff707570bb8d704febc5b4476c64.camel@nvidia.com>
References: <CABDuHhFj+w_YZd-bd7XQza8zNC7VjMHBoRQHqjePCceiPpeKew@mail.gmail.com>
In-Reply-To: <CABDuHhFj+w_YZd-bd7XQza8zNC7VjMHBoRQHqjePCceiPpeKew@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR12MB6603:EE_|SJ0PR12MB6965:EE_
x-ms-office365-filtering-correlation-id: 4b8d4410-e315-41f2-294b-08da94ad7037
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jcXFfkZOOgSVrtWTUBVKr+goFOL94e8GgLauQRBDjYRnhbPM2Cckmmm4kaDW+qwmhwLeUax3THmu4m93ZgMUA9pS0NX6VSup6/Kx9p8W+HSlIbznKa4OXRKQRQE2YB+Ol/aO2c/Jf6z7evSp5iVtxaVS27kEjj74zD7VqlK9o1Q6cNAoioxs9mVTpr7uhuZizDLQRdaaEaVbtsU4KBaHsaE29Mb2ce8eqUnGy4ExySTWDzaTq8oCQu52oa3SJM4QiPykDGuxfvisSIe1lVm3N7aJSxeZSXUy2RMIcJQRG820fJi555Ll6DVD48pfUASZ2K6Com3ZPaxtQWX9IoC/lUxC7rLDq/JZjyKGx+dQJluzJu2zVCdnAB1N/EQkGmSXBt33V4Ko6Em1KpCBGEISmLgQxP78B+WscWtdH3znU82+OT6dqXm2bj0Re61PBFRecCNDOGAmF94pl6WJS3TN2BJe3feyvClALevRgUTRjwH8JAu+EzePkFrplLn2dACMI5zRkGjYwxKTwtt7zqzbkuHBgL8wpFYkIin9EYJnOzI54HZ/cUp2gq5i5wp9r6i0Eg6FrjkV+os5qXHIgwaW8sa91coCFt3irgseLyNH2GxlO3wjknDAJ84fOoo3OSAUPLROm9elUr3N9EP3I1HvnyA2ppUK3FVPGTPSaolauAYGme7vrPlPaIpWJFIhelJhUF7f57KFmSVqhGk+T/MqEovdNgXfzZ4DbpocdTqVo9+EMiqzWl9PKYSqrLP3azkxxwv/1nFeBmNM8bfgDbji3GHn8PbirzYOc9dTUdhoRW0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR12MB6603.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(26005)(6506007)(6512007)(83380400001)(6486002)(41300700001)(186003)(478600001)(66574015)(2616005)(110136005)(38070700005)(54906003)(8936002)(8676002)(316002)(76116006)(4326008)(91956017)(66446008)(71200400001)(5660300002)(64756008)(66946007)(66476007)(2906002)(38100700002)(122000001)(66556008)(86362001)(36756003)(99106002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YjFUN2xkR3lDVzBlZ1dFNG5aUjVwenQydTk3NGk3NHRsUlpiSmMyQkFkUERq?=
 =?utf-8?B?b3VnaFRHWVRGY3hNZm1EM285SWJUT0ZyZG56NDl3b0k3SlFOaEpQQk52NkU3?=
 =?utf-8?B?eFk5bklvdWVPbUJyL0ZTdzh1bGtZTy9ieUpwdkJJWXNQZmFvbW9oRG0wVnF1?=
 =?utf-8?B?N1lwQ0RqU0lvN3ZlU3U5OFpoQnFzeTMwSDhqMEs3SG9QRFpxZTJaMWZ2dTNN?=
 =?utf-8?B?UWpUT1lSWkE5MFBCTGUxOStBQmp0UWZ2N2VVb3hxc0kyQkNEa2MycEFwUnBP?=
 =?utf-8?B?MXc5MzdHWnozYVplbGN1N05mRUw0NEk5TUJ5MXFRU0NjVWE2Zy9LTnRxUjJS?=
 =?utf-8?B?UHJtRSs0OFVPc2lhVmVWQkRCWXU3Ni96bzVqWGJzSTQxTjBPK0lBSHAybk0r?=
 =?utf-8?B?ZUZUS1puRDRKODhJSkMwQUthbENOb3FXMlV1TEw1WEh5cmpvdVBjZTdNWnMr?=
 =?utf-8?B?cFFoVjNYQTNNdDNjdDZSOHhkdmR3T1FYUlZWTkErb0txTHpoeHRMNTkrOWVM?=
 =?utf-8?B?K210aE5ZVElkSUVydVoxSXo5OTFqdkN1TGF5cTVadkFwZlovQ1FUMUpzMFI4?=
 =?utf-8?B?dkgxQmhxNnVkcG1mbnRtL21nYzdlM3dLcW9YMEpFTnZVY3cxYXZmVGJGQ2FD?=
 =?utf-8?B?Z1dxWG5zRFJ6R2kzYkk0TzBjaWQ4djAyVnlTZkxjdmZpSWFWemovMVprSGhw?=
 =?utf-8?B?VFpXR0tkdGpqeCtPUWtHTUZpWE8zVHBGZkdMNk95by9nMjFlSUhQT0J4MWNo?=
 =?utf-8?B?Skx4YVJPTDRidWRSNDUvMkFqTDBBU2JIVWdQNE1sU3BaeU9heFZaTkhjMmZx?=
 =?utf-8?B?SUdDcTZEWldCNkcwZExxNVFFVUJHN3Q5TU1XRVFiV2dNOTBrbTY2VnV5d0xr?=
 =?utf-8?B?aTR1S09oOEhCWjRtZnB2aE9PeXp2QW51SnVGdk1tWVh1MGR1L2dGTXVneVZG?=
 =?utf-8?B?WGFJRHU1bE9JbU5scE1GQ1BHT3puQXVNSlI2cTljVGF1anpNV1pXaEVjUUVw?=
 =?utf-8?B?R2ZoYzB5UEs5RHo3WFFRRTcwQmM2Yy9mdGhWWUpQK3BRQnlkMmxYTysxdVQy?=
 =?utf-8?B?NEk0NFJLY0JLK2h2dGJuSndGNkxhd2M4dkJQb2hDaEpsb3JVTlRwb0g3ZU51?=
 =?utf-8?B?bnRRRWoybFdhUVNZM0VhU3AzZWRhcVVBZjdGVGdhYzdYeU5URGtKZENLdXZj?=
 =?utf-8?B?REEvcERUWTNWM0FJYk5zMkcxUFhQdm5LckEzZ2x6Ujd5OTJuN0N3K2xUSkd6?=
 =?utf-8?B?Ykt3TTd2b1FIV0RjR2puYjhpYVhJcFpQN01jRGpnVGk3RTBVc2tmcmZrZGdo?=
 =?utf-8?B?TlR2bWxJTjk2cWhMd1dCSWVaUXN3aTBSbit2SjY1YUhYT1lxUmgveUY5WVRn?=
 =?utf-8?B?LzBhTE1aZUV0cHE1VjZSWGkrNUIvb3VuTFF6UGpQMG9GeWVKOFNxV1haK2pq?=
 =?utf-8?B?dzhHZkJHL2FFTkt5NEZYNEhkYVA1M0p6NmxqYVQyS3QwT3ptclZEWVNqZDlp?=
 =?utf-8?B?UnRuVDZ3ZmZsb3J1Q3BRaG5MZXBSb0xldjJDU2dubzBLd09lOGVLdm1nMHNB?=
 =?utf-8?B?c0pCVUdya29DcEE5QUlRdmJHM2RmWnlDTXhZWCtubjB1WWxuOFpuUGVFZFZ2?=
 =?utf-8?B?bkR0UytZeXdPMnpXU1N4ME9Gc2Nxb01IZ2F0QXdWOHFBTmpETmIwWGVXdTVl?=
 =?utf-8?B?eUFPZ3dUR0tockhNVm5ySHp4U1dWaU5JY2VyM01OaUVsSjhicENyL1Q2Vytv?=
 =?utf-8?B?M0xSQW0yN053bzA3aFZ2cTMvaUFYM2VyN3hWNW84N3VsMEJBNXlxOU4vc24z?=
 =?utf-8?B?dy9WbW9RWVBBMWVOQVZ4K0VhYzRBdHRlTHNqTkZ4OGRtZitWZEFGdnFMbFhj?=
 =?utf-8?B?SllrZkZQRzdMS21KVDBlSk1ZWWNhZVRob0ZzV3lUZkxLQ3FYWmorNW53Wmoy?=
 =?utf-8?B?anI0aE9tM0R4VnQ5VTlheWdZVE5CWVVjK0RXdDNsaHY5c1ZqdzVnNU5WcUIy?=
 =?utf-8?B?UzJ2WHoxK2tBSkxieXpFUkVQQzR2SmtGaFRvMzZvdVgzMU85OFU2cTRpb2N4?=
 =?utf-8?B?c2xvWGxkdlpqekNFL2N3RzNoWCt2UUk2aC9OSnhCV3dwd3daMlVkOU1YenR6?=
 =?utf-8?Q?4s06Td+KY7M2x6e0SBTtOTW/t?=
Content-Type: multipart/alternative;
	boundary="_000_bce970787428ff707570bb8d704febc5b4476c64camelnvidiacom_"
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR12MB6603.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b8d4410-e315-41f2-294b-08da94ad7037
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2022 10:56:25.8637
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4yOm0QfDiHmkzQALkVkeexZznaMXhvoIuIa7cjIqQz9Uo6FBL4LAw42UP8Si46lPXWsIQfSa3l/oFkq/OqMBgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6965
X-Original-Sender: jilin@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=sKd8tjbL;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of
 jilin@nvidia.com designates 40.107.212.60 as permitted sender)
 smtp.mailfrom=jilin@nvidia.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=nvidia.com
X-Original-From: Jim Lin <jilin@nvidia.com>
Reply-To: Jim Lin <jilin@nvidia.com>
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

--_000_bce970787428ff707570bb8d704febc5b4476c64camelnvidiacom_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2022-09-10 at 20:52 +0900, SungHwan Jung wrote:
External email: Use caution opening links or attachments

In my case device will be in hung state even issuing port reset if
without this patch. jim On 2020/5/2 =E4=B8=8B=E5=8D=889:56, Atanas Dinev wr=
ote:
> External email: Use caution opening links or attachments
>
>
> Hello,
>
> Jim Lin wrote on 02.03.20 15:21:
>> Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,
>> e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors
>>
>> If data access times out, driver error handling will issue a port
>> reset.
>> Sometimes Samsung Fit (090C:1000) flash disk will not respond to
>> later Set Address or Get Descriptor command.
>>
>> Adding this quirk to limit max_sectors to 64 sectors to avoid issue
>> occurring.
>>
> This may need revisiting as it appears to be a performance killer (3-4
> times slower seq reads) for otherwise perfectly working sticks.
> Going down from 2048 to 64 seems to cause a pretty significant speed
> degradation.
> Here are a few examples:
>
> # lsusb
> Bus 002 Device 012: ID 090c:1000 Silicon Motion, Inc. - Taiwan
> (formerly Feiya Technology Corp.) Flash Drive
> # lsusb -t
> /:  Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/6p, 5000M
>     |__ Port 3: Dev 12, If 0, Class=3DMass Storage, Driver=3Dusb-storage,
> 5000M
>
> # dmesg
> [23153.493726] usb 2-3: Product: Flash Drive FIT
> [23153.493729] usb 2-3: Manufacturer: Samsung
> [23153.493731] usb 2-3: SerialNumber: 0375119090033353
> [23153.575386] usb-storage 2-3:1.0: USB Mass Storage device detected
> [23153.575514] usb-storage 2-3:1.0: Quirks match for vid 090c pid
> 1000: 400
> [23153.575559] scsi host2: usb-storage 2-3:1.0
> [23153.576529] usbcore: registered new interface driver usb-storage
> [23153.578645] usbcore: registered new interface driver uas
>
> # cat /proc/scsi/usb-storage/*
>    Host scsi2: usb-storage
>        Vendor: Samsung
>       Product: Flash Drive FIT
> Serial Number: 0375119090033353
>      Protocol: Transparent SCSI
>     Transport: Bulk
>        Quirks: MAX_SECTORS_64 SANE_SENSE
>
> # hdparm -t /dev/sdb
>  Timing buffered disk reads: 132 MB in  3.03 seconds =3D 43.62 MB/sec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 22,3564 s, 46,9 MB/s
>
> # rmmod uas usb_storage
> # modprobe usb_storage quirks=3D090c:1000:
>
> # hdparm -t /dev/sdb
>  Timing buffered disk reads: 452 MB in  3.01 seconds =3D 150.33 MB/sec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 6,51492 s, 161 MB/s
>
>
> [23612.690798] usb 2-3: Product: Intenso High Speed Line
> [23612.690799] usb 2-3: Manufacturer: SMI
> [23612.690801] usb 2-3: SerialNumber: 19112500000332
> [23612.780771] usb-storage 2-3:1.0: USB Mass Storage device detected
> [23612.780895] usb-storage 2-3:1.0: Quirks match for vid 090c pid
> 1000: 400
> [23612.780940] scsi host2: usb-storage 2-3:1.0
> [23612.781093] usbcore: registered new interface driver usb-storage
> [23612.783226] usbcore: registered new interface driver uas
>
> # cat /proc/scsi/usb-storage/*
>    Host scsi2: usb-storage
>        Vendor: SMI
>       Product: Intenso High Speed Line
> Serial Number: 19112500000332
>      Protocol: Transparent SCSI
>     Transport: Bulk
>        Quirks: MAX_SECTORS_64 SANE_SENSE
>
> # hdparm -t /dev/sdb
>  Timing buffered disk reads: 220 MB in  3.00 seconds =3D 73.22 MB/sec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 11,5469 s, 90,8 MB/s
>
> # rmmod uas usb_storage
> # modprobe usb_storage quirks=3D090c:1000:
> # hdparm -t /dev/sdb
> Timing buffered disk reads: 1016 MB in  3.00 seconds =3D 338.51 MB/sec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 3,31022 s, 317 MB/s
>
>
> I'm using both sticks as a bootable/emergency media (Debian stable,
> kernel 4.19/no-quirks with X, XFCE, web browser, etc) and haven't had
> any issues with timeouts, unresponsiveness or whatsoever.
>
> When tested with recent kernels (e.g. Debian testing/5.5, Ubuntu 20.04
> LTS/5.4) it's slow.
>
> Setting "options usb_storage quirks=3D090c:1000:" in /etc/modprobe.d as
> a workaround for now.
>
>> Signed-off-by: Jim Lin <jilin@nvidia.com<mailto:jilin@nvidia.com>>
>> ---
>>   drivers/usb/storage/unusual_devs.h | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/usb/storage/unusual_devs.h
>> b/drivers/usb/storage/unusual_devs.h
>> index 1cd9b6305b06..1880f3e13f57 100644
>> --- a/drivers/usb/storage/unusual_devs.h
>> +++ b/drivers/usb/storage/unusual_devs.h
>> @@ -1258,6 +1258,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
>>               USB_SC_RBC, USB_PR_BULK, NULL,
>>               0 ),
>>
>> +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
>> +             "Samsung",
>> +             "Flash Drive FIT",
>> +             USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +             US_FL_MAX_SECTORS_64),
>> +
>>   /* aeb */
>>   UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
>>               "Feiya",
>>
--nvpublic

I have found that the read rate of "samsung Bar plus" is slower than on win=
dows 11 (210MB/s -> 70MB/s) and recovered by disabling quirks (using /etc/m=
odprobe.d)
This patch affects not only "Samsung Flash Driver FIT", but also other usb =
flash storages. (They may use the same controller?)
But I can't reproduce the timeout problem without quirks.
Could you provide information to reproduce the timeout problem or logs?
It may help us find other solutions to fix it.

Thanks,
SungHwan.

Issue was reproduced after device has bad block.

--nvpublic

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/bce970787428ff707570bb8d704febc5b447=
6c64.camel%40nvidia.com.

--_000_bce970787428ff707570bb8d704febc5b4476c64camelnvidiacom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <6BD852258F759F45B39B81C6B3C9D9EE@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
</head>
<body style=3D"text-align:left; direction:ltr;">
<div>On Sat, 2022-09-10 at 20:52 +0900, SungHwan Jung wrote:</div>
<blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729f=
cf solid;padding-left:1ex">
<table bgcolor=3D"#FFEB9C" border=3D"1">
<tbody>
<tr>
<td><font face=3D"verdana" color=3D"black" size=3D"1"><b>External email: Us=
e caution opening links or attachments</b>
</font></td>
</tr>
</tbody>
</table>
<br>
<div>
<div dir=3D"ltr">
<blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729f=
cf solid;padding-left:1ex">
In my case device will be in hung state even issuing port reset if<br>
without this patch. jim On 2020/5/2 =E4=B8=8B=E5=8D=889:56, Atanas Dinev wr=
ote:<br>
<span style=3D"background-image:initial;background-position:initial;backgro=
und-size:initial;background-repeat:initial;background-origin:initial;backgr=
ound-clip:initial;color:rgb(0,0,102)">&gt; External email: Use caution open=
ing links or attachments<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Hello,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Jim Lin wrote on 02.03.20=
 15:21:<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; Current driver has 24=
0 (USB2.0) and 2048 (USB3.0) as max_sectors,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; e.g., /sys/bus/scsi/d=
evices/0:0:0:0/max_sectors<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; If data access times =
out, driver error handling will issue a
 port<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; reset.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; Sometimes Samsung Fit=
 (090C:1000) flash disk will not respond
 to<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; later Set Address or =
Get Descriptor command.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; Adding this quirk to =
limit max_sectors to 64 sectors to avoid
 issue<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; occurring.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; This may need revisiting =
as it appears to be a performance killer
 (3-4<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; times slower seq reads) f=
or otherwise perfectly working sticks.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Going down from 2048 to 6=
4 seems to cause a pretty significant
 speed<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; degradation.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Here are a few examples:<=
br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # lsusb<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Bus 002 Device 012: ID 09=
0c:1000 Silicon Motion, Inc. - Taiwan<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; (formerly Feiya Technolog=
y Corp.) Flash Drive<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # lsusb -t<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; /:&nbsp; Bus 02.Port 1: D=
ev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/6p,
 5000M<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp; |__ Po=
rt 3: Dev 12, If 0, Class=3DMass Storage, Driver=3Dusb-storage,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; 5000M<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # dmesg<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.493726] usb 2-3: P=
roduct: Flash Drive FIT<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.493729] usb 2-3: M=
anufacturer: Samsung<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.493731] usb 2-3: S=
erialNumber: 0375119090033353<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.575386] usb-storag=
e 2-3:1.0: USB Mass Storage device detected<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.575514] usb-storag=
e 2-3:1.0: Quirks match for vid 090c
 pid<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; 1000: 400<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.575559] scsi host2=
: usb-storage 2-3:1.0<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.576529] usbcore: r=
egistered new interface driver usb-storage<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.578645] usbcore: r=
egistered new interface driver uas<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # cat /proc/scsi/usb-stor=
age/*<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp; Host scsi2: =
usb-storage<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Vendor: Samsung<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; Product: Flash Drive FIT<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Serial Number: 0375119090=
033353<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp; =
Protocol: Transparent SCSI<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp; Transp=
ort: Bulk<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Quirks: MAX_SECTORS_64 SANE_SENSE<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # hdparm -t /dev/sdb<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;Timing buffered dis=
k reads: 132 MB in&nbsp; 3.03 seconds =3D 43.62 MB/sec<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # dd if=3D/dev/sdb of=3D/=
dev/null bs=3D1M count=3D1000<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; 1048576000 bytes (1,0 GB,=
 1000 MiB) copied, 22,3564 s, 46,9 MB/s<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # rmmod uas usb_storage<b=
r>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # modprobe usb_storage qu=
irks=3D090c:1000:<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # hdparm -t /dev/sdb<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;Timing buffered dis=
k reads: 452 MB in&nbsp; 3.01 seconds =3D 150.33
 MB/sec<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # dd if=3D/dev/sdb of=3D/=
dev/null bs=3D1M count=3D1000<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; 1048576000 bytes (1,0 GB,=
 1000 MiB) copied, 6,51492 s, 161 MB/s<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.690798] usb 2-3: P=
roduct: Intenso High Speed Line<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.690799] usb 2-3: M=
anufacturer: SMI<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.690801] usb 2-3: S=
erialNumber: 19112500000332<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.780771] usb-storag=
e 2-3:1.0: USB Mass Storage device detected<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.780895] usb-storag=
e 2-3:1.0: Quirks match for vid 090c
 pid<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; 1000: 400<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.780940] scsi host2=
: usb-storage 2-3:1.0<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.781093] usbcore: r=
egistered new interface driver usb-storage<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.783226] usbcore: r=
egistered new interface driver uas<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # cat /proc/scsi/usb-stor=
age/*<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp; Host scsi2: =
usb-storage<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Vendor: SMI<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; Product: Intenso High Speed Line<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Serial Number: 1911250000=
0332<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp; =
Protocol: Transparent SCSI<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp; Transp=
ort: Bulk<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Quirks: MAX_SECTORS_64 SANE_SENSE<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # hdparm -t /dev/sdb<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; &nbsp;Timing buffered dis=
k reads: 220 MB in&nbsp; 3.00 seconds =3D 73.22 MB/sec<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # dd if=3D/dev/sdb of=3D/=
dev/null bs=3D1M count=3D1000<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; 1048576000 bytes (1,0 GB,=
 1000 MiB) copied, 11,5469 s, 90,8 MB/s<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # rmmod uas usb_storage<b=
r>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # modprobe usb_storage qu=
irks=3D090c:1000:<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # hdparm -t /dev/sdb<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Timing buffered disk read=
s: 1016 MB in&nbsp; 3.00 seconds =3D 338.51
 MB/sec<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; # dd if=3D/dev/sdb of=3D/=
dev/null bs=3D1M count=3D1000<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; 1048576000 bytes (1,0 GB,=
 1000 MiB) copied, 3,31022 s, 317 MB/s<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; I'm using both sticks as =
a bootable/emergency media (Debian stable,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; kernel 4.19/no-quirks wit=
h X, XFCE, web browser, etc) and haven't
 had<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; any issues with timeouts,=
 unresponsiveness or whatsoever.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; When tested with recent k=
ernels (e.g. Debian testing/5.5, Ubuntu
 20.04<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; LTS/5.4) it's slow.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; Setting &quot;options usb=
_storage quirks=3D090c:1000:&quot; in /etc/modprobe.d
 as<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt; a workaround for now.<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; Signed-off-by: Jim Li=
n &lt;<a href=3D"mailto:jilin@nvidia.com" target=3D"_blank">jilin@nvidia.co=
m</a>&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; ---<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; &nbsp; drivers/usb/st=
orage/unusual_devs.h | 6 ++++++<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; &nbsp; 1 file changed=
, 6 insertions(+)<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; diff --git a/drivers/=
usb/storage/unusual_devs.h<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; b/drivers/usb/storage=
/unusual_devs.h<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; index 1cd9b6305b06..1=
880f3e13f57 100644<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; --- a/drivers/usb/sto=
rage/unusual_devs.h<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +++ b/drivers/usb/sto=
rage/unusual_devs.h<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; @@ -1258,6 +1258,12 @=
@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USB_SC_RBC, USB_P=
R_BULK, NULL,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 ),<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +UNUSUAL_DEV(0x090c, =
0x1000, 0x1100, 0x1100,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Samsung&quot;,<b=
r>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Flash Drive FIT&=
quot;,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USB_SC_DEVICE, USB_PR_=
DEVICE, NULL,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; US_FL_MAX_SECTORS_64),=
<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; &nbsp; /* aeb */<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; &nbsp; UNUSUAL_DEV( 0=
x090c, 0x1132, 0x0000, 0xffff,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Feiya&quot;=
,<br>
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br>
</span>--nvpublic<br>
</blockquote>
<div><br>
</div>
<div>I have found that the read rate of &quot;samsung Bar plus&quot; is slo=
wer than on windows 11 (210MB/s -&gt; 70MB/s) and recovered by disabling qu=
irks (using /etc/modprobe.d)</div>
<div>This patch affects not only &quot;Samsung Flash Driver FIT&quot;, but =
also other usb flash storages. (They may use the same&nbsp;controller?)</di=
v>
<div>But I&nbsp;can't reproduce the timeout problem without quirks.</div>
<div>Could you provide information to reproduce the timeout problem or logs=
?<br>
</div>
<div>It may help us find other solutions to fix it.</div>
<div><br>
</div>
<div>Thanks,</div>
<div>SungHwan.</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Issue was reproduced after device has bad block. </div>
<div><br>
</div>
<div>--nvpublic</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bce970787428ff707570bb8d7=
04febc5b4476c64.camel%40nvidia.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bc=
e970787428ff707570bb8d704febc5b4476c64.camel%40nvidia.com</a>.<br />

--_000_bce970787428ff707570bb8d704febc5b4476c64camelnvidiacom_--
