Return-Path: <usb-storage+bncBCF5XGNWYQBRBAU65L6QKGQEDV5OJNA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 130AF2BC6C3
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 17:17:08 +0100 (CET)
Received: by mail-pf1-x445.google.com with SMTP id z28sf11014941pfr.12
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 08:17:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606061826; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeWeg/VxvBVnRplmt7FqD2d268UaBTqpoUWeIXydIw0LAJUrNhPAbP259c/Das+Ly8
         ZaphNMLRLGmaz6pQNNma+W5Wqh92IWoqAtB81hDhDO1QhM5RNuN560887JvknQAImuaN
         x1gS+GEoWfKI3+TtRsOk98Pa344T3O+tLTsItYm000zti/Nn9zFdi/qt2Cuy+yee0Hn8
         /tLW3RV92zapjTaD8UuXYF/LFRGFjPoxzlHclrOAsf6PuHjMYzZkswycmmm2rDSdeh7R
         bQzyYqW6oNH/AK+x/ozU+d4V3IhSi9cT1G/4Q3oHIUYz/aqobfDIMJCaTKk/BG1XMTDV
         meOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hKhaj9U4EmmLPDQn1RzT7oaIzvCLHsI7WtYqwhfVQeM=;
        b=IYUQChHTitvZNCLKTA4xyfgLEHcKkTRlnoHilSL24ddAlFqZhyGVfRZFv+R82wP/Dl
         GFE/A7Bh1PuIoJ4bdrcQPGw7J10z6ZMiRj246yJTXkMvWOIKUr2V/RQKoQMpYIJOWT8y
         sb8FWw47hoXD1m1npFdGfRx8ugqKqzSUInVruA84hWRL6u5Xx0OLJwcut/yFMFsUZaTj
         Kw8UlcLtpmcn8QU4rPUkTdFPplDrYOXGYrw7mmxXwl4H7WsZ2sIcgleQM41cPoiWwS1g
         1L8fv0Q5o8s2xReLCP3yGJZla2t992agcwQ2gFMyhHqunOZZk+fLTQlmuO8Cyh8G93HD
         iwfw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ECdUiFoz;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hKhaj9U4EmmLPDQn1RzT7oaIzvCLHsI7WtYqwhfVQeM=;
        b=fVHiRoSs/kIM0OKWowcCmLtxJ5+IAcWFfSoCdMHc/78Jgjy1Z1QfYkIXTqam2D7dlG
         zHYUDbn2nWD3hFdraVVp8oBhec0jhLYY4pwNyCY7fHbtSjU/gxVpA9oDAbdEdinD+G9Y
         cdNPeZk+IdHAjpcz/qwjI5rG63oGJhcpP4OZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hKhaj9U4EmmLPDQn1RzT7oaIzvCLHsI7WtYqwhfVQeM=;
        b=IenQqnigXJXqKCMPOITwhYTQLu+2udLI0eTVbvTFcwUig8uRU7We3kaSylaYTvEqQw
         23X+R0eog5Np34LE0+mk7XKVIb9qV7Bq/sYrE9FvX8q0quZGIGkiPY0hVF6rKWAmMhqe
         nl+eRfmAAuf2XD3zgM6lexO61TJbXhx37kWrrp2SumZ9lisRD0suTgWUXo+HugNR7drI
         8Ywr0YN3nTGBUDQqn8I6ZOxYOAiVirS9/NM7zGAo3ciiJAkMskkheEtg9L/QeEbNuo7/
         MUdZIGtr1PpPwyyGnGBvCi5ovHJpd1oGc1niNWugoyXRSdLpwXgDhDDobBeCL28OijkJ
         fCWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532i1RAqeFFCq1iAs5/zCEZ8WG39OfQcUIKcqb39A6rGtWIufbsw
	U/VKBNGtNEoZC+nZPaXWH8klqQ==
X-Google-Smtp-Source: ABdhPJxMwBXYMOrPMU/N6uX8ZolzQpIqrN8B+cxzBzWrhh5G7ezU/6A7rE3QKwfOQkqY6mCshbcEAw==
X-Received: by 2002:aa7:9694:0:b029:18b:5846:4532 with SMTP id f20-20020aa796940000b029018b58464532mr22415785pfk.41.1606061826380;
        Sun, 22 Nov 2020 08:17:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ee93:: with SMTP id a19ls2190337pld.10.gmail; Sun,
 22 Nov 2020 08:17:05 -0800 (PST)
X-Received: by 2002:a17:902:7fc9:b029:d6:c372:a04b with SMTP id t9-20020a1709027fc9b02900d6c372a04bmr21366467plb.4.1606061825732;
        Sun, 22 Nov 2020 08:17:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606061825; cv=none;
        d=google.com; s=arc-20160816;
        b=shDWfLTR7zGpjTpFQzy5k9QDGGxuVei05TnENz8PL22Yuftg8Sp4lyW2ThBl0OEfBS
         nNvL7mcRHebC01qmZDRBEKaeBIo5dVqjhBnKc+wz6DMFe0iClTlb8fUkGGgbdGYjxlnF
         Nfe87Amgy1urF0XjbMxcAu6ZNWoFH/Pkzl3Z7u1lR0uBIxVDNSNpiUjAXFAbh+g7s6Ek
         q1db7mWkCCqBzRsxlJkVtC4w0ZdE98AV8ngkVXuR/zbJpjQBCoKfoaC/NCGlAkzfFnIC
         fOiMfu0XjBCTmJICOl2eHyuskuJ3XNsEPvoMHdls09qyUn7VzF+d+FQVUsg6pyK7vz91
         dYyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9LoGd3XD212DnUOzzxWdBwAHKcFiABUM1eku/Z5s9PQ=;
        b=LisjZ+Q63JSEoMyt+a+cllYVpLmaVNotBzu4yIPyjwVpYcDcqFtM0O+jcNYsLC8IuD
         XEa9FkwGIREghIOJS2Ib/QqncTgjQKz64467oW5YmAXj/em2tEANzlagKxhqdDAbVCH9
         skuEXwy0JU45VmsaO+hsaiJ/FMisznoixHJSEXGV3D0PrPhC5WhP5ub1bMTmKolJivxI
         HFVeGRR0q45YxUbMgjoy/NLQtwOBICqNWN4LHIjDRe7DDTPhF7aBDl/gvx2YVWW0GXmI
         GXTEuF+rWe1JbXs/Tlh4Bi2D+GdaYZ8cUpEPqfZHjEVZjSRW/YfJQ+BpGEOcgCKXB4zW
         aEmQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ECdUiFoz;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id m10sor3373931pgp.78.2020.11.22.08.17.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 22 Nov 2020 08:17:05 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:1d0b:: with SMTP id d11mr21383404pgd.368.1606061825374;
        Sun, 22 Nov 2020 08:17:05 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k4sm9841327pfg.130.2020.11.22.08.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 08:17:04 -0800 (PST)
Date: Sun, 22 Nov 2020 08:17:03 -0800
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
Message-ID: <202011220816.8B6591A@keescook>
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
 header.i=@chromium.org header.s=google header.b=ECdUiFoz;       spf=pass
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

FWIW, this series has found at least one bug so far:
https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202011220816.8B6591A%40keescook.
