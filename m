Return-Path: <usb-storage+bncBAABBOGG5P6QKGQEZND4BLY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F392BFC13
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 23:16:26 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id f49sf4259386qta.11
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 14:16:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606083385; cv=pass;
        d=google.com; s=arc-20160816;
        b=JLAiLDcvHhNTwTqpX67C8oAKHI3yHdUMvYrBTk3gRszflYIgvH4xmh7xbiWZ1WyHgB
         m/MhtAbIVW6rzrtYh2a19nVbnAAB+THHIU1LUeCTvgUtj2TQLLpeDNocE4NxlYRoNB5z
         YIWjY02ob2pxiXNod3Nl2oGs39hPQAUe0aXU34bpVXYdee+qAbP7fdJYcL7iw0hM9ukh
         bLIwhNUxpX9SDTg1WiTDHfp2WOMtCivFY0Vo19Qf4TUXbW+u0lQqEFzzz4q2DUhtaNil
         1o4VcjGfsQfXuJeiIc7cYc1QakTesXhiu5UyTWdweLLoQUj3QOW7f9yoeT16mgMml79d
         Ak5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MVe+6enBYPTp06Aj+WxnWhyeYhQcK+g3HpJMK3KJ5tk=;
        b=fyww/WhhKzyicYS6bYkdAUEiSLjS26o2b5lycKjzFQA7I+mqZfoTyHXGtYsTF1M6+1
         bFouAE1vEbZ52a5YGID6SWiC7ShERA6unCMvYCAn7GKtIeUBhuxtt/PC2cLCgPw3IBNO
         euofnCNxkd2+bDMdG02eWM4iDlYtt+jzWoNUDaoeFwHm3CIg9Wh1cENQ1Wuo8KXEnjxz
         XyvxIyCA3XXJWLyuZz4q8zjgoybCbmZ978mDQodjyaGXOd7/ITipsAZoUcJzf3oLwFld
         lw6+V8EeA3+mJUSQBXFQpB/67JG+8rjbB1Pk1EuJixvIYdmBntg0+SdFu6ETVpF+ianG
         fUmg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MVe+6enBYPTp06Aj+WxnWhyeYhQcK+g3HpJMK3KJ5tk=;
        b=gZu639SZZBScsPlUigcMOkvAE4DbxOorAs9oBbJemddBcoRx5dhH9GubGj8iB7KmIj
         Hb8qXZSL0ebo3eMIczHuvPZGu8iF7SdmzJSObgwyMhPYPKgP2It+yPUkgYMOTwJ8WEsT
         9sj4NqFpTRP+IYOiDuzL1WP9+i0q490wsSdWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVe+6enBYPTp06Aj+WxnWhyeYhQcK+g3HpJMK3KJ5tk=;
        b=kYQM8f2ncGsVbi5FDOO8pRrRscC/xjw/mJwZkPFiy8P+yPAAdwfcLspk4Jb+arZryS
         zt+sg+srDh3iVmW6A4igqsU7OvgB20I7V9ExjrnI0cLPHWjl1oF9s87W8hLiz1vQlhLX
         IJbJxF38I7vroqOzz2NKsiYfWa0K/E1Fc/5TSFsZ6L31eYcS/SrpIfG+Go9YUJbbnUqO
         ltd6wu2PlvXpY0/tMas8dhXn4I1eKI+agVOs+SvWx1YX7Ea7o14Adjfslh1m7K40P2El
         QVSAamVB3Zk828NBfwDMhzqAFgR3avVb57ba3YImkKujwv09mbWBNA+BZjuEPg8FKnY1
         8QcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530w3MTbvVi+EkISfkdVpBnAruQqAnL8GhA8VeJpvLWu8zgpcwqo
	mquGJWxNPTP37RzkfRtYykqnzA==
X-Google-Smtp-Source: ABdhPJxKAvBVOXg+Jnk8JzZqnzSGL9izmQwisiSo/vgOHJyiuTLSBHjybUYeKWvJ3dtgjtNpEiQdgw==
X-Received: by 2002:a37:8484:: with SMTP id g126mr26722759qkd.365.1606083384956;
        Sun, 22 Nov 2020 14:16:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a493:: with SMTP id n141ls5716978qke.8.gmail; Sun, 22
 Nov 2020 14:16:24 -0800 (PST)
X-Received: by 2002:a37:a54f:: with SMTP id o76mr24372764qke.201.1606083384567;
        Sun, 22 Nov 2020 14:16:24 -0800 (PST)
Received: by 2002:a37:74c4:0:b029:f9:71db:3eb4 with SMTP id p187-20020a3774c40000b02900f971db3eb4msqkc;
        Sun, 22 Nov 2020 14:10:50 -0800 (PST)
