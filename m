Return-Path: <usb-storage+bncBDY3NC743AGBBN6I576QKGQEFK3MRZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 767582C1053
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 17:32:56 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id f66sf14322819ilh.17
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 08:32:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606149175; cv=pass;
        d=google.com; s=arc-20160816;
        b=vuKNUvpKyQezo3E1S3H9xwicYasUXf1q9K4EqkL5Yvay71npFAwNZAR877T3NzxbvX
         RYmAOUAHc74tbHN2lG0v7rTvnesy834Dj82TFNp9Hu9F1EFwVbYklK59wH1iPCr5568D
         Z51gg7wncZdlfXFLFLV7+FNPDxYj5CQhRv3SmpBBhKCnw7MCt3qxYf3s6DdWdu81wKI+
         cPt1zKMmby8OygKi4MbHCShq/aVpA90qIbDKYSr16xqj7h/6I7gIrbAWfeCzlFaUu9pU
         td01uCeYpZVhHQmgUVM+H7R7qlmD/8IJGzPUioWHbQ5/OoaKEbynzRHNQPadv3BRsE6+
         mX1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=j9HHU7nq5vQFnDDDWHS/6g5FTDP21plMGM/4NK9YUUs=;
        b=Jie5xZB2xor8itcBpWkbO0SdFyBQqQ3jFLrgB+Q8eScGGc75J5ZlrXH8l9Oyl5nOUW
         arR70NY17h5FgrbyXb8w+szpOkq0aW/Ij/PktiQUorZGdgqyJu9HHY5FcKG4EaOKXq57
         jWJOW4Eb4nLHgGcUhsDrtqXg29rhFn7VMHCD3wfciAktWRXM1zhcejeOuAPedzWRS91Z
         uniWS4ZkpTlYT7GnBqyRtvEsLJI5D9nQIqjGMMe1BeJy8UUL4oqIvBrKsR5SUfU+tNrN
         1UWJbWgbhNKeRqLJI/WWcLafOQb6U7IO4sjwAOrMJqlzfEOa8+/ddzSNEKlCv2y9ebdY
         B4rw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.141 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j9HHU7nq5vQFnDDDWHS/6g5FTDP21plMGM/4NK9YUUs=;
        b=g50r6hhT8rz1/xznTBBzjYSPV85Ba7zjFMWEtjGxtJdU0sl9mFveIMy9pnNIIaK9A3
         2EQhsX21dEVncFgDhsCBj6lm8cO99xE7MgmhUh/WJbQnyP0j0SABmWMIIjILlwBHieln
         F8IXNEYq9wr3caYAUovgIDf1ToMcSerEr432I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j9HHU7nq5vQFnDDDWHS/6g5FTDP21plMGM/4NK9YUUs=;
        b=RgpA9yxkGR0EQ3qqgLXjg40JLCj3y9yhz1Rz5D835lX3miYi+z+boYUMYYAPwpGaHK
         6wNLyIE+Py9wA8UiWQZ+pAIB7cF957jJb/xdcqdORIDePL0jKCIU36NtMa+uuCgmmNf2
         qey3vanWkODhkiOReKeOn9dXxbyk13+KeYHrpwMwD15943GwbL0pKbwAnu8FiFLsT2iY
         ftepzHYD/LP+ViSiw7kg3osUL5aCTE5+xIQwsWyYDL/8wpSTMClWH85yoxgZtZ+7xPai
         udbaeNrcCD7CKW//1MjCTgnCNcyMvBH0zgbM+g/Vm5fNqmeSfo6g7l2Ujb/je7Q2aHdw
         tNhg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532qwY85hkhMr1N4/XYFk8TZxUpb3K+JK32xBz+B4+k7WIkcP62t
	jF2RmaejuHMPdnJOMuBfqZ12ng==
X-Google-Smtp-Source: ABdhPJw4WF/B91QxNcoMqcBsqwT0lsbXXNPksYfG7oxEaOO7venqLnT5G27rt23U1rwp+HW3QNZh+g==
X-Received: by 2002:a6b:ef11:: with SMTP id k17mr456926ioh.210.1606149175409;
        Mon, 23 Nov 2020 08:32:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls2044369jaj.0.gmail; Mon, 23
 Nov 2020 08:32:54 -0800 (PST)
