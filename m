Return-Path: <usb-storage+bncBCTPRFE7TUKRBIF3TGPAMGQEQTT5OKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A53066D847
	for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 09:34:41 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id q10-20020a056402518a00b0048e5bc8cb74sf20713992edd.5
        for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 00:34:41 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1673944481; cv=pass;
        d=google.com; s=arc-20160816;
        b=LwqmYQ6LPwRW33NWK+SeUKfpv5absz+PIxUAM+rztBgX4qKurTnaqGE0K8OATvIK8R
         3J9wG86Iq9+SYnaRZo3zmHBpdLhJg3HuRPPtbGqapVlkxnkvhW5QpW7seJYcqDMCFb0l
         ij7+3nkWimUzRXEOF7vhF0O93nFKYHit5t+JNjlYLZcw9Mz+fnyWsEsSKxjPMvfZ22+w
         UoL4kd/yv0JP2xi5rxkXKIYvMP7hl5rO7CIy027cpnvCmxdibavWCeoXhkGKPocNPBRa
         0KGe1tp40PKxyUBs7FA6rTsSWYa2dc+6Vu/sEy3AJ8KI067hmGPnioon7it5wgKXnVuk
         7xqw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=7vRT49klpXKqE2XwiDu0JdJyG4ISK+mqNtRyBntyeEg=;
        b=Z+2L/DGuQ7amxBEW26BWMNK9bXZD+BrwVylY8fwfH3F/pgQxt8EL/zGP3eUMJoH2dL
         gLxQUb7zPL55jkWzXHb9n5nGOFOwXrNXzM3S+DQmOBpK0KHWPR/7baxXReYAVLKpHdnL
         psFlCkhuAxUiUcqjA6ojYWVGyXzIlmCOBuyBAIA20Stlqee5Rfu5dnFv7y5xDET+vUZJ
         CupWjdBa0MeBu1M7zZgT+5SvHFo3e0dwrkFOkmgD/l1QRuMfFQmTclWl0IA6BVfL3xZa
         i9H2CiEbOKpgEpIcghd2QU3wzrjZt1/BMCIxk5lO25RQwWuGbJhH8tzPXJCiK0jcNHmo
         uBrQ==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b="nBwNO/io";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of oneukum@suse.com designates 40.107.14.54 as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7vRT49klpXKqE2XwiDu0JdJyG4ISK+mqNtRyBntyeEg=;
        b=jlXcw9uoUORVNgOHl8UshhQqoaTtqkOX78FyvAbupXr5z+I7dg4M6P2FQhnJ1723b1
         2LPw82Y8Yn1V6TXITDKvXmElbVhZMNv6z1VUp6NK/wCBbcGU53uyvNLEyrH14XwLRkHE
         QpKGT6GooMmfiyWFmp3swnD9sZtL24SiZsZ3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7vRT49klpXKqE2XwiDu0JdJyG4ISK+mqNtRyBntyeEg=;
        b=j0t5Ydve3GARCymvWJbZ7nl3EhN6stIx50P+fFYSJjkVnV4N9GAT/alGKsbfQnPuts
         ZpgPhSh77d1xtcvcy3C0PwD3Aldcng5tfNgCuRmxgcEa3RneuPyrgiPaOzfAJCe5x7qy
         cf+AZJJVRqVHgTG5oHMN4lKqgYjD8zh+yhdfBVSkwGdCWLv9yHEMycKb+Y4kOqqNEQK2
         XujM4KzwFjfpSyFc2D4Bop5fzkK24c4hNVygOP49MOR164vA8bk9cZIcfdfALbYCIS3J
         cOjRYl3a6qGz4OHHx2wTXcCZdXqFTTeyLGdyE7XJe15R5Ps/irGlAUP4m8jZ/flUs2s+
         cCbg==
X-Gm-Message-State: AFqh2kpxbLYeONMYkPKJeoWQU8T+s4JSGiMT7/Que84C+LEK5Y70Ct8U
	VFoOfh9fvhVq2xRk/JrS3LVcFg==
