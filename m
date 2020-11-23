Return-Path: <usb-storage+bncBCO6JJULUYARBGWV576QKGQEKIOZNXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id C04252C1128
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 18:00:11 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id t3sf9040632oij.18
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 09:00:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606150810; cv=pass;
        d=google.com; s=arc-20160816;
        b=eQTCsThSACBT1j9UiXIYHyy01dlT0GONj8Y2WUZNPtdCF+FY2wRK8s4HzD5Ch6gy51
         QnVLnncwZZCH48zeeg/RPJSon9e2cl4Xz07d1/6NtwgpwRZKiRsog6i8bCcCEkGwrF95
         VR2Vys+C7TKrRm/0rUJen2RlENcqqt6kDiT7+zibEIAnvZw0lLZ5pGeG2kCwmXjOn8Dg
         HTC42xvoylIT+7mmqCHQRe/41XhqLQxiDkBfUNJGdCv2l+5MgummYkTDqadYgZY02B31
         EcPYa7I6o+snb0+e8+hDd4U34Lf8ncNdQ6v8gWgQapaeJI+S124Wy41amOyx3c+/DHjl
         9XKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=w3uMnmN5NL2NR0E3lAmIQN6Zoo4zlmKr6oTi8MO9TgM=;
        b=zWhHfQiAi+IzrLWU30IzYww0flEvaouecTCOo8IEhenn24N3TAc7oRumDHQmUixfYN
         vObsjG85sc9NGks+XwSjE8Lt52/sSrH+dX025cB0QmxR4+tQ30o5DaQiYhqrhmNsDnVV
         nv38OsHRyZ9xqwDrYIZHt6h54xOGT4tWzgrQQLbtSKgvPYb+78mE3dGZLct3O3RHNn+q
         FdE0H4fWKyLDXR3ZwkWDjLJaLM6PyLln55Pp4wFLHEVhH5khSrfPahCV3XdJP2aTNUwe
         xoPOZo0Yr+XI5R5KGS32OlywNa2P5B7qFFkVdp0ZzuZAKZKWgGlyTNgWCCF4U5G1sUH9
         ACiA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w3uMnmN5NL2NR0E3lAmIQN6Zoo4zlmKr6oTi8MO9TgM=;
        b=eBIZAuD34EcvgpIjv0/BZD07rpLnaD+gV6nnAc3Av366xJA3cbzu6v0zo0AflGmqmg
         urg+C7lyHrnDkW9kmSGdKs9+TzOe455eixH94xkMdzpNqhicbligkHp6xNueSSKPdxz0
         aWVMzC5dln+077k96EvQKo0ySV4jeBUakvHss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w3uMnmN5NL2NR0E3lAmIQN6Zoo4zlmKr6oTi8MO9TgM=;
        b=KTmv4TWgSdlTtjvsz33XORKQUPgXxUqCWA2qu9DSqj/mW3hwEr3Y5Zrwq8NqfxcJN7
         hl6kAWjaCzrun6uhD9gFn/4+beV7G/8b/DImX+nn1hN+8zF8ZJ4tVNFc+QaRIctnfGew
         cmd2VZYAqFMfj3HcSM21ou42sXNpfwf2oDC7410CKZ+FF73Y+i6uDqlJbCXhVij1t3xP
         JDLAZl2UAG36zJqmGgmMSxOPfb+GWPg++FDFuiuPV1qvVzF4SKddsqh/U7SlFy0mneph
         558c9FFYtRa6IR72MxJ3cjv74rqYSuDCA+fpZ+LfVsv2qeiiujGxm3Bp4L18cOhUoDgd
         OBmw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533y5Q5E8oOlYUS3mr9xGemZ/GZwYBg6dnqUpSeqlsUKXeymnvlj
	VEpHZxH7LFQdZEIycZLlHdxBcA==
X-Google-Smtp-Source: ABdhPJwtrDxYEyCTZ2rh8sLH7D2vBwaby7wMI5YNtQJ5WhEJn5jxSm8Ylo/WqRKdkLqYdsSLOKSDtw==
X-Received: by 2002:a9d:72dc:: with SMTP id d28mr209373otk.110.1606150810741;
        Mon, 23 Nov 2020 09:00:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:230d:: with SMTP id e13ls2101590oie.1.gmail; Mon, 23 Nov
 2020 09:00:10 -0800 (PST)
X-Received: by 2002:aca:bfc2:: with SMTP id p185mr102976oif.60.1606150810501;
        Mon, 23 Nov 2020 09:00:10 -0800 (PST)
Received: by 2002:a54:4581:0:b029:e3:eb8:4d3 with SMTP id z1-20020a5445810000b02900e30eb804d3msoib;
        Mon, 23 Nov 2020 08:25:03 -0800 (PST)
