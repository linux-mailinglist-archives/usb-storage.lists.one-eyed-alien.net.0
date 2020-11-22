Return-Path: <usb-storage+bncBDY3NC743AGBBLW25L6QKGQEGOWTU7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DC02BC7E9
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 19:25:51 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id u129sf12074022ilc.21
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 10:25:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606069550; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1bQdo06FxMbR/qbeVObA1NkuMeAG3eA3ol3hACrnIRJgVEO7xhi2Vb2qVVkyHqW6c
         A9aEaHC4R+qhk2xqFErgDqouthY1m7L1FydzcMgwZQ+enwhg8cQysEqlpt0HYO/cfyYi
         HQuU3ujDmpc6YztwdxquYiGqW6qexfF6SZAZfSm2dVPQt/LxEIamO990Te6INv0Cr4nI
         jXhJN8KeuLqeI7rKLdsbZLydaHsXEBuSY4NPppzwOCJI/3Q1Mp7sHrdYS2EHGtHrwYDF
         P26T9IxVaYu25rxL82XVdPaS9guRsGAIv9rIWxNp/4HPLCuGTWmDKNzVysHQg5WfEDk1
         7EZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Prvb4UhbQ4CMgprTRUhw3z8KbCjvEl4QPM+Ra2Kts7s=;
        b=JiqMr71Mpk1j/OudaWpq8GnrxGz9QTTpPDBYhgmGuPgl0GRxWl3clXBhfVniJ4V+9j
         1rRYeIQR1cm0imW8Est/uUHDkxaElmGLDwM99E3UdZ01ij3mY6/eVc1qwxjifp+TAKtM
         uasXeHUYR5dOd9H2/nu9T3jxRFPJaRBqCo7o6VhipO6qMuSPibicFpHyl1Uc2OgzjpFB
         Ue5d73LJKUpHkRm5Njs7w85GeeQzH1CkLbn6jN93yDQbSS8v+ICohVALi0MyQATBi8I8
         FW8F58tuE2en1QeELgVNcES/LHzYSqM0DzaUhVwAedJz3krKhxtGX5BRmmUweq4I/Kbu
         DasQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Prvb4UhbQ4CMgprTRUhw3z8KbCjvEl4QPM+Ra2Kts7s=;
        b=JOtB3+9AFxud+G3CKMjYbhvmbJl3hM7l9paPM5wiNPTPYrOVUdgRo8fZ6gbj5raVN8
         6t619Pbw9FbRqpLqsaUqKgNTJNyv9rnaTpvFQffvy8iJbcASd4oCe+F2MolF0gyjrrSQ
         4KWLHlkPY1V0AAmx7gzND3Bm3fneCTOj4v08Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Prvb4UhbQ4CMgprTRUhw3z8KbCjvEl4QPM+Ra2Kts7s=;
        b=JRMnMvHe6+3IzWtkCDZaNHnIAOrlkxVT/Puq8PnoguEbdvpoZW89j9YK7c0372+1wz
         zJd62TFwd9Y/ACxwevhwptS0ldnqR8lnnXP5/zZJr/DHqZfk9PuWctl0gGLOpPyi4P4S
         kS/7U/RYPWH4b1mY6jf/SZVuAJj0QxctVYIdBfJRKkYkiqquqfmiUDRtPWUH1/iQ4GpC
         n1B9DNQr7kXXJrGuRDTQjzl5aek8kgoK385yK9rpZ43bqfLISsTGfR4ow2E+Es/mxoxw
         GyiMOUjeemEl8BCVjGb59WsAMsaVW/F5VeLLQGpSgOuxjT6gTcRG9WlO0PaO3C1Ml55L
         IhSg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532WqY+WEPDutN9WClO191C2Bs3l1NO8dkI62Kbz+f4Zkda2yz9y
	7t71PnyLyYWfCTl16flGTY9Riw==
X-Google-Smtp-Source: ABdhPJyaSsob3qMsMcZLNv3CY96Iic7GbmIkCjRYfbywQnm2xemxYMaknFgFGd647KESSm67GjNO6A==
X-Received: by 2002:a5d:85c7:: with SMTP id e7mr21496732ios.162.1606069550418;
        Sun, 22 Nov 2020 10:25:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:b6cf:: with SMTP id m76ls2443652ill.2.gmail; Sun, 22 Nov
 2020 10:25:50 -0800 (PST)