X-Google-Smtp-Source: AMrXdXvRowsfrg7ykQcDI8bR87KY9C2iRuM6p+HuQFVrakhBbS72xBbwF/1i3lbgD+5tULi35YtJTQ==
X-Received: by 2002:a05:6402:4024:b0:49b:5c7f:87f5 with SMTP id d36-20020a056402402400b0049b5c7f87f5mr221159eda.15.1673944481221;
        Tue, 17 Jan 2023 00:34:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:40cf:b0:488:1679:c417 with SMTP id
 z15-20020a05640240cf00b004881679c417ls743029edb.1.-pod-prod-gmail; Tue, 17
 Jan 2023 00:34:40 -0800 (PST)
X-Received: by 2002:a05:6402:1947:b0:49e:30a0:2999 with SMTP id f7-20020a056402194700b0049e30a02999mr1630987edz.15.1673944479873;
        Tue, 17 Jan 2023 00:34:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673944479; cv=pass;
        d=google.com; s=arc-20160816;
        b=fOgXlmCZ0UCVrK8ZNWSqFViEQvtxV0iqH1GFpxJqH/Ge4ijt1DEx1Acdzgwr8x93AX
         5ocvkOPPFBj5JhQabIrRPEwyoMFipthRsGuVk/C1Sh93d29cfYogEUqmzSq/xh8yOSG5
         ayWw1H9afmSzaIHAd9SbjPFPC6+RQ0yBMr5u4yk02areAbJDMYA6ohDBfHol5AOoTZ/z
         /6YeW80Ab4A5YavmHnxpWcVXqHYuDVplPJ4Rqm2dVXo1TpA2rCt+zuWEuwEGDgetDqho
         oQU8sBcnJO5RwHpSOclVC+2QC8iTgNBqLr9N9Th5briJ9QpR6rAcsoMHr7a8D1ug3R4y
         Mrew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=o/dI6x2YJhtvHKRQB8+uDnHe7syP5x5j0tCovjtAQXU=;
        b=sPUQu7mEINgpeIqo+6qxLE3z1/NtlOrnasrXJUAFKPbkDbNdyqGrXNEhx/C1ajP7x4
         EN0cG2hpMblCdpi9Z0s4GFSzYOEyP+HB5FsrqRXhQKm3BdGvC52t5S7vca6ql/hR3Z4Q
         8Cr8sQDJ3RvRFvk4kD9zwjRprZsjZhH9ht6sTbUV23RpRSPWmInyJBC+pmJCTMnnT8WF
         qQ1tk2UdDm+cbh41fpsULt7AZ0Pir8ZVf2B+xGs4UTAqRnujlgo5rTp7LmU8NnM5Fhph
         zgHF2jLkDmOA8LN46P4il7sItdu1yYVTeMR2ZRbp73V/3r+jvf9D+w5XeXffabCQ3VRN
         x6QQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b="nBwNO/io";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of oneukum@suse.com designates 40.107.14.54 as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2054.outbound.protection.outlook.com. [40.107.14.54])
        by mx.google.com with ESMTPS id m21-20020a056402431500b0048d8fa5856dsi39120043edc.454.2023.01.17.00.34.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Jan 2023 00:34:39 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 40.107.14.54 as permitted sender) client-ip=40.107.14.54;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4lK0XykH8OFvJH5JqchtKDoJM2dmN2JAINPNXoJKmq1C3diL6ych6tqha5buRws/e3EP3Y0xfv4BMuMGF84IBadycEI8wfnRNmwnFcTvziqPWEpu9Vkh7QslOSt3S4nH9SA5MeWnBnKgn+POQxJsYcf44eTLjaiHrVNtHjcuW0/6wsrQUMlnWzujUZWnpvSOtXCNyagS3zyKwEdBkhOWu5ryduSvdOljCuaIsk38qcCqhJhBY9WsqI0XjNVRLctRzgylWqCdTQ1bmxSQ6yT+Hg155bSpopNlvDicJrFSvnf5Bo4IDSobI8huBdraqMag9X10kv1e4n/no4/GMEzxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o/dI6x2YJhtvHKRQB8+uDnHe7syP5x5j0tCovjtAQXU=;
 b=V1zxu7rH9rWw2E5DcNP+pGWfm5XvqDuV3EVT/+p5BZLbXif/ErMlMUnFYHaH9FcCBfel8UQ6Ja6KDHk+pvYJ2qR3expGizraADQ+/eEIjVB4wmoJAYqSsEFukj8aUOTfqxW54wX5aafH8WpKYWCMNc7UU488XQdob2LyzRJyyzjdM3W5ATVW7TCFKFq2cbMDMEltJNghPt3cyY0RUF1GlteQpgf0l3WdHedsJeVs4m9RmnyRy1+MzbKcv9WpQDi4sAzHuAasvs3aY+AgMnlGV5x+6HzIOcVezNJ1rVv0jZFeR/QgT+z7YBGWKEFoHDJqo4jKZVIBuSfe65VEgQMdNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from VI1PR04MB7104.eurprd04.prod.outlook.com (2603:10a6:800:126::9)
 by AS8PR04MB8436.eurprd04.prod.outlook.com (2603:10a6:20b:347::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 08:34:36 +0000
Received: from VI1PR04MB7104.eurprd04.prod.outlook.com
 ([fe80::8d51:14ac:adfd:2d9b]) by VI1PR04MB7104.eurprd04.prod.outlook.com
 ([fe80::8d51:14ac:adfd:2d9b%5]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 08:34:36 +0000
Message-ID: <d01fed62-dacd-b3a8-c138-73f6093f58ff@suse.com>
Date: Tue, 17 Jan 2023 09:34:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: [usb-storage] Re: [PATCH] Revert "usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS"
Content-Language: en-US
To: Juhyung Park <qkrwngud825@gmail.com>, Oliver Neukum <oneukum@suse.com>
Cc: =?UTF-8?B?5pu+57qi546y?= <zenghongling@kylinos.cn>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 gregkh <gregkh@linuxfoundation.org>, stern <stern@rowland.harvard.edu>
References: <2mw02fh6hzd-2mw3w8xfngq@nsmail7.0.0--kylin--1>
 <CAD14+f1p3j3WJUYshneH7A38b8JsiXjtScESB2uOQ-ZyBi57tg@mail.gmail.com>
 <CAD14+f1ebzviMF-pi0ryKU8cRPWp2BqV2dwiXOFjeM30eqrwOg@mail.gmail.com>
 <CAD14+f3De+0oPaq0hOo0D+siTvZDNnBXg7Qg6fKNDh63zVh8Lg@mail.gmail.com>
 <111d7b42-5e85-58f5-0645-66749e754673@suse.com>
 <CAD14+f3nHd3tSFwfpLkFfQOAAg8w9soRTf7F53Bj_UsCmN9+ow@mail.gmail.com>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <CAD14+f3nHd3tSFwfpLkFfQOAAg8w9soRTf7F53Bj_UsCmN9+ow@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR0P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::13) To VI1PR04MB7104.eurprd04.prod.outlook.com
 (2603:10a6:800:126::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB7104:EE_|AS8PR04MB8436:EE_
X-MS-Office365-Filtering-Correlation-Id: 134961c8-f795-4d74-c1cc-08daf865aa3b
X-LD-Processed: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba,ExtFwd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jjZMMBkFfsZ7OnhoI53kXJPCJX+QX0HkFEbXB1pRLS2o6v1vt/rtgDh/pHmaghL2vHW0YhbsaG7iDMgxpfLDJWXFDN6JaLyiieVVhvUqML/Ue6HpdD0Hu8Qy4f7Yi9/wGgVWADKgX/uK3/DeaShwPiDklzDPaoJbA3M7al1FmxWsOmsdxvIv4NGVyeQHk7DEBmI5vXUmM7g6MwyL9ErcFsPPebKBjex57127Vq7/aBTBjMh6WUCCumnv4zt/utT8yoZpunGrLJ4pmxR//OC10AtnyBpAvLwmHtfJpwd2fBJanuyDjQvJN5t80magRYciYKHS6Xw6Ah1+z0N6kaZVwGAoDMzvmL3lF9mDB6vgcZ0rR8u0Ko1QybeylxzBiCn+p9gbxSO/fskXlnxKus41L8pcECpL007cCoMjPeCerbScbd57P1V76Jn3pqMH0VCp+t3GsFmFS4Bvf1VyJCMIWuxpRiFnuZFHYFtOF9pb25L/QfYI1qhHLGCw0MyG8fyGaXdmgwhLAFbGJOc9tMnTzTM0XqaOr3uPRmN0gzo4cgU6sb1Mq3BEWifxiN/IPl/BaC8VjSf9d0+VAUMnn0oehoCZVQkzVLY1Uf7ZDAOHs8xg3jKdSyMgTYpgcluyjVU13DhVoVOKAcVb6lAA8hvVGRj2r9kVPidMl0D0dWTX5qeXTN5DQXEuiHP3NJS98G5DUWkpYJNNY3bNEaxySo938WyuSsD+ogDmHXySiGQ9CZU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB7104.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(39860400002)(136003)(396003)(346002)(376002)(451199015)(36756003)(31696002)(478600001)(6486002)(54906003)(110136005)(6512007)(6506007)(2906002)(41300700001)(4744005)(53546011)(8936002)(316002)(5660300002)(4326008)(66556008)(66946007)(66476007)(8676002)(2616005)(186003)(38100700002)(86362001)(83380400001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlN2bUVkcms0SU1XbDh6Rm8rRnJRTXl2SldGZkVDdThCejY5amt2NUJzSDBw?=
 =?utf-8?B?MWlXcXErNzByU1BIbzdjSGZ1NU5UNVkvSmk5WkdpcXN1aDNXdDZ1MVU3dkov?=
 =?utf-8?B?cHZQeC9QR2swNHdYZjNTTGxNek01WXhibTRqOW9LRkFTNnYwMk43VHRGYms5?=
 =?utf-8?B?TjBCM2xJRDBjS2tOZmpYOWdwVDVHaHZ6SmRTQmF3Z3dFN3pPbWYzWXMxc3pB?=
 =?utf-8?B?VGkwZURXeXJtSHUvV2ZLZDF3NU0ybzFNRjdZRVhEZzY2MDlZYSt5Yk8yV3R0?=
 =?utf-8?B?RTAzd0d2dm5FQ2JJMEk1d0JzWkd3WHEzYStXeUZsdFFVQXU4S3dVK2x0dFB0?=
 =?utf-8?B?TUFGSFVIaHlCWTRMbjZZMVM1aXZqbllMR2dNaVYzQnRkSnBlb0hpdlR1RFNQ?=
 =?utf-8?B?bGJzRThmWEoyYjVQdnN1K0grbC9jNG9WQTNTTE9qcnd4d05kN2J5SUJtOEJ5?=
 =?utf-8?B?ZnVjWjY0aHYwOXlyTTc1cjZuRUY2UW01RTc3Vy9ST3VWNnZzb3hjTVUyd0ow?=
 =?utf-8?B?bFllUkpxbk9GUXhuNEJ5aytMSkI5OXNXZUdEbVM5U1FxQ2tGQzVlT0pxR3pL?=
 =?utf-8?B?cktGZ1ptbG84REt4QWlBa2dLZUsvZXFpdVZpc1hnY3pCYkwrN1h3MS9RbzlN?=
 =?utf-8?B?QldRNmJNeHRFYTZkdk1udkw1eUFiRWplZEFEVW52QlptRmd2dG9jNi82MlJj?=
 =?utf-8?B?RDAvVnhLbDBhOHZYZTJGU3FxOU5CVnFPcnlTT2JiSTlRak9vZlo1RXZQY2Vq?=
 =?utf-8?B?TktzZlN0Vjc3TWg5dFpBRnpDWWpzd1BjK1NiU3dHQWZuOElJQzBRcks5M2Ja?=
 =?utf-8?B?MUx5YVgxM3dEcnhXaHVmSlo2M0dKOGRGUzVISDUrNG5mckFSVUFMZEJWQmt6?=
 =?utf-8?B?NnJuUzBUR2NCRTB0ZGpEaGRCZDRxWFV3ZndLbWVZb2IrTS9FTHFlK2VNbE4w?=
 =?utf-8?B?L3h3VlpWSENzeFdNak9Cd0JXeldUdVYrUFp5Yzl5N0ZPU0p1Q005RFFQTjhM?=
 =?utf-8?B?ZFplb2l2QUk2V3hqdjhpR1cyVkJ0K3UrdE9DNkYyY1ZxTGNhWmNEUjdPUzNo?=
 =?utf-8?B?TFlJNzZMUHRHaHlTaHUwWjdHREI1RkFSUFFNb1RiUlJ3WlB0TVRPL2c1dyts?=
 =?utf-8?B?N2dTQlNNTmc5anRaMm5NZVQ1OStzeGpCa3hyT241elcrY2RmblRZOHlPVGJ2?=
 =?utf-8?B?ZXRnSlNPQ0hTbXpza1pjNC9wazFVMERXZFBRMlhRRXlnS0JiTWpxT21xK1NT?=
 =?utf-8?B?QzBLTUNQNEoyY1JHcFJ3QllveFlNd0IxZ1VhdHY5UzBNRkY1bDJkWWZyaHk3?=
 =?utf-8?B?Mks4aTdMM3VQbjJqNHVYWEwzUlBjY2QwUDM3aEpyQklrRmFYVDlBakNuSTdU?=
 =?utf-8?B?S3BpbVI5VHVaV1krY1NtZnlMMXdZZXlxdmhxQzcramVHNm9IRlpwSmZBaks3?=
 =?utf-8?B?elJwdWRLUzhBcTdoSXBtTnBnNEVqT21xb3d6MEhhRS9OV1BMUTB2S2RpM0h4?=
 =?utf-8?B?U2VQb0NIUGVXUjFDVisxRFNEQTVQbnZrNnNiQ0dlSVVOWi9KaU5IOHdQTVBV?=
 =?utf-8?B?WGNoU0V2MkI3aFgwaGM3aWs2Y3B1S3JLNlFXRm5rdlRMcWFBTDFjRDZGdjZ4?=
 =?utf-8?B?RHJ0VU14NHNtWWZxQjhBRHhUdnBoT1NsZU9uK3hqSEExYjlHVFNtbDFNVFNa?=
 =?utf-8?B?WkJCS0hMRHRaK081T1A1czVWZC9lMWhFTko4dTJNNkZZejlYZjFOOG15Z1V6?=
 =?utf-8?B?TlRYQmNobHZVU0UwU1pYRXhFZ1FsQWhDcWhydW1NUTFzN2NOMm8yNTJScGRu?=
 =?utf-8?B?eVpkTDhOc0lUVlVMU2FaVFlZdEh3d0l0UVl4WHZ0RnJQMEhWc0ZZblJiV0dn?=
 =?utf-8?B?VDFLWFNUNEZudG1wNXRqTU1hT29oa0swNkcrcCtVV2YyWEp3bFI4R3A1RDBr?=
 =?utf-8?B?TFhMQXNxdHF3c3o3bGMrZTR5ZVV0anBPK1FWVGZoVDRMTnZkVDJOSlBObzk5?=
 =?utf-8?B?ZmhBUms5TDJZRU9DZWxlZ3VEWm16NlYyb1d2V2xsZVFKUG5BNXNNcUpZWXdF?=
 =?utf-8?B?TmVBak43TzgxdnR3Q3ZnamM0QlFPa3ZzWThQUmM2SlcwWHpqM2lKZ3lhNUQ0?=
 =?utf-8?B?Mk1FSWVNZElRbmxISitQZWl5S1RmTnNXRlFxUjE5ZC9QOFQzNHA1TEpRbnNx?=
 =?utf-8?Q?WdnqaHCoWDsCDux7aSR0krfI4G94XAl0pm5UedfMka4G?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 134961c8-f795-4d74-c1cc-08daf865aa3b
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB7104.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 08:34:35.9648
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kP0XYgqHci1lVGg6NjoEk8l0Hmaa5qvOtzLx1lf4DWG9i8UGcy0G+G0KpMT9YKOCmKfgsn9IjkmAMYCfagXAXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8436
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b="nBwNO/io";       arc=pass
 (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of oneukum@suse.com
 designates 40.107.14.54 as permitted sender) smtp.mailfrom=ONeukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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



On 17.01.23 09:18, Juhyung Park wrote:

Hi,

> I'm not sure if this is worthy enough to write in the commit message,
> let me know what you think.
> Maybe link the relevant lore.kernel.org discussions directly into the
> commit message?

By any means. The patch is the best you can do. I see and appreciate it.
It is still ugly. Yet, if there is no better way, so be it. But this
needs an extensive justification in the change log.
Please rather be wordier than you think necessary than too short.

I'll ack it.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d01fed62-dacd-b3a8-c138-73f6093f58ff%40suse.com.
