Return-Path: <usb-storage+bncBDRZHGH43YJRBHOM636QKGQE4KQOU2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BA52C357E
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 01:32:30 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id f49sf551246qta.11
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 16:32:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606264349; cv=pass;
        d=google.com; s=arc-20160816;
        b=G1yFGdrEBbpMo9gWUVCO5LquQgpIBO7HdIGemtxRMZqA2h755LFmdbxmJwcgqMtaH2
         /kBvfsbDgKWJ8sxso6HA2P2McrM0vi67AoHlB46lT63A3jG3tabZEB5A4+vbCX7mlWEk
         0yZrZ45q825zHVfPD7P+ZVD3Ry5nNjSKsBGrcpsPY5xJerLG2VkRwzTC/gn26kgC4VwE
         zjxGFfn76Y3EI8SeVmv/RjBLogRH9+Eofz8Pndk2B5nU61B6JUP4gCcogsBSgFYXLp2I
         db+lrknlPg5Y2hVJcZxKlq8/9H6YF2uysFQEvnSWU5IT5VKDz4FxvT1FeNzQGcnlG7T3
         X6nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=w0lJWcEDQCjrzRnxg5ZLUThI3fUSxK/0uetk1LKcTRU=;
        b=msyFtL+yxtm6d0ROtxrzOF1FDMviH4SGbI7Wu85rKlX3kfarfod+EpfnBJSLNi7Ipo
         ++y1GOA/L6SBV+BGk98fcUnCSNi8/nzCyNTGThFC/tRqyxcX+NIanSYlOJudUw8sznmT
         HXvjOm1zhMaQwmFA9Vjc7S8W9PWSEG/Mhvd091pIiltLd1ZxPyFh8CY8foLTJeH/cgFt
         pb83wtQtdPlbSaWDkHIZJfwUcxUgaWQFlQekRLXJn23Py6Ct2s/qZ5CLSUp6VYExz4So
         jp5X3Zmu/OuPJqJapKc3iNJnNXs5XiZ679n61IOHD3JZYB9VyDXVMSwlUvEzXqQ6lYqw
         Wfgw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYdo15DH;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0lJWcEDQCjrzRnxg5ZLUThI3fUSxK/0uetk1LKcTRU=;
        b=ayWASnjNrJXvP1SbXVtKNir1WTAZ+I6SmYcLM/ShjY2P1m5sRaboKx3hFRJeOLBf9P
         iHfI3GoqdT+Qfmjw65VYFHkW4qWNnu/ypwQF+dMtkbOWSkPfu/THIhKMebRRQ7hOTgtL
         BXWOgAZEMYz7wg8Sy4ycFnDnV+1sq9cK+lrMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0lJWcEDQCjrzRnxg5ZLUThI3fUSxK/0uetk1LKcTRU=;
        b=la7nUGHNB8k7S8XhIHvJUWpaLFlcjbsw6jOzpS/FRmAZlMcpYFk0ISXMTsoC24dgfB
         7Xom1rkp9aaxzmxVInWw9CE7gJCOx+YGBS2zN2lDWvvvbdz5ULzZPdQAC0vRhC73StmR
         2gAADs885GwrqdaHiisPX0QMKGBKtfyn1fbgk+pgnVl+X5mYhCTTKYocfMRznrHS0L86
         H0JSyNpmkqDj5AOUG9KvqfKLEMO2eJdFGTIY4a9lVety59BnkjL1CYfv8WbZG1HMWwt9
         6xZGg5N/h5EWZQpeDM8ab7CycjqLAwLQBNcwVsQp2/XA6ym+1CeDL6dfgQzatyhgECcr
         DN2g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531DhpN/STIk4emclfYRCxumFMkZU2suubYug+O+VrBfUv9C4MY0
	A7vkzsPKykGxtxgWWtkf0rFp/g==
X-Google-Smtp-Source: ABdhPJyNTYx3+ukZz3vhe91k6FWRRxINsOHigJySRrUpEyTkAnqlN/BUEHxi57wmni67x8beIdGnZw==
X-Received: by 2002:a5b:40e:: with SMTP id m14mr785046ybp.33.1606264349735;
        Tue, 24 Nov 2020 16:32:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:c553:: with SMTP id v80ls358426ybe.2.gmail; Tue, 24 Nov
 2020 16:32:29 -0800 (PST)
