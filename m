Return-Path: <usb-storage+bncBCF5XGNWYQBRBH5U4D6QKGQEEG4FVPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4042BB59C
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 20:33:52 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id y3sf3873846oom.17
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 11:33:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605900831; cv=pass;
        d=google.com; s=arc-20160816;
        b=lElLNuduG57Thteysz3aByU/8KE7E8n2AL751kGcSfWbJq7S8lkrUbF8uclG0S0Z32
         0pHpXhKP+NRRSczKTgeV1GatffTrU/hN2Dlq91gZOejz4rsBk1wjoG0Pv2VAXg2Zyl9h
         pVtqexB22E7sG9DmhA/gHG74S+FVIZx/gXlm/J/0WR8Jyler4oghmhy6E0ZI57ahkO7c
         OcLxm8/92ICxbwu1im1UEqm5iNwQfT9Z21RJEDUuuy38t/65ICbKKQAUCuVibBmouJA2
         OBnVnPaFoAr3OcsWn0lmMGTrRYa0qyUqj627so+uxDSnKYrd5KZ1ePXXwtAYWynLGApu
         RZcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8g6DKX3Re3q7mvVIMsjCKNme1YlRNtNwrjEKFPJOhwY=;
        b=wfhAzoiSX9UBDRyUz9isU8S4cyfv406/8Xij7xVWHkbMTmmJ/2P81rTaFSyAgCfN+G
         z51wPVTqTxF+f+tjIjpl9WcC0uG+3Ko5Onhx3aidVn3F5eSCG9/mqXwZKAoxNPZrAGZB
         Du6TYpguB5PCCYTGNqIAGmlnX2NsztVIYkW38ucVD5XSzSkynpzED6qgIBseCQXt2dUN
         mXoiPD6FFjF9Q+UMYyBhhmAEJua2/eG8ZPy0/3o/0aHDgmcpZeMiwkqfHA6AT0SVAMhB
         dNKKkCBxmo55SmzPRzyrzVkWdwacA4zKeNahy8Gl7R5X1GCZVdqliUlenAt5YojdrhW1
         tXzw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GgFl3K9I;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8g6DKX3Re3q7mvVIMsjCKNme1YlRNtNwrjEKFPJOhwY=;
        b=Xk8WkPwD0kVxpWpXCDsepQvVBIzB9cKX8LpIyEkhVZQKU3ELEZBKK3t+1RPVK6Nr+t
         3qtgxF290TseNSZV8jTYLddu1zWY/4x6xkfjETxkLPYG7sHIMYMmA1S7f3/9yCOmgnS/
         ZfAydIlsisGuz1ejJWKEGT0TLdjM0omWWwrVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8g6DKX3Re3q7mvVIMsjCKNme1YlRNtNwrjEKFPJOhwY=;
        b=IdrM3JHdKppQ/FBNYwfngMqs3a6hRTBfHw4hPAPe4E/PNuotkNoEfA6vRqLZXdugvp
         UWNJKx5DlwX7lQaiPosJnMHEqAgJVfZuRmdzPZWfaVdBZE2mXQxjSVKn+nxCSwUCu8Ns
         rKSeoo6oHsPalRIis5mpgzin4/PWM8Xc4kEFl4mc2ViRdTxqVqsorokCFyxZqu+MKxe/
         C63u6VqAuZKQhQT/yTh2rAG48WBcJf6keihW0oqwPRjKrQz6FDQFqWwmlF3apGoeVfly
         sD9GF7fev5iQ242/HL0gH1iWSPYFACmJaUEjMqhd87l96oiA47k+x6+Zu7t1TLxeDpH3
         /9Uw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530kiXpo/JVJb+h3JlNzMH3UoF2K9R2LgcCLAU/bFFcXzoCz0L80
	y8eyuhNi1TIZL1wBnz/8yrLSUA==
X-Google-Smtp-Source: ABdhPJwNp+Jblaz36QkNA6++i4YKfVW92tHclpA5SmB3HbywHhRfzEAtAf6bOP3bSBhzJPuGrIua/w==
X-Received: by 2002:aca:f346:: with SMTP id r67mr7488995oih.21.1605900831201;
        Fri, 20 Nov 2020 11:33:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:e102:: with SMTP id y2ls1818122oig.4.gmail; Fri, 20 Nov
 2020 11:33:51 -0800 (PST)
X-Received: by 2002:aca:da02:: with SMTP id r2mr2402452oig.157.1605900830964;
        Fri, 20 Nov 2020 11:33:50 -0800 (PST)
Received: by 2002:aca:b283:0:b029:e3:5820:22eb with SMTP id b125-20020acab2830000b02900e3582022ebmsoif;
        Fri, 20 Nov 2020 11:30:43 -0800 (PST)
