Return-Path: <usb-storage+bncBDY3NC743AGBBZ5Y6H6QKGQECQ33JFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FDB2C1A76
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 02:05:44 +0100 (CET)
Received: by mail-io1-xd48.google.com with SMTP id i19sf14372096ioa.19
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 17:05:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606179944; cv=pass;
        d=google.com; s=arc-20160816;
        b=TcXyWIc0Q2ElPRlAaABzHXOsTNjj1lCxL1vqjivQaAs9a8isvkNd/9W2WKJEVYSEAZ
         FcAcwKtEtuDSkH3OiuyeeswPfW6zsAdUFkEHUkq1FfrpenvJM0Zv7g7TYPEWO8kv1MVb
         Ws/O1auJPXtEUFc947+vQmOX+Mo5vOZolSmyanWSNGmRAIqbGfV6S/EHBU9fz1hbENi0
         KZHX7Cl6F65iWL5Szp091IfA0GhNRw/KtlLoex3ludHq+C45M7/S3aGFKnga3XBJtjFG
         RnSvVIXsLQg2IXlbsbKPljv65HofokGjj0nt/32o9Y20BAe+PnvgeGfqFu/95YnKZ/8D
         jUiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=4x+eCXc7rV+1LqRBu1OJFnbejArWbFhPcpbD84hHo2k=;
        b=QgiL08cMhIQ1614Y+U7XboAW6ofH8WbqUOEbJsROuZqLaDFSWQRR6iju5wE4BEgK3b
         0AWZtgqK7zrOaHIT/ncicrMnxb2reYnhMbcy9XsAXd38ImR/1ugEJgopyuQv/rJ+0kYS
         eeFN/vyBuL0qmndP5AT/0K++Vs0t59rjsLoD7ASYX50CKaYRuK3NwH+dfLK0eaJ4SV2d
         6EV/wK+NBNrAZLkKMKsLHVrXNwgXPi2vrZ7SWa9epEgazttWmEtBWonsYr48uwQPXN2C
         Kmg9Vto2pFOcW0VL0dnJIju1/MKUPbDvDgm4Xuzl6NbgqFWCHCNXKmyTtRORUFEgASTB
         xRow==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.201 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4x+eCXc7rV+1LqRBu1OJFnbejArWbFhPcpbD84hHo2k=;
        b=B5fOmPttjd74dl1dFXRm3vy17F/8LyyMJCHVHFLWVHdkYg8DiW1Ox8wh9MkIEkdH3y
         bUgCSCgKIHzD30ZM7B7bXPYmdGGR5woh9LiLZx/uywp7lirS7EAwRQ9/dTd7KA7GLfiQ
         mwUiZCHD4KWX8RphBRllchIbI2Cqa3tTsm1gw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4x+eCXc7rV+1LqRBu1OJFnbejArWbFhPcpbD84hHo2k=;
        b=HKfI4C0890IDLFJYjjeqNVm1ORJyAMPWubNXn8dSehJHCI1TDOFqB8HVTGYKDAOZlE
         OtWYeFK4ueMywl9oVH2RrtacFtL7zznKH0Q+JtomiYSyXUl+OJdyvPI9dguAVpqUiysr
         W+4i9oYGvEZpRSvPUzcAlNDP+SVC0UIpQPzp1fieARw/kcYTxbiQcwb5Gof6NsvVVuIB
         B6XXSDhRUDLJi8rrsBh35PVeqzJp3d1jVPgn7nIcPqYxnyrcyhNPqfX+P6KKEHMDG2iN
         lTg11cGtbDTiTaTnaG0ZRmLfM4niSacoGx1foiC/saNitB4+hICj2zbslQ3H9a4vBTbi
         0uRA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532UgPSoFZ/0IhxnJpiizxJWBeU2rALAh1ukyJ0QSZvqdda03d8F
	PyNOV/EYlJ1qla0zQMZBqGglbw==
X-Google-Smtp-Source: ABdhPJxzvLauJTkT0/1Nfcj5viZn/SBdqtsV4Nx/oMdqJLfXATdKQRplgwKuWg340lqMEgIK2jJUjw==
X-Received: by 2002:a6b:750c:: with SMTP id l12mr2044996ioh.57.1606179943865;
        Mon, 23 Nov 2020 17:05:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:140f:: with SMTP id n15ls4089295ilo.4.gmail; Mon,
 23 Nov 2020 17:05:43 -0800 (PST)