X-Received: by 2002:a25:c054:: with SMTP id c81mr1131712ybf.139.1606264349158;
        Tue, 24 Nov 2020 16:32:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606264349; cv=none;
        d=google.com; s=arc-20160816;
        b=iAW59qHkvWJWKm6smGfYgSIjIEmHkjfWEczWSdfP9ziFV2y/nEJ1SE0LICBhQ7yfuZ
         alqmj6USJ0hTmoVoDt8J0+aBIExXyJpXMlq9KxJ5xeYZ9ed9e2MVQMQEkVi1LZctK8XD
         OMiBYls+RhOdar+hH95ed9sWsS/xB94ZSuJ3dstPlGiZXwfKwkk8Y+Lis4iA/x406R/U
         fl9xX1ency02REteAQa/NvH3J34IhLvKq7IbWgiStJUOEMJ9yaW20vQp9hxuLdS1b6Eg
         gpK4IZlO40P7dDtEM80yB/zBiP22B+1BqP8uj2YPJU2hxP6UobFEnD4qgYa8QrX/Unxz
         9lYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QqqubA90NyDjnD5SH+OxnZbso0TzlLiuZ5gzRUm0zsY=;
        b=HqouttNTYKPo/3LoveVSGhh5sGGElQFk/KEk7fQ6ZAoGTbmsLTwAIlci2KBAtWgs1U
         EDPNXv1PvbJPJHUyC68p/J12AUmoWzLw/v+OhNit916rx7bm7oQIB7q7uucZyuPwzG8y
         t728l2yp9S8o9wM+STSiJvq2qsOFRutdxh35+pN8r/EUxcDFWCYtnGNxhy/LAPNTJlB3
         zn3e2W3yJN7f9YreyMTLZv/Q2Vk/UMnD6tuBcdRX20fHGHO0uHkwfX/zo4gdpa1It5uO
         lEw0YItMMm/7qzs7ABEXplLybuPi73macCioSx+uZClBOHZ2jTQ2j8yiFurbo/gawyoi
         FEuA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYdo15DH;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e195sor126954ybh.144.2020.11.24.16.32.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 24 Nov 2020 16:32:29 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:5f0f:: with SMTP id t15mr779915ybb.26.1606264348932;
 Tue, 24 Nov 2020 16:32:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com> <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
In-Reply-To: <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 25 Nov 2020 01:32:17 +0100
Message-ID: <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	alsa-devel@alsa-project.org, amd-gfx@lists.freedesktop.org, 
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org, 
	cluster-devel@redhat.com, coreteam@netfilter.org, devel@driverdev.osuosl.org, 
	dm-devel@redhat.com, drbd-dev@lists.linbit.com, 
	dri-devel@lists.freedesktop.org, GR-everest-linux-l2@marvell.com, 
	GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org, 
	linux-afs@lists.infradead.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-arm-msm@vger.kernel.org, 
	linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, linux-fbdev@vger.kernel.org, 
	linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-input <linux-input@vger.kernel.org>, 
	linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mmc@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org, 
	nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
	oss-drivers@netronome.com, patches@opensource.cirrus.com, 
	rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
	samba-technical@lists.samba.org, selinux@vger.kernel.org, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	usb-storage@lists.one-eyed-alien.net, 
	virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, xen-devel@lists.xenproject.org, 
	linux-hardening@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DYdo15DH;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Nov 23, 2020 at 9:38 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> So you think a one line patch should take one minute to produce ... I
> really don't think that's grounded in reality.

No, I have not said that. Please don't put words in my mouth (again).

I have said *authoring* lines of *this* kind takes a minute per line.
Specifically: lines fixing the fallthrough warning mechanically and
repeatedly where the compiler tells you to, and doing so full-time for
a month.

For instance, take the following one from Gustavo. Are you really
saying it takes 12 minutes (your number) to write that `break;`?

diff --git a/drivers/gpu/drm/via/via_irq.c b/drivers/gpu/drm/via/via_irq.c
index 24cc445169e2..a3e0fb5b8671 100644
--- a/drivers/gpu/drm/via/via_irq.c
+++ b/drivers/gpu/drm/via/via_irq.c
@@ -364,6 +364,7 @@ int via_wait_irq(struct drm_device *dev, void
*data, struct drm_file *file_priv)
                irqwait->request.sequence +=
                        atomic_read(&cur_irq->irq_received);
                irqwait->request.type &= ~_DRM_VBLANK_RELATIVE;
+               break;
        case VIA_IRQ_ABSOLUTE:
                break;
        default:

>  I suppose a one line
> patch only takes a minute to merge with b4 if no-one reviews or tests
> it, but that's not really desirable.

I have not said that either. I said reviewing and merging those are
noise compared to any complex patch. Testing should be done by the
author comparing codegen.

> Part of what I'm trying to measure is the "and useful" bit because
> that's not a given.

It is useful since it makes intent clear. It also catches actual bugs,
which is even more valuable.

> Well, you know, subsystems are very different in terms of the amount of
> patches a maintainer has to process per release cycle of the kernel.
> If a maintainer is close to capacity, additional patches, however
> trivial, become a problem.  If a maintainer has spare cycles, trivial
> patches may look easy.

First of all, voluntary maintainers choose their own workload.
Furthermore, we already measure capacity in the `MAINTAINERS` file:
maintainers can state they can only handle a few patches. Finally, if
someone does not have time for a trivial patch, they are very unlikely
to have any time to review big ones.

> You seem to be saying that because you find it easy to merge trivial
> patches, everyone should.

Again, I have not said anything of the sort.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72kqO%3DbYMJnFS2uYRpgWATJ%3DuXxZuNUsTXT%2B3aLtrpnzvQ%40mail.gmail.com.