X-Received: by 2002:aca:6255:: with SMTP id w82mr16107569oib.5.1606148703271;
        Mon, 23 Nov 2020 08:25:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606148703; cv=none;
        d=google.com; s=arc-20160816;
        b=bzbBz8ScTolTd2E/DduczT8SLl+TOtIefjm0dqRUWO3FhgjLosnleKmueQPp1A/mWK
         r505925JgaVsGnO7XioIhSXe4f1FTKtlWOYxIpQgPt6uaHRT4EWI1WZ3y3Q7h14KPQI8
         +znI28DtL1rrPj0wiajMW1O4Qjg/VqHCxDJ6qwKQ+2XLSTWXoko2K+bOeVnXNEOU9Ikt
         P3HUE375oZG+XaxdfgVUYYfZUuX9foiyBwKVC8IxfskqJhbLEK34Ah4XGdnKNZB26Kkt
         4cjS4NW1lM8MwrbliQG3J+/vcQALRf9wI9gRRmIn8H19xs+7/6q5QcOA4jYvL21NjFuM
         YXrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=SWzdE85KMSmQ5K6aYMgWVQjn8/tst2VI3dLUnv/55SM=;
        b=oct9Q4BJ7GEvfdBv6YvIDaG50m8ye0MZglM0Q1li9zWExhYz4wUH3fjexhaweEX3tk
         PSf38SWDEgmPEEWf8cdVItqfGzbIz+CV3K1bMzIqeCV0FHaCfgOoH9riEz30YH3eVUlg
         iOzmSh5+/Md69vuk7iXDI54TUOVmyDVZgleWfG9hJT3wzhmOlNPx0hnX9nyJ6cxe4/N1
         AsngKNA7Oz92hm6TxQv0XzyWYBK6s57tgaFym1fIgxm8rloMYNLunAPrtva40XSI1cIE
         bD3Z6QeM0xU44S+h6HwpQ4udXzwVamOHKkWUEQRbuHOB9vnHzTodzxl16NXweUPKN4Ud
         hdTA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id w20sor2267276otj.133.2020.11.23.08.25.03
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 23 Nov 2020 08:25:03 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a9d:16f:: with SMTP id 102mr68959otu.206.1606148702991;
 Mon, 23 Nov 2020 08:25:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com> <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
In-Reply-To: <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 23 Nov 2020 17:24:51 +0100
Message-ID: <CAJZ5v0jJ6GFm4LFCR2V3qvD9rZrVw=pXyXSjSWPYtQudg-F3xg@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Jakub Kicinski <kuba@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." <alsa-devel@alsa-project.org>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org, 
	cluster-devel@redhat.com, coreteam@netfilter.org, devel@driverdev.osuosl.org, 
	dm-devel@redhat.com, drbd-dev@lists.linbit.com, 
	dri-devel <dri-devel@lists.freedesktop.org>, GR-everest-linux-l2@marvell.com, 
	GR-Linux-NIC-Dev@marvell.com, intel-gfx <intel-gfx@lists.freedesktop.org>, 
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-afs@lists.infradead.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-atm-general@lists.sourceforge.net, 
	linux-block@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-cifs@vger.kernel.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, 
	"open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>, linux-geode@lists.infradead.org, 
	linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org, 
	linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org, 
	"open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)" <linux-ide@vger.kernel.org>, linux-iio@vger.kernel.org, 
	linux-input <linux-input@vger.kernel.org>, linux-integrity@vger.kernel.org, 
	"moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mmc <linux-mmc@vger.kernel.org>, 
	Linux-MM <linux-mm@kvack.org>, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	"open list:TARGET SUBSYSTEM" <linux-scsi@vger.kernel.org>, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	"open list:ULTRA-WIDEBAND (UWB) SUBSYSTEM:" <linux-usb@vger.kernel.org>, linux-watchdog@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org, 
	nouveau <nouveau@lists.freedesktop.org>, op-tee@lists.trustedfirmware.org, 
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
X-Original-Sender: rjwysocki@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rjwysocki@gmail.com designates 209.85.220.65 as permitted sender)
 smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Nov 23, 2020 at 4:58 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Mon, 2020-11-23 at 15:19 +0100, Miguel Ojeda wrote:
> > On Sun, Nov 22, 2020 at 11:36 PM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:

[cut]

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

Right.

> The whole crux of your argument seems to be maintainers' time isn't
> important so we should accept all trivial patches ... I'm pushing back
> on that assumption in two places, firstly the valulessness of the time
> and secondly that all trivial patches are valuable.
>
> > If some company does not want to pay for that, that's fine, but they
> > don't get to be maintainers and claim `Supported`.
>
> What I'm actually trying to articulate is a way of measuring value of
> the patch vs cost ... it has nothing really to do with who foots the
> actual bill.
>
> One thesis I'm actually starting to formulate is that this continual
> devaluing of maintainers is why we have so much difficulty keeping and
> recruiting them.

Absolutely.

This is just one of the factors involved, but a significant one IMV.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAJZ5v0jJ6GFm4LFCR2V3qvD9rZrVw%3DpXyXSjSWPYtQudg-F3xg%40mail.gmail.com.
