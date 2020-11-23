Return-Path: <usb-storage+bncBAABBWV76D6QKGQEKVLCWVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 8983E2C16BA
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 21:47:23 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id y22sf1208394oti.23
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 12:47:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606164442; cv=pass;
        d=google.com; s=arc-20160816;
        b=TtvrdVrjtAX6JmSEkMh9tK0oqazuz+ZD00QK+VRc0JrQOBXLyMJdIRT8zJJOcmAH/u
         UCionfV95KwxAYGtNKEd6fu2GrvXiswUAJftIDQ5c1huCm46WLGW4vP4U+Fs+1LS4Hir
         j39RIM2/3jkc2DS5GltrWqGiYHmssnyefO4D9R18LQNjCPuUmbraQlk6omb6EFu+iUx4
         /1IxMcn7njfx1rSyKbqZK4MDcHDT+RpQwoELdOF971n9IMe3HD9OmGHAvBirP5cz98PJ
         WBB8pWzGlSSTovuQdDrPWCg6Ous3LYTN+VTjGQoHZr3eBIIc5jcx+l7gI5tH1HOzO2Z4
         LzuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :references:in-reply-to:cc:to:from:date:sender:dkim-signature;
        bh=9PRLk+GaZWmJoYWQcwxfJVMd+kTODECSyXlIAivp86s=;
        b=DLF6kZnqysITObd5DVvaasD4uTB9xpcfgnsemBfYbCdJZrMDoQw4sFtZN7gL0ikReb
         iW6NzluUO24HdqgQXkd7BOncVdAk2N74czU3u7bmtNeLHreJVViJ27cNUVY1r1XMSMlw
         3nEvhz7txIX2NQYYqgaZwB8MIgleo39TDEjH+BrEOfG6Hi/G9nxW/we6HdGhHrSj6WAj
         wv/0eOJGir5bQJKpUGsDwZDV6WkNdmEN4MQYebufTLOSPS10nKySf6/4m7aXT5Y93tez
         GtCuAbPdRfPUf+VyudkdI3zryBNblggp17u9bK3a6AtjhLGT9Hy4XRCSJKT/equMdQXA
         p0LQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=fail header.i=@kernel.org header.s=default header.b=FiLdvTxo;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:in-reply-to:references:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PRLk+GaZWmJoYWQcwxfJVMd+kTODECSyXlIAivp86s=;
        b=e3uWVLqGKFLBMNQbKhlCrnSQusswolN+x4iG2U1pYKuFrXSMBx5cJHJTHzFgHe5OeL
         INviSCufKvTgUDaOdTHis1udoY9MpyAKrtVEGwwMCn6KzDrlZN2npLEfzP/at/c5qCK0
         w9aD6ao1DbW0mpcghHSxmVO45vgY1KziLCjyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:in-reply-to:references
         :subject:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9PRLk+GaZWmJoYWQcwxfJVMd+kTODECSyXlIAivp86s=;
        b=f71rIgW9pJbgrzUXb4DilRMuKWdBKcWdMUsA07ihXhxGOR2Ia7EE206Db4rMZdZEYg
         x8ayDyqIE12BK+PiOYDXUU3MfCkoB/MkzK+bHpIDpPr97dTpHC4TYiodUgUWbiyhGpyv
         6yDdyjyLABXplpJYkfgkDmV+JfxuPTrRvpm57dEZvL5j5iCOybINbys8ppxGnTNsw7Bl
         3p3h9U5WrWdvlelY1tbDBbVaPs/Fztt1F7gKGeSkPpBMHrStckt5rMbXK5VQCZyRHfN/
         hFtfuYCwrtvM5pCw4l5CCQfO5d5A8lmG6TPIKye+mm7OA2uJdnrR7t6yIAz6421ruIDZ
         lpvg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM53014VioaTMpwF52NvjEuPI7oLHVJEoO9OcFTgoqZmr82gaHdz0e
	JevQlsoM7aYLvvnFtOAgH/I3kw==
X-Google-Smtp-Source: ABdhPJzDljO8wKsGlgMEuSmgtHagg3UumNkuarwFLmc+AWJ8VI/wJ/uZX3gv3CJY/eZR+OGKN1ABiQ==
X-Received: by 2002:a05:6830:1493:: with SMTP id s19mr800664otq.175.1606164442429;
        Mon, 23 Nov 2020 12:47:22 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4e8d:: with SMTP id c13ls3695221oiy.8.gmail; Mon, 23 Nov
 2020 12:47:22 -0800 (PST)
X-Received: by 2002:a05:6808:8c8:: with SMTP id k8mr523671oij.84.1606164442164;
        Mon, 23 Nov 2020 12:47:22 -0800 (PST)
Received: by 2002:aca:50cd:0:b029:df:6bb:110a with SMTP id e196-20020aca50cd0000b02900df06bb110amsoib;
        Mon, 23 Nov 2020 12:39:12 -0800 (PST)