X-Received: by 2002:a05:6638:18e:: with SMTP id a14mr325537jaq.46.1606149174606;
        Mon, 23 Nov 2020 08:32:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606149174; cv=none;
        d=google.com; s=arc-20160816;
        b=Kl3ELu1zpww6S3vckW6M+pTikBq5yZ1xSi4x/6+VYWX+StLWURf3aIE22/oebsiRvz
         YbHVKfSpw7aR4li+I3jOvnc8QUdSG7Hi2JvoIZjYlFzYc3J8tAFullggmVOBnZkRZ3iB
         wZjxr5tvCvLOGdvdai+18qbzOD1MD2NIZsDmt2Zx9+N4P8AntRnNweFNlltWgbTArE02
         8uy+TjV7FPuIjU3Df9YyBSJBUiOe+spgimJL31pNNgAutiSg9ssLB6pd7EIJga2giviN
         F/OMpO1kFHnyQ6OFSA2AAo9xopfB1mdv3qvTihRZb7AfIeixBBC8jgBvlwdXH2cpDdjH
         /bXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=VNAEKyQcO+s9plP9hxb4kHnkojx20E9lnQj7Bj7ooIE=;
        b=sYjl/Fcq55CeYA7hpfq4SP/qcMH2jxI9Uz+ep4mhQE0+N1wppZmLVSYNGdVQr8dZ2J
         qEPoji1NtVz5RH6WY+vzre2u0dsMeL2b2lB6rMWzHyuvqKkjzPPxoTrkSRD9fWpoa6WO
         WnukDxLiEW+NYhAqo6odnvonQqYPyfhBgvBfzTnhN1EhdPuRdYliSvNb8j833dba808I
         efbgWAScnwMoOuarRMFC4rW/5tK3KhrSwGgTXp6MYPze3stT82XhViGWQHVD02FW6Q3j
         kdZMt4M1lKmEMVptpn4TbTcXJ8D0sOiL3vV/qm2T1Aazva7Qp0lUU+1PtGNRxNL9LWhN
         rhQg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.141 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0141.hostedemail.com. [216.40.44.141])
        by mx.google.com with ESMTPS id y16si8829842jan.106.2020.11.23.08.32.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 08:32:54 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.141 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.141;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id A722B181D3025;
	Mon, 23 Nov 2020 16:32:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2565:2682:2685:2740:2828:2859:2912:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:6742:6743:7903:9025:9388:10004:10400:10848:10946:11026:11232:11658:11914:12043:12049:12297:12438:12663:12740:12760:12895:13069:13161:13172:13229:13311:13357:13439:13972:14096:14097:14181:14659:14721:14764:21080:21451:21627:21781:21788:21809:21990:30034:30041:30054:30060:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: can43_5c1502d27366
X-Filterd-Recvd-Size: 5503
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Mon, 23 Nov 2020 16:32:42 +0000 (UTC)
Message-ID: <32dc7423124b51da4e144e931bf099a368ab50a8.camel@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel
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
Date: Mon, 23 Nov 2020 08:32:41 -0800
In-Reply-To: <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
	 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
	 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
	 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.141 is neither permitted nor denied by best guess
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

On Mon, 2020-11-23 at 07:58 -0800, James Bottomley wrote:
> We're also complaining about the inability to recruit maintainers:
> 
> https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/
> 
> And burn out:
> 
> http://antirez.com/news/129

https://www.wired.com/story/open-source-coders-few-tired/

> What I'm actually trying to articulate is a way of measuring value of
> the patch vs cost ... it has nothing really to do with who foots the
> actual bill.

It's unclear how to measure value in consistency.

But one way that costs can be reduced is by automation and _not_
involving maintainers when the patch itself is provably correct.

> One thesis I'm actually starting to formulate is that this continual
> devaluing of maintainers is why we have so much difficulty keeping and
> recruiting them.

The linux kernel has something like 1500 different maintainers listed
in the MAINTAINERS file.  That's not a trivial number.

$ git grep '^M:' MAINTAINERS | sort | uniq -c | wc -l
1543
$ git grep '^M:' MAINTAINERS| cut -f1 -d'<' | sort | uniq -c | wc -l
1446

I think the question you are asking is about trust and how it
effects development.

And back to that wired story, the actual number of what you might
be considering to be maintainers is likely less than 10% of the
listed numbers above.


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/32dc7423124b51da4e144e931bf099a368ab50a8.camel%40perches.com.
