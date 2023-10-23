Return-Path: <usb-storage+bncBCPNJ44H2IPRBZUS3CUQMGQE72WULLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B407D29C8
	for <lists+usb-storage@lfdr.de>; Mon, 23 Oct 2023 07:49:28 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-3b33efa93eesf5494813b6e.3
        for <lists+usb-storage@lfdr.de>; Sun, 22 Oct 2023 22:49:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1698040167; cv=pass;
        d=google.com; s=arc-20160816;
        b=S6n2CUIRrP1ZcYWDXZIebmwk4B32BwldPvVkXSukoUEo2BOdmW4qcDXo43AhCvweOm
         fN/WEN6jWb4WR8n7XCj3l3usOYP96CsQwXquGLmkOsszuXN4+TaBRYishAUkvXCnUI3R
         COpHDQP5vSSKEHCJ54aX8wGw7K9Nekr0geHC+H99/9ptecPm28JahB7fZlchZNy3sOcC
         ysUMz5672Z1IbJCQTxzHzJmg5BT0utGV/acnu1dck8dq16we0xyEgw7PuR/Kh+oG+V1C
         +Bgskez9fJCMGAAp/US6DiGxFXjhr9j/4+k3u5k3Wm8Fu9ZqnyeMRA/mbHtmBJw7F3ti
         9LRg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=mxg+cWhh5WuJl1KbOYbStT6P37Iy3rnpjaodWVX1pk8=;
        fh=2rRljI0e4JR6rEz5TkiUvL5cHAn3tSJkA4nS0IBl3j8=;
        b=ddFQ1zAUG36NpVvW98c4tYoFYJ+9DE36/TuzcijjkyjLQ6emYwqjGciMAXK6e9IEWt
         24Jggjhc0pJY9oGPpp/JWDIWgDugbsohSfCGH3kznekWoXNwnX18/NNlsJCENfF2Egg/
         vK7mt3o7RGcQ8CVXhh+otuzyF15MroGYWASEezyoVNF7x4IEh0OvX2CpcyyhPsETT/DU
         eFVAa7FKHfiS4j/PcAICPctZZZH3W0wA232c4vKwW6X5Rk3ZHf5Vy7buYD4vcqZ5uPtn
         Da0AlWILtgxmwn0j17LJviG9BVdd7tD2QspLrjR+hQameL5UaAstpZfbbkhNR+sqjMfB
         Z30Q==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=elG1aeKM;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);
       spf=pass (google.com: domain of prvs=86606326e4=meng.li@windriver.com designates 205.220.166.238 as permitted sender) smtp.mailfrom="prvs=86606326e4=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698040167; x=1698644967; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mxg+cWhh5WuJl1KbOYbStT6P37Iy3rnpjaodWVX1pk8=;
        b=UjyxSC6cVdtZLS4S5HJ3H0OLaFrr2SzDjPi6QV7M+aMEtdUAb6inZBdC1gw16ZIwp6
         ushDdGqgWGjokmAljWxJEsbf9Qv3+5k3l1KGh6EN0EYpp4fpAa943nvG80iM6GDd33DM
         RlDnRNZsrXLd1tnGqKwH2ub33zmf5/iDyZYMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698040167; x=1698644967;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mxg+cWhh5WuJl1KbOYbStT6P37Iy3rnpjaodWVX1pk8=;
        b=ZguBrOjQarol6Yy6T3S4LzuOYb0tRtt8WffEGAGY6w+LMO6X94zn/oz2QhONdLQjGP
         4frB1ZsI2494KgvnJEqX4rsTHQrQZ4KRDjXUO1q+ugt0NL9ruUktSn10LuT4enbZRfyB
         GeLY5QgP0KkbPJT6aBZ0gjdLqIsItgGKyjpv88a3p3zW5lAOiaXpweV0XpuKfUgPy4jr
         6frKmOOj04jZ5aTTLfRLeiMmsazmF/GM6bVZyv/fNibksTkM5uDGefIbt/6N8hpqgQmF
         BDJ7dAIp7o58Q6kHXESHYFF5Xbu2Y/jbwXZfm0OM1MMlRQ3BdT/XZIZAgI6bl64X586Q
         TdPg==