X-Received: by 2002:a17:90a:4a0f:: with SMTP id e15mr746239pjh.151.1606163950062;
        Mon, 23 Nov 2020 12:39:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606163950; cv=none;
        d=google.com; s=arc-20160816;
        b=a93BTlzQmJWnZIpvdwfgPOAWXrW2dAavhW980czjK6JiPobr4w4P6ILzvaK/Hdpnfl
         T7l7nl2K7/vB0Ee5i7l9bej1N21Hle8TcU0qAQinzHYblGVsYx5+SsAwHZ9T53/PFoGi
         3Mi6xOs3NQVeA0Au9B88O7UMxK2aKchIcUPS2mjTQ961c3NLdAQ/j5zl7toi/oGY5f1V
         57LnD5xK/PNg2jXbp6uOtetXLbgO125DG9r+NMTcxorULaziCRkrCQms6ggvlR6yvLk4
         u1WuIZdQW83oaslobN2F7jNpVECvqppNuiRYkk6i3q7jhQSTtEAmQ/3arP5LnXOb6GOo
         skaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject
         :references:in-reply-to:cc:to:from:date:dkim-signature;
        bh=sxtwJ8QU6eO/aKr+L9Q2bY9CSeekYKFl7grydrlHZ0k=;
        b=tFiCnWI/qnQA7ClE6J7x0XBaW1jNtt6G5N0ki+biINarlYWmmTSo09AVonP8beFNSh
         Wt+lP1oMPPpwyZp3eo8ZkoISvvRdD8bPxk/Zp88Bd2dWERunDFyKsDT5nmjxJhal7sp0
         qHmlisvHbqUNDWXrxz4fJNOGpZzVKbtWuJxAW4Au7uevzw6Zrhz9qeMxdP3mWvtqyZ16
         LNg2WEZkX5qiOdhmGEwo/lJFcbd2b40PT9Gnju43U5D1tpuoMDS+4/D4Xi27t7Er6+eo
         mKQ3fducqvxcsusUbJfCS4Q1/+fI/sGdt2vHK0pFpJGKtCawp0880NW+QlTkVUwWH4nI
         mewg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=fail header.i=@kernel.org header.s=default header.b=FiLdvTxo;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id j6si373388pjt.106.2020.11.23.12.39.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 12:39:10 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (cpc102334-sgyl38-2-0-cust884.18-2.cable.virginm.net [92.233.91.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1F8D920727;
	Mon, 23 Nov 2020 20:39:09 +0000 (UTC)
Date: Mon, 23 Nov 2020 20:38:46 +0000
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-crypto@vger.kernel.org, linux-sctp@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>, linux-hardening@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, linux-block@vger.kernel.org, linux-security-module@vger.kernel.org, bridge@lists.linux-foundation.org, GR-Linux-NIC-Dev@marvell.com, rds-devel@oss.oracle.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org, reiserfs-devel@vger.kernel.org, oss-drivers@netronome.com, linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org, virtualization@lists.linux-foundation.org, Joe Perches <joe@perches.com>, patches@opensource.cirrus.com, linux-gpio@vger.kernel.org, linux-hwmon@vger.kernel.org, linux-cifs@vger.kernel.org, coreteam@netfilter.org, Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org, linux-afs@lists.infradead.org, netfilter-devel@vger.ke
 rnel.org, linux-geode@lists.infradead.org, drbd-dev@lists.linbit.com, linux-ext4@vger.kernel.org, linux-hams@vger.kernel.org, target-devel@vger.kernel.org, samba-technical@lists.samba.org, tipc-discussion@lists.sourceforge.net, linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org, linux-input@vger.kernel.org, amd-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org, devel@driverdev.osuosl.org, selinux@vger.kernel.org, linux-atm-general@lists.sourceforge.net, linux-iio@vger.kernel.org, linux-i3c@lists.infradead.org, Miguel Ojeda <ojeda@kernel.org>, linux-can@vger.kernel.org, linux-integrity@vger.kernel.org, GR-everest-linux-l2@marvell.com, keyrings@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, nouveau@lists.freedesktop.org, x86@kernel.org, xen-devel@lists.xenproject.org, linux-mm@kvack.org, cluster-devel@redhat.com, linux1394-devel@lists.sourceforge.net, linux-decnet-user@lists.sourceforge.net, op-tee@lists.trustedfirmware.org, l
 inux-ide@vger.kernel.org, intel-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org, dm-devel@redhat.com, linux-watchdog@vger.kernel.org, linux-rdma@vger.kernel.org, linux-mtd@lists.infradead.org, ceph-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org, linux-fbdev@vger.kernel.org, netdev@vger.kernel.org
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-Id: <160616392671.21180.16517492185091399884.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=fail
 header.i=@kernel.org header.s=default header.b=FiLdvTxo;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, 20 Nov 2020 12:21:39 -0600, Gustavo A. R. Silva wrote:
> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.
> 
> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> add multiple break/goto/return/fallthrough statements instead of just
> letting the code fall through to the next case.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: as3722: Fix fall-through warnings for Clang
      commit: b52b417ccac4fae5b1f2ec4f1d46eb91e4493dc5

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/160616392671.21180.16517492185091399884.b4-ty%40kernel.org.
