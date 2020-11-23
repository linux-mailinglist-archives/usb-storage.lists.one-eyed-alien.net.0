Return-Path: <usb-storage+bncBDPYNU65Q4NRBLXG536QKGQEK5FWM5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDC82C07FE
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 14:03:45 +0100 (CET)
Received: by mail-pf1-x445.google.com with SMTP id b11sf12681865pfi.7
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 05:03:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606136623; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q0GMqm2HaEYOHs29NGb7L7sfg+NYhm2eb4lNlNoWEEE2rtiEIeR9rn6jhPi1vujqIS
         Z5c4qGS5GdW8jHhHxk2hh8Cdsntxf7MNcLdS4o43DTbhOlRGqPcshQ+uqQgXUNzE/aZJ
         6CSZfC1wKtuqnMF+THwEDZS42J0Thk+k04mG5P6JdmWOPL7jPkEs4R7/idRoQjP3ou1M
         r1ZUVOHGB83ryl+ytbZ+bRcsCxgbQtunwseoKAdgjGRBFggGyNGIrP9Q5cMBSUzOI2Vr
         WgynKgouJ+bzxMBv3YMD/zzEU4T0V6Hi10PEP3TUreh0g5AXdzLN6eKjOYW7Q5fb8Kmm
         6IdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=sscWsOQRhIZRmm3oG521rs8TIMAhHAZEpQfOL0yArtg=;
        b=IWZfXMKyzbPyHRu9m2Fg2meQx8GYmkhyVUHE2ObuafN5MSSqRCr29MvMWazrk7ewYq
         X/ylPaMVznRpgKkz5uQbR5/GGdctd7TQ0yFSxehlmUXjxglRL6Va3zSXJLd7SvlaBCI2
         Oj5/gtAb4TPl24SOgPxg3WJeeFtYqUrERABQZyH9r0pURmTiJLi41gLibYSooOL/I1a3
         j9HOIJHEukMMdYcLpODiwmImF5YndPdvAISHedVRwxCPGlJRwd/uBLRdugZj1BgQmKs4
         mrB/VNLLUr1uCt3G30poFBumqofHt/qBVadE/ohLK+t6QPzVFo4E0Ik7y4tLT0/sCm3b
         LNsw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=huMDpxd3;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sscWsOQRhIZRmm3oG521rs8TIMAhHAZEpQfOL0yArtg=;
        b=UI3rqGrPmPqdP4lvg4q+kzMEkya7Ni0+q8rcYNt/7irz8PUnMdEoPu9Z+pU/CquCfH
         2pgqhe65aShM8wgEAM+rU/L6LYRZw3DJJuEDm0IXRJ5h0JzICtqGFvb06U53aVoSvLiC
         12Q6AFq1MYHW+XdFjJeRluZ6mxSvJLtOiHOn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sscWsOQRhIZRmm3oG521rs8TIMAhHAZEpQfOL0yArtg=;
        b=KR7vYKWeUprzbc6fcDbTLBA8AR7xY7Y+n3NNfJynyX+UZtpTrrL1HWw8WwVbjIWJQd
         Qmayk3ZpHh+jvt7ql1XBql/4i/NTSzLUDYcB96MGzlOmgnrru/kukP2tr82dey8yy0WN
         x0FhaIFEcbWSpcLyLpKGC1kihBwaZZiK0U3jkzV1LSiPz8LTN5puXVEQAZQgu5xTyY2z
         1MEtND0yL3E/uNw+2kO6LIXI0tT9uuo+nr/bgSAL+M3jeZy+u5XpMEGLwMg9ND472LE7
         SB4SsY0jxCKkJqS6AkhFjFCm1L4JeBJc3NFfqOaLv1/WdeUqstQsrtJf/H0tifL6mRjj
         XQRQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530sSTxzeQkw9+3/eJ1fgxAsSZC3q4lqX8xrVfqToFyM5wkK3Qrh
	/VIQ8CGvfFS3D3kiEGTrg4aZqA==
X-Google-Smtp-Source: ABdhPJwP6r1rIwvNDLqV2GMrdflfY+VgNDKJBpZZXI4pn58HZNba9bX1fkdWF5sbnxmXZu9LFbZhrg==
X-Received: by 2002:a62:7e14:0:b029:18a:d515:dc47 with SMTP id z20-20020a627e140000b029018ad515dc47mr26000340pfc.78.1606136623029;
        Mon, 23 Nov 2020 05:03:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:ea4d:: with SMTP id l13ls4573892pgk.0.gmail; Mon, 23 Nov
 2020 05:03:42 -0800 (PST)
