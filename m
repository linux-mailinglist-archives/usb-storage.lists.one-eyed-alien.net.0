Return-Path: <usb-storage+bncBDVIJONZ3YDRBVO4Q6IAMGQEBWEDGJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id C59A14AD039
	for <lists+usb-storage@lfdr.de>; Tue,  8 Feb 2022 05:15:18 +0100 (CET)
Received: by mail-yb1-xb47.google.com with SMTP id q145-20020a25d997000000b0061da49d79dasf11226234ybg.11
        for <lists+usb-storage@lfdr.de>; Mon, 07 Feb 2022 20:15:18 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1644293717; cv=pass;
        d=google.com; s=arc-20160816;
        b=moJe2skOXY9fY1KBoBCq21hFnP6PcRD06LsMP6/LWuhBVv45KyTH36wzoJaU+IFfkV
         iPI3Rgy4nnjZLHJduWKJH0gLQKp7kGMx1+5oy6XkaETxlePtKwk8AX7i1c0AaevTZFpN
         qjqrfcidLvgZ4vSjzLatV7tulz40Qtc/GnbxufBKf1P+vFmbmzTw8rezFc3qjRByujl7
         0yeaJyuF6+zE8wg1m9ZMY5lruechTZvzZlv4brn+bTu5ElBVGi56k/mtVnhb8LOW2x7k
         i3c9GUzV3qkoar4CQ0ES5ckvRXuQVT+2RT/81o3wNFlCCnpoo6SBU9VVU1r1ePHwoD/B
         qBxA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=AIxhzuExsQYjjeoBUmg/mUl2UWqfZcIPG4AoWkhje7k=;
        b=ho3+MC8g4vBLaKZ+XtuCDgH44zLOs2tXd8e0RBnfcVP5A9aCYRSRl+AfcEqpJXVBSs
         SwcaA2mhToCNDlAol/W9Wb+EZBf7i+4vb3tYAqVmVnEQrX5RBDmBaYcYoS8ctcMZrz1B
         JOOa+IbKXkDFjiR9Tv32HJEW9ZPCwwkQu0U+2OgC3ucRvmiJ7qI2BFvsLpyKebt13sj7
         769iR/CA3r9G/AyCRm2jhx8pm+w056mbhq+NxJJN4sI92U1PmNQo6+gp69i295BIu9iL
         6u/jxm77qAkKX2vfal34/WH1yDydNj3oyr4HoxyUZ85/I73j+zPW7VSl0nQZ82frA9ad
         FlqQ==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=dcep8tAw;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="c/M3V/QO";
       arc=pass (i=1);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AIxhzuExsQYjjeoBUmg/mUl2UWqfZcIPG4AoWkhje7k=;
        b=YKxfJV8LWQnXaOb/nh/lM8BFcBQ5dPzWabzLIt/cRsjWPluu9fZliPnzSCNNlnogTg
         JrDPPVRS0ZHmeXc63UJsl06+LhY+GXoJGLVwUdRePULdueIRLTV+mzabaFFz3URJjwIR
         6REAp1evHhTNDALkLD1b+JXXcr30w8j3jHolc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AIxhzuExsQYjjeoBUmg/mUl2UWqfZcIPG4AoWkhje7k=;
        b=RANOqephwajavUMrVVNItkZMAKxk0KfSbWR6N8F/AAcj7kRmeJnY238y0w2tiB6hNW
         RLbuDjjcdXnkYi9De1fNr99XwmDIxPBNCyOr8E17liAdhs/savrnBGRBI6Jpd6Ro2w9I
         arxYpwOp3sa4zTgzP1pTv4Xb55twh5iTaZQL+6M0EwK1IUmK8oJrZgIV0nOLxz7/hX69
         YJlrobeGSaMrQNR7Nv/Oq7szuDh0rhVTrecDlaKy9+nlo9RONjcY6RvWGEtMJV6zvVCN
         bFHEGuSrOGz69wDxgR3bYk2LTYeZg45XCV2aoeQANWri4Ptaaua1EVZbbfinLYFvRcH6
         T+1A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531uqjKmftw/Zc5b+lqpj1NOBYevlHIxBTMtk1VRx/ZCWYPDyFpo
	7MjPpMR5eduLdQFhN73e5bP/XQ==
X-Google-Smtp-Source: ABdhPJzzwZI1uXD4oC/JTDn25rpGcLNVeaDByAr9kO9ekKmj0pP+TWm69Dmm6JFaomCJzExO1f0YKQ==
X-Received: by 2002:a25:8543:: with SMTP id f3mr3000654ybn.47.1644293717673;
        Mon, 07 Feb 2022 20:15:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:2a82:: with SMTP id q124ls5136918ybq.10.gmail; Mon, 07
 Feb 2022 20:15:17 -0800 (PST)