X-Received: by 2002:a92:d641:: with SMTP id x1mr5333240ilp.19.1606069550075;
        Sun, 22 Nov 2020 10:25:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606069550; cv=none;
        d=google.com; s=arc-20160816;
        b=zZtB7gEjmXBcVz6M+xon2QMlQKWUF/OQf29/V6vmGM6GC9Nijku42qKPu2MgZAx0P/
         PGnJu0apNNUdyFCNGwuVp8dc/QLuz3H/cfkGe19/AoSrCiIKO5e+8aojL2k0+TMy5h8b
         x/bzQ9EiMYaacW+4VjwXVBvfRWDJPQGi6nIz5/tNj7Tykf/R0awOhKOH4cvlpoFDXx1p
         Qt2xxe+0/KpUN8vuwdFnsVPLWg19nwmNLKmGf5pOXJfDcmnOgC91hlMIul81runIX17L
         GBBRx0Ns60TMaBJ1ZfDVwT9AzYh89i8yf3ycj/ORhS75zDK26JC6d1JeSjE54KhJgLCC
         3OJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=aiS+vP2927U+Mr2uOhxpcaaOQ9qw1i6rr6tnhZUOxLM=;
        b=V+0QDVph2CetNS5Cd5OEx/HcEX1lmEgepKZWSL7jR49gZ4I4k6jiYhXjGIHMn+p+6T
         XIWe7rJR+BGy7OHrq2AQsZSIQIzfPhmfLq+oBHQXqvtRdCZhJgB+p1uzBV/kem51jT4m
         UT+CIusOqsYNSFCfrk/q7tkApZUzs1mUW1NFFQzS3Djkcxkn2txxRlz/hUnYpITHhImy
         E7IB9eVzamocGmLhserewSxTtE2Fbwk2kuqE/u817dTaKhMKVp4Erh5fccKReXkviy6F
         CX0iKoMG9orc93M1ZMv8BQSsxxMZCnpIrkmeO9S2iWbU+Wjt2M4Lw3aeS9u1ZLsuQcA8
         gT+A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0202.hostedemail.com. [216.40.44.202])
        by mx.google.com with ESMTPS id z86si9243775ilk.104.2020.11.22.10.25.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 10:25:50 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.202;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 883C21800AEAD;
	Sun, 22 Nov 2020 18:25:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1561:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:4321:5007:6742:6743:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13019:13069:13161:13229:13311:13357:13439:14659:21080:21450:21627:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: stamp54_4305a342735e
X-Filterd-Recvd-Size: 3841
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Sun, 22 Nov 2020 18:25:38 +0000 (UTC)
Message-ID: <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Kees Cook
	 <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org, 
 ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
 coreteam@netfilter.org,  devel@driverdev.osuosl.org, dm-devel@redhat.com,
 drbd-dev@lists.linbit.com,  dri-devel@lists.freedesktop.org,
 GR-everest-linux-l2@marvell.com,  GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org,  intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org,  linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org,  linux-afs@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-arm-msm@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net,  linux-block@vger.kernel.org,
 linux-can@vger.kernel.org,  linux-cifs@vger.kernel.org,
 linux-crypto@vger.kernel.org,  linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org,  linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org,  linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org,  linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org,  linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org,  linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org,  linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org,  linux-mmc@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
 linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-wireless@vger.kernel.org, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
 oss-drivers@netronome.com, patches@opensource.cirrus.com, 
 rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
 samba-technical@lists.samba.org, selinux@vger.kernel.org, 
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
 usb-storage@lists.one-eyed-alien.net, 
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
 x86@kernel.org, xen-devel@lists.xenproject.org,
 linux-hardening@vger.kernel.org,  Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>
Date: Sun, 22 Nov 2020 10:25:37 -0800
In-Reply-To: <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.202 is neither permitted nor denied by best guess
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

On Sun, 2020-11-22 at 10:21 -0800, James Bottomley wrote:
> Please tell me
> our reward for all this effort isn't a single missing error print.

There were quite literally dozens of logical defects found
by the fallthrough additions.  Very few were logging only.



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ca071decb87cc7e905411423c05a48f9fd2f58d7.camel%40perches.com.
