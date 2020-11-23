Return-Path: <usb-storage+bncBDRZHGH43YJRBOED576QKGQEEVX6ZFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A82C0C8E
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 15:05:45 +0100 (CET)
Received: by mail-yb1-xb47.google.com with SMTP id a6sf23494391ybi.0
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 06:05:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606140344; cv=pass;
        d=google.com; s=arc-20160816;
        b=d+C192lSVZq35I7xxp+S5eA/9Sit/AKvNh3cSrkbAp9pOxdMGzg1Z+E4BaAisJGNWN
         ROMVeMzJoxl4ufrIMMtZtvpb/lhQQZHj9UvpvvkYkrHFehl+8l/tBAIdMktYpvVg/1O2
         Lcvzlt4q+ERBVVU0ncVOYcekPZ6LuyGB5v9k9xs7sfa4ChxqqXw40q9FxLukyCA+Mzy0
         evKX1b7eofzCEgYm+/PF+OE2O5s1BFZ/qvN3sKz/tuWLeGli0jYwPdXibX6UGPuOseIh
         RWlhaoukssD9v+fB2N6gsJ+5ClZrf8+NJ9MSWKWyV3bBZ+j2p5mdPhfasA0MxO7Xbxxc
         JDmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uEuQ2JAVpFKI+n9SR+sMSF8MOGjnrkUWN+68fJXk+xs=;
        b=vGz72XMUAA28JG9O1dhrC2mukvWW/8w+VWCBHj6weYkUYs9sHX2WxLxKsCtjyzIg7D
         zTXpi+l3gCeI4Fgy2wXNSZvQx7UTtoIXtt+rXpewKlHpVZ/aMvB8iAiHI9qzmnZbyA3w
         K+A1yGfOcqtRs939wuil+3/p7Bq4acNFjlkC6WFl0sTWEU+9VxHfaCXdhIJxwkgpEjFL
         O3NQzdj4hndtv9o+9wkQEBem6i6GHri6qtHhLINK4rzeSOSP/yLo+Qe0L0yY9D6rpUet
         53X3TBESvoeXJp0sxYi0jF4Y06fyfTeikXFGCVeKepEuqQrvWWU5lPS0n1P0yOAH7Hw4
         /Z8Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uc3VE1PZ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uEuQ2JAVpFKI+n9SR+sMSF8MOGjnrkUWN+68fJXk+xs=;
        b=WfIoURZ2gAA0zLVD3jEKohkevLeH6FQ1KaElfAP5XQ8+dUaFOFKuXzeS/OybMNfof8
         XwXN672bPScsFFP4sx/FOVFLwT9p/j31ImFXoPj+iQVYxWt3iuG4sQ10kXp2jNw89Iqb
         IRn6vpdoxbdEvRdlh5HTFCHIMzJD/YstB+EbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uEuQ2JAVpFKI+n9SR+sMSF8MOGjnrkUWN+68fJXk+xs=;
        b=PQOAMAgUCXOGFf6KVR+1JsW0iT4OqOMebPS3f+t/wgLpu8UgU1YY1yAMriOokzg1YP
         DotAYjC8e1vao290scpcKL4PvAgh6I1Xfh88fx1OA5+mGwFOCRjzXwn/CPxomQOLJHpl
         bEfPYQoRx6j51nMXGwUiJUrJCqMlVx4p5Y7SkIWMCwdRGO7RkagIr/NubzbW7nTo56yQ
         RvNP4EwSEr4RWdsBO9HC+k1IujAPdWWGre93IqfgHAmD7+pDI1NSuZGnHUMBw/T2A3uA
         Tgs6UucGFXfxIq/K/OyER6Nhp6VsLs9fnxa1uwoQBXvSbNzYaj89sIcCPoCFVhj9LKOX
         TBKw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531Ubvuvk/gI5rBqVNMG4pUfARzxamnqip6RAohQxNvSycgvYCyU
	5GaOkQnLOSa+uFtIZ1xQIF30RA==
