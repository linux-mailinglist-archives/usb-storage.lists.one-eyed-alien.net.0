Return-Path: <usb-storage+bncBAABB2FZYSTAMGQES2PJXUQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id B03A6772AF5
	for <lists+usb-storage@lfdr.de>; Mon,  7 Aug 2023 18:33:45 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-1bc012be5basf7440468fac.1
        for <lists+usb-storage@lfdr.de>; Mon, 07 Aug 2023 09:33:45 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1691426024; cv=pass;
        d=google.com; s=arc-20160816;
        b=hWSwc/I+6bsekb7GHGatJOuCZ+QLYmRKNHGdmGMv/nZ9ibqDatvjhTHETC0GQ8OONS
         oHbplHsNFSHRhWYiwOoPgvMJsiuqUqJC2at2/Uc/Y6pKPgZ8OJ7tgv/969Z20wtyeCqF
         4JC6LsfcS4H92TlD+XnJw/0VqZfTk++YNLZyLyywA63Bka9/vRkwgf8lbQJ8IiH7YhdA
         9jrBg8i22P2LBWpym5R3kDq22Up4HdaSjbpfuumsuJyNayuY8Tl9F5PXWvA3MW7t+0db
         +RIp1qKn/9QpKgPr/f3+roUKLN37Z0/lIMNCmBx36+PWh9mEhuDus/8bzcWISzFzv/y6
         3TPg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=hGkAPOWuX0yP6Yp0NYmiXdj0FqXtqMc3BP2w1knsZyg=;
        fh=G5JD61brR7O5AePO+txGq/sSokSHBOgpYMeoB4GlhqI=;
        b=zR13Ael2ehsHPkIGa6dvaHMPssOyJzDY/OquQILHiix4JY7l/XBo2wZCsXSf2OD9p0
         b4tspK6qORgrsOSqAcq768sof2AVOmTanill7z/rSPAzcHEUUjvM0u8vG1ccvyyH57O9
         NhmdhuKr4jd21RY0kzTF+Cr0ep9u5px1CjRsXur9VdDEc0ZQShSbRGi9BHecAxO9hEpH
         tDNI/Qr2Hwdvy5gjkkKHFy+hUmVWVJuAV8BrZ9TXW6bTtaZzSIMaq7glulF/03zVbYGi
         ToV5dlCey/Vg/2uT7UqznB3Zj5TZXQ+sLZEmxwTgDkcvbaY6jKkj5Eq+1m0INwZ2L7nQ
         THaQ==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=I0UQQ37n;
       arc=pass (i=1 spf=pass spfdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of piyush.mehta@amd.com designates 2a01:111:f400:7eaa::604 as permitted sender) smtp.mailfrom=piyush.mehta@amd.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1691426024; x=1692030824;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hGkAPOWuX0yP6Yp0NYmiXdj0FqXtqMc3BP2w1knsZyg=;
        b=HM6b/Dp6HzGSSxRHO5ZQK6yXEqfqIAJRrg1Q/iRJY7Bz07YfDvwL68Ui3+MdBXZPW1
         esabD/Vv4bgUjmFX2KecxKbuiViMVmYUOQAg6W43mRKa6xFb3648S8Ebi2ZtbwI2ZpzR
         tjaGGupdKQFK3Hcn1u0D8x2jea1T36CtIULow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691426024; x=1692030824;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hGkAPOWuX0yP6Yp0NYmiXdj0FqXtqMc3BP2w1knsZyg=;
        b=ey9ne3eSh7ro7RC7U5SNYqTRfJQwAzA0LnbkEbU9q1Jx9hBTZVMCVF2LVKKr6+cEId
         LrFxFnOZE6Vwi6/UHNoR7QGeGd1tn1sRg5CPiKrpwVp+ukcnF3irY8P+6nvD+iQViJ5t
         +8QOyCUjeTpQMMFSPdm8Yj7e2WP7ludzJ1k0c9uL9l1hsKQGezXb/SsHcChcqtBVUkgy
         mZStwhUWiSv+8QUm5FZV3M8khbYjabCsNdpyGNcbTG67AB0olJ0j15JZx4T9+QW/IKp8
         f0Wrhe0z/8wJ64DShO/yfzQP4uKEP67L/5aCizjPR4Ju3j03sn9StQuGvPE7ZijywD96
         P/EA==
