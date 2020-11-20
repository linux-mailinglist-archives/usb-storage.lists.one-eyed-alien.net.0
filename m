Return-Path: <usb-storage+bncBCF5XGNWYQBRBA6X4D6QKGQER44S6YY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B27E2BB7AD
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 21:48:05 +0100 (CET)
Received: by mail-pg1-x546.google.com with SMTP id f34sf7679005pgl.9
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 12:48:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605905284; cv=pass;
        d=google.com; s=arc-20160816;
        b=PSngm3hKh//WZwerG3zDgbkB1K84HHqah1I7XSL7A9acj1gEKTfzVQCWlzxd2H6U+p
         /z3Nm1DLygy0ZhDd2Phh6aMzr1gaXKA6GTwVEDxF7OF0zDy+PatgWz4dSPE9creEWtrk
         hjrrbBZ4apDgQbjj0g9rLPmurP1qM0Y3AFcPFla7M37uaUqjcimUqXfSE467nXNI0X4M
         OEaKb3rYNpl7coAaZgXynNFTH+CTtysW/DKbal4KGN7EE80friyDLS0IfUWTcn6NEQPr
         F7Vldxbcl/mIbTMSpOi+icFpNK/i762le8l9xVBwUFW42E7VOCftaBQx4ca6OHcLW3ha
         IiYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CbHdXt+Udk8pN66nSVLPmqtLfqkZX7TPewEhAzCLhes=;
        b=Zqer7TZlnRuuogJiaUufFO1g6+Vpe8mz7UO+SwGlHVX50leyvXoTUDziPkClrqgHLW
         bkO/a18WaYOYkG0cRi08fs7TdVg8qQD2YjJtEjq+u1jGbdxszvo2IVz1EPIYHZuwR3WL
         Kc2WqlAIEjbbaZRd3aJHYvQ0b5fjE5nYYcKh1KRFziDRF+DxU2t2gSueiRK7mqq4oj1Y
         YoVqgWEPTCivwrwqCPLP3GUAHEJqh3mKGtq9za4mwe8aphbga3Gd+aMJddu3Kfoht58F
         ALMDNysWadXwUC3xYcNNRAAd5v+H/68TY4ajkw2mnm3GTZXozrtT/0BM+Xd6kibpEFUo
         x/qA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=avd4TaFU;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CbHdXt+Udk8pN66nSVLPmqtLfqkZX7TPewEhAzCLhes=;
        b=h4/CX4jjBBmuaqeH3n0qK1gg6jqJAaUXdRcVA01eccBxbf6YbxMs1Q8veWnNZYwQqy
         UpRZiPRs1ELG2MBzJ5rBYewCtjdZrnV24cbvNJwJ7BevWA4Yj7W1d7Y1Dc5BOl0+2b7S
         oNAjdCWgPA8G3tvoZObRaWtWKd3EzgwEkG+yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CbHdXt+Udk8pN66nSVLPmqtLfqkZX7TPewEhAzCLhes=;
        b=L+IxERjVPVIoZA6SeL1zMltMx+0+yhxXuDuhOfAE1kiy7RETI0LBeJ1hTlsxcIwAeD
         Y0HYD1bb4SoxA/6IAdBAO8WkLdiRiJtj/OnPnJwIPw+4Pl5hjk5tTxaoGwioiCpG07Zi
         z4RK4+44b2iNywQfWJvQbKPRVTyx33axW/Ul2wb7fh83jdYIDBWKPTCEg+4uGF/pYrRi
         OPEQBgLG3sRwZcPuqzriAIMiikgZUZtmOx3vtHMvGEINFaHXovOysWwqXHkyVmRVzJlS
         L/h+Z/E1rc049fmAvMuGYzAD1itEFuc7F/cE8l/JGUDm4WbxSeP6MBrpdrsI9GY4EruL
         b7Qw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532YT2ANkU3W7dR2qVFSCUYRr3LOLunrh6hlVOPQJikveOyb6yGH
	DTpI+Z4zlsRYH4ZhUcooxiHmgA==
X-Google-Smtp-Source: ABdhPJwU2wCzebLvFxryB0tnEZnj+IAhaJF9Aa+HVIvxD0nTVUQceb/nE025nLE6URUOuODZoR5MMg==
X-Received: by 2002:a63:3148:: with SMTP id x69mr360997pgx.374.1605905283951;
        Fri, 20 Nov 2020 12:48:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:bd8d:: with SMTP id q13ls3664335pls.0.gmail; Fri, 20
 Nov 2020 12:48:03 -0800 (PST)
