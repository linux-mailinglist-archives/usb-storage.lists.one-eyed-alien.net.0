Return-Path: <usb-storage+bncBCF5XGNWYQBRBWHU6X6QKGQESIKPPRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2942C32AF
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 22:25:46 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id c24sf8397889pfd.13
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 13:25:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606253144; cv=pass;
        d=google.com; s=arc-20160816;
        b=zE/vKyxAa7x6fVcmjEfgHAwI3e4qv82QXA3SlOEzvtBBfSQ+PcU8HRhWyncbA3gOra
         hx/dJP5fZZPkvqXAauxvf2WsZRxXwwovPixRLTjPnBPc+A8nMDnLtk4Z3irFWXSubGzv
         SFQAxGBViiBM+iMjoDJ1RUjbQk7ZVwyGO7XA0A7UGd0602NvfjER+aXVEmoXLxMLcofj
         hB+WnrrPEq2OsfeepQ1oG6ffcN3VQy0tL8gMFGdzGsLyCKTU5DxXeEXI5QPvZWusvJ4B
         /8m48CdtA8jlz6Yk6e4MFYpLmgW8CtCTb9uTDUvdAaxPY8oZUd7k+anDptuYXF77wuvP
         U4YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cXcYwlntCkuFs1MYm/Ls8RRJck5pezcLeodEq2SVo1k=;
        b=lKEWJA1ep7oqwZd4HZA2LbJrpYl7g7vNP1LCv3iPGEq+wzrwyuwvzQGyBZCg9nGKJg
         p1TDZ9mkoRS0jwrGzx9s+ppd+hOp6VX8oeTXbp67WHRttYhDZA8FE0g/2liPHM6tVa/c
         O/q1daR0C1mO9jdsfrVLTlcltgMbBfWTlK23vnKrJJOUiUPqI3Vehg1tjFWuBKeSJkfP
         pmhJqKfQG/yQS5c5iHHwUXpnmMAQNzd3VmW8Or2CFlJaOJafYb6uHFBMa6oCAvMI25FP
         LynCY4KBeVdbS2hYSDblrx5r9VD3cP5GiJ7HFUBG9A/8qa0hxxDKi6/YiyhPchvL37BV
         0qcg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="oKmDT/E0";
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cXcYwlntCkuFs1MYm/Ls8RRJck5pezcLeodEq2SVo1k=;
        b=WXV9R00yuYst+oGGXTlNdboJ/PuGCioCKQtQR75hYdvhOvUCKdWGBgBK0GB6uTfcxj
         nR5cJJ4JRy/vCAjEoh8l+m8BkS6Kv5kxRcN1r1uV/m54BOXCrO/YcXnUZr062uUdsZ9o
         gf1Z19JuE+VHryO7xgYvdUex3ZG76dQO0PMXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cXcYwlntCkuFs1MYm/Ls8RRJck5pezcLeodEq2SVo1k=;
        b=SnE3sZDc2VdFV2vMbcNaPlM560MdXBEf6VcMeRIjfh2zFGb+2eY5b4ndQiRJCqszTc
         GNy7zximf2u0d0JGXOaMc9kC9Koo7Fd74il5w5sk89EHh5c0ajeYMHUd7BtX4YdIRZvh
         3B2oDiUbmdiYWxJ5FdRBLq5uU5oEzSpqM/nAJUKbrWADeCgaDspgOB/JeM5cmMyWRki9
         qIOcdyMSo4K/+bfbmGoG53YvOA/vdEDsr70pNbd4lw3GRNFwhFXn0OIyQsYittDDWx9E
         EZ4AfIKYwAEsd+bNDyAeYkHxeyJmgU4nO2Ys4rbbkalTY3qUHsanU8UkrX7wrUufEFGY
         pxbQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530OqGl4GH5o/P4wcD/XWc1LsckrGF3GH4KLEC16KPoSMWZ0otx/
	d4OJambGFvi2Fgd8oOlH0OSC+Q==
X-Google-Smtp-Source: ABdhPJzt3ORO9zzj3zmccJd6hsRXoob4QxckAEQaY/4Gk6sfyn/aUdD3tQJ10h9IP6zi6nIST7jflw==
X-Received: by 2002:a17:90b:784:: with SMTP id l4mr194041pjz.146.1606253144809;
        Tue, 24 Nov 2020 13:25:44 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:7b42:: with SMTP id w63ls43132pfc.10.gmail; Tue, 24 Nov
 2020 13:25:44 -0800 (PST)
