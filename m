Return-Path: <usb-storage+bncBCCZHPMXYQEBBGV47D6QKGQEPZ2MX3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A7A2C3B8D
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 10:04:28 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id 202sf1703807qkl.9
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 01:04:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606295067; cv=pass;
        d=google.com; s=arc-20160816;
        b=PseYQUnx+pcwksZ/ZHdk824T8xO5J4U1vlkMJDWmjKmo/ET/8/Vp1stIpxkbJ5HnxR
         S6PPUsRDbKuiS9Hhu8u+28ilKwT9mjz1rsh40y856Q8D04ypPHjthDZia/zye+HIk+7C
         HsevgYZYNXI0b1oOfdRtV2fgLMbknxc/Lu2FZ5fxiBc8z+yYV865stNc0OIgBrY3ynF0
         rVncxalqyHhE5tQO2SyLFjO71OFupHTEim7QaRop3SGKGoVzMy3CQqHHo8v6rzIbMoM9
         eRlixYzITpi29oIxIseqsxhO7Vsib1XNA2Y0rmXb7pwVF2BVyZyUQyL9HF1Wi5PD/HXc
         HrSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TMqFX0vLPvTQm/nII//Zlr/VupNDKiVBxX/VITmMSc0=;
        b=nYN4Qi0wzMzfK3fQHQfFDx8nhW1UgN8FvYEJiNqiu8Z7hWwlhFm+LoU/ITRCv35hW7
         HPOvTp1jA0u5+C1/xq1IVOimJz333y/godUelXbT8G4P5n6fyj08m2vCUKNNV35UkiFK
         Dy/xpO33E77P0rPu5v0nHBZfDAYboUAfwor50Y1rCa77kBRxdJWVuxKw5x5Rk118Tjfl
         WG/7jEDjituG9Cp78k80oqbw0e6u0tEY025+/Ghza3Up5X2oH1/+YOTO4w9HYOdLU3c4
         bn3xZo+qTs3SMtqaWDcHLktgvCCmVMjx0Osb5YbxFVtD8hbP+Qa1eF8LgOe982wFEqwq
         IXmA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=SJYLrwiK;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TMqFX0vLPvTQm/nII//Zlr/VupNDKiVBxX/VITmMSc0=;
        b=iuiYzVSrMn+NH74OJdlF8teNmnYGisJFHXzwAwG06b7ExzQM4HzBolAiBqXEwN3E0l
         MbgaFaYKnUPnb7s9TBy2v/nmUvqtd3dytRMrjg0klXN24O1i2BN0/jcnNwMeZhiwhj38
         5ZNfzke26pka87J8foPSIbqCDD5j3+GF8hDuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TMqFX0vLPvTQm/nII//Zlr/VupNDKiVBxX/VITmMSc0=;
        b=HL7vvEqgX8Rh3l+2FFKgHbd1oYfAosdKNu8EcNHFfrXH8VFfZvNxDC8mAyUPn7vV6A
         fPvhfG818zzq5xyMtsq+9LCRJN3Sqs7e/uH72O34G0c2RYiHybdUTaEtIVB+jB1K/tsP
         XSgUYOdVRPzgQv9VUFkkbQLZUTKvjOxhvViPahv3QshurP6yP9oVFY0zimoZjX0TIXxt
         Xj5HqWRuANyTklHlsYzpxtpc+LyZxDnKj9r4zyiE8eDffsVzQvF+sxtv5lYVO/WqJdXH
         MvCxj4xSN5CoPxfhjMYmSl0mmp7ZMcWjeV4+RTBQFK/RsHem56XZ85Db4CsrgKUSk0nH
         mu3g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5320HQMydjdaLAukTcNjXCmwbU3DXAl2Nx595d1BEobEhVsunMAh
	cCas3+1ytxm7x3nc2Ld3O9b2Pw==
X-Google-Smtp-Source: ABdhPJzDDR8hVwzddetB8KbkWp5TKPKj+u1GaJRqiE60159lA9T5oy3xSSj87x+HbWP+eTjXS8azrQ==
X-Received: by 2002:ac8:6608:: with SMTP id c8mr2107237qtp.145.1606295066984;
        Wed, 25 Nov 2020 01:04:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:2726:: with SMTP id n35ls681156qtd.3.gmail; Wed, 25 Nov
 2020 01:04:26 -0800 (PST)
X-Received: by 2002:a05:622a:14c:: with SMTP id v12mr2087610qtw.11.1606295066500;
        Wed, 25 Nov 2020 01:04:26 -0800 (PST)
Received: by 2002:a05:620a:24ce:b029:173:96ae:c3b4 with SMTP id m14-20020a05620a24ceb029017396aec3b4msqkn;
        Wed, 25 Nov 2020 01:01:17 -0800 (PST)
