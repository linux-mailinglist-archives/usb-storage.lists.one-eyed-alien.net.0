Return-Path: <usb-storage+bncBDVIJONZ3YDRBIUNXT7AKGQEG6PEZKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A1D2D2249
	for <lists+usb-storage@lfdr.de>; Tue,  8 Dec 2020 05:52:51 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id m3sf13397566qvw.5
        for <lists+usb-storage@lfdr.de>; Mon, 07 Dec 2020 20:52:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607403170; cv=pass;
        d=google.com; s=arc-20160816;
        b=M4PKIlwIN6EITDJOXuEhxlrdAVVpqF4N6p/jYx02idA5+IHofvTBGnNx9rgQY5FrFR
         WQdimt/GhSrSBVu4MBjnBQwzEoD5jyh6Jaxq6S/eiqB9mhW9OUb/bgNa+/W4Nw7kpDaX
         zpw8EdZg0XWSV+4md3m3+y74j1/1A+7pylCk9tB/EHPOGZY3T7ISubL7LRjUxdRebHIv
         WBdfGBB4BShvF/iVY7UudK5xyB9TJSz8dtQcu4P4zCREk9n2dUAFeEWl3cYqmAp324Z/
         f2KZF6p8NmIDRUzkqfiAWFJ8pwDLLs3lzh454E3MjCR86KCYznl6bKxn/xN1ps9HUdvA
         DfDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5r0rjPJBdtM7BjtBijR1QPmeX/FQY1/vXRp+nXoMxRw=;
        b=lAuBp4SYjaxHm6tPnmNA+uRJihFXH/nukN//5UTO6LyVbiRyzQ4MdkNzTYAc7VzvOZ
         lDs0BfQ3WR5DXgu+rilpUKJUOGWBesn5+Rho4xExHfhZzLuSoTIwKYJutPhGAvgcd5BE
         s8CHFQ6GaY6AirtooGNOSSn/KjSMh9jNa5q14rwMkkgicDxTWleCtXgeKG7b+Ga0Ggsl
         ONC7UGqcec3g8O5zCHkTCi93ICH/P0Pevt5MpNMAYUuGIFG7HDInc/ef3B4FhwOLjNTP
         eQAPELrkccVO6x+d4YmMg5k52d8FIfoi8EeAj3NzuMYdkCAgdN9VHmowsi3B6POpEIgV
         ByJw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=V+G180Fh;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5r0rjPJBdtM7BjtBijR1QPmeX/FQY1/vXRp+nXoMxRw=;
        b=QslD3tuX+yPFKbJ49Dgol6xg3akrz9Wilf43F+Q9AtQikRcykgNo7GgYb+f8m4rTrx
         g5trOkkX3Ndn+EoNIntQvTv3QJcuWazR/opCcAWs+hy+RJ57C+FvnRHWJVmsdid60m2t
         LWITdldytRjWom3xDbYP/uaS/XThvGHKUBNIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5r0rjPJBdtM7BjtBijR1QPmeX/FQY1/vXRp+nXoMxRw=;
        b=QEu0vswibaJ+ZSDbSOUi57SDYDjy8Fo3RfChdaHeWOn754g5seZfT8nmYRSsRnAeb3
         q5XZkpsUkv4hK/w1Ba3xlQzhaTCJlx7ba5FdxZhRhxnVsf3jtYVUedKysQb3w2T2tK9N
         9tXqYzw2BABcrfopET0e2izMV5SuyJKBhxpABhlvzKF/TNfJXeArcSzi8QcJ+hv7NECS
         t4NWQxJRqpQgbtqXW0Oa0mDfZ4hkWC5QQFL32pLsUk+LHKsdMB8UfjnrT3DvEyOaCj53
         9YgMfYiNIX43VlgDU877rtsMoZweNEBwSg8vQfBb0t54uM0j+xGgk/x8xyFO95SXkD/E
         PIdQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532FJU3Zl76/UOo+Ecw6HwP+RH4grJ7E3sLi4VCNk6Xl+PmmD3Pz
	dlFqUJ4joybbQXgYL+227w8ckg==
X-Google-Smtp-Source: ABdhPJw/Pq5aZ8YUsB8r4otrbb9tE0TCWyGhsdJwyZB20WVvG46B4+etdTjXefun/Iq94kW6VYrIxQ==
X-Received: by 2002:a0c:da91:: with SMTP id z17mr24859145qvj.13.1607403170334;
        Mon, 07 Dec 2020 20:52:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:b05:: with SMTP id e5ls2356412qti.2.gmail; Mon, 07 Dec
 2020 20:52:49 -0800 (PST)