X-Received: by 2002:a92:6b05:: with SMTP id g5mr2308809ilc.289.1606179943440;
        Mon, 23 Nov 2020 17:05:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606179943; cv=none;
        d=google.com; s=arc-20160816;
        b=DaFrPV7SocQyCtIYgJ1Gsrpj/jJn9cGwJg05bNThhta76s5S++H4Ux3aGVSkt20ARl
         Cppu1KicnHiqO530Ck/P9XFCE6Ke2N3fhZO7spdn95Tx3/Ps1Ci9Ct3yHNw9hX2SBFe0
         Mj868MfG+0fd0FZ+ijGAheO7torE4g9JoqqSZq6sOeOtmTsNlWPNOqHeG3ojCPl538wl
         ZWK5FZGdAynIxtepu77yt3xvz508OFF1tHKtr97W3u/wztuZM6WjKPnf36iv9nQ8HNL2
         lEJrVMmoW4wf0A9SVRKf0zxlGBKmEund7IkUf8NY6EgrqmIXS4JQvRtZEaVLvEletJn2
         c66g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=oA3Nooo/ptRdE+1edjMJ/Dl+8IJ7P02+BtIyYkLcUqc=;
        b=r6UGUV0nWTB228z4IUjW9as0wT8K1fcsTErdSxf2YPUuU83vVGkgSYmY2M3T2mVid/
         2mA6EuIWwGE3aOP658zrJzqrFL7Nqv6dcXKa0x76Hz3vuP1SCnp/q41Xe3KzhJCNpzOq
         hMQPOnbhiNJBVlByaDU0pQIH00fu8WpkPziiMXMkOfMVpNMIjQSGILVpOmc89YnyhlSt
         XUoG0xefrybczRjb/dWbpT0ouBedF/treqLeOYpEgxBEq3VLKpFyMnMaWIZd2qFxWP+J
         P0ADROQaLB92eBkWAUv3QinYkWln3dYAPEAIMZZ8HCSyuMBVhX2kMSBL0AUpbFckGDg/
         FMbA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.201 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0201.hostedemail.com. [216.40.44.201])
        by mx.google.com with ESMTPS id b8si8875169ile.42.2020.11.23.17.05.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 17:05:43 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.201 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.201;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id C6794182CED28;
	Tue, 24 Nov 2020 01:05:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:3868:3872:3874:4321:5007:6119:6742:6743:7903:10004:10400:10848:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14659:21080:21627:30012:30054:30060:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: sea70_4d178da27369
X-Filterd-Recvd-Size: 4565
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Tue, 24 Nov 2020 01:05:31 +0000 (UTC)
Message-ID: <e72a1aaef8673553a3ee9dfa033d6e893e00abcd.camel@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: Joe Perches <joe@perches.com>
To: Finn Thain <fthain@telegraphics.com.au>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, Kees Cook
 <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, "Gustavo A. R.
 Silva" <gustavoars@kernel.org>, linux-kernel
 <linux-kernel@vger.kernel.org>,  alsa-devel@alsa-project.org,
 amd-gfx@lists.freedesktop.org,  bridge@lists.linux-foundation.org,
 ceph-devel@vger.kernel.org,  cluster-devel@redhat.com,
 coreteam@netfilter.org, devel@driverdev.osuosl.org,  dm-devel@redhat.com,
 drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org, 
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org, 
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, linux-arm-msm@vger.kernel.org, 
 linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
 linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, Linux Crypto Mailing
 List <linux-crypto@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net,  Ext4 Developers List
 <linux-ext4@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org,  linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org,  linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org,  linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input <linux-input@vger.kernel.org>,
 linux-integrity@vger.kernel.org,  linux-mediatek@lists.infradead.org, Linux
 Media Mailing List <linux-media@vger.kernel.org>,
 linux-mmc@vger.kernel.org, Linux-MM <linux-mm@kvack.org>,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org, 
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-wireless
 <linux-wireless@vger.kernel.org>,  Network Development
 <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org,
 nouveau@lists.freedesktop.org,  op-tee@lists.trustedfirmware.org,
 oss-drivers@netronome.com,  patches@opensource.cirrus.com,
 rds-devel@oss.oracle.com,  reiserfs-devel@vger.kernel.org,
 samba-technical@lists.samba.org,  selinux@vger.kernel.org,
 target-devel@vger.kernel.org,  tipc-discussion@lists.sourceforge.net,
 usb-storage@lists.one-eyed-alien.net, 
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 xen-devel@lists.xenproject.org,  linux-hardening@vger.kernel.org, Nick
 Desaulniers <ndesaulniers@google.com>,  Nathan Chancellor
 <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>
Date: Mon, 23 Nov 2020 17:05:30 -0800
In-Reply-To: <alpine.LNX.2.23.453.2011241036520.7@nippy.intranet>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
	 <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>
	 <CANiq72=z+tmuey9wj3Kk7wX5s0hTHpsQdLhAqcOVNrHon6xn5Q@mail.gmail.com>
	 <alpine.LNX.2.23.453.2011241036520.7@nippy.intranet>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.201 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2020-11-24 at 11:58 +1100, Finn Thain wrote:
> it's not for me to prove that such patches don't affect code 
> generation. That's for the patch author and (unfortunately) for reviewers.

Ideally, that proof would be provided by the compilation system itself
and not patch authors nor reviewers nor maintainers.

Unfortunately gcc does not guarantee repeatability or deterministic output.
To my knowledge, neither does clang.


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e72a1aaef8673553a3ee9dfa033d6e893e00abcd.camel%40perches.com.