X-Received: by 2002:a7b:cd11:: with SMTP id f17mr2655722wmj.127.1606294876879;
        Wed, 25 Nov 2020 01:01:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606294876; cv=none;
        d=google.com; s=arc-20160816;
        b=aj8YPaPSJ6sgOfuxuYKRy+IMOpP68XPVz2K0ALDxaKwqr64xcRjHBpab1CL3MWbihV
         Y6E0qtuDqhea9J+x7qYr4w3a9gxENM0ztR1WQuTVSUlqr8zDeHYCKeArrcRhIDBUbYAj
         5Z/PSA6eknXYNbCWUbjh/QTr9YpKC0uck44+XAFR6Zxin6HUd/zya4R0hMN8SV33UZqH
         pHQaHnva79OmfWNdbz8uayWsyaYV8Lr3k0Lkpy9+AFNV9EvLclovP6jqkzpGY0o8uo9O
         CydhgbdG98C8GFxJOAOCLpVy+iljbcmrZ2M4PYEt/KpYRre1KWbnzPLIuUE1ZZp2Mrz8
         I9Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1rum+NYIpyvqKg2LoNa25cGZeVxVC+fZybr6kQ9VWAA=;
        b=MNfzA+9YnhKPC5KpIx959yFExbe0nVPjvnLc9vC96P6Kx4UsLWqOiejMbdbKfZ6is/
         NRxRCKXjvfNeB5jk55gUmyIYAp5l56Z4hMnQY3NpNF/78dN/ZMA2O7e6FJ+3XLUfteoD
         LMe4dPNfI+lCtW0Pe7smAlDnjl/qxtWuuFbQaanMGluPckQiiB6URzTpikb0hL42Tsu6
         cWAzmsu3kFDucAhEJplR8mIKvrCodypxrTaZlcOZtLbmnJgWx4qLfcKLja2FRNpMxk2N
         iD9rFAPb6IG96R1KohgW42zEJ/e8/VQwsyovTNyQQ0vd+VrS9FFOWvDW0YUaM1GF1N6L
         L/Cg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=SJYLrwiK;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [2a02:8011:d000:212::1])
        by mx.google.com with ESMTPS id r63si1657112wma.111.2020.11.25.01.01.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 01:01:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) client-ip=2a02:8011:d000:212::1;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id C2D44C63FB; Wed, 25 Nov 2020 09:01:14 +0000 (GMT)
Date: Wed, 25 Nov 2020 09:01:14 +0000
From: Sean Young <sean@mess.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	alsa-devel@alsa-project.org, amd-gfx@lists.freedesktop.org,
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org,
	cluster-devel@redhat.com, coreteam@netfilter.org,
	devel@driverdev.osuosl.org, dm-devel@redhat.com,
	drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org,
	GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
	intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
	keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-arm-msm@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
	linux-block@vger.kernel.org, linux-can@vger.kernel.org,
	linux-cifs@vger.kernel.org,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
	linux-decnet-user@lists.sourceforge.net,
	Ext4 Developers List <linux-ext4@vger.kernel.org>,
	linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
	linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-input <linux-input@vger.kernel.org>,
	linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	linux-mmc@vger.kernel.org, Linux-MM <linux-mm@kvack.org>,
	linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201125090114.GA24274@gofer.mess.org>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=SJYLrwiK;       spf=pass
 (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as
 permitted sender) smtp.mailfrom=sean@mess.org
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

On Mon, Nov 23, 2020 at 07:58:06AM -0800, James Bottomley wrote:
> On Mon, 2020-11-23 at 15:19 +0100, Miguel Ojeda wrote:
> > On Sun, Nov 22, 2020 at 11:36 PM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > > It's not about the risk of the changes it's about the cost of
> > > implementing them.  Even if you discount the producer time (which
> > > someone gets to pay for, and if I were the engineering manager, I'd
> > > be unhappy about), the review/merge/rework time is pretty
> > > significant in exchange for six minor bug fixes.  Fine, when a new
> > > compiler warning comes along it's certainly reasonable to see if we
> > > can benefit from it and the fact that the compiler people think
> > > it's worthwhile is enough evidence to assume this initially.  But
> > > at some point you have to ask whether that assumption is supported
> > > by the evidence we've accumulated over the time we've been using
> > > it.  And if the evidence doesn't support it perhaps it is time to
> > > stop the experiment.
> > 
> > Maintainers routinely review 1-line trivial patches, not to mention
> > internal API changes, etc.
> 
> We're also complaining about the inability to recruit maintainers:
> 
> https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/
> 
> And burn out:
> 
> http://antirez.com/news/129
> 
> The whole crux of your argument seems to be maintainers' time isn't
> important so we should accept all trivial patches ... I'm pushing back
> on that assumption in two places, firstly the valulessness of the time
> and secondly that all trivial patches are valuable.

You're assuming burn out or recruitment problems is due to patch workload
or too many "trivial" patches.

In my experience, "other maintainers" is by far the biggest cause of
burn out for my kernel maintenance work.

Certainly arguing with a maintainer about some obviously-correct patch
series must be a good example of this.


Sean

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201125090114.GA24274%40gofer.mess.org.