X-Received: by 2002:a25:cfc2:: with SMTP id f185mr3111286ybg.356.1644293717014;
        Mon, 07 Feb 2022 20:15:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644293717; cv=pass;
        d=google.com; s=arc-20160816;
        b=YaOiDGIFBSs1zUvjP0PLJHLNF7Wfvbiv2DnOhWdQFdAEmhXuek0Dz3L8ab57FcCJF1
         Ys3XgJtbKvePd4mf/q5LfqesEBZVdOYBtRZIt/z5rg4/TuXBETGS8lJIR8eHDC3dlfER
         8ixWoH9CHdX9+RUMwLlblcI0QYEb0bUMRGQs40WImRPg7PhB60ht//V09urEulD1yLDl
         +gwQdWhiiblWGyzITPn3I/IFXKqrPLplTdITzZODzr8oU5O6Ts+to9x/9O63R2jNiDef
         Ki2I+dGYNYCzvCz17Zt0x+uE91Rxl7l9jWxFsArae5JFtqpGTJJrTgmWi/Qw+OD/pTOp
         KXNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=g5uVrvTpwVAKDyO9CmKHQQrCM9nE/ptjIJal5M27AsY=;
        b=vlcKPfMmr2sUzTqTduK/YmAmC8jemCFxpEnitAEqsoYjnArbYq0JA55sM/BzlzDxQL
         zMqyYC6xF+0og9tbWug42lnCfNwhbxbbYRnDETLWR9XJlrJI9y3242gPKYk6t1Ejv87U
         N2jdld6g6ISGedfrqGe3rhCz2hN1KnyE6NrsOzqtTmGXE7XMGFFNKqkWJwyPmSLKnDiX
         7JjN/HhvmwWPHTZTy/HSusrhGSw0DO9XX0ZNYcyr3oGXGTOcNASinXt1ndRFdytWPjJJ
         s9dZodxEdb6wXMULbN+LRqo5XeFcBoAnqsKFcW7zLtq37kueCjVxJsdFkARh5UUUc8tL
         Eq+w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=dcep8tAw;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="c/M3V/QO";
       arc=pass (i=1);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id n18si6038237ybf.702.2022.02.07.20.15.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Feb 2022 20:15:17 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 2182W8JF004446;
	Tue, 8 Feb 2022 04:15:05 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3e1g13r8nd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Feb 2022 04:15:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 21844wBG146724;
	Tue, 8 Feb 2022 04:15:04 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by userp3020.oracle.com with ESMTP id 3e1jpprmkf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Feb 2022 04:15:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YEVTYZUFxUGOKMXUNJfTouF5f2nAiXctn+QNlJuaoznFu/ifCNGJCNCJBFEWTCQCCYuHreR/NDWpSQptHi4pzTqGhPpoKAalbbdowIyBuHfkFD4KA62EpPLOPlLgNn7Ynd1T+7daM2aGIQovCjL0sro0CV934OAajjdgks6+gOK5eoGtwdueoVrpLSzWugcUNcYeaSqbUOc16lIdFtVx+qPqnFtviKx4CyGIuQph+avKE3W95rBT93STcL6hcmxUDqsC+AAUeAMKJQN9lpZPCJLLluRNw3Jqxm2mJLsEJfg9lfuG4ct33/moJs4sKt1BmPJodBRNgsj6Mxx9jNNHkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g5uVrvTpwVAKDyO9CmKHQQrCM9nE/ptjIJal5M27AsY=;
 b=MO4O52eUkQyZK1JdjLCurs1JmOCdeSlkdyhncrdsbB+ixHLTzKqbsnlfNWncazR+LxrYFqmCek2DbBk64M/kjm2e7kiW0r1K6k1R/PEeQdVbAByjc+DAiGxJYMn8ToQMW1IInUNSBIU5Ru6l3hNDFSuxKe7JXU8Hn0XEHL4u/GrvXfC0u4/aRCoGIHEByPWm3bu1xmj5HiDs8kKN2WgHG+Mb3nzy0gPgK5H9I6c7xPjjefmuId3kd/S0HqD0p7gPMlptpsSFAlKDheIBPGCVyYzvMTjDIJYMC2qS+/3DW30jzIIfYh4OdJ5uSQbEIJ5afwlVurt2+iN/bwqQjELbKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by DM6PR10MB4299.namprd10.prod.outlook.com (2603:10b6:5:216::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.16; Tue, 8 Feb
 2022 04:15:01 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::2d45:d1bd:ebb9:48d1]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::2d45:d1bd:ebb9:48d1%4]) with mapi id 15.20.4951.019; Tue, 8 Feb 2022
 04:15:01 +0000
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Cc: linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net,
        "James E.J. Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [PATCH 0/2] Add scsi_done_direct() to complete
 request directly.
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq135kuxadi.fsf@ca-mkp.ca.oracle.com>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
Date: Mon, 07 Feb 2022 23:14:59 -0500
In-Reply-To: <20220201210954.570896-1-sebastian@breakpoint.cc> (Sebastian
	Andrzej Siewior's message of "Tue, 1 Feb 2022 22:09:52 +0100")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SA0PR11CA0054.namprd11.prod.outlook.com
 (2603:10b6:806:d0::29) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07cb4a99-39d3-4678-50ba-08d9eab993a7
X-MS-TrafficTypeDiagnostic: DM6PR10MB4299:EE_
X-Microsoft-Antispam-PRVS: <DM6PR10MB42997B1D10493D31004508EA8E2D9@DM6PR10MB4299.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 55P0+2Mk8yADWHxbnUQN40jDHFaiaA6Mnw96rkGhW2F2IHXWE8CMVcDaBUzjc+31QEJfJajdvexl64BmNo2dmw+c/db/eRVmxpdwhBmmrqdcpvCIvEyRxdc7wJzPlKBARIBEnr/jNb9RcH8XygtIH4RM+7P0c5bKXccrsz3Di1+4ekzqd8NBUCHD1/1F9pNIVPgKQvJoBHtbqsQQwUdCtzWFqfHI7WaeBPKGevd6ZnxzCJrF9/BLzqVz221yyfOdfYNRxUhTgkghG/dBh6kJ/SWZtf569aZ4iNF4/y/akRIqvY/bgf1+G56hvHskJG1RWRz4EW+xMbtE7lUHSaaBuJmdECV6jajdTb/P99fKxKxIiLTTvPcD6oBQDpDmiG3M1pDNFHdPMh+ftEI776e3POg9/N7qomxwoi3nn/NmAB0/uIB1pr56qRcbUfN+tFbl3WRXwwfK5zcm6UTZYjK9NlLuo4izj9usjSAiB2bBFR0F9yx0PEZ9tVIpEBFoWd/XU03IH/aKny8ZTn0HB4jiBxSpP9BbvasGnl3CbKD2nVoieka9aNZtWwxM2EfN++n66MxXiTQ1nVMUKPTsNhoZDVr+WiTMdw7FTA+xXp0uFQtOJeuvUP8F1dyZf0d3VahGENjEbe4MFPLcbQZRKU2ORnUdyXdF0DgkkTOJFlO4JB20uIhvrB+AAl0dgOS14BJiP34Wq5WcSXziM+5JwhUvbA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(38350700002)(508600001)(2906002)(86362001)(6486002)(186003)(26005)(316002)(36916002)(6512007)(52116002)(558084003)(6506007)(6916009)(54906003)(66946007)(8936002)(8676002)(4326008)(83380400001)(38100700002)(5660300002)(66476007)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?szUpiIdMx3h/Abfxv73XIGLowlmUV/oFlr26yZ1VxMsuVduYvEPA8sQaCmYG?=
 =?us-ascii?Q?JceKPysKM6NYOtIkKxSMPfRhJfcmpk3qCE7YWfvPCckx01nUycI7y+IjeR4i?=
 =?us-ascii?Q?6jEy6iCAhBTW+Wk86mSBhARVYfoD7hde5XYpENmzuymgrCJyOzf5JOZTZtXP?=
 =?us-ascii?Q?pqmd4XxgxOR0z9S+p5iOW/KFWC7gEMVCr8MD22TZKZei4kDr1lA1V3rv78Bf?=
 =?us-ascii?Q?Ff4tK3lza9XLgkhTGxOAXCMjvRJWIxlaAbTsywbKw+R8nE8OvHfBPhD7mAEO?=
 =?us-ascii?Q?G6W8tNZHO9BuiMDZamglCj62wbcYILhQXxwYfUl9bsxeMZqymV5xLfxKIDqP?=
 =?us-ascii?Q?tsI3SFgiCxm8oAFVCLiSJ2cjUv8JmszQk3ua54lDQbLZK/WQWrtvrqXxahYr?=
 =?us-ascii?Q?2opsuXgGvKtjxNhXAOzO9T79z9izkz+P2poHpXRfVHg3IV5YWH1PgfjHz+85?=
 =?us-ascii?Q?iIFG40CF2wEfdkcDUcLt06WwYAG82oZX5LEmc+Y7uLEuDLtqfAi3oGU69Ifg?=
 =?us-ascii?Q?7pau5XS0LRQAEF9k5IJ3QUkXFF4pUxUFoukLWVB5zBNORQGVXKxdzi1NIUkw?=
 =?us-ascii?Q?j/Ftsiq1pz5HpsldYql+fYTth+ylY5EHYAFHBI8EtNsi95S1DRBLhSY0DqdT?=
 =?us-ascii?Q?p8wlkuFrXCDyNXxge4AMqCNKNkv5FI1UP0YYEHCecACEMqjz8cENTSvRcbay?=
 =?us-ascii?Q?gNfmeXOwPoCpcmLooyeAkKMbC1JkOea1UymzzfIbvCIDbKduFNUTuw7vNHQC?=
 =?us-ascii?Q?4VCF4iM3mByFe1TagR9algmJUj3JslLhUFRdXRSeO42ZhQHdxul2zFtKTcNU?=
 =?us-ascii?Q?13mRNVoU1RLOaLHcaHtgXeSaB7IeW3HXYZDKZaE5sO98GLJcVkmCc4LMpsoY?=
 =?us-ascii?Q?A6f5p14aEKzuqEpg4hsOSQOQ+W4C3hdafRFA+wpZhRM1C0iZKCzPzQsaG9Hz?=
 =?us-ascii?Q?1pbiJsHVqLf4pT+55e3K+1kLiVjC3qyTnupct1ZcynOHKnRdEorLFIDz8UQG?=
 =?us-ascii?Q?PXRkl86g9OJpoRbUtZJ9lLNOrXGIEzAxMV2j7J26BfyOhUeSpMIawxu2Bqn4?=
 =?us-ascii?Q?nChguZhin59XNRKUyCm+j02ywB+5ibFWKFaF/c2VQcgqRSN50Dy8zKAu6NlQ?=
 =?us-ascii?Q?b0+wNJallVQDyikf6Dc9YxoNOyDKJpI0tIM3bffwfsxGCeNQqffxXUTjUmqt?=
 =?us-ascii?Q?8v93rm6o7qNl0t/URQwGrmsUSfah+LcF/BN646JO6K/upqBU9zpVf1B335+3?=
 =?us-ascii?Q?CvgGEvaguOCy+OWZ3U/f+8CsVt8Tp9mDlXsg9QlJFHPb8uUIdhs+II8lRwjo?=
 =?us-ascii?Q?IazfbxXjmeR4zPJDEwoTdhostObPbGqA/WVlLwcgqb9mLgN6mWZZ5XkyNWzO?=
 =?us-ascii?Q?5f9BsOl2Bcm8NHgWDSpPuxpXTg6ouj81lvOKUJ2MNc/q/5Fzatd8TMKF7jUW?=
 =?us-ascii?Q?gLbn987wWyzNHg4YNn57nPNeoEsa6UJDc6pBPBXe801xjxDvqZLJ0nQpRaHP?=
 =?us-ascii?Q?WZOmxdngNjAWPrQ17X1f8GEcLSiOGY4Pe9xcEhm8SKw8CiTHTeFm/URHEkDo?=
 =?us-ascii?Q?GkQ/r5cCSNonLtskEey6wCY83Y5yVGjrFNKaeyCmqSaiGB2CLz3+sl/uV7Cl?=
 =?us-ascii?Q?RVblUGpj72EHr++dQd4d5LMoEK4Bii0a5C34ew/sPyOA8d265ZOQmkUSJT9L?=
 =?us-ascii?Q?ntOYRA=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07cb4a99-39d3-4678-50ba-08d9eab993a7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2022 04:15:01.7810
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GD23x/SlnfXGx18tbvnPcN2PSsPNQQ1Nax4sYxV9BHVzE2VXE7vCJG2nzRhQqLe9vXATS0W8eQ7p2ZJt/w4Ds9jcPV0wxhQSCeOoIJYNLMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4299
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10251 signatures=673430
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=746 mlxscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202080021
X-Proofpoint-GUID: gBRfFV9qYBFTjrkWDUwYXaP_pfGFt8Ck
X-Proofpoint-ORIG-GUID: gBRfFV9qYBFTjrkWDUwYXaP_pfGFt8Ck
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=dcep8tAw;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="c/M3V/QO";       arc=pass (i=1);       spf=pass (google.com: domain
 of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender)
 smtp.mailfrom=martin.petersen@oracle.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=oracle.com
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


Sebastian,

> This mini series adds scsi_done_direct() in order to complete scsi
> requests directly via blk_mq_complete_request_direct(). This used by
> the usb-storage driver.

Applied to 5.18/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq135kuxadi.fsf%40ca-mkp.ca.oracle.com.