X-Received: by 2002:a63:4:: with SMTP id 4mr16573658pga.443.1605900643380;
        Fri, 20 Nov 2020 11:30:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605900643; cv=none;
        d=google.com; s=arc-20160816;
        b=ICmEArf4U2aA9Vj+oiIVbpB8i28bJusCrRXLUXKqw0lr2aMXilsAqHF5BeRXpYCkLr
         BLE4TZmZkPS0gidgL8HkcdV5DzoiuqNGkTcRqohFPuiY0zwxi5IiLuqlpVIXO+WR3DMw
         ZLwTqwPt7llGl1vrIhPQcgsgOQ3o75fg0InzHVMOyMhueERP4goCwwivQQ0IB20GG/GA
         mBMHcISIvqVBiHhXVe7mw1rYXJxWFbhecA9xTEjORs5oY4cVt0Y99OCswoMEBO+ibD2k
         abd1TZf88QQbHWarlFslp5rqGMS37Rg8+a8omrCxPoWg24jpZyW+vZ1qwH/nrZ0tyZu2
         LpSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3bv50j9tOMZCSWAChUvUk5K6TgooTRt3SRcQZBJ9fcA=;
        b=f9I6T6rwPcifq2Cfm9Rsit8Hik2H78/34cYIK3SBVv5MSLgSo7NGZSDEXgiVSmWgP4
         lqYrSVLRSXVy9wqW3UvW7PLThC+v02a2AJxf3Qyv4w+Y7jnQAzZKP+s6fBb45eSOCr0g
         3060YN8lzirSjQelg1LL/xveX+XonMH2HMoouwV6WG+oO+a05ifMPIFI/lBjp/Sh0iT0
         7ZhjZLLy6F39OxGUhqbIlM9nSRdEF0MpaXfJmldgL+LIj2+QZf3jV3B2HLCKK0lBJJFw
         K9QelPboNZ4IN1lIGYaGjPO/LTDN7UtA1O163uWURbvY7nzopocrDhpE6MmUvpTtjSB1
         bgkw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GgFl3K9I;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id p24sor1791931pgb.83.2020.11.20.11.30.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 20 Nov 2020 11:30:43 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:5043:: with SMTP id q3mr17907345pgl.137.1605900643099;
        Fri, 20 Nov 2020 11:30:43 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d10sm4785681pjj.38.2020.11.20.11.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 11:30:41 -0800 (PST)
Date: Fri, 20 Nov 2020 11:30:40 -0800
From: Kees Cook <keescook@chromium.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
	amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org,
	ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
	coreteam@netfilter.org, devel@driverdev.osuosl.org,
	dm-devel@redhat.com, drbd-dev@lists.linbit.com,
	dri-devel@lists.freedesktop.org, GR-everest-linux-l2@marvell.com,
	GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org,
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org,
	linux-afs@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
	linux-block@vger.kernel.org, linux-can@vger.kernel.org,
	linux-cifs@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-decnet-user@lists.sourceforge.net, linux-ext4@vger.kernel.org,
	linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
	linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-input@vger.kernel.org, linux-integrity@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-mm@kvack.org,
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
	virtualization@lists.linux-foundation.org,
	wcn36xx@lists.infradead.org, x86@kernel.org,
	xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <202011201129.B13FDB3C@keescook>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GgFl3K9I;       spf=pass
 (google.com: domain of keescook@chromium.org designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Nov 20, 2020 at 10:53:44AM -0800, Jakub Kicinski wrote:
> On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:
> > This series aims to fix almost all remaining fall-through warnings in
> > order to enable -Wimplicit-fallthrough for Clang.
> > 
> > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > add multiple break/goto/return/fallthrough statements instead of just
> > letting the code fall through to the next case.
> > 
> > Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> > change[1] is meant to be reverted at some point. So, this patch helps
> > to move in that direction.
> > 
> > Something important to mention is that there is currently a discrepancy
> > between GCC and Clang when dealing with switch fall-through to empty case
> > statements or to cases that only contain a break/continue/return
> > statement[2][3][4].
> 
> Are we sure we want to make this change? Was it discussed before?
> 
> Are there any bugs Clangs puritanical definition of fallthrough helped
> find?
> 
> IMVHO compiler warnings are supposed to warn about issues that could
> be bugs. Falling through to default: break; can hardly be a bug?!

It's certainly a place where the intent is not always clear. I think
this makes all the cases unambiguous, and doesn't impact the machine
code, since the compiler will happily optimize away any behavioral
redundancy.


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202011201129.B13FDB3C%40keescook.
