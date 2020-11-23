Return-Path: <usb-storage+bncBCN77QHK3UIBB3NN6D6QKGQETZB5X6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E552C154E
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 21:09:19 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id m3sf4114154qvw.5
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 12:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W/cjayU+2obhPYLDJlTy35wieKtv4uK1W7NvFn0VYbE=;
        b=DSh9k3yq+V2uqBdRGOkEKUlgDbVaEKpuBvAOANdl/JDg6T0m1NhegkmU30wpbR2dhL
         VLDquOv9d7Ug4/e6Fmyo9ra5W/L9itqkM1Gso+H6dyJu45KTle/WPcjefA640e6hDQGB
         BldIy6gfrWvdinMQETJkmD3uymRlQrVQnAp1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W/cjayU+2obhPYLDJlTy35wieKtv4uK1W7NvFn0VYbE=;
        b=V6Lwepia528nDtL+RiRDVwzQBBguk5tE1VoIRXc7wMJKHrUJrxbvfiXe8wSr9q17Xu
         dWcnHQxYZE6P9xyYU1TaoZU+GoBYQ3K0724biROzXyoDxasN8nK/5ivrHtE3T5SxB8PP
         hErPD466YOKjAkMf+Iou5tHzBJKzJxw2PPWGa7+9yb5DbtJN2l132jsUiN3N0paVKeYX
         W0VnT1ExmZLC3Hgu+HXo45E0e/7cHoORJiH9veRCQm0LMh9OUOR6g5+ZP9bjd8v1fhZ/
         Q/5xn+Eu2HAPmH52PPoVCjzLKh5xLwwuCdoYaZ3i2BuUe9OFjPpwz55T2D/AVP6lhN61
         5Q2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530mt9zmBdy+lyM/9GEA14Wl7008lLpjAcguHc4WvHFBU0HVpV/7
	dkINx0zTbD8v0CkFpzeEWKW2Pw==
X-Google-Smtp-Source: ABdhPJza0xuPsikP/OxdO8c04SDz+cm6OG4w282y9/JGZHbN5SmuvEEYgjlot+HoRoBOghVZnEOYUA==
X-Received: by 2002:ad4:5bef:: with SMTP id k15mr1059768qvc.61.1606162157914;
        Mon, 23 Nov 2020 12:09:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:648:: with SMTP id a8ls1678766qka.2.gmail; Mon, 23
 Nov 2020 12:09:17 -0800 (PST)
X-Received: by 2002:ae9:d604:: with SMTP id r4mr1303260qkk.32.1606162157533;
        Mon, 23 Nov 2020 12:09:17 -0800 (PST)
Received: by 2002:a05:620a:2446:b029:173:ff6f:f0e3 with SMTP id h6-20020a05620a2446b0290173ff6ff0e3msqkn;
        Mon, 23 Nov 2020 12:03:52 -0800 (PST)
X-Received: by 2002:a25:585:: with SMTP id 127mr1346849ybf.425.1606161831951;
        Mon, 23 Nov 2020 12:03:51 -0800 (PST)
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com. [216.228.121.64])
        by mx.google.com with ESMTPS id f205si12296218yba.389.2020.11.23.12.03.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 12:03:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 216.228.121.64 as permitted sender) client-ip=216.228.121.64;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fbc15a70004>; Mon, 23 Nov 2020 12:03:51 -0800
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 23 Nov
 2020 20:03:49 +0000
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 23 Nov 2020 20:03:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gITd84wMHHzcOptjQRg1Bi4wKYLoloErjGXTzbxbsYYxXpRm6DfDjP1G8JsqPPruG8n8djHpWT3ChykgCoTQdTlPHkj05TPw7WZ4Y46HlI8bprZC3XuF3n009Te/qaTwPxc9ef3s3wxgnUStlvtZrJvP5WQhh3MIKLFTGEWjhLXWcgs1VmoV9q6ndrBwWgPhsRBIC9rKh9qqm9cf9Ujr9sks/ml2cZ4bW16uPSJVifE1ke5RuUikXPZ60YcpNVw15sbmeBPfJ8v059YAkVfr8AOpsBgi+OymMySTg/JYVNFtVJ2pGo3M9pC5txLp474ztgTCR2D9RfvqUQOXT+42RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QophqWBVIGhmInjMMmoN1JCz5yEuED07MVw87J8AVUY=;
 b=dpOj+p56VpZQgFejSTc+TjZx9PpIbmIlWcJPfXyA8QiV6hyerQ1PNIg37pZm/OoPMM7dRNU+MPO2Sxmva5Z6iKtLQpQNkcM79tS52of8WjxHEmReB+Qc/VB0gzy26dU2FtXMoEzn5Rx6YHRp97uhlWeSk7Nsi1BUrieORD+G9yqkgKBmwQvC726s6EkJ0s32uNc7iMGffyCjKbyBtSLggJX9G9WEJ0m0GYQlYWRE7aVXL+Iy16bXoksvn7nW7YXP74v45GAqxPt7EElquzCZ4kXurFfWXXWM9ThsUobGLm/yb7wWVAmTEM+ttWZwc1mR7P3I+RsId2H9o2Xiqq+zAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM6PR12MB4338.namprd12.prod.outlook.com (2603:10b6:5:2a2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.21; Mon, 23 Nov
 2020 20:03:48 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::e40c:730c:156c:2ef9]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::e40c:730c:156c:2ef9%7]) with mapi id 15.20.3589.022; Mon, 23 Nov 2020
 20:03:48 +0000
