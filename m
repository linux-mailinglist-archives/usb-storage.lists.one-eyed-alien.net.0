Return-Path: <usb-storage+bncBDPYNU65Q4NRBE526T6QKGQEBVTIYYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 2677F2C2A0A
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 15:47:49 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id x11sf13759608plv.7
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 06:47:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606229268; cv=pass;
        d=google.com; s=arc-20160816;
        b=GS3hSsYZCGIohQpoQa3sLcJiEvdmbSBPa+IuRY6MEvYKfTGWbA5TLoDpwtJO8WwDMh
         jLF8/1QqBsUU4vdsoYu/9iz8LXju8IM/4+04KBXqww5O8+gKg/Z+4nc029pmzONr+1Z3
         hm6Jcma9WrTOypjGseY5SJDnPw3+TUrjI0gwM/mSqiX4IvEbBuRq6/BtQMcCEhntwPbz
         91DOXE8OlcK55AnSIwXejyvi4WFtO8pUdvSBKJK9DCx61tZpx6KZGarZjgK7gpDxdYDR
         oujrMrPAMxo2TiGWmyRktehYnCyeAgyE9+7GmvXLRiQLXzumKloYiBzW9ZTRAcjSzfHh
         a7CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=FttV2kYpJplgpv9MJB0bdtSY565GHKCEBVmZLua7Oc8=;
        b=gO7O0Es+suuW6dY5Ei3UO6LNA7KQZq07jS7Qomb5Z6Ur0nYbrHOsSOuSBHvYGrdPt/
         uWwm2D5bj4CfbYshxmfvb659tNnXlIhCunipeYGC3he6/a0MurMKAQZOQb/GpixDfQ/C
         tGQ8LQNyfThSkb/2T5YLgcvZElSals9bCWCtPvY+HFyYung25xFM4xWsO3DY9xyFXLjM
         T3vc5TX8xX9/oUjZM2KHY7mMYZ7ndUjOIi3DTfeTE1/qIK6QDqIbPHiIxzjyDOa8D5Dy
         tXWTaxtr51mLxFNBi+yA8sPuakcRBlQbS8uzePDwTispGDsSxJJ9VpdDMdSiqyV4kOAt
         xTzg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tWoPDQgv;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FttV2kYpJplgpv9MJB0bdtSY565GHKCEBVmZLua7Oc8=;
        b=Pasf4tJksulm6FdWIfHXODPKb27iuyYXUQ2WjPwlXY65PZMHFwdzhtxbIJSP3lUQ+R
         raHN8cEBRX3wHh+RBKcf9XcYpclMzOXGwfF1wRVMUfaKcVtMEsOoZaVMaKG64Ivn417C
         hQazx7+Iiu8BJkpYgnrFYl/ZnpGLE2dAZG5H4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FttV2kYpJplgpv9MJB0bdtSY565GHKCEBVmZLua7Oc8=;
        b=DqMTIOqRgPUBxbkBDDxxImFdX8gnwA8W583kpXOb5p9PS/Td6yPtB8AQ5JN1tgssT9
         8EPAnl8BmNrC6Qh+l6COfGmefSdnc1/gvS6C5JKcddmACYcuryU5WIVzT0cTqR1Sv/Rb
         mm14unraII47A2WjB+ME25adfatOlxa1VNPJyAkdCmIwBWBNxIrKFAjNsGXGxbfGcvqg
         hAJbbxJ7Pgja3flK+dUSzqCDgmVsQJge8walaGcarnJRL1sgjsepKvKKgTlZzEAQavmX
         6MeVQ4rLOvbJJSTBQEZnzP2nMDn/Ds+uERpFth8mJL9/EE71pHnULh5QimD8RjsMm53i
         Tvxg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5336BaH0y2ystRg8i9bjw8wAIe8bBFtvhoeqJ5GDl749L7gwSbEF
	6AyYzNjtnOvK2tDXxgBmeMgl6w==
X-Google-Smtp-Source: ABdhPJy4FZ+lJBYT0VLw/cCoExw8oFO/eGSmTE0J6kCv5Xmwg1aEdEy78uo5rH1fbDJ0aEWyzUtTNA==
X-Received: by 2002:a63:5d4c:: with SMTP id o12mr3965166pgm.352.1606229267853;
        Tue, 24 Nov 2020 06:47:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:524:: with SMTP id 33ls7931217plf.6.gmail; Tue, 24
 Nov 2020 06:47:47 -0800 (PST)