X-Gm-Message-State: AOJu0YyPKlnViVlNDlaHNBztCXR4l7l51HUwKxn+JDzCj5GqJlEbvc4V
	C2q8xOp0zZYhhVmbz9rWbyncJQ==
X-Google-Smtp-Source: AGHT+IEc7cHXyCJ9jocdLy9KCsKlQU1f01OdePFfl4GmDKTwN1GWs/PnFr4pYpviBdq5G3v+/Efhrg==
X-Received: by 2002:a05:6870:11c6:b0:1e9:8d3f:a158 with SMTP id 6-20020a05687011c600b001e98d3fa158mr6837908oav.56.1698040167076;
        Sun, 22 Oct 2023 22:49:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:4512:b0:1e9:d835:c43d with SMTP id
 e18-20020a056870451200b001e9d835c43dls4086852oao.0.-pod-prod-06-us; Sun, 22
 Oct 2023 22:49:26 -0700 (PDT)
X-Received: by 2002:a05:6871:740d:b0:1d6:3c76:e1c9 with SMTP id nw13-20020a056871740d00b001d63c76e1c9mr4261900oac.6.1698040166470;
        Sun, 22 Oct 2023 22:49:26 -0700 (PDT)
Received: by 2002:a05:6808:1311:b0:3a8:7920:a17f with SMTP id 5614622812f47-3b3ebb556a4msb6e;
        Sun, 22 Oct 2023 22:41:35 -0700 (PDT)
X-Received: by 2002:a05:6e02:b42:b0:352:6f88:9818 with SMTP id f2-20020a056e020b4200b003526f889818mr11123936ilu.11.1698039694942;
        Sun, 22 Oct 2023 22:41:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698039694; cv=pass;
        d=google.com; s=arc-20160816;
        b=fnu3HNsRBD4rqqiSLNw8qvScxcnqK59ZUl3EngDhrIKwG3luj0t7MYJD+4/vobJnmv
         dZvyb1sudp9m8Vno4QJr7YFIxgra4XG5n/M8tetHlxSILgRo9teWXoIrkCFyxmy919oY
         fLtgOjHfn8FBdGrZp4VeU3Z+Bu2nR7EGtlWb49lULW4qlrEEpY5zikNz5f0mIvFb6my+
         lnWwgrCZ870wHcMMe57BU5a5W+RwCnk6sboNnjFbPjZnGOr3dJunprhURtX3EvMWEzgS
         K2p1ah3MdQafwCNqieguKv7sDCT5u1Kjy5+e2k2yVQ1qkzhlCkJ0QuqL/J14deiYCHkZ
         8NXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Uq5QzT2tdlLjxtgy2QtAZ0NsxtccNmmmDfVm3SdRMwg=;
        fh=2rRljI0e4JR6rEz5TkiUvL5cHAn3tSJkA4nS0IBl3j8=;
        b=aR1UWHXuGJKtpdOuogDN8nW7UjgJbeZPsM03QnBUvilwpsX0e9RUx1mbMNhvjYzXpd
         A++8JCTR0nFYeet5M+2hGyL2eh8gwK8aPkzpQT3+jVNQ7cacgtW84Kqo7YDqG6I8Msl/
         NY+mxX2rzVb0SLfNfqYLx8PnDZ2tsA2amFR/lAQA0SOJ5YRs/U4X6YThzrFLLf1FPjLY
         DxezpnZEhE4rQLHw1hj+uJBZAlhdTp7itP7EpLuAS0wSFickezviRy3TvF9T9lhn8KKB
         I9iItap/twUIQFvIPPBqtIOnV2bxm3ThKIcR1V95nL06O/hbfA5cNvx0NLTPhlomdXxd
         8wlA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=elG1aeKM;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);
       spf=pass (google.com: domain of prvs=86606326e4=meng.li@windriver.com designates 205.220.166.238 as permitted sender) smtp.mailfrom="prvs=86606326e4=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com. [205.220.166.238])
        by mx.google.com with ESMTPS id i11-20020a056e021b0b00b0035145f0813csi2798196ilv.90.2023.10.22.22.41.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Oct 2023 22:41:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=86606326e4=meng.li@windriver.com designates 205.220.166.238 as permitted sender) client-ip=205.220.166.238;
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39N5LDQE022945;
	Sun, 22 Oct 2023 22:41:33 -0700
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tve5f99y7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 22 Oct 2023 22:41:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KTuvLzZ3wApxEwYevEUmRHTZQ8nh6tbM+vdGDcDv7z8thmj9NOgh6dkrmJWMtQE71N6nkeUdoPC+Ut/DcpDgvp1Roui4qLb6eoCLo+N2wbjE4laCvxKXWZjDG/0V0fnEQTYhibGYP9JAs3XrJ3fdS2bKoI/v52Ft2BppuHAKWx8fShfmokfAm5pQ1GHjqryB1vJVGQTLoGtdF5biH64HPC7NyUFFftadTl3+sey+G79jhwFjHGEeMkAQGdjnHbZesT4/PCfCvolT3vKs6QE4od8Yp5oZcS7q7Mz53t358fPd3Nb7QrqoRA/YJSQ3mpiQG1K37WEq4G0M5nxmzN3jAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uq5QzT2tdlLjxtgy2QtAZ0NsxtccNmmmDfVm3SdRMwg=;
 b=hVut8LZOEFvJx290noG/DoY1MQ/HA0CWvJWTAwz9oPtVW3aWx/PicSckmYO953dNdHMLPeHOpWS1uYTfWG0QtVApQ2BlYWOl42BV16XccIkI3NIuup0pvE7TCGkvNZPnSjM3RXW7NcligE80vzzcDb5g/jtnN63YbNQXE6Q3T9Wnv29ycQqx68rRXDVvYV76WkPKwUxXuBJZFHo3eeAVGTNAZsDk/imuJWZSjDRSZOOEHrlncvaRwBPJGXNiydorERMJquj+adAd45aIi554JYP3As8drf3ukeT8l5031cU4cV3niFYVTHkEj10WCvfin0enZehV5f6PhzIFsBS16g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
 by MN2PR11MB4518.namprd11.prod.outlook.com (2603:10b6:208:24f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.29; Mon, 23 Oct
 2023 05:41:29 +0000
Received: from PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::6eff:bf87:e13f:40df]) by PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::6eff:bf87:e13f:40df%7]) with mapi id 15.20.6907.025; Mon, 23 Oct 2023
 05:41:29 +0000