X-Gm-Message-State: AOJu0YyJBGlV78nIqA8rYbpin7TNGTejzbt5pC1AnZEePQb8TSViZV8l
	YxS+/p52yB1cMTDh6lIjj23DLw==
X-Google-Smtp-Source: AGHT+IG7+prDDzV/e/swMqm4qLrdMJ9gwsd1NHb30YX2JpxjNC9BbtKP+Zaau6Ge2SE/3JHXL3B3rg==
X-Received: by 2002:a05:6870:9a1b:b0:1b0:57f8:dabf with SMTP id fo27-20020a0568709a1b00b001b057f8dabfmr11914545oab.33.1691426024409;
        Mon, 07 Aug 2023 09:33:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:7007:b0:1bb:933b:e6ba with SMTP id
 u7-20020a056870700700b001bb933be6bals3084755oae.0.-pod-prod-07-us; Mon, 07
 Aug 2023 09:33:44 -0700 (PDT)
X-Received: by 2002:a05:6870:e282:b0:1bf:5280:3c1e with SMTP id v2-20020a056870e28200b001bf52803c1emr12225452oad.5.1691426023969;
        Mon, 07 Aug 2023 09:33:43 -0700 (PDT)
Received: by 2002:a05:620a:19a2:b0:767:85a7:5f7c with SMTP id af79cd13be357-76cebf3ce2fms85a;
        Mon, 7 Aug 2023 05:20:54 -0700 (PDT)
X-Received: by 2002:a05:6402:492:b0:521:8d64:df1c with SMTP id k18-20020a056402049200b005218d64df1cmr7991070edv.0.1691410853508;
        Mon, 07 Aug 2023 05:20:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691410853; cv=pass;
        d=google.com; s=arc-20160816;
        b=TAabox+iECY84GkgGGeVjwHAUFXfGO2t8LkN5Ni0c7QQr48cNfmOFagHBJzGNiKF/w
         EbuBjcmvK6Ng0x10nclqPlhymhwf7F7PPO9CA1bTgtDQ1QNXrb70or+PiMWKgK/y931y
         URJXk/NTRAaJG+3hO2Dn2iAWgQarcEG6/rKQDIEbQqoXHTOKh78c1rnjc1FOhw0tvGAF
         4NGjkOF29tBP49e+lW64OcZzJcqoxPMIWww9Yjow2CNpa3BrtjGxtiwdtyB9k61p/Ohg
         +qoRZ+2q95y+f5P/2uFf1RlU3NcPDFo0fikEILah2U4OASS+otNNsA0ev3cJW8AAJY1p
         f0Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zV8cyOpyi0L6DE8j4lygV50KnCcHX4GbFjMd1Cw23fw=;
        fh=3aTthWix2YYJmqy2i5SxKE/UNFo0tyYfrY2V+UKvyTQ=;
        b=EsgEIj0BvBboyItMQuvcYkoPvMjwhXvcIZFe9o+QfMwHXsgB/TCBEL8Xk3Me+LGiJQ
         Jie41e5PP4wDzmAB1aWoWrk73LcM0aa1r8dnIMNUOJ/XWlScvhDbFQPsgKP0YEWkvu8r
         ivBv7UZn6YFgRCpP9MdG9ZUVw/MxVtVFBZewDgfEuf341P98pYsKUTiF5KH3ev+I1u8+
         z+J19TWX4/7+eKConMBW0mk6HYFu+HJLFxZFEE75gN40gfMGlvCQhN3YDBImv5PYhUMp
         SIjH2AUgObK8bKfoLvwZ8VaUtb9xYkDY793Vl9n0BTizKlEUKFevsywJjjzt0wQDnGk8
         +utw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=I0UQQ37n;
       arc=pass (i=1 spf=pass spfdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of piyush.mehta@amd.com designates 2a01:111:f400:7eaa::604 as permitted sender) smtp.mailfrom=piyush.mehta@amd.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on20604.outbound.protection.outlook.com. [2a01:111:f400:7eaa::604])
        by mx.google.com with ESMTPS id f14-20020a50ee8e000000b00523073906f2si4923956edr.536.2023.08.07.05.20.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Aug 2023 05:20:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of piyush.mehta@amd.com designates 2a01:111:f400:7eaa::604 as permitted sender) client-ip=2a01:111:f400:7eaa::604;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLVbgSuOaFr+NzB8RQUlgXKN3wewHs0TyuxA0HwWaJS5NZOl0slT+rhGpjo7j+pdO0XlCZA5EdSXWD3eqx5UX0Auc9yL+WWfBRC8X+/1ev6SMB4AfCbNVU1oG+/xumk18VLu0zUH3Uq6olnGqNMI+8GD8mYxleXQyDx0ItbEMH0sG4TB1RmEeR8dJwnRJbUY2JGd73ze+vRtblSXpUCZTntSM1NE6NGWZN24/tkCmu7oLvaOsE1rVwMV5zX0EmPVeqakNql6MpgNHS+EwFj/AfBvD242k9fCA3SZTQ9E7kdWUE5WMtiQF8LWHbsvYLXqWuHfxrxVBDlWwF972EyYcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zV8cyOpyi0L6DE8j4lygV50KnCcHX4GbFjMd1Cw23fw=;
 b=Ijs+TUD1uwlm9Xh6TAtaZeRfflFFmyyk9+sdHvcKvdBF2/w5pLDKYEEomQllJj2u3KnhTpVbRtNg9tt1VbuadBXQM7imMVZyVk1Am6nL/luZFbMGduAx9S4nYuk0WyYyHUPLyHTBWFHtttp/Q0khOdeUqfmm0LJDFVMlfnDRpQvExCpYZTkTSi+9++qGED7pqjtIsIl2aZ3Wd90NTi7GENbS8WxvqJz6Vv3Pd8mNL/K9PawAf99DKmJPI46bW4bA+bYfSV4/0o5mRAASIfOJQwpjv5zYPXQDLzQmR20GVag6XoMWW16DgcsWACBOXMXMt6ed4ZrOlWjvheFp9urChw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=rowland.harvard.edu smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