X-Received: by 2002:a17:90b:1c10:: with SMTP id oc16mr5267138pjb.144.1606229267191;
        Tue, 24 Nov 2020 06:47:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606229267; cv=none;
        d=google.com; s=arc-20160816;
        b=UpARI8Ie03DpWqeZgVrkX0XbS+zeYHZMAJsJUjFJX49HQeJdQ3MVmTkt2jaOwaVHga
         JwMG8sYTBXkrNSpr4UiDFK7ykDAyP+mFQpmrtQ5yXX11h/tuytKas7BrzcV4/uh9uj+k
         NP+FokJDY64SvxLKNNX/Er0I4mSqI/E9QP06FEDEyQ9UJYsqcwtPMhR2zDGKSV+QT4EZ
         LQqrqxue7V3PGFhK7bOeAee2b9PYzuT3SbpbZMv0j6NcZRlGgi9hOxHNK4iSfx26uJzb
         H8E9tM7zOqoDJSTluOlIByzAd6ZZHyh11kRdHul5/zEGX4yldCH0ypzop7wdjitlLljr
         shQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=N6HP0padzrwKpk+9K0Zuy0/iTLo/BeVdWfOwa6hGINY=;
        b=LVBVg57pLHyqJXnFhPms8RkJ4qjfxneaCviBejfAY2WdeAiuDZ+4CBXOC4ZYJKXyH6
         Cn/T9T3Mx8IEEcciFrmA5SGT9mzaHg7CuUtnhczbd6rFcXlBa8dWw9AHEhxGclCaRWjk
         eBiMT7K06GuZtTScC/yb+lbuuqVS43dm1/nK3lpy0ZIDhYpmahMDa/+TCAoHoGvdlRdq
         Y2NZyKNCL2j0KmdPjbHKV8MTr/107cRbOeCgmJXYzHidivWQmwZ4TGZTTpLit0rmBmbo
         5nXidU0bLkUjc1kfIEGciARXQNZ7W7iRXCXp0Gsr2n8Cy4cPqU5XAyUvMBzTKSmo/Xw0
         lvUg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tWoPDQgv;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id w8si2035382pjr.27.2020.11.24.06.47.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 06:47:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A5073206F9;
	Tue, 24 Nov 2020 14:47:38 +0000 (UTC)
Date: Tue, 24 Nov 2020 08:47:54 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-sctp@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-hardening@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-block@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	bridge@lists.linux-foundation.org, GR-Linux-NIC-Dev@marvell.com,
	rds-devel@oss.oracle.com, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, wcn36xx@lists.infradead.org,
	linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
	reiserfs-devel@vger.kernel.org, oss-drivers@netronome.com,
	linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
	virtualization@lists.linux-foundation.org,
	Joe Perches <joe@perches.com>, patches@opensource.cirrus.com,
	linux-gpio@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-cifs@vger.kernel.org, coreteam@netfilter.org,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-scsi@vger.kernel.org, linux-afs@lists.infradead.org,
	netfilter-devel@vger.kernel.org, linux-geode@lists.infradead.org,
	drbd-dev@lists.linbit.com, linux-ext4@vger.kernel.org,
	linux-hams@vger.kernel.org, target-devel@vger.kernel.org,
	samba-technical@lists.samba.org,
	tipc-discussion@lists.sourceforge.net,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org, linux-input@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
	devel@driverdev.osuosl.org, selinux@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net, linux-iio@vger.kernel.org,
	linux-i3c@lists.infradead.org, Miguel Ojeda <ojeda@kernel.org>,
	linux-can@vger.kernel.org, linux-integrity@vger.kernel.org,
	GR-everest-linux-l2@marvell.com, keyrings@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org,
	nouveau@lists.freedesktop.org, x86@kernel.org,
	xen-devel@lists.xenproject.org, linux-mm@kvack.org,
	cluster-devel@redhat.com, linux1394-devel@lists.sourceforge.net,
	linux-decnet-user@lists.sourceforge.net,
	op-tee@lists.trustedfirmware.org, linux-ide@vger.kernel.org,
	intel-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org,
	dm-devel@redhat.com, linux-watchdog@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-mtd@lists.infradead.org,
	ceph-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-fbdev@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201124144754.GL16084@embeddedor>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <160616392671.21180.16517492185091399884.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <160616392671.21180.16517492185091399884.b4-ty@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tWoPDQgv;       spf=pass
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

On Mon, Nov 23, 2020 at 08:38:46PM +0000, Mark Brown wrote:
> On Fri, 20 Nov 2020 12:21:39 -0600, Gustavo A. R. Silva wrote:
> > This series aims to fix almost all remaining fall-through warnings in
> > order to enable -Wimplicit-fallthrough for Clang.
> > 
> > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > add multiple break/goto/return/fallthrough statements instead of just
> > letting the code fall through to the next case.
> > 
> > [...]
> 
> Applied to
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
> 
> Thanks!
> 
> [1/1] regulator: as3722: Fix fall-through warnings for Clang
>       commit: b52b417ccac4fae5b1f2ec4f1d46eb91e4493dc5

Thank you, Mark.
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201124144754.GL16084%40embeddedor.