X-Received: by 2002:ac2:5cd4:: with SMTP id f20mr12025222lfq.302.1606083049779;
        Sun, 22 Nov 2020 14:10:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606083049; cv=none;
        d=google.com; s=arc-20160816;
        b=DgKFOd3fODqk6Cxf7ROhI09WsykALX1tcdzoh3l1IyjzibC5otm2HVuNJOdYgM3Yu8
         f87phvst3ywO9ElBYszpcp4xF4k64CjGrzyXqMenPNDucQ6kgEJ8vsYhF3dT4iMEehWC
         e96+eIJjXbW9E1pEhfVGot5oUQvgqcdFfrFMtpiTOb4WIkTvD5G5KI6NZXKU3rKnUlXW
         QHMS6dgZgWls2IKSs+/YIrpBz+4szzSjXVq0ATEG4A+gIkA9fAguBR1ohMP+bK4yesgT
         4FRkdIMHqOktRK4Byt1iDimyE7Ct+L0PIlPzl8X1SiZ32gGAKmlN6WWuesxOjLkBLBzi
         5WSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ebxoZhefCLxyEvgJpJe2DFSX3BxDWQ6N355mbSwR2Yw=;
        b=n54GhtUP/4IBkhFedqYFpr91wr157AkbujnuFnqVnsfSUBhE7e3E2ytm/V8L/XmE7v
         6qhprWjzjnDduI0xwkiFy3paSQDMxvZn255SpXGdmo50vMPB/hiJtKW5NyZPv+hL2mdR
         hTcbpyyGln7FuvvrptjJC3I+aGa8WSL1Swm+HnEnqYzIav3tRFz6Wga1kQoJwt/1Z134
         dHvA8fiTMjU9U8oUadBsSYv8S6pfoHQiVJr0E1oEDRzP/2YrtoB+wRBa1BjhzIFcxv8c
         8QkpAALHdGyRW77/JdIjtVSraUghYZckT/4R9i9LoYmsbDaJMJ3q0tp00HokGufh9EhQ
         ljbQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net. [109.247.116.15])
        by mx.google.com with ESMTPS id t4si4202661lfq.475.2020.11.22.14.10.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 14:10:49 -0800 (PST)
Received-SPF: neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) client-ip=109.247.116.15;
Received: from ravnborg.org (unknown [188.228.123.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by asavdk4.altibox.net (Postfix) with ESMTPS id 2C52280567;
	Sun, 22 Nov 2020 23:10:42 +0100 (CET)
Date: Sun, 22 Nov 2020 23:10:40 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>,
	alsa-devel@alsa-project.org,
	linux-atm-general@lists.sourceforge.net,
	reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-ide@vger.kernel.org, dm-devel@redhat.com,
	keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
	GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
	samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
	linux1394-devel@lists.sourceforge.net,
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net,
	drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
	oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
	linux-security-module@vger.kernel.org,
	amd-gfx@lists.freedesktop.org,
	linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
	linux-acpi@vger.kernel.org, coreteam@netfilter.org,
	intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
	Miguel Ojeda <ojeda@kernel.org>,
	tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
	linux-media@vger.kernel.org, linux-watchdog@vger.kernel.org,
	selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org,
	linux-can@vger.kernel.org, linux-block@vger.kernel.org,
	linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org,
	nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
	ceph-devel@vger.kernel.org,
	virtualization@lists.linux-foundation.org,
	target-devel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-hwmon@vger.kernel.org, x86@kernel.org,
	linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
	linux-mm@kvack.org, netdev@vger.kernel.org,
	linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org,
	linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
	linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
	Joe Perches <joe@perches.com>, linux-integrity@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201122221040.GD566387@ravnborg.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
	a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
	a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
	a=7T594MSkF3521FIrX4wA:9 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22
X-Original-Sender: sam@ravnborg.org
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 109.247.116.15 is neither permitted nor denied by best guess
 record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
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

Hi James.

> > > If none of the 140 patches here fix a real bug, and there is no
> > > change to machine code then it sounds to me like a W=2 kind of a
> > > warning.
> > 
> > FWIW, this series has found at least one bug so far:
> > https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/
> 
> 
> Well, it's a problem in an error leg, sure, but it's not a really
> compelling reason for a 141 patch series, is it?  All that fixing this
> error will do is get the driver to print "oh dear there's a problem"
> under four more conditions than it previously did.

You are asking the wrong question here.

Yuo should ask  how many hours could have been saved by all the bugs
people have been fighting with and then fixed *before* the code
hit the kernel at all.

My personal experience is that I, more than once, have had errors
related to a missing break in my code. So this warnings is IMO a win.

And if we are only ~100 patches to have it globally enabled then it is a
no-brainer in my book.

	Sam

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201122221040.GD566387%40ravnborg.org.