Date: Mon, 23 Nov 2020 16:03:45 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <alsa-devel@alsa-project.org>,
	<amd-gfx@lists.freedesktop.org>, <bridge@lists.linux-foundation.org>,
	<ceph-devel@vger.kernel.org>, <cluster-devel@redhat.com>,
	<coreteam@netfilter.org>, <devel@driverdev.osuosl.org>,
	<dm-devel@redhat.com>, <drbd-dev@lists.linbit.com>,
	<dri-devel@lists.freedesktop.org>, <GR-everest-linux-l2@marvell.com>,
	<GR-Linux-NIC-Dev@marvell.com>, <intel-gfx@lists.freedesktop.org>,
	<intel-wired-lan@lists.osuosl.org>, <keyrings@vger.kernel.org>,
	<linux1394-devel@lists.sourceforge.net>, <linux-acpi@vger.kernel.org>,
	<linux-afs@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-atm-general@lists.sourceforge.net>,
	<linux-block@vger.kernel.org>, <linux-can@vger.kernel.org>,
	<linux-cifs@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
	<linux-decnet-user@lists.sourceforge.net>, <linux-ext4@vger.kernel.org>,
	<linux-fbdev@vger.kernel.org>, <linux-geode@lists.infradead.org>,
	<linux-gpio@vger.kernel.org>, <linux-hams@vger.kernel.org>,
	<linux-hwmon@vger.kernel.org>, <linux-i3c@lists.infradead.org>,
	<linux-ide@vger.kernel.org>, <linux-iio@vger.kernel.org>,
	<linux-input@vger.kernel.org>, <linux-integrity@vger.kernel.org>,
	<linux-mediatek@lists.infradead.org>, <linux-media@vger.kernel.org>,
	<linux-mmc@vger.kernel.org>, <linux-mm@kvack.org>,
	<linux-mtd@lists.infradead.org>, <linux-nfs@vger.kernel.org>,
	<linux-rdma@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-sctp@vger.kernel.org>,
	<linux-security-module@vger.kernel.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, <linux-usb@vger.kernel.org>,
	<linux-watchdog@vger.kernel.org>, <linux-wireless@vger.kernel.org>,
	<netdev@vger.kernel.org>, <netfilter-devel@vger.kernel.org>,
	<nouveau@lists.freedesktop.org>, <op-tee@lists.trustedfirmware.org>,
	<oss-drivers@netronome.com>, <patches@opensource.cirrus.com>,
	<rds-devel@oss.oracle.com>, <reiserfs-devel@vger.kernel.org>,
	<samba-technical@lists.samba.org>, <selinux@vger.kernel.org>,
	<target-devel@vger.kernel.org>, <tipc-discussion@lists.sourceforge.net>,
	<usb-storage@lists.one-eyed-alien.net>,
	<virtualization@lists.linux-foundation.org>, <wcn36xx@lists.infradead.org>,
	<x86@kernel.org>, <xen-devel@lists.xenproject.org>,
	<linux-hardening@vger.kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>, Kees Cook
	<keescook@chromium.org>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201123200345.GA38546@nvidia.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
X-ClientProxiedBy: MN2PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:208:23a::18) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (156.34.48.30) by MN2PR03CA0013.namprd03.prod.outlook.com (2603:10b6:208:23a::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Mon, 23 Nov 2020 20:03:47 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1khI3t-000A35-Tb; Mon, 23 Nov 2020 16:03:45 -0400
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=Zr1EZlr7;       arc=fail (signature
 failed);       spf=pass (google.com: domain of jgg@nvidia.com designates
 216.228.121.64 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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

On Fri, Nov 20, 2020 at 12:21:39PM -0600, Gustavo A. R. Silva wrote:

>   IB/hfi1: Fix fall-through warnings for Clang
>   IB/mlx4: Fix fall-through warnings for Clang
>   IB/qedr: Fix fall-through warnings for Clang
>   RDMA/mlx5: Fix fall-through warnings for Clang

I picked these four to the rdma tree, thanks

Jason

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201123200345.GA38546%40nvidia.com.