From: "'Meng Li' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
        linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        linux-kernel@vger.kernel.org
Cc: meng.li@windriver.com
Subject: [usb-storage] [PATCH] usb: storage: add shutdown function for usb
 storage driver
Date: Mon, 23 Oct 2023 13:41:11 +0800
Message-Id: <20231023054111.2744872-1-Meng.Li@windriver.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: TYCP301CA0059.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:384::19) To PH0PR11MB5191.namprd11.prod.outlook.com
 (2603:10b6:510:3e::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5191:EE_|MN2PR11MB4518:EE_
X-MS-Office365-Filtering-Correlation-Id: b0ea17ec-56e6-49db-0d8b-08dbd38ab4c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MFHA2HkntVLmRTgDm16YJaP2M1hXapWGYvs10zIFO09/CDFwHKhSX/3KB77P0gfifffNDarO9seuU7TbokCvW1oE+c+wZu0vZcwsdnz6g7sQVSzzKmRofiwnQqDhLJ+U5EC2hRez6ssG+CAqlGZNP1Ho78TED4zerDP5GFAiOnxO6oIjHZXS8Ynor5EJ6Mh+5lnPXOy/wacQLssLXWJHtWLyipTbJN7rlqVGo4kw1G0U661gWJ+I10a9rhUIcskKdciyaAMsxACrH9zsanLq/XzqbDZQsqPiFxDaldFdm8ghr/7OCszdh/V72cRn3EJ+E6j3K5ss4AiYznjEFqR7Z6cJJho+lLjLYCezUenUFFqLxn0f2lKVPkEUnJnufmOkd2NjjXCPSQxWJm7m5+ODLQ5JixN2oFxe1CxGO8wz/Y1ambLEI+Eg8EmQdUwBmRdFwqdn6ow0fWOanjVo8sxoxEloE3pMxbKwkveqZ6EuM+4otB89EPoVxPax0CN5bKFQhD0BdWdGwI6M4J4piIkJlnJRZulu1Ab9+iCGVAk3krRVSbHKPmuEn7flHWYAG9c6uJPhUNmjUyB68OsCkj/CS/KvHZpbNI0hXvsPz1nTWxOVZhD7EZbrpP5LiJnOg0UA
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5191.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(366004)(376002)(39850400004)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(2906002)(41300700001)(107886003)(1076003)(2616005)(26005)(36756003)(86362001)(38100700002)(38350700005)(83380400001)(5660300002)(52116002)(6666004)(66556008)(66476007)(316002)(478600001)(66946007)(6512007)(6486002)(6506007)(8676002)(4326008)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IrF+OFR1TewgCvRejpCuk451V1YuEE2koCAaXjqCJFM6ZMAGM7lDMejI0mBd?=
 =?us-ascii?Q?hyjYCnpsh96C9WdVp+DoWViAmxBOAH0bwAJAT3oIAXAS2Main5tUPDdjAsxc?=
 =?us-ascii?Q?v7kN5iq1YbpEdR4yDzinNkejjf/fOFb3Z50fCMooLXKwFqsd/gmpMkH+qIWD?=
 =?us-ascii?Q?bBEfC7UNTHDrBpAxvvCf5vKa2CUbQUBm1vGescNN0fGd06PirH8cWJKIUbvF?=
 =?us-ascii?Q?UgG0czBcIfGWK+uihg7s2ef9aqlb8340gvCIpvnj+ySRrneiXOh+8PMIesVY?=
 =?us-ascii?Q?3jJOrSx0UWnsY/QAPVSYOyDQ2wFkDATZaGEhPtwl6PpIQKahLTB7+h30Nvtk?=
 =?us-ascii?Q?YMy4JcI/mKVSTucDTjarr/dXKe40VyUSYIo94VhIw7+pq/bfriyzJij9Vdvd?=
 =?us-ascii?Q?uzTAcPkqtHUR949plrac+loMnxa05QBmnT1tx77okwnHolonqnV22i8OD2ad?=
 =?us-ascii?Q?ZI3UMPBcuFPYmf8Iu0WFs1sgahSnaoE/zuEW+Aklf1vFyWadrJROMvQVG1Tv?=
 =?us-ascii?Q?4yNTLAQcwYL/meXBs/LAQkzFFZvCCcVdjUdzfG3i7IYucOebqG9zlBvQxXs3?=
 =?us-ascii?Q?+js6l2KZbxte71LepcM5d9BqPSFdicB1Ny4IzInoA0UYZrb2WQfCu5pxLqId?=
 =?us-ascii?Q?Mq3gOViXrG9Ydw9RoOblUlQP2KEp8DJta5sCCz+YMxteSdjeZhaesdlPpFFg?=
 =?us-ascii?Q?SOQTtp9jTAb5QODSybVp0eDda7/JsSB70aRE0sKOc09U9pGvJc3v4UI2f0G6?=
 =?us-ascii?Q?L0ineS8x5ucZelKuMavOOf7Z8UAQoMrWfGXEZjnhTJL/CRb5B6UVIPqFo4mv?=
 =?us-ascii?Q?CCtaSBL8bfGacC4mHfuKQ+cnBn7qUoWnzWKd0rRQA0/uW0tJgjl0j0gl5ljF?=
 =?us-ascii?Q?o5WsX/KWh3z3txS8gGJu58hve0S7qGQ0P+0qYc7VjB86da+9+JI2+hOfZSUI?=
 =?us-ascii?Q?nKFS4S0Tt5k+NHzkt1o5HcurdjWmMpeyE9iU6wWqZqJSW+NaUOInWSLr6IBn?=
 =?us-ascii?Q?n4o+0oCmuUpBkcD7462/jx0Y8IxiCmcJEwhjigE3EcACnJwWwoD5VeILW8rQ?=
 =?us-ascii?Q?tMIxZ9fSuFvPpwXNWzIVknpDGT7kYzpXoSxpr+WnrRxZXM2DscwjQWK8n/OU?=
 =?us-ascii?Q?+sKvj9KAf2zlzCiWPUnIHzCsCJCaJ4PCZxWyRVYMgs8gnldVYC7mhUvC8BKa?=
 =?us-ascii?Q?nfIEzMp+WUmbw6N3CzzBFZa59yRvlIviBBUyUAGsGSG6gFCKnQb85uP+LlJm?=
 =?us-ascii?Q?J6wPWjuTNyH3RA31GUh+/vjjOV5ZprV/x26+RXsiOZ/LzQ5UgN+TsOB6YcvU?=
 =?us-ascii?Q?ry0q69k2plg9ixamOf7S29SFMjuy5hPxj4gHawjTLE/R1NGvHjeeavdMNHjM?=
 =?us-ascii?Q?fTCkmITVz8dq5qg5uD2pUpM4QA0xMNbTICO/9tW9QfoJUDWxWezMeceYYDZQ?=
 =?us-ascii?Q?y828lMUJEPahFgr49xAqNDY+HrNtxFkicRuj89JvQV6PsW4NkEghWoeJfM62?=
 =?us-ascii?Q?LjN4Obac0fNujTzp60TipV/cF+rT0kuxZyI+PDt1jjHY8ouL2suHrBBzqCqu?=
 =?us-ascii?Q?6uzvIRBaxj+N3WQFHJzD7N133+iZ33pZzOW4N5Bt?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0ea17ec-56e6-49db-0d8b-08dbd38ab4c0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5191.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2023 05:41:29.6580
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ddSshizY6wMnbP3UOl4KFDhzWgkSwhsDy2Jpv0J9+dNdVSZEBkRWQph2D9iH80aMiAM2hTlXOGO8pOfjtJatRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4518
X-Proofpoint-ORIG-GUID: MDsKuBvQzReriWr6mGqL9fTVUqYOcWM0
X-Proofpoint-GUID: MDsKuBvQzReriWr6mGqL9fTVUqYOcWM0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_03,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=988 clxscore=1011 impostorscore=0 priorityscore=1501
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 adultscore=0
 malwarescore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2310170000 definitions=main-2310230049
X-Original-Sender: meng.li@windriver.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@windriver.com header.s=PPS06212021 header.b=elG1aeKM;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass
 dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);       spf=pass
 (google.com: domain of prvs=86606326e4=meng.li@windriver.com designates
 205.220.166.238 as permitted sender) smtp.mailfrom="prvs=86606326e4=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
