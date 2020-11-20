Return-Path: <usb-storage+bncBDY3NC743AGBB3MV4D6QKGQEKH7IU5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 600912BB2A1
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 19:29:02 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id t14sf8275703ilg.9
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 10:29:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605896941; cv=pass;
        d=google.com; s=arc-20160816;
        b=NLBcwo1Vt192+6Ec5f+01LO6gD4zZ+adTB7jPNvlZ6ocnZYz8L+6YrUqfCO/rWI8j0
         aaRws5Ql9wYg4vjs0w1fRHKqWhn1BmupqbGoY/CfBI8ijPaGi+95no4Qn8d5xYHaJ78K
         Y+ffaIBym5740ALRvzMPJ28HGHfEf1mTs4E0yaMHTc/g27bu+Ik5a7tRNb1OrW5lSR/Q
         p/CGofCgL3KChdwnQUJD1q4JPYywnm/ocPRhPJjDiUMNw3cyVmNDOInaBAY1QoJGK32l
         5X2Wgc4tM3wbTzQYrUeLIzOWBBOQ3KFwUvI6MRzfa/lwGxU28QZ/aATdIpv0xBI3lETp
         OHJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=YK1zdYKb97Pdxrnnu/jhdz9IugAJo24oALpW0iPhvD4=;
        b=F7IThOAowoolYL6FaDvZBwtBrP8cmqVeyb6PwzcyvjNbTsqih0S5Uf94+CQYEZ/qFC
         mF5sjKNjvIDD3Lmx0v+iqimx8IJaPI5DwYhKZre9elmdmDEV1GK5HOLl/zhZi6QGWwei
         tp1LL7JVqZCdrgBziz6kgocucZbgdoog30eg410ARwXi+JExrltASq8/+6tf+Dy+W0UL
         RWwpJIAqbCaXnSCNHbygu3fOwEPSTGjyeUMbZWAjk9o9Ci7vi7i6w69etIb2NmWMkdUt
         k4iZlx4oGQ0e7hX1tB/9OBx1/Ee2gmbyn9IQ3vQP40IU16hApQ9WSk/B/FBsp67TmYy7
         dKgA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YK1zdYKb97Pdxrnnu/jhdz9IugAJo24oALpW0iPhvD4=;
        b=kWdDWqbI6t15Q5pE1pQ8FH5DOITDRPiiAh7Gi0DUi3cj0FK56rKjgZzhXEdWlMCTD4
         sES13RER9vb8kt84Hg5PF9bjFNhJgzv6W/OXLXmr2CBfyN8/do/RwIIgTqMMi7TpQTXJ
         iBzYlJ6XQVNykevUf1ePNm5Q+qqsoL9UUl6nY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YK1zdYKb97Pdxrnnu/jhdz9IugAJo24oALpW0iPhvD4=;
        b=DsUurdVmnH/2GUqD94yrSJhdlxHtv16MOiNr3MhCpz2YSO6UkfNLEpHKD/EfoWFG29
         q/MRYyvARvk7nj3ViYRBQGOtaK0I4blbv6onGAwO+xOVVj2cr+xe7KwoA7dwY6IqH6c3
         ia52EbpX/QU3ANs/xjtJguev/8lCOrhgdivmTzhCNWXwq8nAJJoKUjlqq8SxjW/In8U1
         HpS/11nKh28aUA6/tV88mKqHDd/qdDRipfm6+NAaSHLsoOXMtED2BotrTn2Td3huz7nx
         szxqxNVVYnxuvSW3wLTtINIFjj7+kWK3bALctlhBgsmK3ZO//ztl218n7wTdV8oyolAp
         RKJA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531Fm8TyhqJnRErOWihulTYwQCcdSAG973uoeu1Dk75RtzPdVHJV
	dcy3P+KccK8/JYRmfiE5CiQWpw==
X-Google-Smtp-Source: ABdhPJwS2H3cooXvY45lh4b8mdaF8c8Z58m7CMo2xCIPtX+60MAem6sf6eGXdWgvWngPztL/GbcZ9A==
X-Received: by 2002:a5e:c741:: with SMTP id g1mr16766222iop.90.1605896941360;
        Fri, 20 Nov 2020 10:29:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:9306:: with SMTP id l6ls1318270ion.6.gmail; Fri, 20 Nov
 2020 10:29:00 -0800 (PST)