X-Received: by 2002:a65:68d9:: with SMTP id k25mr10796542pgt.73.1606136622310;
        Mon, 23 Nov 2020 05:03:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606136622; cv=none;
        d=google.com; s=arc-20160816;
        b=jBc+vJheqtuw3A1rfTe5JrcLraFEVLhTVlu2iF+yVEwQXfYGd2gpXC1HCkYVzT7ceG
         zqx27Z6NWqutO2w4Io2JO5RTyQpr0BqMXkzxxvNPka21Fk5Q9dqDnx+LXzHwNxX9ocUp
         EgvJd7Ck6oCnS0/2EEDSqndcAM66UIciQQ8GFmF6sBfPPxwMAzwuXh7yU/qQ4OX3AFGr
         JU55mAeakYBruzM0GicwzPOIJt6GCciWG8cs3SNozY/vgCzqaJCDT/20pshsNBpbB56x
         tlrBNRhcp3ejqAX/sAfSlG+u7050vcMO+B+9xaVYWQW3hgbiV0M7ESxbgfWQo+6Q4yyZ
         mFPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6PFe2YSB1t9oF27gUofjfNTVGBBWcjPYMWjqkZ3fcGQ=;
        b=UyJm21f0+glDftvSHIoRN6ry91kSj8IG9yTFrywx6uuL4usSKrZRBrZNEBCCSVUnvw
         TyHIiSjxQNZIuY7e1gnFipbnFjxlRX7dG3t2ojlRoHRmYEZMkg2RVjib6bkvlQfon2r6
         tok+X1ErjtXPmU3SGtICCeql6iar3qU/jnQRrYekRWIpGoqp7p8YxFsUN7OXTLJ1pW8l
         DiUbxn00+iyiyf3RLWuZ/sid55N//r7j3U08VLqQEbWDkNc8P+OM44bQ+kXGKZroZ4XJ
         PVKio0qREAd+3g71+zPntgkvp5coPX6LR+/Say4lTKqe48y16brZD35lM4/PqLMGoH5F
         hA+Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=huMDpxd3;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id s10si10803982pjk.148.2020.11.23.05.03.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 05:03:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 191D120758;
	Mon, 23 Nov 2020 13:03:35 +0000 (UTC)
Date: Mon, 23 Nov 2020 07:03:48 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>,
	Jakub Kicinski <kuba@kernel.org>, alsa-devel@alsa-project.org,
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
	linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
	x86@kernel.org, linux-nfs@vger.kernel.org,
	GR-Linux-NIC-Dev@marvell.com, linux-mm@kvack.org,
	netdev@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
	linux-mmc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-sctp@vger.kernel.org, linux-usb@vger.kernel.org,
	netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
	patches@opensource.cirrus.com, linux-integrity@vger.kernel.org,
	target-devel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
Message-ID: <20201123130348.GA3119@embeddedor>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=huMDpxd3;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Nov 22, 2020 at 11:53:55AM -0800, James Bottomley wrote:
> On Sun, 2020-11-22 at 11:22 -0800, Joe Perches wrote:
> > On Sun, 2020-11-22 at 11:12 -0800, James Bottomley wrote:
> > > On Sun, 2020-11-22 at 10:25 -0800, Joe Perches wrote:
> > > > On Sun, 2020-11-22 at 10:21 -0800, James Bottomley wrote:
> > > > > Please tell me our reward for all this effort isn't a single
> > > > > missing error print.
> > > > 
> > > > There were quite literally dozens of logical defects found
> > > > by the fallthrough additions.  Very few were logging only.
> > > 
> > > So can you give us the best examples (or indeed all of them if
> > > someone is keeping score)?  hopefully this isn't a US election
> > > situation ...
> > 
> > Gustavo?  Are you running for congress now?
> > 
> > https://lwn.net/Articles/794944/
> 
> That's 21 reported fixes of which about 50% seem to produce no change
> in code behaviour at all, a quarter seem to have no user visible effect
> with the remaining quarter producing unexpected errors on obscure
> configuration parameters, which is why no-one really noticed them
> before.

The really important point here is the number of bugs this has prevented
and will prevent in the future. See an example of this, below:

https://lore.kernel.org/linux-iio/20190813135802.GB27392@kroah.com/

This work is still relevant, even if the total number of issues/bugs
we find in the process is zero (which is not the case).

"The sucky thing about doing hard work to deploy hardening is that the
result is totally invisible by definition (things not happening) [..]"
- Dmitry Vyukov

Thanks
--
Gustavo





-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201123130348.GA3119%40embeddedor.