X-Received: by 2002:a17:90a:a501:: with SMTP id a1mr3799963pjq.4.1605905283324;
        Fri, 20 Nov 2020 12:48:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605905283; cv=none;
        d=google.com; s=arc-20160816;
        b=FLUzeeO7dh+kyCo3IELCL6t8YP64jiYGsG6I2Y0nUPzbwvF0mi3bJZGEKh8bTS+miY
         utWfJFc4KTuhm32xmwcpKhI/nmACkGghu/DddzdRy2YOS90+6wTiwqEzIwUM3jg6Vc2K
         JbfVJYH50hVmIe39RxCydf5Tv9VYGpI77u564yzfZYTHfoPjmfeaAj/Nvzws11deWwwJ
         VlPSUPrTfnEzl4a7BEs/CaSphQBRVKwaO2+K6QWNSFMMH6qepRwEkY6VoFKDH1BnhzgN
         mKIhX+pdXcTe0o1HwIQQEa1mUhK2FEExeXAjZbJtNACr0qkGo6s8KHtBKtiJxYvDD5aU
         U2FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=v0uQ3+ZvQ790GJbfbb1ESqfRrqQ38XoL7hho1t1Gb0k=;
        b=nTh6tSAoceOX8xG1Mw+DGNqqyuX0P+SYMlLVhfX2qv2fQn0ZmeTgGwROp91EwV2Mzi
         xt2vBBhHO4OIyN3BAo08DrY7NVzpRU2d4haB7pN1LIkg4jizaAM9gavvYlGUeI/CQaJt
         nHULFwaF4BLNcjEPZdfOYi++fGBJ3Of/wydBvUphMjYhDYTRdES7cNocfLwkKc8bN3tP
         HLDvEnO7lNz1RAZDW9WuoBZrY0b+XwOIK/bK0l0r9OUJgMic2aCaxQpsIbKpONoyKejS
         BfOJw6sfsXpwQFXN+NBpid6qVXetMFgJrwB+lq8QB3VBj3QPnhnRQeI1NA5ofvYqn+oH
         LWPw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=avd4TaFU;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id w5sor2312174ply.51.2020.11.20.12.48.03
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 20 Nov 2020 12:48:03 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:7890:b029:d8:bb20:518e with SMTP id q16-20020a1709027890b02900d8bb20518emr15184915pll.66.1605905283037;
        Fri, 20 Nov 2020 12:48:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w11sm565810pfi.162.2020.11.20.12.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 12:48:02 -0800 (PST)
Date: Fri, 20 Nov 2020 12:48:01 -0800
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
Message-ID: <202011201244.78E002D5@keescook>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=avd4TaFU;       spf=pass
 (google.com: domain of keescook@chromium.org designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> On Fri, 20 Nov 2020 11:30:40 -0800 Kees Cook wrote:
> > On Fri, Nov 20, 2020 at 10:53:44AM -0800, Jakub Kicinski wrote:
> > > On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:  
> > > > This series aims to fix almost all remaining fall-through warnings in
> > > > order to enable -Wimplicit-fallthrough for Clang.
> > > > 
> > > > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > > > add multiple break/goto/return/fallthrough statements instead of just
> > > > letting the code fall through to the next case.
> > > > 
> > > > Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> > > > change[1] is meant to be reverted at some point. So, this patch helps
> > > > to move in that direction.
> > > > 
> > > > Something important to mention is that there is currently a discrepancy
> > > > between GCC and Clang when dealing with switch fall-through to empty case
> > > > statements or to cases that only contain a break/continue/return
> > > > statement[2][3][4].  
> > > 
> > > Are we sure we want to make this change? Was it discussed before?
> > > 
> > > Are there any bugs Clangs puritanical definition of fallthrough helped
> > > find?
> > > 
> > > IMVHO compiler warnings are supposed to warn about issues that could
> > > be bugs. Falling through to default: break; can hardly be a bug?!  
> > 
> > It's certainly a place where the intent is not always clear. I think
> > this makes all the cases unambiguous, and doesn't impact the machine
> > code, since the compiler will happily optimize away any behavioral
> > redundancy.
> 
> If none of the 140 patches here fix a real bug, and there is no change
> to machine code then it sounds to me like a W=2 kind of a warning.

I'd like to avoid splitting common -W options between default and W=2
just based on the compiler. Getting -Wimplicit-fallthrough enabled found
plenty of bugs, so making sure it works correctly for both compilers
feels justified to me. (This is just a subset of the same C language
short-coming.)

> I think clang is just being annoying here, but if I'm the only one who
> feels this way chances are I'm wrong :)

It's being pretty pedantic, but I don't think it's unreasonable to
explicitly state how every case ends. GCC's silence for the case of
"fall through to a break" doesn't really seem justified.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202011201244.78E002D5%40keescook.
