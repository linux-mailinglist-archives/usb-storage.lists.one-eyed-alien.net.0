Return-Path: <usb-storage+bncBDRZHGH43YJRBTEL6D6QKGQECSEPDQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA6E2C135A
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 19:56:14 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id 4sf10201739ybv.11
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 10:56:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606157773; cv=pass;
        d=google.com; s=arc-20160816;
        b=fRaEuUsr4h/4gGdrPCHYJxMid9AGrZfAcovFTxBEr5c9fw70DzSPCqByU0dKqg3KGB
         QrseaWm/jCT91gKjnKaswEGYSIme0VVp7OYhdMe5LvHvE5LzlDDJkAj1dRM8YwjiN27D
         BFxns88NjbfcNt3LCEG/+zipbBJELJwiCyquvp2SagV17Q7Wb55zbcKtb3nq9uiazM9L
         o/h2VM9Wgqnz1CoAcKxBLRXPCRrZ7JLpLSt8sAF2JP4Xdv33WNcGcavR95Bcnm6wlJH0
         jk3zVT+XOwy2a1UwL4X0zlIoE/h8HUIZV0LW72/4TWgNHeurDmzBD2nE+gREZXaqxjvM
         pBLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OTjc4zsn9OIlYhP7S28JLhm3ifU+nh/INLDrFb0wpxM=;
        b=Lw9XOa/7Ftk4HriraKcabgZgSq2xtWBk+YaW83y3Q+gPODs8FATeUbiW5kMfuTQEd4
         bNLmO3PQ4QD3G4B/doOXYo2s+UbsEv3rZa9GzSAmyQmEZuBlkoFkNR8RoYbtyujuRHXw
         JFljFnkSodlU7sXLl66hMjUrSR0CLs6L2T0RbEoE2fGnN5+Yc/dPQgH/ATw6y3/QeoU0
         Df+cBeo4N5YSBcnEFXALHD8H0rP7wBTqA2jTfBJ6lDPok9y7KHbLbgL1LUEUPzsH9K9Y
         5jiBhaNlA2l5qn+BJeXC04aRXa4GspOzG7+UDfIVYl2ruUCkpm4Mij59Ev5256RUHBkg
         eUMQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZA1WcoeO;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OTjc4zsn9OIlYhP7S28JLhm3ifU+nh/INLDrFb0wpxM=;
        b=Y+HSAwdt71vX6j5wKIzYv8cIM7CgYX676ez3tvgU+SKnG3ggcoeFEPvpo1YN4lRT3i
         n1Nbg3jx+IrAjzGWtooybIvyDbWfxxXv4CZYb79BbHfl8b8kkFbiNvStu2Hond8iwGSj
         m7uzRXt5F0Db2BGeR/bJYmmMeTPV0qIXBz6oU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OTjc4zsn9OIlYhP7S28JLhm3ifU+nh/INLDrFb0wpxM=;
        b=bROkJC8T6EyFVUUyuViDorR4rRBC4XBhGJLZVngJJycWQrLqZlJypbBXg4s8M0yBdd
         Dgr4z+Ue9c+mjew9ZO/LodJ5Zxkm5AxDb0QxHjX32Mc+y2AhQxONlvjISvU5pFQm6jr/
         g0/0H5hs3qrW+hxBuQPQ2/MEbe7FavJ5h3/9GSSfi8luBtpwt7uW6+A49q4VSTMnC7tQ
         OskehpfggS/wg12UCOEbso7zdt60pP04mvKF1FamPZN/PIxslgFKpgsztqaf2nHkPrg3
         7BU5y/cCdyOJnTWJsBqPfSbJJBQzrq7Yaw8IJgKHBxzjpnE0lbx4m6Gh2vX4u8E/MMIV
         mJiw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530tv9n8zbK/+yxKQKU7MhLbvYPkKvCcdpPEDL9pzlAkjhGmV8bE
	y06t1Cxw2QmMSJxqZAn59cquDA==
X-Google-Smtp-Source: ABdhPJyc6viRh0syhFRtWeOm+uEvDOQCl1380HLJHBYTHq97mYEn4sscGvyG+0WP6WmbHLlofdahbQ==
X-Received: by 2002:a25:c60a:: with SMTP id k10mr994855ybf.113.1606157773171;
        Mon, 23 Nov 2020 10:56:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:c0d3:: with SMTP id c202ls447435ybf.5.gmail; Mon, 23 Nov
 2020 10:56:12 -0800 (PST)