X-Google-Smtp-Source: ABdhPJzDvj9X5bWmZIn1Qhm3F7EJUVi4cmn9FYT5xIr3M6Rne3ppHZutVn+ltyzezB9MZK3P3cXBJQ==
X-Received: by 2002:a25:d846:: with SMTP id p67mr46631467ybg.221.1606140344340;
        Mon, 23 Nov 2020 06:05:44 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5b:7cd:: with SMTP id t13ls15621ybq.8.gmail; Mon, 23 Nov
 2020 06:05:43 -0800 (PST)
X-Received: by 2002:a25:c6d7:: with SMTP id k206mr45708528ybf.244.1606140343629;
        Mon, 23 Nov 2020 06:05:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606140343; cv=none;
        d=google.com; s=arc-20160816;
        b=iqTu26JPoc//f1NN3E8fwUmQBU4wQqMe3/3GRAxx96pFtLWPkcS3D5T791mCcC56K3
         m6QuqDob4cs5EgVOhnFMatFYQ3QYk8wnJjhnQheE66mjmcPPytB/0PbJmct5P6ze1Fzn
         HvmNAq9Eg4qP/PUFEuzqLA0+NQLBy0a2WrWfD9qNERFgj37JjMqsr8RleRgLYF+ss24X
         7Z8vX8G2Z95gK91wOGxCoIQeWXX0O9jtqUnP/6xJv/V1aZrRl0n2+ZKIa4rPbQKLhh19
         8X3BCuVig2ne4YsBClC6W+z62AeBRHAwkTFsyMpTrQsj4aNzTRXmxreS+0/xHkRPMq7d
         T9hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RhHqKgQbKUW77nc47JuvCnp+w8QNxENxQLSt6AHkTqQ=;
        b=nUPokyqYe9H9p/CAFhffzuzJkGcqdlJUE+0683Tcoji/ujPmZ0mXP14T0CLmrHZe29
         b+/rnWhMLZZoraps8Cf2aZqsz1h9+zM0NezX78v6zTOEywQVuteSd06NeqZDuuPUntVl
         QeBAF68RWdYI1r21VpT+7rLiyhspLYGn4tH3bLwlxYpvqOIN3pU2Yupp49w0KnF5VFdQ
         v7Kx6xmCiL1U6Hl7MiG7GALgr3/jO6OPVayCqBQ9t0p/frSCuvJCxJm0NIQ35XBl0Ach
         yQsZOAoycSSF27dCzDN/7rMKEv3DOilJi6AN5VRRcsJ0OLoIWJPfOk37u5WYyZSG4R3G
         tsUA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uc3VE1PZ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id 14sor3391860ybe.182.2020.11.23.06.05.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 23 Nov 2020 06:05:43 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5b:40e:: with SMTP id m14mr35121900ybp.33.1606140343388;
 Mon, 23 Nov 2020 06:05:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com> <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 23 Nov 2020 15:05:31 +0100
Message-ID: <CANiq72=z+tmuey9wj3Kk7wX5s0hTHpsQdLhAqcOVNrHon6xn5Q@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Finn Thain <fthain@telegraphics.com.au>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
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
 header.i=@gmail.com header.s=20161025 header.b=uc3VE1PZ;       spf=pass
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

On Sun, Nov 22, 2020 at 11:54 PM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> We should also take into account optimisim about future improvements in
> tooling.

Not sure what you mean here. There is no reliable way to guess what
the intention was with a missing fallthrough, even if you parsed
whitespace and indentation.

> It is if you want to spin it that way.

How is that a "spin"? It is a fact that we won't get *implicit*
fallthrough mistakes anymore (in particular if we make it a hard
error).

> But what we inevitably get is changes like this:
>
>  case 3:
>         this();
> +       break;
>  case 4:
>         hmmm();
>
> Why? Mainly to silence the compiler. Also because the patch author argued
> successfully that they had found a theoretical bug, often in mature code.

If someone changes control flow, that is on them. Every kernel
developer knows what `break` does.

> But is anyone keeping score of the regressions? If unreported bugs count,
> what about unreported regressions?

Introducing `fallthrough` does not change semantics. If you are really
keen, you can always compare the objects because the generated code
shouldn't change.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72%3Dz%2Btmuey9wj3Kk7wX5s0hTHpsQdLhAqcOVNrHon6xn5Q%40mail.gmail.com.