X-Received: by 2002:a5d:948d:: with SMTP id v13mr14351718ioj.117.1605896940767;
        Fri, 20 Nov 2020 10:29:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605896940; cv=none;
        d=google.com; s=arc-20160816;
        b=LNRTIMn9ppMPtMLOKTEjX1DmPFp/Fcry3XU4WDduff1Vw1z0eXtfknc5CaqEG+q+r7
         N+TY5mhCp4aU8Sp8OHlbUg0ngfWksBcPKLCOM2yWznwZK/X4IzPnwjbDUzGVlkqM8R7C
         PjM5SPGIn+IyrU84DYy2/bq86AVEFBagMeAujjwiJ90jP6v2T47Lizv9AS/Xb01+RSpV
         5TY7nNx6XgyC0zO8DDqLhPdO5/P5hYQMgcTqS3OMtKbPl8cceZGJEfCdSvY348dcJkNW
         oyfghjCWyasyYJaKOJ9OEgn2boE1HB1UJImCqt/qRaz/gjuT/hBpOqhgO+HSr2MQtGIH
         gPBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=UW/v8sCYhAZsvx9SidLQVJfEoagvySiKwnqCDwD2Xwo=;
        b=u0+N1ACOaUxk7cVsx7hPZM+CON+oWS18kD2GzlJOt17+kYjSoHy//I7TvPjbX97Tay
         HjtdbiOFsn5WvXoQeKUzhbf/qlN5q6mDHwKgKQnq2urWGJh11rxKRjf/t4TNk+lTubAp
         1vMO10w3WmwFwo9fv8788mA5+zHkVOsKnrq9ttywl5ngMCpbQEPtZDW6AzAQKIweDIJ7
         1y8hyx0cyvW9Hrtp5B2bHn1gTgEuZe23RblOZYt4OJT0KbppV0VFL21BDbhklS+oSPs3
         DzDc4NIigI1Qdb9AaH19wFFhbtUzcBk0bOhbr16pQtXJUuEpKOC12LutQnd9GHJ4Holm
         j5EQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0102.hostedemail.com. [216.40.44.102])
        by mx.google.com with ESMTPS id b12si3489602ioz.89.2020.11.20.10.29.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 10:29:00 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.102;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 2DC80180A7FF1;
	Fri, 20 Nov 2020 18:29:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2731:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3870:3871:3874:4321:4362:5007:6742:6743:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14180:14659:14721:21060:21067:21080:21627:21990:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: woman67_620d0012734d
X-Filterd-Recvd-Size: 3843
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Fri, 20 Nov 2020 18:28:49 +0000 (UTC)
Message-ID: <3e0bbb1644fe53d79322c2feb28ccaf3e20c0e94.camel@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	linux-kernel@vger.kernel.org
Cc: alsa-devel@alsa-project.org, amd-gfx@lists.freedesktop.org, 
 bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org, 
 cluster-devel@redhat.com, coreteam@netfilter.org,
 devel@driverdev.osuosl.org,  dm-devel@redhat.com,
 drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org, 
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org, 
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
 linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-decnet-user@lists.sourceforge.net, 
 linux-ext4@vger.kernel.org, linux-fbdev@vger.kernel.org, 
 linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org, 
 linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-input@vger.kernel.org, 
 linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
  linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org, 
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, 
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
 Miguel Ojeda <ojeda@kernel.org>, Kees Cook <keescook@chromium.org>
Date: Fri, 20 Nov 2020 10:28:48 -0800
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.102 is neither permitted nor denied by best guess
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

On Fri, 2020-11-20 at 12:21 -0600, Gustavo A. R. Silva wrote:
> Hi all,
> 
> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.
> 
> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> add multiple break/goto/return/fallthrough statements instead of just
> letting the code fall through to the next case.
> 
> Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> change[1] is meant to be reverted at some point. So, this patch helps
> to move in that direction.

This was a bit hard to parse for a second or three.

Thanks Gustavo.

How was this change done?


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3e0bbb1644fe53d79322c2feb28ccaf3e20c0e94.camel%40perches.com.