X-Received: by 2002:a63:1c53:: with SMTP id c19mr277447pgm.392.1606253144031;
        Tue, 24 Nov 2020 13:25:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606253144; cv=none;
        d=google.com; s=arc-20160816;
        b=Nakzp602MLkyjcXJgT9o7Jxc5zW9O/lPCkpqBrPhVj3DWAi3Fpz+4UubwycEyRVxvc
         Q4k6JXqtkykNG+2BMLOMzVbHq7J4j3Vfn2tk/mlqx6/UtgglcpvrOiFQQ01w5hudfdTL
         F1JttDBgRw/yBN4ZJ+iPH3WtfkX//kcNzdk6gmkDKcno6dXOzCA/EkL3NJo2AdPKpwFQ
         A1rN3nsxxIr1TYzxCpexCMaTLugn1SX+EL8XwSj3Gn3kQLRQb5fSlEp5suyAaDATGcyI
         zSAoCYABGd9Lw8YAU4I/pBrOJB2yw5ipVx7Gs/l6ZrEhGOK1wT/6WmTXjQ2DYX9oFnT+
         2oqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hc7xHQdcWqcI1RL6yWHK3qM7+D3PcB+9wJ1f+Y4kOZ8=;
        b=gDKC/kcEjEU8uRNwV3e5UM0NYMOocrntVU5ItiK2iP8zRsK75dGgMlicd/Us0z3VAx
         sHa0v0erXuwIfXm4iNIYoPNbf3sQkpdikGMlHmW1KWQles6PVpA9SrY6TwU2aIdpCSz2
         9xOdcBQ2UU1KfZaeWidUFMz6a++SrdXW8RFprPeH6A0iUTmXmcy01YWIbzm7G0EjQVX1
         L7yX/KWMOJwJqNWe3Es1qtjdc5rYVI9FVPD8xglsNhZhsP2zrTQw6DIwV1mDQRXMEXHE
         XTd5CKwYQfUryzJTNZo7HXa/NF/W3TwBW20e2GCW2Uxi8jyQQ/P+afq1QJ5WizqDjZx7
         6MvA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="oKmDT/E0";
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id mj24sor150279pjb.40.2020.11.24.13.25.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 24 Nov 2020 13:25:44 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90b:3505:: with SMTP id ls5mr176054pjb.55.1606253143764;
        Tue, 24 Nov 2020 13:25:43 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z68sm129381pgb.37.2020.11.24.13.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 13:25:41 -0800 (PST)
Date: Tue, 24 Nov 2020 13:25:40 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, alsa-devel@alsa-project.org,
	amd-gfx list <amd-gfx@lists.freedesktop.org>,
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org,
	cluster-devel@redhat.com, coreteam@netfilter.org,
	devel@driverdev.osuosl.org, dm-devel@redhat.com,
	drbd-dev@lists.linbit.com,
	dri-devel <dri-devel@lists.freedesktop.org>,
	GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
	intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
	keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-arm-msm <linux-arm-msm@vger.kernel.org>,
	linux-atm-general@lists.sourceforge.net,
	linux-block@vger.kernel.org, linux-can@vger.kernel.org,
	linux-cifs@vger.kernel.org,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	linux-decnet-user@lists.sourceforge.net, linux-ext4@vger.kernel.org,
	linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
	linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-input@vger.kernel.org, linux-integrity@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-wireless <linux-wireless@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	netfilter-devel@vger.kernel.org, nouveau@lists.freedesktop.org,
	op-tee@lists.trustedfirmware.org, oss-drivers@netronome.com,
	patches@opensource.cirrus.com, rds-devel@oss.oracle.com,
	reiserfs-devel@vger.kernel.org, samba-technical@lists.samba.org,
	selinux@vger.kernel.org, target-devel@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net,
	usb-storage@lists.one-eyed-alien.net,
	virtualization@lists.linux-foundation.org,
	wcn36xx@lists.infradead.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <202011241324.B3439A2@keescook>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="oKmDT/E0";       spf=pass
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

On Mon, Nov 23, 2020 at 05:32:51PM -0800, Nick Desaulniers wrote:
> On Sun, Nov 22, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > > If none of the 140 patches here fix a real bug, and there is no change
> > > to machine code then it sounds to me like a W=2 kind of a warning.
> >
> > FWIW, this series has found at least one bug so far:
> > https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/
> 
> So looks like the bulk of these are:
> switch (x) {
>   case 0:
>     ++x;
>   default:
>     break;
> }
> 
> I have a patch that fixes those up for clang:
> https://reviews.llvm.org/D91895

I still think this isn't right -- it's a case statement that runs off
the end without an explicit flow control determination. I think Clang is
right to warn for these, and GCC should also warn.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202011241324.B3439A2%40keescook.