X-Received: by 2002:a25:d1ce:: with SMTP id i197mr907899ybg.209.1606157772533;
        Mon, 23 Nov 2020 10:56:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606157772; cv=none;
        d=google.com; s=arc-20160816;
        b=oGbDjt/9swwwJrkrLQUo+AV1cr3Kl4WGcOcWNYncbvthwiaNcmGr6vdk9AhF9WSlue
         Tq63E8ZQHGra9K1HvnspCnbUNGU00uzhDdppjVY9K/k5qol8dtFCpgLtcsiBP3X4aTWP
         Hi8+SDc8slbsKdJH+a337bvfPw9a6LF1Ldzufz0nA8wt13bI5S9C9XEYOJUYidFMlzBK
         adhkS54MMSxisY90oPRLLMQ0GUHFuSRgMcuajUz9xztiG1rigcMKA34Vh252JaLS5/ts
         TbJnWAshkLrTHtrB5tk60PiAzCnB8ZLHhjBn4lQFhFo+nspl5PyYJZXYMH9FgKV16Uf0
         skCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KNG9rf3jiBLOHJ1Qe+5HClUHwDC8G2v5PJoNSRMQj2o=;
        b=aHKxWSy6isUAE4DY1w+ExN6CLZLKYR3tBQktfyIGLS+2SsWsoSKXQkmp8sphPy6DRr
         LDVzBHrGJIqOVnUJuxPFVEv0TWzyUHIfOU4QYzRxIwF1uJN4FAR3oCv4tdURwFXt6dt6
         aGLXK1/nAyNJEsTecQcVK1uvsByGsGADQeg5Wwb7WnZGxGurUHVaJVCe5AYZLLV/OVcT
         d7tD/fwdZ8TsRG5lrZ9RUz151XWwIA4TvWCz2fZrZj1XhdCnyEguAEpkS/Oj9blqYYzW
         2FcUCY3uQphGhybuG2QXNjB0z1kGttmO0phH4F01jILFkI1NQQrBBcyHADr0HuYPavnx
         ny3A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZA1WcoeO;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id t16sor3632037ybk.106.2020.11.23.10.56.12
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 23 Nov 2020 10:56:12 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:df55:: with SMTP id w82mr977719ybg.135.1606157772316;
 Mon, 23 Nov 2020 10:56:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com> <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
In-Reply-To: <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 23 Nov 2020 19:56:01 +0100
Message-ID: <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=ZA1WcoeO;       spf=pass
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

On Mon, Nov 23, 2020 at 4:58 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> Well, I used git.  It says that as of today in Linus' tree we have 889
> patches related to fall throughs and the first series went in in
> october 2017 ... ignoring a couple of outliers back to February.

I can see ~10k insertions over ~1k commits and 15 years that mention a
fallthrough in the entire repo. That is including some commits (like
the biggest one, 960 insertions) that have nothing to do with C
fallthrough. A single kernel release has an order of magnitude more
changes than this...

But if we do the math, for an author, at even 1 minute per line change
and assuming nothing can be automated at all, it would take 1 month of
work. For maintainers, a couple of trivial lines is noise compared to
many other patches.

In fact, this discussion probably took more time than the time it
would take to review the 200 lines. :-)

> We're also complaining about the inability to recruit maintainers:
>
> https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/
>
> And burn out:
>
> http://antirez.com/news/129

Accepting trivial and useful 1-line patches is not what makes a
voluntary maintainer quit... Thankless work with demanding deadlines is.

> The whole crux of your argument seems to be maintainers' time isn't
> important so we should accept all trivial patches

I have not said that, at all. In fact, I am a voluntary one and I
welcome patches like this. It takes very little effort on my side to
review and it helps the kernel overall. Paid maintainers are the ones
that can take care of big features/reviews.

> What I'm actually trying to articulate is a way of measuring value of
> the patch vs cost ... it has nothing really to do with who foots the
> actual bill.

I understand your point, but you were the one putting it in terms of a
junior FTE. In my view, 1 month-work (worst case) is very much worth
removing a class of errors from a critical codebase.

> One thesis I'm actually starting to formulate is that this continual
> devaluing of maintainers is why we have so much difficulty keeping and
> recruiting them.

That may very well be true, but I don't feel anybody has devalued
maintainers in this discussion.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72k5tpDoDPmJ0ZWc1DGqm%2B81Gi-uEENAtvEs9v3SZcx6_Q%40mail.gmail.com.