X-Original-From: Meng Li <Meng.Li@windriver.com>
Reply-To: Meng Li <Meng.Li@windriver.com>
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

On ls1043/ls1046 rdb platform, if a PCIe-USB host controller is installed, and
an USB disk is also installed on the PCIe card, when executing "reboot -f" to
reset the board, there will be below error reported:
usb 2-2: device not accepting address 2, error -108
This issue is introduced by linux-yocto commit 837547b64a34("driver: net:
dpaa: release resource when executing kexec") that cause to spend more
time on shutdown operation. So, the 2 platforms with DPAA are not reset
immediately after executing force reboot command. Moreover, the usb-storage
thread is still in active status, there is still control data transferred between
USB disk and PCIe host controller. But now the shutdown callback of usb pci driver
had been invoked to stop the PCIe host controller completely. In this situation,
the data transferring failed and report error. Therefore, add shutdown function
used to disconnect the usb mass storage device to avoid data transferring under
the stopped status of PCIe device.

Signed-off-by: Meng Li <Meng.Li@windriver.com>
---
 drivers/usb/storage/usb.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index ed7c6ad96a74..e076d7e3784f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -1142,6 +1142,15 @@ static int storage_probe(struct usb_interface *intf,
 	return result;
 }
 
+static void usb_stor_shutdown(struct device *dev)
+{
+	struct usb_driver *driver = to_usb_driver(dev->driver);
+	struct usb_interface *intf = to_usb_interface(dev);
+
+	if (driver->disconnect)
+		driver->disconnect(intf);
+}
+
 static struct usb_driver usb_storage_driver = {
 	.name =		DRV_NAME,
 	.probe =	storage_probe,
@@ -1151,6 +1160,7 @@ static struct usb_driver usb_storage_driver = {
 	.reset_resume =	usb_stor_reset_resume,
 	.pre_reset =	usb_stor_pre_reset,
 	.post_reset =	usb_stor_post_reset,
+	.drvwrap.driver.shutdown = usb_stor_shutdown,
 	.id_table =	usb_storage_usb_ids,
 	.supports_autosuspend = 1,
 	.soft_unbind =	1,
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231023054111.2744872-1-Meng.Li%40windriver.com.