Received: from SA0PR12CA0029.namprd12.prod.outlook.com (2603:10b6:806:6f::34)
 by DS0PR12MB8245.namprd12.prod.outlook.com (2603:10b6:8:f2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 12:20:48 +0000
Received: from SA2PEPF00001504.namprd04.prod.outlook.com
 (2603:10b6:806:6f:cafe::24) by SA0PR12CA0029.outlook.office365.com
 (2603:10b6:806:6f::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27 via Frontend
 Transport; Mon, 7 Aug 2023 12:20:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 SA2PEPF00001504.mail.protection.outlook.com (10.167.242.36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6652.19 via Frontend Transport; Mon, 7 Aug 2023 12:20:50 +0000
Received: from SATLEXMB07.amd.com (10.181.41.45) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 7 Aug
 2023 07:20:50 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB07.amd.com
 (10.181.41.45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 7 Aug
 2023 05:20:49 -0700
Received: from xhdnavam40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.27 via Frontend
 Transport; Mon, 7 Aug 2023 07:20:47 -0500
From: "'Piyush Mehta' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: <stern@rowland.harvard.edu>, <gregkh@linuxfoundation.org>
CC: <michal.simek@amd.com>, <siva.durga.prasad.paladugu@amd.com>,
	<radhey.shyam.pandey@amd.com>, <git@amd.com>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>,
	Piyush Mehta <piyush.mehta@amd.com>
Subject: [usb-storage] [PATCH] uas: Add US_FL_NO_ATA_1X for linux tcm_usb_gadget
Date: Mon, 7 Aug 2023 17:50:25 +0530
Message-ID: <20230807122025.2818062-1-piyush.mehta@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00001504:EE_|DS0PR12MB8245:EE_
X-MS-Office365-Filtering-Correlation-Id: dec6cfce-cb0b-45f1-2109-08db9740bd01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JclJFE4WUes+c+40Yp59SvLvVxbTLKVXJFX5tB6WFsg64SUF6MtZTor3C3GqgJTua4uJywXHRLrnrdQ/RpbUIDrNTgXjQOT2F5rvBC1VM8SfwQDpaOF5uLY90RCcf6uhOC7ApbsOTmRsrsC+9++OQ0ab/ElGiFUv7IZ3pJimZyK7xD4REXvmizI1QCPBh33i8FUeuiqOogcgPNGCbChOpugytWEF6kBnTVJoNm6HVGSRyp06GcMuOG23QamrMNc8mXaqXGYCtV5zOZ/MaZbcEgiy3Hch74FfXGsYzxvj3jj+YJTUQxMX3WYOoytJvb8h8dSAsHC1gWJX1hGyFvRf+FcCnfmmGqfg9mYYIDhpHDlTU4b0tAVF9WCAG3p8vtdXG8Q34FvSGHCblqAdnE0c0Blpsg4GsQtspk3kVD5yV79ogMkCFkixohlUNnlR1VW1PB4NaS1hD0dKmnB2L2uy5vttH/yP1HaDS+OOTNoJESJQrgJNTOHrkjhtuSd8nuaLH4XM7u/C73LuLYPaELOVSehxMhr/dvr2smPqrT3ENmEHPGbBValgMa2YtRnmDv6CFZofXoWBTRVxNNwbcwkiyNudL0LQMNI2FCW4WJvTIEoiSegjYsq8aj6Ob8AyoA7nuOMPaEOFW/tvoT/3p2pIXaOGiboRe/+Rs3GIh5vNkUg4Rz3Pjq+7fd3t8GJi/OSxD7rjqe4mCQc126EHKV35upMWmQ1GdFPrVuPvc2G10QeHzeCamV6IObKyzCF0esHS4w1Kfrs9Aubr+CmsysTMZQ==
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230028)(4636009)(136003)(376002)(39860400002)(346002)(396003)(451199021)(1800799003)(82310400008)(186006)(40470700004)(36840700001)(46966006)(40480700001)(40460700003)(2616005)(6666004)(81166007)(86362001)(478600001)(82740400003)(1076003)(356005)(26005)(36756003)(41300700001)(316002)(5660300002)(44832011)(8676002)(8936002)(54906003)(110136005)(4326008)(2906002)(70206006)(70586007)(336012)(47076005)(83380400001)(36860700001)(426003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 12:20:50.7101
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dec6cfce-cb0b-45f1-2109-08db9740bd01
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF00001504.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8245
X-Original-Sender: piyush.mehta@amd.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@amd.com header.s=selector1 header.b=I0UQQ37n;       arc=pass (i=1
 spf=pass spfdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=pass
 (google.com: domain of piyush.mehta@amd.com designates 2a01:111:f400:7eaa::604
 as permitted sender) smtp.mailfrom=piyush.mehta@amd.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
X-Original-From: Piyush Mehta <piyush.mehta@amd.com>
Reply-To: Piyush Mehta <piyush.mehta@amd.com>
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

The linux kernel's tcm_usb_gadget requires the US_FL_NO_ATA_1X quirk.
It does not respond to the ATA_12 family of commands and hangs. The host
prevents the issuing of ATA_12 commands to the TCM module, by introducing
this quirk, the host is permitted to proceed with other operations.

Signed-off-by: Piyush Mehta <piyush.mehta@amd.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1f8c9b16a0fb..2fc0220c72ee 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -177,6 +177,13 @@ UNUSUAL_DEV(0x4971, 0x8017, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_OPCODES),
 
+/* Reported-by: Piyush Mehta <piyush.mehta@amd.com> */
+UNUSUAL_DEV(0x0525, 0xa4a5, 0x0000, 0x9999,
+		"NetChip",
+		"Target Product",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_ATA_1X),
+
 /* "G-DRIVE" external HDD hangs on write without these.
  * Patch submitted by Alexander Kappner <agk@godking.net>
  */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230807122025.2818062-1-piyush.mehta%40amd.com.