X-Received: by 2002:ac8:67da:: with SMTP id r26mr2483263qtp.116.1607403169869;
        Mon, 07 Dec 2020 20:52:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607403169; cv=none;
        d=google.com; s=arc-20160816;
        b=fMrXT3uhYTGrSCYT+L0Q+V787VGkKYrfMjf5dSe5IYXAuFTAhuO6dCUkdBCNSkhyFU
         XcHdxPn5bue5iigQ7Qyp3GUSHHs8tn89tNwZXAOKsz02LifU0n90lSt/hLwtULCySoJt
         kS8UqTcO0bI/11SS81gBtBhrYq7VbQYNhjmM+Ed/uxdmAQtM787lGlz10p26H69nLUbz
         GpurQ4ZQ0gqHk3RcTUc5H5npZ2j1176x+kKujNug74RDl674WdD2g5Dax+pSV19Xo5fv
         jVkeXJPEnRZRYA1cNXMuG9J9IHWCxqEo9wk+RsMn15446NN2bs2F4roDy7fWqv2wRETx
         y/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1e3cV7XKyt5cBPHNeWYhYMHu3W87CKppja6U1Jvw5F4=;
        b=zo5+BZBt4E+VMchWqn3842sLCgzw/xe0bWDmB8LRNDhopsFGpHF1KG3nCLYVXU9HSE
         BHgqbI8ALbAUpLjtPx6YpTU2ooSajG6qapLVwsVckf0kBmVpmXL5OKf+vSLy6JYAOGwV
         VPfnj65re3rEvcdCVFBnbixAYXlPcbhLbVhp3UTFV0TWZj2V0HytXL064HPX2rJk24LT
         xgjizUuYh92nPRzxk9RYYmqBof8nIW+tBmtVaOWI9hDHXPfqsj0NuLpnfPIQYhGu+s0a
         pi8/7zTFzI0SGb3UOUMBvWou5Tk83fuylGaDryslpSN04M8YZ/vFQYs9p8vL6xfPaOOv
         xPJA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=V+G180Fh;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by mx.google.com with ESMTPS id s12si7447358qvm.135.2020.12.07.20.52.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 20:52:49 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B84nPNV064006;
	Tue, 8 Dec 2020 04:52:35 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 35825m0srq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 08 Dec 2020 04:52:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B84ocw5155469;
	Tue, 8 Dec 2020 04:52:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by userp3020.oracle.com with ESMTP id 358kys9m8s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 08 Dec 2020 04:52:34 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0B84qX4M159553;
	Tue, 8 Dec 2020 04:52:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 358kys9m7s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Dec 2020 04:52:33 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B84qDZf015901;
	Tue, 8 Dec 2020 04:52:15 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 07 Dec 2020 20:52:13 -0800
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-kernel@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>, coreteam@netfilter.org,
        selinux@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
        Joe Perches <joe@perches.com>, linux-hardening@vger.kernel.org,
        reiserfs-devel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
        patches@opensource.cirrus.com, linux-fbdev@vger.kernel.org,
        keyrings@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
        linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org,
        linux-hams@vger.kernel.org, linux-ext4@vger.kernel.org,
        wcn36xx@lists.infradead.org, GR-everest-linux-l2@marvell.com,
        x86@kernel.org, linux-watchdog@vger.kernel.org,
        linux-media@vger.kernel.org, linux-cifs@vger.kernel.org,
        linux-nfs@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-usb@vger.kernel.org, devel@driverdev.osuosl.org,
        linux-atm-general@lists.sourceforge.net,
        linux-wireless@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-decnet-user@lists.sourceforge.net,
        Nathan Chancellor <natechancellor@gmail.com>,
        netfilter-devel@vger.kernel.org, target-devel@vger.kernel.org,
        linux-integrity@vger.kernel.org,
        virtualization@lists.linux-foundation.org,
        linux-mediatek@lists.infradead.org, Kees Cook <keescook@chromium.org>,
        samba-technical@lists.samba.org, ceph-devel@vger.kernel.org,
        drbd-dev@tron.linbit.com, intel-gfx@lists.freedesktop.org,
        dm-devel@redhat.com, linux-acpi@vger.kernel.org,
        linux-ide@vger.kernel.org, xen-devel@lists.xenproject.org,
        op-tee@lists.trustedfirmware.org, linux-hwmon@vger.kernel.org,
        linux-sctp@vger.kernel.org, bridge@lists.linux-foundation.org,
        linux-mtd@lists.infradead.org, linux-input@vger.kernel.org,
        linux-can@vger.kernel.org, rds-devel@oss.oracle.com,
        oss-drivers@netronome.com, tipc-discussion@lists.sourceforge.net,
        cluster-devel@redhat.com, linux-rdma@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
        linux1394-devel@lists.sourceforge.net, alsa-devel@alsa-project.org,
        linux-i3c@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-afs@lists.infradead.org, nouveau@lists.freedesktop.org,
        GR-Linux-NIC-Dev@marvell.com, netdev@vger.kernel.org,
        linux-security-module@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com, linux-mm@kvack.org,
        intel-wired-lan@lists.osuosl.org, linux-renesas-soc@vger.kernel.org
Subject: [usb-storage] Re: (subset) [PATCH 000/141] Fix fall-through warnings
 for Clang
Date: Mon,  7 Dec 2020 23:52:01 -0500
Message-Id: <160740299787.710.4201881220590518200.b4-ty@oracle.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=380 clxscore=1015 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080029
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=V+G180Fh;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Fri, 20 Nov 2020 12:21:39 -0600, Gustavo A. R. Silva wrote:

> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.
> 
> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> add multiple break/goto/return/fallthrough statements instead of just
> letting the code fall through to the next case.
> 
> [...]

Applied to 5.11/scsi-queue, thanks!

[054/141] target: Fix fall-through warnings for Clang
          https://git.kernel.org/mkp/scsi/c/492096ecfa39

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/160740299787.710.4201881220590518200.b4-ty%40oracle.com.
